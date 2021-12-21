-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-05-2020 a las 16:05:47
-- Versión del servidor: 5.7.17-0ubuntu0.16.04.1
-- Versión de PHP: 7.1.2-3+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `advanced-eloquent`
--
CREATE DATABASE IF NOT EXISTS `advanced-eloquent` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `advanced-eloquent`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book_user`
--

CREATE TABLE `book_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('public','draft') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Al Donnelly', 'Voluptas fuga tempore qui quo. Odio recusandae assumenda animi sunt. Et quam aperiam non velit.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(2, 3, 'Erica Nicolas', 'Et consequatur qui quo. Et et perferendis est autem.', 'public', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(3, 3, 'Carleton Fadel', 'Hic corrupti ut nihil harum. Repellat natus sapiente dolor voluptate aut. Consequatur unde minus et et.', 'public', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(4, 1, 'Whitney Dietrich Sr.', 'Fugit perspiciatis nihil sunt odit et nesciunt. Sit nostrum corporis suscipit nihil quo nostrum voluptas ratione. Aliquid autem quo molestiae quia rerum. Eum cum quaerat dolorum.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(5, 3, 'Prof. Harrison Torphy', 'Sed voluptas velit dolorem sunt non. Eaque consectetur eos reprehenderit et voluptas quis non. Occaecati maxime sequi beatae et debitis voluptas odio.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(6, 3, 'Kameron Cummerata Jr.', 'Possimus earum suscipit repudiandae excepturi cum ipsa. Illum laboriosam quidem a. Numquam qui ab odio ipsa eveniet id. Aliquid et et deserunt consequatur.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(7, 3, 'Dr. Sallie White MD', 'Itaque quia et aut autem temporibus animi. Commodi rerum sint id excepturi vel voluptatem tempora voluptatem. Qui consequatur esse esse ad. Libero eos ut consequatur fuga.', 'public', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(8, 1, 'Aniya Hettinger', 'Ab dolor mollitia voluptas enim ut est velit. Rem repudiandae repudiandae itaque deserunt.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(9, 1, 'Alvina Greenfelder', 'Eos dolore enim dolor. Et laborum ut et et perspiciatis. Incidunt eos possimus quo fugit laudantium dolor explicabo. Dolore minus consequatur ipsum totam quia mollitia excepturi.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(10, 1, 'Vito Spencer', 'Commodi magnam pariatur illo maiores doloremque rem. Repudiandae vitae culpa laudantium voluptate aspernatur nisi. Aperiam labore nulla doloribus consequatur quibusdam molestiae.', 'public', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(11, 2, 'Thelma Reilly', 'Quam sed labore quidem a. Rerum consequatur aut perferendis quos qui repellendus. Nostrum velit expedita sed assumenda dolores rerum et et.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(12, 1, 'Alysa Howell', 'Autem quae sequi facere nihil repellendus quibusdam. Maxime aspernatur hic omnis nihil animi. Sed fuga autem aperiam enim est et exercitationem officiis.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(13, 2, 'Constantin Streich', 'Quibusdam et dolorem est cupiditate quia dolores. Dolor minus accusamus pariatur qui.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(14, 3, 'Prof. Marilyne Gerlach', 'Consequatur corrupti velit omnis et et ea. Nam qui fugiat officia corrupti unde. Rerum quia numquam expedita laudantium rerum dolores.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(15, 2, 'Miss Jaclyn Price', 'Eum provident libero facilis numquam et debitis porro. Similique quae aliquam corporis quia at dolores et. Aut sit asperiores eos unde. Aspernatur voluptatem aut voluptatibus in et.', 'public', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(16, 1, 'Julia Kuhic', 'Et dignissimos et ut vitae iste dolores. Dolores tenetur rerum rerum excepturi in earum blanditiis et. Explicabo sit voluptas deserunt tempora dolorem.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(17, 1, 'Candida Crooks', 'Sed voluptatem expedita vero eius. Odio ut et ipsum sequi sit. Et quod cum a dolor ut.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(18, 1, 'Dr. Treva Koss DDS', 'Occaecati vitae quis at similique expedita. Dolorem facere autem autem. Assumenda ut id dolores minus quod sed magni. Magnam dolores atque eos qui. Officiis molestias cumque hic neque eligendi qui.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(19, 2, 'Roxane Hackett', 'Recusandae cupiditate eum dolor earum rem recusandae voluptas. Itaque ut consequatur voluptatem ex ut. Amet vel voluptatem ducimus qui odio. Est illum magni eius sint.', 'draft', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(20, 3, 'Wilmer Zemlak', 'Et quia temporibus quisquam impedit corporis qui rem. Quasi quisquam ullam aut dicta minus. Quisquam beatae hic beatae sed est voluptatum.', 'public', NULL, '2018-02-24 10:34:52', '2018-02-24 10:34:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(2, 'HTML', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(3, 'JAVASCRIPT', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(4, 'CSS', '2018-02-24 10:34:52', '2018-02-24 10:34:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_10_091237_create_categories_table', 1),
('2016_02_10_091957_create_books_table', 1),
('2016_03_15_093720_create_book_user_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kobe Rolfson', 'jbrakus@yahoo.com', '$2y$10$mBVrFoFQYJ5Rzsfe0hypke3Llm.rI1zmzmr/RpJzvNMHsaqVpvzAC', 'bTiSp0VkNg', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(2, 'Favian Schneider DVM', 'cullen52@reilly.com', '$2y$10$YfWaoOUsikt.Kt0tezq/8Oa..pMrtST.j5Wae2WK.FkS4wGdk9Pl2', 'ndHbdjWBwp', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(3, 'Reina Upton', 'lavern.roberts@yahoo.com', '$2y$10$M8sfUxX2Nm/1Kndkv5KSYu2iRRq3ehsogaHZELn7TZdCeFOgFKjqu', 'etJEcvmMMe', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(4, 'Jaqueline Spencer', 'jcassin@hotmail.com', '$2y$10$NyQCRmTjfZ3.QEC1WSYurOEOph3SRQNjc7c6SvDch5g1qQHYAb7Du', '3aQArmxIiS', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(5, 'Guadalupe Mueller', 'xbeer@hotmail.com', '$2y$10$1MogHJUJ/uBS9iPP1UVCc.m7McKj5iyyvU.PkvF3x.iNCocf75CcG', '7DufAeib6G', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(6, 'Kaci Bashirian', 'xpacocha@bechtelar.com', '$2y$10$uNSaD0H2pfuCpzj7KynR4eR8zqmwO.BcZvE4Hb3VsL1h.osYLu/G6', '4nzMoACyNC', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(7, 'Dee Pfannerstill PhD', 'justine90@jast.com', '$2y$10$/Gkf3SWPYgkg7Wndc2SK4.rZ.Bwy71wvO8Ai9JNAMfHkv502Zdo5O', 'uSoLBNkElu', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(8, 'Dashawn Green', 'keeling.annette@gmail.com', '$2y$10$Qv1aGFo65/5w7U/dySCa4ebPIBKj4u9kbFAKwwP3N4BNAHLpaIBUC', 'JD5aSPJbdI', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(9, 'Cloyd Prosacco DVM', 'cohara@gmail.com', '$2y$10$HqM9eDC5q.vdF0.OcVsb0.rTVBF6xYAvfhBE.2GJTCNs4/k4kGUzW', '06o22zeBLs', '2018-02-24 10:34:52', '2018-02-24 10:34:52'),
(10, 'Sienna O\'Conner', 'ortiz.ericka@graham.net', '$2y$10$uGxy9c0hlWmNnqFdb3O5ye4fjgvykgvR/YL8SaRJ2Oz86aWCHYW0S', 'rRz64j4vLP', '2018-02-24 10:34:52', '2018-02-24 10:34:52');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `book_user`
--
ALTER TABLE `book_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_user_book_id_foreign` (`book_id`),
  ADD KEY `book_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `book_user`
--
ALTER TABLE `book_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `book_user`
--
ALTER TABLE `book_user`
  ADD CONSTRAINT `book_user_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `blibiotecaAbiego`
--
CREATE DATABASE IF NOT EXISTS `blibiotecaAbiego` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blibiotecaAbiego`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Narrativa / Novela / Ensayo', '2016-05-26 04:01:24', '2016-05-27 09:08:29'),
(2, 'Novela histórica / Historia', '2016-05-26 04:01:42', '2016-05-30 15:17:35'),
(3, 'Novela Negra / Trhiller', '2016-05-26 04:02:12', '2016-05-30 15:18:17'),
(4, 'Ciencia Ficción / Aventura', '2016-05-26 04:02:22', '2016-05-30 15:18:50'),
(8, 'Biográfica', '2016-05-26 04:03:18', '2016-05-26 04:03:18'),
(9, 'Infantil / Adolescencia', '2016-05-26 04:03:30', '2016-05-30 15:19:58'),
(10, 'Psicología / Autoayuda', '2016-05-26 04:03:41', '2016-05-30 15:20:28'),
(13, 'Enciclopedia o Diccionarios', '2016-05-26 04:04:29', '2016-05-27 14:06:06'),
(15, 'Política / Economía /  Marketing', '2016-05-26 04:04:50', '2016-05-30 15:22:04'),
(19, 'Otros temas / Varios', '2016-05-26 04:05:40', '2016-05-27 14:29:49'),
(20, 'Prosa / Poesía / Cuentos', '2016-05-26 04:06:48', '2016-05-30 15:26:13'),
(21, 'Religión / Mitos y Leyendas / Esoterismo', '2016-05-27 15:05:59', '2016-05-30 15:23:38'),
(23, 'Descatalogados o Libros antiguos', '2016-05-27 16:52:30', '2016-05-28 06:01:12'),
(24, 'En Catalán', '2016-05-28 05:59:32', '2016-05-28 05:59:32'),
(25, 'Libros de Aragón', '2016-05-30 15:25:17', '2016-05-30 15:25:17'),
(26, 'Romántica', '2016-05-30 15:27:28', '2016-05-30 15:27:28'),
(27, 'DVD', '2016-07-21 08:57:55', '2016-07-21 08:57:55'),
(28, 'VHS', '2016-07-21 09:00:29', '2016-07-21 09:00:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donantes`
--

CREATE TABLE `donantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `donantes`
--

INSERT INTO `donantes` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `created_at`, `updated_at`) VALUES
(1, '--', '--', '', 615654, '2016-05-26 19:02:25', '2016-05-26 19:02:25'),
(2, 'Puri', 'Conte Albas', '', 628053620, '2016-05-27 14:43:34', '2016-07-18 08:52:51'),
(3, 'David', 'Sánchez Agüera', 'davidsanc73@gmail.com', 616583941, '2016-05-27 19:27:43', '2016-05-27 19:27:43'),
(4, 'Ana ', 'Carceller Mallada', '', 200000000, '2016-05-28 06:10:24', '2016-05-28 09:59:35'),
(5, 'Ana', 'Bosque Bosque', '', 123456789, '2016-07-07 07:02:31', '2016-07-07 07:02:31'),
(6, 'Pili', 'Nasarre Urban', '', 987654321, '2016-07-20 08:48:19', '2016-07-20 08:48:19'),
(7, 'Gloria', 'Pueyo Cid', '', 639416818, '2016-07-26 06:53:29', '2016-07-26 07:32:54'),
(8, 'Fernando', 'Martinez', '', 888454676, '2016-08-05 08:20:45', '2016-08-05 08:20:45'),
(9, 'Carmen', 'Panzano Oliveros', '', 111666789, '2016-08-08 07:08:36', '2016-08-08 07:08:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enciclopedias`
--

CREATE TABLE `enciclopedias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `enciclopedias`
--

INSERT INTO `enciclopedias` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '--', '2016-05-26 19:02:25', '2016-05-26 19:02:25'),
(2, 'Monitor', '2016-05-27 08:57:15', '2016-05-27 08:59:47'),
(3, 'Historia universal de la literatura', '2016-05-27 08:58:05', '2016-05-27 08:58:05'),
(4, 'Maravillas del saber', '2016-05-27 08:58:30', '2016-05-27 08:58:30'),
(5, 'Pequeño Larousse en color', '2016-05-27 08:58:47', '2016-05-27 08:58:47'),
(6, 'Diccionario enciclopédico Larousse', '2016-05-27 08:59:07', '2016-05-27 08:59:07'),
(7, 'Descubra España paso a paso', '2016-05-27 08:59:17', '2016-05-27 08:59:17'),
(8, 'Diccionario de la Lengua Española', '2016-05-27 09:43:57', '2016-05-27 09:43:57'),
(9, 'Guías con encanto (vinos y licores)', '2016-05-27 09:46:14', '2016-05-27 09:46:14'),
(10, 'Nueva enciclopedia universal', '2016-05-27 09:46:58', '2016-05-27 09:46:58'),
(11, 'Aragón pueblo a pueblo', '2016-05-27 09:47:12', '2016-05-27 09:47:12'),
(12, 'Obras maestras de la pintura', '2016-05-27 09:47:27', '2016-05-27 09:47:27'),
(14, 'Nueva Enciclopedia Larousse', '2016-05-27 09:48:35', '2016-05-27 09:48:35'),
(15, 'Vox 24', '2016-05-27 09:48:48', '2016-05-27 14:03:07'),
(16, 'Cambridge English School', '2016-05-27 09:49:33', '2016-05-27 09:49:33'),
(17, 'Ecologia y Vida', '2016-05-27 09:49:58', '2016-05-27 09:49:58'),
(18, 'Gestión Informática de la empresa', '2016-05-27 09:50:43', '2016-05-27 09:50:43'),
(19, 'Enciclopedia de la vida natural', '2016-05-27 09:51:01', '2016-05-27 09:51:01'),
(20, 'Programa General d\'Estudis catalans ', '2016-05-27 14:22:30', '2016-05-27 14:22:30'),
(21, 'biblioteca basica salvat', '2016-06-14 15:58:10', '2016-06-14 15:58:10'),
(22, 'El espectador', '2016-06-14 15:58:21', '2016-06-14 15:58:21'),
(23, 'Técnicas de Aprendizaje', '2016-07-07 09:00:25', '2016-07-07 09:00:25'),
(24, 'Gran Enciclopedia Larousse', '2016-07-20 08:52:34', '2016-07-20 08:52:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `enciclopedia_id` int(10) UNSIGNED DEFAULT NULL,
  `donante_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `autor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `editorial` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estanteria` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paginasNumero` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `categoria_id`, `enciclopedia_id`, `donante_id`, `title`, `autor`, `editorial`, `estanteria`, `paginasNumero`, `created_at`, `updated_at`) VALUES
(1, 13, 2, 1, 'Indice', 'Vacio', 'Salvat', 'F-1', 519, '2016-05-26 04:41:16', '2016-06-13 16:07:02'),
(2, 13, 2, 1, '1A-Astra', 'Vacio', 'Salvat', 'F-1', 552, '2016-05-26 04:42:10', '2016-06-13 16:07:16'),
(3, 13, 2, 1, '2Astro-Cali', 'Vacio', 'Salvat', 'F-1', 528, '2016-05-26 04:43:33', '2016-06-13 16:07:30'),
(4, 13, 2, 1, '3 Calm-Zons', 'Vacio', 'Salvat', 'F-1', 528, '2016-05-26 04:49:28', '2016-06-13 16:07:56'),
(5, 13, 2, 1, '4 Cnt-Dry', 'Vacio', 'Salvat', 'F-1', 504, '2016-05-26 04:50:03', '2016-06-13 16:08:08'),
(6, 13, 2, 1, '5 Dro-fero', 'Vacio', 'Salvat', 'F-1', 504, '2016-05-26 04:50:38', '2016-06-13 16:08:39'),
(7, 13, 2, 1, '6 Ferr-guas', 'Vacio', 'Salvat', 'F-1', 504, '2016-05-26 04:51:12', '2016-06-13 16:08:21'),
(8, 13, 2, 1, '7 Guat-jan', 'Vacio', 'Salvat', 'F-1', 504, '2016-05-26 04:51:42', '2016-06-13 16:08:52'),
(9, 13, 2, 1, '8 Jap-merc', 'Vacio', 'Salvat', 'F-1', 528, '2016-05-26 04:52:25', '2016-06-13 16:09:12'),
(10, 13, 2, 1, '9 Mere-pak', 'Vacio', 'Salvat', 'F-1', 528, '2016-05-26 04:53:02', '2016-06-13 16:09:24'),
(11, 13, 2, 1, '10 Par-resp', 'Vacio', 'Salvat', 'F-1', 528, '2016-05-26 04:53:55', '2016-06-13 16:09:37'),
(12, 13, 2, 1, '11 Rest-tan', 'Vacio', 'Salvat', 'F-1', 528, '2016-05-26 04:54:27', '2016-06-13 16:12:29'),
(13, 13, 2, 1, '12 Tao-z', 'Vacio', 'Salvat', 'F-1', 552, '2016-05-26 04:55:04', '2016-06-13 16:09:50'),
(14, 13, 3, 1, 'Historia universal de la literatura- 1', 'Vacio', 'Ediciones Orbis', 'F-1', 328, '2016-05-26 04:56:33', '2016-06-13 16:10:38'),
(15, 13, 3, 1, 'Enciclopedia universal de la literatura- 2', 'Vacio', 'Ediciones Orbis', 'F-1', 328, '2016-05-26 04:57:39', '2016-06-13 16:10:53'),
(16, 13, 3, 1, 'Enciclopedia universal de la literatura- 4', 'Vacio', 'Ediciones Orbis', 'F-1', 328, '2016-05-26 04:58:23', '2016-06-13 16:11:09'),
(17, 13, 3, 1, 'Enciclopedia universal de la literatura- 5', 'Vacio', 'Ediciones Orbis', 'F-1', 328, '2016-05-26 04:58:57', '2016-06-13 16:11:24'),
(18, 13, 4, 1, '1 Historia biografía ', 'Vacio', 'Credsa', 'F-2', 379, '2016-05-26 05:06:44', '2016-06-13 16:11:51'),
(19, 13, 4, 1, '2 Arqueologia-arte-grandes empresas', 'Vacio', 'Credsa', 'F-2', 366, '2016-05-26 05:07:24', '2016-06-13 16:12:07'),
(20, 13, 4, 1, '3 Mitos y leyendas-religiones-ciencias naturales', 'Vacio', 'Credsa', 'F-2', 367, '2016-05-26 05:08:09', '2016-06-13 16:12:46'),
(21, 13, 4, 1, '4 Quimica-fisica/Matemática/El universo/La tierra', 'Vacio', 'Credsa', 'F-2', 367, '2016-05-26 05:09:21', '2016-06-13 16:13:02'),
(22, 13, 4, 1, '6 Técnica/Higiene y medicina/Agricultura-la ciudad', 'Vacio', 'Credsa', 'F-2', 367, '2016-05-26 05:10:29', '2016-06-13 16:13:16'),
(23, 13, 4, 1, '7 Economía/Política/Música-Cine', 'Vacio', 'Credsa', 'F-2', 367, '2016-05-26 05:11:34', '2016-06-13 16:13:32'),
(24, 13, 4, 1, '8 Geografía mundial/España y América latina', 'Vacio', 'Credsa', 'F-2', 367, '2016-05-26 05:12:12', '2016-06-13 16:13:50'),
(25, 13, 4, 1, '9 Literatura/Teatro/Libros famosos', 'Vacio', 'Credsa', 'F-2', 366, '2016-05-26 05:12:48', '2016-06-13 16:14:04'),
(26, 13, 4, 1, '10 Deportes/Variedades', 'Vacio', 'Credsa', 'F-2', 365, '2016-05-26 05:13:25', '2016-06-13 16:14:22'),
(27, 13, 5, 1, 'Pequeño Larousse en color', 'Ramón García-Pelayo y Gross', 'Editoriales Larousse', 'F-2', 1564, '2016-05-26 05:15:30', '2016-06-13 16:14:51'),
(28, 13, 6, 1, '1 A-antio', 'Vacio', 'Planeta', 'E-1', 148, '2016-05-26 05:18:12', '2016-06-13 16:20:04'),
(29, 13, 6, 1, '2 Antyp-ben', 'Vacio', 'Planeta', 'E-1', 320, '2016-05-26 05:19:06', '2016-06-13 16:20:21'),
(30, 13, 6, 1, '3 Beo-carre', 'Vacio', 'Planeta', 'E-1', 476, '2016-05-26 05:19:50', '2016-06-13 16:20:38'),
(31, 13, 6, 1, '4 Carri-crien', 'Vacio', 'Planeta', 'E-1', 636, '2016-05-26 05:20:36', '2016-06-13 16:22:10'),
(32, 13, 6, 1, '5 Crio-eco', 'Vacio', 'Planeta', 'E-1', 792, '2016-05-26 05:21:17', '2016-06-13 16:22:35'),
(33, 13, 6, 1, '6 Fr-fern', 'Vacio', 'Planeta', 'E-1', 953, '2016-05-26 05:21:57', '2016-06-13 16:22:54'),
(34, 13, 6, 1, '7 Fero-guard', 'Vacio', 'Planeta', 'E-1', 1108, '2016-05-26 05:22:24', '2016-06-13 16:23:15'),
(35, 13, 6, 1, '8 Guare-isag', 'Vacio', 'Planeta', 'E-1', 1268, '2016-05-26 05:23:02', '2016-06-13 16:23:59'),
(36, 13, 6, 1, '9 Isae-lone', 'Vacio', 'Planeta', 'E-1', 1424, '2016-05-26 05:23:29', '2016-06-13 16:25:41'),
(37, 13, 6, 1, '10 Longe-meto', 'Vacio', 'Planeta', 'E-1', 1584, '2016-05-26 05:24:03', '2016-06-13 16:26:01'),
(38, 13, 6, 1, '11 Metr-mz', 'Vacio', 'Planeta', 'E-1', 1740, '2016-05-26 05:24:30', '2016-06-13 16:26:19'),
(39, 13, 6, 1, '12 Ñ-pind', 'Vacio', 'Planeta', 'E-1', 1900, '2016-05-26 05:25:06', '2016-06-13 16:26:53'),
(40, 13, 6, 1, '13 Pine-reto', 'Vacio', 'Planeta', 'E-1', 2056, '2016-05-26 05:25:39', '2016-06-13 16:27:14'),
(41, 13, 6, 1, '14 Retr-sisi', 'Vacio', 'Planeta', 'E-1', 2216, '2016-05-26 05:26:04', '2016-06-13 16:27:32'),
(42, 13, 6, 1, '15 Sisl-truj', 'Vacio', 'Planeta', 'E-1', 2372, '2016-05-26 05:26:46', '2016-06-13 16:28:20'),
(43, 13, 6, 1, '16 Trum-zw', 'Vacio', 'Planeta', 'E-1', 2536, '2016-05-26 05:27:17', '2016-06-13 16:27:55'),
(44, 13, 8, 1, 'Diccionario de la Lengua Española  a/g', 'Real Academia Española, 2001', 'Espasa', 'E-2', 1181, '2016-05-26 05:39:05', '2016-05-27 14:37:33'),
(45, 13, 8, 1, 'Diccionario de la Lengua Española  h/z', 'Real Academia Española, 2001', 'Espasa', 'E-2', 2349, '2016-05-26 05:44:33', '2016-05-27 14:37:52'),
(46, 13, 7, 1, 'Andalucía (I)', 'V. Fernández de Bobadilla', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 68, '2016-05-26 06:20:37', '2016-06-14 15:29:40'),
(47, 13, 7, 1, 'Andalucía (II)', 'José Infante', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 68, '2016-05-26 06:21:57', '2016-06-14 15:30:03'),
(48, 13, 7, 1, 'Andalucía (III)', 'José Infante', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 84, '2016-05-26 06:22:40', '2016-06-14 15:30:26'),
(49, 13, 7, 1, 'Andalucía (IV)', 'V. Fernández de Bobadilla', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 62, '2016-05-26 06:23:36', '2016-06-14 15:30:48'),
(50, 13, 7, 1, 'Aragón (I)', 'Antonio Vitaller', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 70, '2016-05-26 06:26:09', '2016-06-14 15:31:09'),
(51, 13, 7, 1, 'Aragón (II)', 'Antonio Vitaller', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 1584, '2016-05-26 06:27:05', '2016-06-14 15:31:28'),
(52, 13, 7, 1, 'Asturias (I)', 'Pedro Páramo', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 62, '2016-05-26 06:27:39', '2016-06-14 15:31:47'),
(53, 13, 7, 1, 'Asturias (II)', 'Pedro Páramo', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 54, '2016-05-26 06:28:08', '2016-06-14 15:32:08'),
(54, 13, 7, 1, 'Baleares', 'Ferderico Zaragoza', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 84, '2016-05-26 06:28:32', '2016-06-14 15:32:29'),
(55, 13, 7, 1, 'Barcelona', 'Gillarmina Botaya', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 88, '2016-05-26 06:29:11', '2016-06-14 15:32:52'),
(56, 13, 7, 1, 'Cataluña (I)', 'Gillarmina Botaya', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 60, '2016-05-26 06:29:40', '2016-06-14 15:33:10'),
(57, 13, 7, 1, 'Cataluña (II)', 'Gillarmina Botaya', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 70, '2016-05-26 06:30:06', '2016-06-14 15:33:28'),
(58, 13, 7, 1, 'Canarias (I)', 'José Luis Morales', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 56, '2016-05-26 06:30:34', '2016-06-14 15:33:48'),
(59, 13, 7, 1, 'Canarias (II)', 'José Luis Morales', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 56, '2016-05-26 06:31:01', '2016-06-14 15:34:05'),
(60, 13, 7, 1, 'Cantabria', 'Joaquín Arozamena', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 82, '2016-05-26 06:31:37', '2016-06-14 15:34:23'),
(61, 13, 7, 1, 'Castilla La Mancha (I)', 'Fernando de Giles', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 92, '2016-05-26 06:33:59', '2016-06-14 15:34:40'),
(62, 13, 7, 1, 'Castilla La Mancha (II)', 'Fernando de Giles', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 62, '2016-05-26 06:34:28', '2016-06-14 15:35:30'),
(63, 13, 7, 1, 'Castilla La Mancha (III)', 'Fernando de Giles', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 62, '2016-05-26 06:34:55', '2016-06-14 15:35:43'),
(64, 13, 7, 1, 'Castilla y León (I)', 'Alex Grijelmo', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 78, '2016-05-26 06:35:34', '2016-06-14 15:35:58'),
(65, 13, 7, 1, 'Castilla y León (II)', 'Alex Grijelmo', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 86, '2016-05-26 06:36:04', '2016-06-14 15:36:49'),
(66, 13, 7, 1, 'Castilla y León (III)', 'Alex Grijelmo', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 70, '2016-05-26 06:36:29', '2016-06-14 15:37:07'),
(67, 13, 7, 1, 'Extremadura (I)', 'Alfonso Romero', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 54, '2016-05-26 06:36:59', '2016-06-14 15:37:40'),
(68, 13, 7, 1, 'Extremadura (II)', 'Alfonso Romero', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 54, '2016-05-26 06:37:23', '2016-06-14 15:37:58'),
(69, 13, 7, 1, 'Galicia (I)', 'Xosefa Alonso', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 54, '2016-05-26 06:38:06', '2016-06-14 15:38:22'),
(70, 13, 7, 1, 'Galicia (II)', 'Xosefa Alonso', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 60, '2016-05-26 06:38:27', '2016-06-14 15:38:41'),
(71, 13, 7, 1, 'La Rioja', 'Javier Echenagusía', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 72, '2016-05-26 06:38:56', '2016-06-14 15:39:05'),
(72, 13, 7, 1, 'Madrid', 'María Paredes', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 108, '2016-05-26 06:39:18', '2016-06-14 15:39:22'),
(73, 13, 7, 1, 'Murcia', 'Ismael Galiana', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 86, '2016-05-26 06:39:45', '2016-06-14 15:39:39'),
(74, 13, 7, 1, 'Navarra', 'Jacinto Pérez Iriarte', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 92, '2016-05-26 06:40:15', '2016-06-14 15:39:56'),
(75, 13, 7, 1, 'País Vasco (I)', 'Inmaculada Gómez Mardones', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 82, '2016-05-26 06:40:48', '2016-06-14 15:40:14'),
(76, 13, 7, 1, 'País Vasco (II)', 'Inmaculada Gómez Mardones', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 84, '2016-05-26 06:41:07', '2016-06-14 15:40:31'),
(77, 13, 7, 1, 'Valencia (I)', 'Manuel Fernández Nieto', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 76, '2016-05-26 06:41:33', '2016-06-14 15:41:12'),
(78, 13, 7, 1, 'Valencia (II)', 'Manuel Fernández Nieto', 'Promoción y Ediciones Club Inter. del libro', 'F-3', 54, '2016-05-26 06:42:08', '2016-06-14 15:40:47'),
(79, 13, 9, 1, 'El cava', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 268, '2016-05-27 09:53:21', '2016-05-27 09:53:21'),
(80, 13, 9, 1, 'Vinos de Tajo y Guadiana', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 270, '2016-05-27 09:55:00', '2016-05-27 09:55:00'),
(81, 13, 9, 1, 'Vinos de Andalucía y Canarias', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 272, '2016-05-27 09:56:02', '2016-05-27 09:56:02'),
(82, 13, 9, 1, 'Vinos de Levante y Baleares', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 232, '2016-05-27 09:56:48', '2016-05-27 09:56:48'),
(83, 13, 9, 1, 'Vinos de La Rioja', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 374, '2016-05-27 09:57:27', '2016-05-27 09:57:27'),
(84, 13, 9, 1, 'Vinos de Galicia', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 213, '2016-05-27 09:57:57', '2016-05-27 09:57:57'),
(85, 13, 9, 1, 'Vinos de Castilla y León', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 284, '2016-05-27 09:58:30', '2016-05-27 09:58:30'),
(86, 13, 9, 1, 'Licores y Aguardientes', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 131, '2016-05-27 09:59:04', '2016-05-27 09:59:04'),
(87, 13, 9, 1, 'Cinos de Cataluña', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 304, '2016-05-27 09:59:43', '2016-05-27 09:59:43'),
(88, 13, 9, 1, 'Vinos de Aragón, Navarra y Los Chacolís', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 294, '2016-05-27 10:00:36', '2016-05-27 10:00:36'),
(89, 13, 9, 1, 'Vinos de Jerez', 'María Isabel Mijares y José Antonio Sáez Illobre', 'El País', 'F-3', 118, '2016-05-27 10:01:13', '2016-05-27 10:01:13'),
(90, 13, 1, 1, 'Aragón comarca a comarca (2 tomos)', 'Vacio', 'Bust Editorial, S.L.U.', 'F-3', 1527, '2016-05-27 10:04:36', '2016-05-27 10:04:36'),
(91, 13, 1, 1, 'Aragón en el mundo', 'Vacio', 'Caja de Ahorros de la Inmaculada de Aragón', 'B-4', 442, '2016-05-27 10:05:50', '2016-07-11 07:36:16'),
(94, 13, 10, 1, 'Nueva enciclopedia universal (5 tomos)', 'Vacio', 'Carroggio, S.A. de Ediciones', 'F-4', 1920, '2016-05-27 10:12:13', '2016-05-27 10:12:13'),
(95, 13, 11, 1, 'Aragón pueblo a pueblo (10 tomos)', 'Alfonso Zapater', 'Aguavivas', 'F-4', 2743, '2016-05-27 13:37:32', '2016-05-27 13:37:32'),
(96, 13, 12, 1, 'Museo del Louvre/Museo del Jeu de Paume', 'Luis Monreal', 'Planeta', 'F-2', 183, '2016-05-27 13:41:07', '2016-06-14 15:19:06'),
(97, 13, 12, 1, 'La pintura de los museos de Mexico', 'Miguel Ángel Fernández y otros', 'Planeta', 'F-2', 198, '2016-05-27 13:42:18', '2016-06-14 15:19:51'),
(98, 13, 12, 1, 'Metropolitan Museum/Art Institute de Chicago', 'Luís Monrreal', 'Planeta', 'F-2', 197, '2016-05-27 13:43:21', '2016-06-14 15:20:08'),
(99, 13, 12, 1, 'Pinacoteca Vaticana/Pinacoteca de Brera/Academia de Venecia', 'Luis Monreal', 'Planeta', 'F-2', 183, '2016-05-27 13:44:53', '2016-06-14 15:20:26'),
(100, 13, 12, 1, 'Galeria de los Uffizi/Galería Borghese/Galería Nacional de Capodimonte', 'Luís Monrreal', 'Planeta', 'F-2', 179, '2016-05-27 13:46:05', '2016-06-14 15:20:42'),
(101, 13, 12, 1, 'National Gallery/Tate Gallery', 'Luis Monreal', 'Planeta', 'F-2', 187, '2016-05-27 13:46:57', '2016-06-14 15:21:08'),
(102, 13, 12, 1, 'Museo de Arte de Cataluña/Museo del Prado', 'Luis Monreal', 'Planeta', 'F-2', 183, '2016-05-27 13:47:43', '2016-06-14 15:21:23'),
(103, 13, 12, 1, 'Galeria Nacional de Washigton/Museo moderno de Nueva York...', 'Luis Monreal', 'Planeta', 'F-2', 187, '2016-05-27 13:48:54', '2016-06-14 15:21:40'),
(104, 13, 12, 1, 'Reales Museos de Bruselas/MUseo REal de Ambreres...', 'Luis Monreal', 'Planeta', 'F-2', 185, '2016-05-27 13:49:52', '2016-06-14 15:21:55'),
(105, 13, 12, 1, 'Museo de Basilea...', 'Luis Monreal', 'Planeta', 'F-2', 185, '2016-05-27 13:50:31', '2016-06-14 15:22:13'),
(106, 13, 12, 1, 'Alte Pinakothek de Munich...', 'Luis Monreal', 'Planeta', 'F-2', 187, '2016-05-27 13:51:27', '2016-06-14 15:22:34'),
(107, 13, 12, 1, 'Museo Bizantino de Atenas...', 'Luís Monrreal', 'Planeta', 'F-2', 182, '2016-05-27 13:52:38', '2016-06-14 15:22:52'),
(109, 13, 14, 1, 'Nueva Enciclopedia Larousse (20 tomos)', 'vacio', 'Planeta', '', 10577, '2016-05-27 14:01:45', '2016-05-27 14:01:45'),
(110, 13, 15, 1, 'Vox 24 (22 tomos)', 'Vacio', 'Biblograf, S.A.', 'E-3', 6336, '2016-05-27 14:05:04', '2016-05-27 14:05:04'),
(111, 13, 1, 1, 'Master Dictionary Collins  (Español-Inglés/English-Spanish)', 'Vacio', 'Grijalbo', 'E-3', 1290, '2016-05-27 14:14:10', '2016-05-27 14:14:10'),
(112, 13, 1, 1, 'Diccionario de la Lengua Catalana', 'Santiago Alberti', 'Alberti', 'E-3', 411, '2016-05-27 14:15:27', '2016-05-27 14:32:39'),
(113, 13, 1, 1, 'Diccionario catalán-castellano', 'Pere Elies i Busqueta', 'Ramón Sopena', 'E-3', 525, '2016-05-27 14:17:10', '2016-05-27 14:17:10'),
(114, 13, 1, 1, 'Diccionario ilustrado de la lengua española', 'Vacio', 'Ramón Sopena', 'E-3', 376, '2016-05-27 14:18:10', '2016-05-27 14:18:10'),
(115, 13, 1, 1, 'Diccionario Inglés-Español', 'Vacio', 'Biblograf, S.A.', 'E-3', 196, '2016-05-27 14:19:10', '2016-05-27 14:19:10'),
(116, 13, 16, 1, 'Cambridge English School (6 tomos)', 'Vacio', '', 'E-3', 0, '2016-05-27 14:20:22', '2016-05-27 14:20:22'),
(117, 13, 20, 1, 'Geografia, Física, Humana i Econòmica', 'Logse EGB', 'Ayuda escolar, S.A.', 'E-4', 291, '2016-05-27 14:24:38', '2016-05-27 14:24:38'),
(118, 13, 20, 1, 'Programa General d\'Estudis catalans', 'Logse EGB', 'Ayuda escolar, S.A.', 'E-4', 300, '2016-05-27 14:26:11', '2016-05-27 14:26:11'),
(119, 13, 19, 1, 'Ecologia y Vida (6 tomos)', 'Vacio', 'Salvat', 'E-4', 0, '2016-05-27 14:41:56', '2016-05-27 14:41:56'),
(120, 13, 1, 2, 'Informática y Programación (32 tomos)', 'Vacio', 'Ediciones/Siglos/Cultural', 'E-4', 0, '2016-05-27 14:45:19', '2016-05-27 14:45:19'),
(121, 13, 1, 1, 'Gestión Informática de la Empresa (2 tomos)', 'Vacio', 'Ediciones/Siglos/Cultural', 'E-4', 0, '2016-05-27 14:46:30', '2016-05-27 14:46:30'),
(122, 13, 19, 1, 'Medicinas Naturales', 'Vacio', 'Ediciones Nauta, S.A.', 'E-4', 112, '2016-05-27 14:48:23', '2016-05-27 14:48:23'),
(123, 13, 19, 1, 'Curación Naturista', 'Vacio', 'Ediciones Nauta, S.A.', 'E-4', 111, '2016-05-27 14:49:12', '2016-05-27 14:49:12'),
(124, 13, 19, 1, 'Cocina diétetica y de régimen', 'Vacio', 'Ediciones Nauta, S.A.', 'E-4', 112, '2016-05-27 14:50:19', '2016-05-27 14:50:19'),
(125, 23, 1, 1, 'Mundo famoso por J.M.Iñígo', 'J.M.Iñigo', 'Jaime libros', 'A-1', 92, '2016-05-27 15:00:03', '2016-05-27 16:56:20'),
(126, 1, 1, 1, 'Aventuras de Arturo Gordon Pym', 'Edgar Allan Poe', 'Circulo de Lectores', 'A-1', 192, '2016-05-27 15:01:58', '2016-05-27 15:01:58'),
(127, 13, 1, 1, 'Delitos y cuestiones penales en el ámbito empresarial (2 tomos)', 'Vacio', '', '', 0, '2016-05-27 15:37:31', '2016-05-27 15:37:31'),
(128, 23, 1, 1, 'Sol-Negro', 'Baltasar Porcel', '', 'A-1', 125, '2016-05-27 16:09:48', '2016-05-27 16:52:49'),
(129, 23, 1, 1, 'El triunfador', 'Torcuato Luca de Tena', '', 'A-1', 111, '2016-05-27 16:10:22', '2016-05-28 07:11:27'),
(130, 23, 1, 1, 'La evita de los descamisados', 'George Bruce', '', 'A-1', 282, '2016-05-27 16:10:49', '2016-05-28 07:11:27'),
(131, 23, 1, 2, 'Joyas del cuento norteamericano', 'vacio', 'Selecciones del Reader\'s Digest, S.A.', 'A-1', 150, '2016-05-27 16:11:46', '2016-07-11 09:39:05'),
(132, 23, 1, 1, 'Los zarcillos de la vid', 'Colette', '', 'A-1', 127, '2016-05-27 16:12:19', '2016-05-28 07:11:27'),
(133, 23, 1, 1, 'Los mártires', 'Chateaubriand', '', 'A-1', 493, '2016-05-27 16:13:05', '2016-05-28 07:11:27'),
(134, 23, 1, 1, 'Mirian, la convertida de Magdala', 'P. León Villuendas', '', 'A-1', 327, '2016-05-27 16:14:20', '2016-05-28 07:11:27'),
(135, 23, 1, 1, 'Diario de un niño tonto', 'José Janés', '', 'A-1', 168, '2016-05-27 16:15:09', '2016-05-27 16:56:50'),
(136, 23, 1, 1, 'El buen gobierno de la vida', 'Förster', '', 'A-1', 185, '2016-05-27 16:15:44', '2016-05-28 07:11:27'),
(137, 1, 1, 1, 'Bearn', 'Lorenzo Villalonga', '', '', 253, '2016-05-27 16:16:27', '2016-05-27 16:16:27'),
(138, 23, 1, 1, 'Pérdidos en los hielos polares', 'Franz Behounek', 'España', 'A-1', 295, '2016-05-27 16:17:39', '2016-07-11 09:20:10'),
(139, 23, 1, 1, 'El juego de la pasión', 'Jerzy Kosinsky', 'Circulo de Lectores, S.A', 'A-1', 303, '2016-05-27 16:18:17', '2016-07-11 09:17:55'),
(140, 24, 1, 1, 'El desert em parlava', 'Montserrat Beltran', 'Castellnou Edicions', 'B-4', 212, '2016-05-27 16:19:04', '2016-07-11 08:29:29'),
(141, 24, 1, 1, 'Enterraments lleugers', 'Olga Xirinacs', 'Edicions 62', 'B-4', 170, '2016-05-27 16:20:14', '2016-07-11 08:31:42'),
(142, 24, 1, 1, 'Formulari Comercial Catala', 'Francesc A. Izquierdo / Toni Ruscalleda', 'Cambra de comerç, industris i navegació de Girona', 'B-4', 242, '2016-05-27 16:20:55', '2016-07-15 06:45:33'),
(143, 1, 1, 1, 'La sonrisa etrusca', 'José Luis Sampietro', 'Alfaguara', 'A-3', 347, '2016-05-27 16:22:42', '2016-07-13 09:02:41'),
(144, 1, 1, 2, 'Golfos de bien', 'Lauro Olmo', 'Plaza & Janes, S.A', 'A-2', 172, '2016-05-27 16:23:59', '2016-05-27 16:23:59'),
(145, 1, 1, 1, 'El lugar sin límites', 'José Donoso', 'Bruguera', 'A-2', 188, '2016-05-27 16:24:43', '2016-05-27 16:24:43'),
(146, 1, 1, 1, 'Rascacielos', 'R.M Stern', 'Circulo de Lectores', 'B-2', 404, '2016-05-27 16:25:19', '2016-07-08 08:22:43'),
(147, 1, 1, 1, 'Regocijo en el hombre', 'Salvador García Aguilar', 'Circulo de Lectores', 'B-2', 392, '2016-05-27 16:26:20', '2016-07-08 08:22:06'),
(148, 1, 1, 1, 'Ficciones', 'Jorge Luis Borges', 'Planeta Agostini', 'B-2', 204, '2016-05-27 16:27:05', '2016-07-08 08:20:41'),
(149, 1, 1, 1, 'La ciudad y los perros', 'Mario Vargas Llosa', 'Planeta Agostini', 'B-2', 352, '2016-05-27 16:27:47', '2016-07-08 08:19:58'),
(150, 1, 1, 1, 'Tres Novelas de Siglo de Oro', 'Varios', 'Planeta', '240', 0, '2016-05-27 16:28:32', '2016-05-27 16:28:32'),
(151, 23, 1, 1, 'El lirio en el valle', 'H. de Balzac', 'Luis Tasso', 'A-1', 374, '2016-05-27 16:32:47', '2016-07-11 09:46:57'),
(152, 1, 1, 1, 'Cuentos amatorios', 'Pedro A. de Alarcón', '', 'B-2', 213, '2016-05-27 16:34:34', '2016-07-08 08:10:17'),
(153, 1, 1, 1, 'La torre de los vicios capitales', 'Terenci Moix', 'Táber', 'A-2', 351, '2016-05-27 16:35:54', '2016-05-27 16:35:54'),
(154, 1, 1, 1, 'Un amante joven ', 'Joanna Trollope', 'Plaza & Janes, S.A', 'B-2', 287, '2016-05-27 16:36:52', '2016-07-08 08:11:35'),
(155, 1, 1, 1, 'El líder', 'Harold Robbins', 'Bruguera', 'B-2', 511, '2016-05-27 16:37:55', '2016-07-08 08:19:22'),
(156, 1, 1, 1, 'Yo, tu madre', 'Christiane Collange', 'Circulo de Lectores', 'B-2', 157, '2016-05-27 16:39:12', '2016-07-08 08:17:30'),
(157, 1, 1, 1, 'Guinea Macias, la ley del silencio', 'Ramón García Dominguez', 'Plaza & Janes, S.A', 'A-2', 286, '2016-05-27 16:40:33', '2016-05-27 16:40:33'),
(158, 1, 1, 1, 'La hora violeta', 'Montserrat Roig', 'Argos Vergara', 'A-2', 268, '2016-05-27 16:41:30', '2016-07-13 08:06:24'),
(159, 24, 1, 1, 'Pell d\' armadillo', 'Jordi Puntí', 'Proa a tot vent', 'A-4', 172, '2016-05-27 17:34:34', '2016-05-28 08:53:24'),
(160, 23, 1, 1, 'Estructura energética de España', 'Vacio', 'Banco Pastor', 'A-1', 203, '2016-05-27 17:35:38', '2016-05-28 07:11:27'),
(161, 23, 1, 1, 'Introducción a la economía ...', 'Vacio', '', 'A-1', 367, '2016-05-27 17:36:26', '2016-05-28 07:11:27'),
(162, 23, 1, 1, 'Un cooperativista, el padre Avellanas', 'Francisco de Asis ..', '', 'A-1', 192, '2016-05-27 17:38:03', '2016-05-28 07:11:27'),
(163, 23, 1, 1, 'Introducción a la estadística ...', 'Vacio', '', 'A-1', 174, '2016-05-27 17:38:46', '2016-05-28 07:11:27'),
(164, 1, 1, 1, 'Ejercicios y soluciones de cálculo financiero...', 'Vacio', '', '', 0, '2016-05-27 17:39:23', '2016-05-27 17:39:23'),
(165, 1, 1, 1, 'El tesoro griego', 'Irvin Stone', 'Plaza & Janes, S.A', 'A-2', 572, '2016-05-27 17:41:45', '2016-05-27 17:41:45'),
(166, 1, 1, 1, 'Señor de la danza', 'Andrew M Greeley', 'Circulo de Lectores', 'A-2', 435, '2016-05-27 17:42:32', '2016-05-27 17:42:32'),
(167, 1, 1, 1, 'La sirena negra / Insolación', 'Emilia Pardo Bazán', 'Bruguera', 'A-2', 446, '2016-05-27 17:43:32', '2016-05-27 17:43:32'),
(168, 1, 1, 1, 'La gente de July', 'Nadine Gordimer', 'Circulo de Lectores', 'A-2', 222, '2016-05-27 17:44:06', '2016-07-13 07:56:21'),
(169, 1, 1, 1, 'La celestina', 'Fernando de Rojas', 'Circulo de Lectores', 'B-2', 427, '2016-05-27 17:44:39', '2016-07-08 08:21:16'),
(170, 1, 1, 1, 'El mundo de Sofía', 'Jostein Gaarder', 'Circulo de Lectores', 'A-3', 668, '2016-05-27 17:45:16', '2016-07-13 08:28:40'),
(171, 1, 1, 1, 'El peregrino', 'León Uris', 'Circulo de Lectores', 'A-2', 461, '2016-05-27 17:45:45', '2016-05-27 17:45:45'),
(172, 1, 1, 1, 'Raíces', 'Alex Haley', 'Ultramar', 'A-3', 520, '2016-05-27 17:46:26', '2016-07-13 08:32:54'),
(173, 13, 1, 1, 'Diccionario enciclopédico abreviado', 'Vacio', 'Ediciones Nauta, S.A.', 'E-3', 0, '2016-05-27 18:02:46', '2016-05-27 18:02:46'),
(174, 1, 1, 1, 'El cuarto azul', 'Georges Simenon', '', 'B-2', 180, '2016-05-27 18:12:48', '2016-07-08 08:18:49'),
(175, 1, 1, 1, 'Baol, una tranquila noche de régimen', 'Steffano Benni', 'Seix Barral', 'A-2', 165, '2016-05-27 18:14:16', '2016-07-13 08:07:13'),
(176, 1, 1, 1, 'Pantaleón y las visitadoras', 'Mario Vargas Llosa', 'Circulo de Lectores', 'B-2', 309, '2016-05-27 18:16:00', '2016-07-08 08:09:43'),
(177, 1, 1, 1, 'El último podium', 'Vicente M Seguí Pastor', 'gráficas trullenque', 'A-2', 164, '2016-05-27 18:17:47', '2016-05-27 18:17:47'),
(178, 23, 1, 1, 'Cuerpos y almas', 'Maxence Van der Meersch', 'Plaza & Janes, S.A', 'A-1', 505, '2016-05-27 18:22:25', '2016-05-27 18:22:25'),
(179, 23, 1, 1, 'Volvoreta', 'W Fernández Flores', '', 'A-1', 259, '2016-05-27 18:23:36', '2016-05-28 07:11:27'),
(180, 23, 1, 1, 'El Rizo', 'Robert Littell', 'Plaza & Janes, S.A', 'A-1', 249, '2016-05-27 18:24:50', '2016-05-28 07:11:27'),
(181, 23, 1, 1, 'Últimas tardes con Teresa', 'Juan Marsé', 'Bruguera', 'A-1', 411, '2016-05-27 18:25:51', '2016-05-28 07:11:28'),
(182, 24, 1, 1, 'Falgeres informa', 'Manuel de Pedrolo', 'El Balancí', 'A-4', 234, '2016-05-27 18:27:22', '2016-05-28 08:53:25'),
(183, 24, 1, 1, 'Teatre', 'Àngel Guimerà', 'Edicions 62', 'B-4', 221, '2016-05-27 18:28:32', '2016-07-11 08:25:02'),
(184, 23, 1, 1, 'Pabellón de Cancer', 'Alexandr Solschenizyn', 'Circulo de Lectores', 'A-1', 622, '2016-05-27 18:29:44', '2016-05-28 07:11:28'),
(185, 23, 1, 1, 'Por tierras del sur de América', 'R Gay Montellá', '', 'A-1', 162, '2016-05-27 18:30:27', '2016-05-28 07:11:28'),
(186, 1, 1, 1, 'El guateque', 'William Katz', 'Plaza & Janes, S.A', 'A-2', 250, '2016-05-27 18:43:10', '2016-07-13 07:55:36'),
(187, 1, 1, 1, 'La insoportable levedad del ser', 'Milan Kundera', 'TusQuets', 'A-3', 320, '2016-05-27 18:44:42', '2016-07-13 08:32:07'),
(188, 1, 1, 1, 'Cuentos de fantasmas', 'M R James', 'Siruela', 'A-2', 322, '2016-05-27 18:45:20', '2016-07-13 08:09:55'),
(189, 1, 1, 1, 'Rayuela', 'Julio Cortazar', 'Edhasa', 'A-3', 635, '2016-05-27 18:46:47', '2016-07-13 08:31:17'),
(190, 1, 1, 1, 'La llamada de la selva', 'Jack London', 'Circulo de Lectores', 'A-2', 177, '2016-05-27 18:47:34', '2016-07-13 08:12:42'),
(191, 1, 1, 1, 'Cumbres borrascosas', 'Emily Brontë', 'Ediciones GP Barcelona', 'A-3', 432, '2016-05-27 19:18:44', '2016-07-13 09:06:17'),
(192, 1, 1, 1, 'Tiempo de silencio', 'Luis Martin-Santos', 'Seix Barral', 'B-2', 240, '2016-05-27 19:19:26', '2016-07-08 08:18:05'),
(193, 1, 1, 1, 'Tuareg', 'Alberto Vazquez Figueroa', 'Plaza & Janes, S.A', 'A-3', 316, '2016-05-27 19:20:03', '2016-07-13 08:48:38'),
(194, 23, 1, 1, 'Sayonara', 'James A. Michener', 'GPa', 'A-1', 284, '2016-05-27 19:22:31', '2016-05-28 07:11:28'),
(195, 23, 1, 1, 'Angélica y su amor', 'Anne Y Serge Golón', '', 'B-1', 441, '2016-05-27 19:23:20', '2016-05-28 07:11:28'),
(196, 23, 1, 1, 'Arriba y Abajo', 'John Hawkesworth', 'Bruguera, S.A.', 'A-1', 510, '2016-05-27 19:24:11', '2016-07-11 09:13:27'),
(197, 23, 1, 1, 'El gran secreto', 'René Barjavel', 'Ultramar', 'A-1', 209, '2016-05-27 19:25:00', '2016-05-28 07:11:28'),
(198, 1, 1, 3, 'Todos Los Nombres', 'José Saramago', 'Nueva Narrativa', 'A-2', 190, '2016-05-27 19:29:00', '2016-05-28 08:35:43'),
(199, 1, 1, 3, 'La lluvia amarilla', 'Julio LLamazares', 'Seix Barral', 'A-3', 143, '2016-05-27 19:30:19', '2016-05-27 19:30:19'),
(200, 1, 1, 3, 'Los santos inocentes', 'Miguel Delibes', 'El mundo', 'A-3', 95, '2016-05-27 19:31:20', '2016-05-27 19:31:20'),
(201, 1, 1, 3, 'Una familia lejana', 'Carlos Fuentes', 'Bruguera', 'A-2', 223, '2016-05-27 19:32:10', '2016-05-27 19:32:10'),
(202, 1, 1, 3, 'Muerte en Kenia', 'M M Kaye', 'Plaza & Janes, S.A', 'A-2', 250, '2016-05-27 19:32:50', '2016-05-27 19:32:50'),
(203, 1, 1, 3, 'El médico', 'Noah Gordon', 'Ediciones BSA', 'A-3', 895, '2016-05-27 19:33:54', '2016-05-27 19:33:54'),
(204, 23, 1, 1, 'Angélica y la diabla', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 365, '2016-05-27 19:42:16', '2016-05-28 07:11:28'),
(205, 23, 1, 1, 'Angélica', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 559, '2016-05-27 19:42:56', '2016-05-28 07:11:28'),
(206, 23, 1, 1, 'Indomable Angélica', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 495, '2016-05-27 19:43:32', '2016-05-28 07:11:28'),
(207, 23, 1, 1, 'Angélica y el nuevo mundo', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 588, '2016-05-27 19:44:11', '2016-05-28 07:11:28'),
(208, 23, 1, 1, 'Angélica y el rey', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 521, '2016-05-27 19:44:42', '2016-05-28 07:11:29'),
(209, 23, 1, 1, 'La tentación de Angélica', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 482, '2016-05-27 19:45:23', '2016-05-28 07:11:29'),
(210, 19, 1, 4, 'Villages Pyrénéens', 'León Mazzella', 'Editions Milan', 'A-5', 159, '2016-05-28 06:11:30', '2016-07-15 06:46:33'),
(211, 24, 1, 1, 'Fora d\'antena', 'Josep Cuni', 'Planeta', 'A-4', 223, '2016-05-28 06:25:50', '2016-05-28 08:53:25'),
(212, 1, 1, 1, 'La salvación de un Forsyte', 'John Galsworthy', 'La espiga literaria', 'B-2', 190, '2016-05-28 06:35:28', '2016-07-08 08:12:24'),
(213, 1, 1, 1, 'Localidad de sombra', 'peter Ustinov', 'La espiga literaria', 'B-2', 189, '2016-05-28 06:36:09', '2016-07-08 08:13:04'),
(214, 1, 1, 1, 'Lazarillo de Tormes', 'Anónimo', 'Cátedra', 'B-2', 191, '2016-05-28 06:37:03', '2016-07-08 08:13:55'),
(215, 1, 1, 1, 'El emperador', 'Frederick Forsyth', 'Plaza & Janes, S.A', 'B-2', 205, '2016-05-28 06:37:55', '2016-07-08 08:16:17'),
(216, 23, 1, 1, 'Confidencias de un clarinete', 'Erckmann -- Chatriam', '', 'A-1', 279, '2016-05-28 06:40:18', '2016-05-28 07:11:28'),
(217, 23, 1, 1, 'Selecciones de la narrativa mundial', 'Vacio', '', 'A-1', 350, '2016-05-28 06:41:02', '2016-05-28 07:11:28'),
(218, 23, 1, 1, 'Vacaciones de Semana Santa', 'Miguel Villalonga', 'La espiga literaria', 'A-1', 173, '2016-05-28 06:41:46', '2016-05-28 07:11:28'),
(219, 23, 1, 1, 'Fusilado en las tapias del cementerio', 'Santos Alcocer', 'Manantial', 'A-1', 310, '2016-05-28 06:42:49', '2016-05-28 07:11:28'),
(220, 23, 1, 1, 'La renuncia', 'Antonio Losada', 'Ediciones Cid', 'A-1', 414, '2016-05-28 06:43:42', '2016-05-28 07:11:28'),
(221, 23, 1, 1, 'Flora', 'Pilar Pascual de San Juan', '', 'A-1', 388, '2016-05-28 06:44:42', '2016-05-28 07:11:28'),
(222, 23, 1, 1, 'Tiburón', 'Piter Benchley', 'Planeta', 'A-1', 303, '2016-05-28 06:45:37', '2016-05-28 07:11:28'),
(223, 23, 1, 1, 'Noticia sobre Alvar Nuñez cabeza de vaca', 'Carlos Lacalle', 'Colección nuevo mundo', 'A-1', 156, '2016-05-28 06:46:56', '2016-05-28 07:11:28'),
(224, 23, 1, 1, 'L\'éstranger', 'Camus', '', 'A-1', 186, '2016-05-28 06:47:53', '2016-05-28 07:11:28'),
(225, 21, 1, 1, 'La selva de neón', 'Nelson Algren', 'La espiga literaria', 'A-1', 159, '2016-05-28 06:49:29', '2016-07-13 07:08:28'),
(226, 23, 1, 1, 'Pasiones humanas', 'Frank Yerby', 'Planeta', 'A-1', 312, '2016-05-28 06:50:23', '2016-05-28 07:11:28'),
(227, 23, 1, 1, 'El camino de Versalles', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 471, '2016-05-28 06:52:13', '2016-05-28 07:11:29'),
(228, 23, 1, 1, 'Angélica se rebela', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 430, '2016-05-28 06:52:55', '2016-05-28 07:11:29'),
(229, 23, 1, 1, 'Angélica y el terror', 'Anne Y Serge Golón', 'Circulo de Lectores', 'B-1', 322, '2016-05-28 06:53:52', '2016-05-28 07:11:29'),
(230, 23, 1, 1, 'Grandes novelas históricas', 'Varios', 'Circulo de amigos de la historia', 'B-1', 351, '2016-05-28 07:15:57', '2016-05-28 07:15:57'),
(231, 1, 1, 1, 'Paralelo 35', 'Carmen Laforet', 'Planeta', 'B-2', 235, '2016-05-28 07:30:39', '2016-07-08 08:16:41'),
(232, 1, 1, 1, 'Vendaval', 'Alberto Vazquez Figueroa', 'Circulo de Lectores', 'A-3', 176, '2016-05-28 07:31:57', '2016-07-13 08:43:16'),
(233, 1, 1, 1, 'La hoguera', 'Concha Alos', 'Planeta', '', 213, '2016-05-28 07:34:25', '2016-05-28 07:34:25'),
(234, 1, 1, 1, 'El otoño del patriarca', 'Gabriel García Marquez', 'Bruguera', 'B-2', 344, '2016-05-28 07:36:43', '2016-07-08 08:08:59'),
(235, 1, 1, 1, 'Doctor Guillotina', 'Herbert Lom', 'Seix Barral', 'A-3', 237, '2016-05-28 07:40:35', '2016-07-13 09:01:11'),
(236, 24, 1, 1, 'El día que va a morir Marilyn', 'Terenci Moix', '', 'A-4', 336, '2016-05-28 07:42:24', '2016-05-28 08:53:25'),
(237, 23, 1, 1, 'El guardián del corazón', 'Francoise Sagan', 'Plaza & Janes, S.A', 'B-1', 121, '2016-05-28 07:46:39', '2016-05-28 07:46:39'),
(238, 23, 1, 1, 'Que Dios te guarde', 'Tibor Orban de Kolozsy', '', 'B-1', 283, '2016-05-28 07:50:26', '2016-05-28 07:50:26'),
(239, 23, 1, 1, 'Kapo, el señor de la muerte', 'Karl Von Vereiter', 'Ediciones Petronio S.A', 'B-1', 321, '2016-05-28 07:52:53', '2016-05-28 07:52:53'),
(240, 24, 1, 1, 'Pensaments del Cor', 'Louisel.Hay', 'Urano', 'B-4', 247, '2016-05-28 07:58:06', '2016-07-11 08:38:40'),
(241, 1, 1, 1, 'Los escarabajos vuelan al atardecer', 'María Gripe', 'Ediciones SM', 'A-2', 225, '2016-05-28 08:03:50', '2016-07-13 07:58:23'),
(242, 24, 1, 1, 'Els hereus de la terra', 'Manuel Bofarull', 'El Balancí', 'B-4', 221, '2016-05-28 08:22:33', '2016-07-11 08:43:05'),
(243, 24, 1, 1, 'Els versos satànics', 'Salman Rushdie', 'Circulo de Lectores', 'B-4', 431, '2016-05-28 08:57:33', '2016-07-11 08:51:38'),
(244, 24, 1, 1, 'Anna', 'Maria Lluïsa Sola', 'La galera', 'B-4', 124, '2016-05-28 09:30:11', '2016-07-11 08:44:02'),
(245, 1, 1, 1, 'Zu, el angel anfibio', 'Ramón J: Sender', 'Planeta', 'A-3', 230, '2016-05-28 09:31:21', '2016-07-13 08:42:34'),
(246, 1, 1, 1, 'En la vida de Ignacio Morel', 'Ramón J: Sender', 'Planeta', 'A-3', 260, '2016-05-28 09:32:22', '2016-07-13 08:41:44'),
(247, 1, 1, 1, 'La vieja sirena', 'José Luis Sampietro', 'Plaza & Janes, S.A', 'A-3', 725, '2016-05-28 09:33:36', '2016-07-13 09:04:26'),
(248, 1, 1, 1, 'Retrato en Sepia', 'Isabel Allende', 'Plaza & Janes, S.A', 'A-3', 343, '2016-05-28 09:35:12', '2016-07-13 08:24:39'),
(249, 1, 1, 1, 'Los grandes clásicos de la India', 'Varios', 'Fondo editorial Bhaktivedanta', 'B-2', 895, '2016-05-28 09:37:41', '2016-07-08 08:42:06'),
(250, 1, 1, 1, 'La piel fría', 'Albert Sánchez Piñol', 'Circulo de Lectores', 'A-3', 219, '2016-05-28 09:38:58', '2016-07-13 08:30:02'),
(251, 1, 1, 1, 'El criterio', 'Jaime Balmes', 'Circulo de Lectores', 'A-2', 291, '2016-05-28 09:40:21', '2016-05-28 09:40:21'),
(252, 1, 1, 1, 'La ciudadela', 'A.J. Cronin', 'Plaza & Janes, S.A', 'B-2', 411, '2016-05-28 09:41:17', '2016-07-27 08:29:14'),
(253, 1, 1, 1, 'Aparición del eterno femenino', 'Álvaro Pombo', 'Anagrama', 'A-2', 191, '2016-05-28 09:42:38', '2016-05-28 09:42:38'),
(254, 1, 1, 4, 'Yo soy Malala', 'Malala Yousafzai', 'Alianza', 'A-3', 356, '2016-05-28 09:52:43', '2016-05-28 09:52:43'),
(255, 1, 1, 4, 'Una heredera de Barcelona', 'Sergio Vila-Sanjuán', 'Destino', 'A-3', 318, '2016-05-28 09:54:06', '2016-05-28 09:54:06'),
(256, 1, 1, 4, 'Nosotras que nos queremos tanto', 'Marcela Serrano', 'Gebara', 'A-2', 303, '2016-05-28 09:56:19', '2016-05-28 09:56:19'),
(257, 1, 1, 4, 'El arma de los invisibles', 'José Manuel García-Otero', 'Punto Rojo', 'A-3', 302, '2016-05-28 09:58:43', '2016-05-28 09:58:43'),
(258, 1, 1, 4, 'La ciudad de los prodigios', 'Eduardo Mendoza', 'Seix Barral', 'A-3', 575, '2016-05-28 10:00:27', '2016-05-28 10:00:27'),
(259, 1, 1, 4, 'Doctor ... supongo', 'Miguel Gutiérrez Garitano y Miguel Gutiérrez Fraile', 'Colección Correria', 'A-2', 451, '2016-05-28 10:05:45', '2016-05-28 10:05:45'),
(260, 24, 1, 1, 'Antología de la poesía catalana', 'Joan Triadú', 'Selecta', 'A-4', 312, '2016-05-28 10:13:41', '2016-05-28 10:13:41'),
(261, 24, 1, 1, 'La trompeta acústica', 'Leonora Carrigton', 'Edicions de l\'Eixample', 'B-4', 237, '2016-05-28 10:14:51', '2016-07-11 08:48:31'),
(262, 1, 1, 1, 'Grandes maestros de la contemporanea', 'Harold Robbins', 'Luis de Caralt Editro, S.A.', 'B-2', 895, '2016-05-28 10:16:02', '2016-05-28 10:16:02'),
(263, 1, 1, 1, 'Retrato de una dama', 'Henry James', 'Ediciones BSA', 'A-3', 568, '2016-05-28 10:17:17', '2016-05-28 10:17:17'),
(264, 23, 1, 1, 'Diagnóstico final', 'Arthur Hailey', 'Circulo de Lectores', '', 0, '2016-05-28 10:18:50', '2016-05-28 10:18:50'),
(265, 23, 1, 1, 'Donde el río nace', 'James Oliver Curwood', 'Juventud', 'B-1', 192, '2016-05-28 10:20:04', '2016-05-28 10:20:04'),
(266, 23, 1, 1, 'El amante de Lady Chatterley', 'D.H. Lawrence', 'Bruguera', 'B-1', 410, '2016-05-28 10:21:04', '2016-05-28 10:21:04'),
(267, 23, 1, 1, 'Los buscadores de oro', 'James Oliver Curwood', 'Juventud', 'B-1', 158, '2016-05-28 10:21:50', '2016-05-28 10:21:50'),
(268, 23, 1, 1, 'La venus del cuadro', 'Frank G. Slaughter', 'Planeta', 'B-1', 317, '2016-05-28 10:22:31', '2016-05-28 10:22:31'),
(269, 1, 1, 1, 'Bouvard y Pecuchet', 'Gustave Flaubert', 'Bruguera', 'B-2', 348, '2016-05-28 10:23:43', '2016-05-28 10:23:43'),
(270, 23, 1, 1, 'St. Mawr', 'D.H. Lawrence', 'La espiga literaria', 'B-1', 193, '2016-05-28 10:24:31', '2016-05-28 10:24:31'),
(271, 1, 1, 1, 'El lugar maldito', 'Ivo Andric', 'La espiga literaria', 'B-2', 192, '2016-05-28 10:25:31', '2016-05-28 10:25:31'),
(272, 23, 1, 1, 'Marcelino Massana ¿Terrorismo o resistencia?', 'José M. Reguant', 'Dopesa', 'B-1', 219, '2016-05-28 10:26:53', '2016-05-28 10:26:53'),
(273, 23, 1, 1, 'El Mundo es ansí', 'Pío Baroja', 'Austral', 'B-1', 152, '2016-05-28 10:27:49', '2016-05-28 10:27:49'),
(274, 23, 1, 1, 'La muerte de Tristán', 'Miguel del Castillo', 'La espiga literaria', 'B-1', 150, '2016-05-28 10:28:29', '2016-05-28 10:28:29'),
(275, 23, 1, 1, 'El Tangram (Juego de forma chinas)', 'Joost Elffers', 'Barral', 'B-1', 0, '2016-05-28 10:29:34', '2016-05-28 10:29:34'),
(276, 23, 1, 1, 'Pureza y Hermosura', 'T.Tóth', '', '', 234, '2016-05-28 10:30:54', '2016-05-28 10:30:54'),
(277, 23, 1, 1, 'Los perros del paraíso', 'Abel Posse', 'Circulo de Lectores', 'B-1', 216, '2016-05-28 10:32:00', '2016-05-28 10:32:00'),
(278, 23, 1, 1, 'Silbido', 'James Jones', 'Bruguera', 'B-1', 509, '2016-05-28 10:33:45', '2016-05-28 10:33:45'),
(279, 23, 1, 1, 'El quinto jinete', 'Dominique Lapierre...', 'Plaza & Janes, S.A', 'B-1', 382, '2016-05-28 10:34:28', '2016-05-28 10:34:28'),
(280, 23, 1, 1, 'Primer amor primer dolor', 'José Luís Martín Vigil', '', 'B-1', 310, '2016-05-28 10:35:30', '2016-05-28 10:35:30'),
(281, 1, 1, 1, 'Nunca me abandones', 'Harold Robbins', 'Biblioteca Universal Caralt', 'B-2', 251, '2016-05-28 11:56:52', '2016-07-08 08:06:19'),
(282, 1, 1, 1, 'Aeropuerto', 'Arthur Hailey', 'Planeta/Bruguera', 'B-2', 507, '2016-05-28 12:00:52', '2016-05-28 12:02:09'),
(283, 1, 1, 1, 'Los encadenados', 'Angela Casanova', 'Interpress, S.L.', 'A-3', 96, '2016-05-28 12:03:10', '2016-05-28 12:32:33'),
(284, 1, 1, 1, 'Bella del Señor', 'Albert Cohen', 'Circulo de Lectores', 'A-2', 805, '2016-05-28 12:03:58', '2016-05-28 12:30:01'),
(285, 1, 1, 1, 'Buenos días, tristeza', 'Françoise Sagan', 'Tusquets', 'A-3', 179, '2016-05-28 12:05:37', '2016-05-28 12:27:01'),
(286, 1, 1, 1, 'Fragmentos de interior', 'Carmen Martín Gaite', 'Destino', 'B-2', 202, '2016-05-28 12:08:01', '2016-05-28 12:08:01'),
(287, 1, 1, 1, 'Gustave Flaubert', 'Madame Bovary', 'Bruguera', 'B-2', 412, '2016-05-28 12:10:10', '2016-05-28 12:10:10'),
(288, 1, 1, 1, 'La tierra caliente', 'Paul Bowles', 'Circulo de Lectores', 'A-3', 221, '2016-05-28 12:11:16', '2016-05-28 12:26:28'),
(289, 1, 1, 1, 'El País de la lluvia', 'Francisco López Serrano', 'Prames', 'A-3', 289, '2016-05-28 12:12:50', '2016-05-28 12:25:46'),
(290, 1, 1, 1, 'Los verdes campos de Edén-Los buenos días perdidos', 'Antonio Gala', 'Espasa', 'B-2', 143, '2016-05-28 12:14:39', '2016-05-28 12:14:39'),
(291, 1, 1, 1, 'Tres sombreros de copa - Maribel y la extraña familia', 'Miguel Mihura', 'Espasa', 'B-2', 205, '2016-05-28 12:15:34', '2016-05-28 12:15:34'),
(292, 1, 1, 1, 'Puebla de las mujeres - El genio alegre', 'S. y J. Álvarez Quintero', 'Espasa', 'B-2', 142, '2016-05-28 12:17:36', '2016-05-28 12:17:36'),
(293, 1, 1, 1, 'Las mocedades del cid', 'Guillén de Castro', 'Cátedra', 'B-2', 188, '2016-05-28 12:19:10', '2016-05-28 12:19:10'),
(294, 1, 1, 1, 'El lindo Don Diego', 'Agustín Moreto', 'Cátedra', 'B-2', 145, '2016-05-28 12:20:04', '2016-05-28 12:20:04'),
(295, 1, 1, 1, 'Genio y figura', 'Juan Valera', 'Cátedra', 'B-2', 273, '2016-05-28 12:20:50', '2016-05-28 12:21:53'),
(296, 1, 1, 1, 'Moral de bolsillo', 'Antonio Hortelano', 'Sígueme, S.A.', 'A-2', 309, '2016-05-28 12:29:00', '2016-05-28 12:29:34'),
(297, 23, 1, 1, 'El Mediterraneo es un hombre disfrazado de mar', 'José María Gironella', 'Plaza & Janes, S.A', 'B-1', 392, '2016-05-28 12:34:38', '2016-05-28 12:34:38'),
(298, 23, 1, 1, 'Trafalgar', 'Benito Perez Galdos', 'Salvat', 'B-1', 185, '2016-05-28 12:35:25', '2016-05-28 12:35:25'),
(299, 23, 1, 1, 'Licencia para incordiar', 'Álvaro de la Iglesia', 'Planeta', 'B-1', 281, '2016-05-28 12:36:29', '2016-05-28 12:36:29'),
(300, 23, 1, 1, 'Hombre o gorila', 'Vacio', 'Vertice', 'B-1', 0, '2016-05-28 12:38:50', '2016-05-28 12:38:50'),
(301, 23, 1, 1, 'El Señor es mi fuerza', 'J.A. Espinosa', 'Apostolado de la prensa, S.A.', 'B-1', 110, '2016-05-28 12:40:14', '2016-05-28 12:40:14'),
(302, 23, 1, 1, 'La capitulación', 'Françoise Sagan', 'Ediciones G.P', 'B-1', 244, '2016-05-28 12:41:32', '2016-05-28 12:41:32'),
(303, 23, 1, 1, 'El libro de la casa', 'N.H. y S.K. Mager', 'Daimon', 'B-1', 280, '2016-05-28 12:42:37', '2016-05-28 12:42:37'),
(304, 23, 1, 1, 'El libro del joven', 'Doctor Carnot', 'Stvdivm', 'B-1', 321, '2016-05-28 12:44:47', '2016-05-28 12:44:47'),
(305, 23, 1, 1, 'Lettres de mon moulin', 'Daudet', '', 'C-1', 0, '2016-05-28 12:46:21', '2016-05-28 12:46:21'),
(306, 23, 1, 1, 'El concierto de San Ovidio la fundación', 'Antonio Buero Vallejo', 'Austral', 'C-1', 258, '2016-05-28 12:47:43', '2016-05-28 12:47:43'),
(307, 23, 1, 1, 'A Madrid, por capricho', 'Fany Rubio', 'Renfe', 'C-1', 91, '2016-05-28 12:50:00', '2016-05-28 12:50:00'),
(308, 23, 1, 1, 'Más allá del bien y del mal', 'Friedrich Nietzsche', 'Alianza', 'C-1', 288, '2016-05-28 12:51:19', '2016-05-28 12:51:19'),
(309, 23, 1, 1, 'La vida de Lazarillo de Tormes', 'Julio Cejador y Frauca', 'Espasa', 'C-1', 253, '2016-05-28 12:52:58', '2016-05-28 12:52:58'),
(310, 23, 1, 1, 'En busca del Gran Kan', 'Vicente Blasco Ibañez', '', 'C-1', 379, '2016-05-28 12:54:53', '2016-05-28 12:54:53'),
(311, 23, 1, 1, 'Los Testigos de la Pasión', 'Giovanni Papini', 'Mundo moderno', 'C-1', 138, '2016-05-28 12:56:11', '2016-05-28 12:56:11'),
(312, 23, 1, 1, 'Alaska a través de las cartas del Padre Llorente', 'Angel Santos Hernández', '', 'C-1', 359, '2016-05-28 12:57:54', '2016-05-28 12:57:54'),
(313, 23, 1, 1, 'Los cuatro jinetes del apocalipsis', 'Blasco Ibañez', '', 'C-1', 404, '2016-05-28 12:59:59', '2016-05-28 12:59:59'),
(314, 23, 1, 1, 'Pedro y Juana', 'Luis López Allué', '', 'C-1', 202, '2016-05-28 13:01:19', '2016-05-28 13:01:19'),
(315, 23, 1, 1, 'La divina comedia', 'Dante', '', 'C-1', 493, '2016-05-28 13:02:11', '2016-05-28 13:02:11'),
(316, 23, 1, 1, 'La ópera', 'Antonio Fernández-Cid', 'Planeta', 'C-1', 156, '2016-05-28 13:03:02', '2016-05-28 13:03:02'),
(317, 23, 1, 1, 'Cuando el sexo lo puede todo', 'Vacio', 'Pronto', 'C-1', 78, '2016-05-28 13:06:13', '2016-05-28 13:06:13'),
(318, 23, 1, 1, 'La Reina Mártir', 'P. Coloma', '', 'c-1', 302, '2016-05-28 13:07:15', '2016-05-28 13:07:15'),
(319, 23, 1, 1, 'Cuentos rumanos', 'Ion Luca Caragiale', '', 'C-1', 233, '2016-05-28 13:10:21', '2016-05-28 13:10:21'),
(320, 23, 1, 1, 'Continela de Occidente', 'Luis de Galingsola', 'AHR', 'C-1', 467, '2016-05-28 13:11:28', '2016-05-28 13:11:28'),
(321, 24, 1, 1, 'Vés on et porti el cor', 'Susanna Tamaro', 'Seix Barral', 'B-4', 190, '2016-05-28 13:12:59', '2016-07-11 08:35:35'),
(322, 24, 1, 1, 'L\'equivocació de la Stacey', 'Ann M. Martín', 'Molino', 'B-4', 150, '2016-05-28 13:13:48', '2016-07-11 08:37:58'),
(323, 23, 1, 1, 'La Noria', 'Luís Romero', 'Circulo de Lectores', 'C-1', 263, '2016-05-28 13:14:28', '2016-05-28 13:14:28'),
(324, 23, 1, 1, 'La pródiga', 'Pedro A. de Alarcón', 'Nacional', 'C-1', 301, '2016-05-28 13:15:26', '2016-05-28 13:15:26'),
(325, 23, 1, 1, 'Calle Mayor', 'Sinclair Lewis', 'G.P.', 'C-1', 443, '2016-05-28 13:16:34', '2016-05-28 13:16:34'),
(326, 23, 1, 1, 'Edad prohibida', 'Torcuato Luca de Tena', 'Circulo de Lectores', 'C-1', 312, '2016-05-28 13:17:25', '2016-05-28 13:17:25'),
(327, 23, 1, 1, 'La histeria', 'Sigmund Freud', 'Alianza', 'C-1', 222, '2016-05-28 13:19:22', '2016-05-28 13:19:22'),
(328, 23, 1, 1, 'El arte de aprender', 'Marcel Prevost', 'Espasa', 'C-1', 150, '2016-05-28 13:20:07', '2016-05-28 13:20:07'),
(329, 23, 1, 1, 'Conocer Engels y su obra', 'J.M. Bermudo Avila', 'Dopesa', 'C-1', 158, '2016-05-28 13:21:01', '2016-05-28 13:21:01'),
(330, 23, 1, 1, 'Conocer Spinoza y su obra', 'Felip Lorda', 'Dopesa', 'C-1', 127, '2016-05-28 13:21:38', '2016-05-28 13:21:38'),
(331, 23, 1, 1, 'El Valle largo', 'John Steinbeck', 'Luis de Caralt Editro, S.A.', 'C-1', 259, '2016-05-28 13:22:37', '2016-05-28 13:22:37'),
(332, 23, 1, 1, 'Bonanza, la desaparición de Ward', 'Vacio', 'Bruguera', 'C-1', 236, '2016-05-28 13:23:22', '2016-05-28 13:23:22'),
(333, 23, 1, 1, 'La estrella y su doble', 'Laura García Corella', 'Vasco Americana', 'C-1', 114, '2016-05-28 13:24:07', '2016-05-28 13:24:07'),
(334, 23, 1, 1, 'Huéspeddel mar', 'César González- Ruano', 'La Xarnada', 'C-1', 162, '2016-05-28 13:25:03', '2016-05-28 13:25:03'),
(335, 23, 1, 1, 'León, el Africano', 'Amin Maalouf', 'Alianza', 'C-1', 421, '2016-05-28 13:25:53', '2016-05-28 13:25:53'),
(336, 23, 1, 1, 'Este y Oeste', 'Pearl S. Buck', 'Caralt', 'C-1', 205, '2016-05-28 13:26:49', '2016-05-28 13:26:49'),
(337, 23, 1, 1, 'El Valle de las muñecas', 'Jacqueline Susann', 'Circulo de Lectores', 'C-1', 527, '2016-05-28 13:27:22', '2016-05-28 13:27:22'),
(338, 23, 1, 1, 'La isla de las sirenas', 'Irving Wallace', 'Circulo de Lectores', 'C-1', 548, '2016-05-28 13:28:04', '2016-05-28 13:28:04'),
(339, 23, 1, 1, 'Heroes - Cándida', 'Bernand Shaw', 'Espasa', 'C-1', 181, '2016-05-28 13:29:15', '2016-05-28 13:29:15'),
(340, 23, 1, 1, '1936 - 1939', 'Vacio', '', 'C-1', 94, '2016-05-28 13:29:58', '2016-05-28 13:29:58'),
(341, 23, 1, 1, 'La vida merece vivirse', 'Fulton J. Sheen', '', 'C-1', 239, '2016-05-28 13:30:57', '2016-05-28 13:30:57'),
(342, 23, 1, 1, 'Francisco Franco', 'Fernando de Valdesoto', '', 'C-1', 445, '2016-05-28 13:31:28', '2016-05-28 13:31:28'),
(343, 1, 1, 1, 'Sin noticias de Gurb', 'Eduardo Mendoza', 'Seix Barral', 'A-3', 142, '2016-05-28 13:33:44', '2016-05-28 13:33:44'),
(344, 1, 1, 1, 'Mr. Witt en el Cantón', 'Ramón J. Sender', 'Circulo de Lectores', 'A-3', 239, '2016-05-28 13:35:41', '2016-05-28 13:35:41'),
(345, 1, 1, 1, 'Mi país inventado', 'Isabel Allende', 'De bolsillo', 'A-3', 220, '2016-05-28 13:36:47', '2016-05-28 13:36:47'),
(346, 1, 1, 1, 'Los niños del Brasil', 'Ira Levin', 'Circulo de Lectores', 'A-3', 263, '2016-05-28 13:37:32', '2016-05-28 13:37:32'),
(347, 1, 1, 1, 'Fortalesa digital', 'Dan Brown', 'Empúries', 'B-4', 443, '2016-05-28 13:38:21', '2016-07-11 08:50:19'),
(348, 1, 1, 1, 'La Guerra delñ fin del mundo', 'Mario Vargas Llosa', 'Plaza & Janes, S.A', 'A-2', 427, '2016-05-28 13:40:09', '2016-05-28 13:40:09'),
(349, 1, 1, 1, 'Sostiene Pereira', 'Antonio Tabucchi', 'Anagrama', 'A-3', 182, '2016-05-28 13:40:48', '2016-05-28 13:40:48'),
(350, 1, 1, 1, 'Claro de Luna', 'Nora Roberts', 'De bolsillo', 'A-2', 558, '2016-05-28 13:41:30', '2016-07-13 07:53:26'),
(351, 1, 1, 1, 'La dama de las camelias', 'Alexandre Dumas', 'Circulo de Lectores', 'A-2', 240, '2016-05-28 13:43:23', '2016-07-13 08:20:27'),
(352, 1, 1, 1, 'Viaje al fin del mundo: Galapagos', 'Alberto Vázquez-Figueroa', 'Plaza & Janes, S.A', 'B-2', 188, '2016-05-28 13:44:30', '2016-05-28 13:44:30'),
(353, 1, 1, 1, 'La tia tula', 'Miguel de Unamuno', 'Salvat', 'B-2', 186, '2016-05-28 13:45:09', '2016-05-28 13:45:09'),
(354, 1, 1, 1, 'Una muchacha desnuda', 'Nikos Athanassiadis', 'Circulo de Lectores', 'B-2', 229, '2016-05-28 13:45:59', '2016-05-28 13:45:59'),
(355, 1, 1, 1, 'Y Dios en la última playa - Llegará tarde a Hendaya', 'Cristóbal Zaragoza - José M. del Val', 'Circulo de Lectores', 'A-3', 311, '2016-05-28 13:47:30', '2016-05-28 13:47:30'),
(356, 1, 1, 1, 'La familia  de Alvareda', 'Fernán  Caballero', '', 'B-2', 220, '2016-05-28 13:49:04', '2016-05-28 13:49:04'),
(357, 1, 1, 1, 'Querida Mathilda', 'Susanna Tamaro', 'Seix Barral', 'B-2', 190, '2016-05-28 13:49:41', '2016-05-28 13:49:41'),
(358, 1, 1, 1, 'DEl Madrid castillo Sainetes', 'Carlos Arniches', 'Cátedra', 'B-2', 161, '2016-05-28 13:50:47', '2016-05-28 13:50:47'),
(359, 1, 1, 1, 'Generaciones', 'Cristóbal Zaragoza ', 'Plaza & Janes, S.A', 'A-3', 660, '2016-05-28 13:51:34', '2016-05-28 13:51:34'),
(360, 1, 1, 1, 'El perro', 'Alberto Vazquez Figueroa', 'Circulo de Lectores', 'A-2', 127, '2016-05-28 13:52:35', '2016-07-13 08:21:17'),
(361, 1, 1, 1, 'El centauro en el jardín', 'Moacyr Scliar', 'Circulo de Lectores', 'A-3', 224, '2016-05-28 13:53:24', '2016-05-28 13:53:24'),
(362, 1, 1, 1, 'El camino', 'Miguel Delibes', 'Destino', 'A-3', 223, '2016-05-28 13:57:38', '2016-05-28 13:57:38'),
(363, 1, 1, 1, 'El graduado', 'Charles Webb', 'Circulo de Lectores', 'A-2', 224, '2016-05-28 13:58:12', '2016-05-28 13:58:12'),
(364, 1, 1, 1, 'La tarde de las gaviotas', 'Ana Maria Navales', 'Unali narrativa', 'A-2', 240, '2016-05-28 13:58:57', '2016-05-28 13:58:57'),
(365, 1, 1, 1, 'La esfinge', 'Robin Cook', 'Circulo de Lectores', 'A-2', 317, '2016-05-28 13:59:29', '2016-05-28 13:59:29'),
(366, 1, 1, 1, 'Bajo el sol de Kenia', 'Bárbara Wood', 'De bolsillo', 'A-2', 751, '2016-05-28 14:00:03', '2016-05-28 14:00:03'),
(367, 1, 1, 1, 'Los últimos días de García Lorca', 'Eduardo Molina Fajardo', 'Plaza & Janes, S.A', 'A-2', 447, '2016-05-28 14:01:04', '2016-05-28 14:01:04'),
(368, 1, 1, 1, 'El teatro de los libros ', 'Lulú Wang', 'Fabula Tusquets', 'A-2', 493, '2016-05-28 14:01:55', '2016-05-28 14:01:55'),
(369, 23, 1, 1, 'Misterio del ladrón invisible', 'Enid Blyton', 'Molino', 'C-1', 204, '2016-05-28 14:05:10', '2016-05-28 14:05:10'),
(370, 23, 1, 1, 'Aventura en el castillo', 'Enid Blyton', 'Molino', 'C-1', 236, '2016-05-28 14:07:01', '2016-05-28 14:07:53'),
(371, 1, 1, 1, 'El desafio mundial', 'Jean-Jacques  /  Servan-Schreiber', 'Plaza & Janes, S.A', 'B-2', 376, '2016-05-28 14:17:39', '2016-05-28 14:17:39'),
(372, 1, 1, 1, 'Campo cerrado', 'Max Aub', 'Alfaguara', 'B-2', 249, '2016-05-28 14:18:31', '2016-05-28 14:18:31'),
(373, 23, 1, 1, 'Divorciados', 'Avery Corman', 'Circulo de Lectores', 'C-1', 218, '2016-05-28 14:21:19', '2016-05-28 14:21:19'),
(374, 1, 1, 1, 'Crónica sentimental en rojo', 'Francisco González Ledesma', 'Planeta', 'B-3', 283, '2016-05-28 14:22:44', '2016-07-08 09:50:36'),
(375, 1, 1, 1, 'El Capitán Alatriste', 'Arturo y Carlota Pérez-Reverte', 'Alfaguara', 'A-3', 247, '2016-05-28 14:23:29', '2016-05-28 14:23:29');
INSERT INTO `libros` (`id`, `categoria_id`, `enciclopedia_id`, `donante_id`, `title`, `autor`, `editorial`, `estanteria`, `paginasNumero`, `created_at`, `updated_at`) VALUES
(376, 1, 1, 1, 'La Isla de los delfines azules', 'Scott O\'dell', 'Editorial Noguer', 'A-3', 176, '2016-05-28 14:24:56', '2016-07-13 08:40:47'),
(377, 24, 1, 1, 'Posicions', 'Ricard Creus', '', 'B-4', 175, '2016-05-28 14:25:51', '2016-07-11 08:49:03'),
(378, 1, 1, 1, 'El mundo de Ben Lighthart', 'Jaap ter Haar', 'Ediciones SM', 'B-2', 147, '2016-05-28 14:26:45', '2016-07-08 07:34:01'),
(379, 1, 1, 1, 'Los tributos del amo', 'Ramón Raluy Atanasio', 'Monzón', 'A-2', 215, '2016-05-28 14:27:45', '2016-05-28 14:27:45'),
(380, 23, 1, 1, 'El día del Juicio', 'Jack Higgins', 'Plaza & Janes, S.A', 'C-1', 240, '2016-05-28 14:29:12', '2016-05-28 14:29:12'),
(381, 1, 1, 1, 'Biblioteca de selecciones', 'Varios', '', 'B-2', 502, '2016-05-28 14:30:18', '2016-05-28 14:30:18'),
(382, 1, 1, 1, 'El caballero de las botas azules', 'Rosalía de Castro', 'Anaya', 'B-2', 323, '2016-05-28 14:31:19', '2016-07-08 07:48:23'),
(383, 1, 1, 1, 'Odisea - Homero', 'Vacio', 'Bruguera', 'B-2', 389, '2016-05-28 14:32:30', '2016-07-08 07:49:11'),
(384, 1, 1, 1, 'Las voces del desierto', 'Marlon Morgan', 'Ediciones B, S.A.', 'B-2', 274, '2016-05-28 14:33:36', '2016-07-08 07:49:41'),
(385, 1, 1, 1, 'El libro de la selva', 'Rudyard Kipling', 'Editorial Gustavo Gili, S.A.', 'A-2', 236, '2016-05-28 14:34:38', '2016-05-28 14:34:38'),
(386, 13, 21, 1, 'El espectador', 'Jose Ortega y Gasset', '', 'F-5', 0, '2016-06-14 16:00:31', '2016-06-14 16:00:31'),
(387, 13, 21, 1, 'Café e artistas y otros cuentos', 'Camilo José Cela', '', 'F-5', 0, '2016-06-14 16:01:21', '2016-06-14 16:01:21'),
(388, 13, 21, 1, 'Viajes de Gulliver', 'Jonathan Swift', '', 'F-5', 189, '2016-06-14 16:04:02', '2016-06-14 16:04:02'),
(389, 13, 21, 1, 'El licenciado vidriera y otras novelas ejemplares', 'Cervantes', '', 'F-5', 190, '2016-06-14 16:06:33', '2016-06-14 16:06:33'),
(390, 13, 21, 1, 'Sonata de primavera', 'Ramon del Valle-Inclan', '', 'F-5', 140, '2016-06-14 16:09:04', '2016-06-14 16:09:04'),
(391, 13, 1, 1, 'La muerte de Ivan Ilich. El diablo. El padre Sergio', 'Leon Tolstoi', 'Biblioteca Basica Salvat', 'F-5', 189, '2016-06-14 16:10:24', '2016-06-14 16:10:24'),
(392, 13, 1, 1, 'Doña Berta y otros relatos', 'Leopoldo Alas, "Clarin"', 'Biblioteca Basica Salvat', 'F-5', 189, '2016-06-14 16:15:00', '2016-06-14 16:15:00'),
(393, 13, 1, 1, 'Las aventruas de Tom Sawyer', 'Mark Twain', 'Biblioteca Basica Salvat', 'F-5', 188, '2016-06-14 16:15:51', '2016-06-14 16:15:51'),
(394, 13, 1, 1, 'Narraciones', 'Anton P. Chejov', 'Biblioteca Basica Salvat', 'F-5', 171, '2016-06-14 16:16:47', '2016-06-14 16:16:47'),
(395, 13, 1, 1, 'La tierra de nadie y otros relatos', 'Ignacio Aldecoa', 'Biblioteca Basica Salvat', 'F-5', 188, '2016-06-14 16:17:37', '2016-06-14 16:17:37'),
(396, 13, 1, 1, 'El retrato de Dorian Gray', 'Oscar Wilde', 'Biblioteca Basica Salvat', 'F-5', 204, '2016-06-14 16:18:40', '2016-06-14 16:18:40'),
(397, 13, 1, 1, 'Relatos', 'Stendhal', 'Biblioteca Basica Salvat', 'F-5', 160, '2016-06-14 16:19:25', '2016-06-14 16:19:25'),
(398, 13, 1, 1, 'El caballero del hongo gris', 'Ramon Gomez de la Serna', 'Biblioteca Basica Salvat', 'F-5', 178, '2016-06-14 16:20:23', '2016-06-14 16:20:23'),
(399, 13, 1, 1, 'Juanita la larga', 'Juan Valera', 'Biblioteca Basica Salvat', 'F-5', 186, '2016-06-14 16:21:21', '2016-06-14 16:21:21'),
(400, 13, 1, 1, 'El perro de los Baskerville', 'Sir Arthur Conan Doyle', 'Biblioteca Basica Salvat', 'F-5', 169, '2016-06-14 16:22:17', '2016-06-14 16:22:17'),
(401, 13, 1, 1, 'Las mil y una noches', 'Antologia', 'Biblioteca Basica Salvat', 'F-5', 184, '2016-06-14 16:24:16', '2016-06-14 16:24:16'),
(402, 13, 1, 1, 'Alejandro y Cesar', 'Plutarco', 'Biblioteca Basica Salvat', 'F-5', 178, '2016-06-14 16:25:01', '2016-06-14 16:25:01'),
(403, 13, 1, 1, 'Tiempos y cosas', 'Azorin', 'Biblioteca Basica Salvat', 'F-5', 160, '2016-06-14 16:29:03', '2016-06-14 16:29:03'),
(404, 13, 1, 1, 'Signo y viento de la hora', 'Jose Maria Peman', 'Biblioteca Basica Salvat', 'F-5', 174, '2016-06-14 16:30:36', '2016-06-14 16:30:36'),
(405, 13, 1, 1, 'Los intereses creados', 'Jacinto Benavente', 'Biblioteca Basica Salvat', 'F-5', 137, '2016-06-14 16:36:04', '2016-06-14 16:36:04'),
(406, 13, 1, 1, 'Cancionero y romancero español', 'Damaso Alonso', 'Biblioteca Basica Salvat', 'F-5', 201, '2016-06-14 16:37:32', '2016-06-14 16:37:32'),
(407, 13, 1, 1, 'Hamlet', 'William Shakespeare', 'Biblioteca Basica Salvat', 'F-5', 178, '2016-06-14 16:40:24', '2016-06-14 16:40:24'),
(408, 13, 1, 1, 'Cien obras maestras de la pintura', 'M. Olivar', 'Biblioteca Basica Salvat', 'F-5', 190, '2016-06-14 16:41:58', '2016-06-14 16:41:58'),
(409, 13, 1, 1, 'Andante mortal', 'Fernando Martínez Lainez', 'Grupo libro, 88, S.A', 'F-5', 256, '2016-06-14 16:46:56', '2016-06-14 16:46:56'),
(410, 13, 1, 1, 'Bestiario del corazón', 'Luis Martínez de Mingo', 'Grupo libro, 88, S.A', 'F-5', 175, '2016-06-14 16:47:54', '2016-06-14 16:47:54'),
(411, 13, 1, 1, 'Las hogueras de San Juan', 'Luis Garrido', 'Grupo libro, 88, S.A', 'F-5', 231, '2016-06-14 16:48:46', '2016-06-14 16:48:46'),
(412, 13, 1, 1, 'La costumbre de morir', 'Raúl Guerra Garrido', 'Grupo libro, 88, S.A', 'F-5', 215, '2016-06-14 16:49:32', '2016-06-14 16:49:32'),
(413, 13, 1, 1, 'Simbiosis', 'Carlos Aguilar', 'Grupo libro, 88, S.A', 'F-5', 255, '2016-06-14 16:50:11', '2016-06-14 16:50:11'),
(414, 13, 1, 1, 'El nombre de las cosas', 'Antonio Hernández', 'Grupo libro, 88, S.A', 'F-5', 213, '2016-06-14 16:50:55', '2016-06-14 16:50:55'),
(415, 13, 1, 1, 'Pintura contemporánea aragonesa', 'Federico Torralba Soriano', 'Coleccion Basica aragonesa', 'F-5', 135, '2016-06-14 16:54:50', '2016-06-14 16:54:50'),
(416, 13, 1, 1, 'Zaragoza, ciudad visigoda', 'Luis García Iglesias', 'Coleccion Basica aragonesa', 'F-5', 122, '2016-06-14 16:55:44', '2016-06-14 16:55:44'),
(417, 13, 1, 1, 'Las cortes de Aragón en la Edad Media', 'Esteban Sarasa Sánchez', 'Coleccion Basica aragonesa', 'F-5', 128, '2016-06-14 16:56:29', '2016-06-14 16:56:29'),
(418, 13, 1, 1, 'Introducción al folklore aragonés (I)', 'Antonio Beltrán Martínez', 'Coleccion Basica aragonesa', 'F-5', 260, '2016-06-14 16:57:28', '2016-06-14 16:57:28'),
(419, 13, 1, 1, 'Geología de Aragón rocas y fósiles', 'Eladio Liñán y Leandro Sequeiros', 'Coleccion Basica aragonesa', 'F-5', 122, '2016-06-14 16:58:45', '2016-06-14 16:58:45'),
(420, 13, 1, 1, 'Aragón y su derecho', 'José-Luis Merino y Hernández', 'Coleccion Basica aragonesa', 'F-5', 162, '2016-06-14 16:59:40', '2016-06-14 16:59:40'),
(421, 13, 1, 1, 'El Rey Sancho Ramírez', 'Domingo J. Buesa Conde', 'Coleccion Basica aragonesa', 'F-5', 126, '2016-06-14 17:00:55', '2016-06-14 17:00:55'),
(422, 13, 1, 1, 'Arte mudéjar aragonés', 'Gonzalo M. Borrás Gualis', 'Coleccion Basica aragonesa', 'F-5', 236, '2016-06-14 17:01:56', '2016-06-14 17:01:56'),
(423, 13, 1, 1, 'Alfonso el Batallador', 'José María Lacarra', 'Coleccion Basica aragonesa', 'F-5', 149, '2016-06-14 17:02:39', '2016-06-14 17:02:39'),
(424, 13, 1, 1, 'El factor humano', 'Graham Greene', 'Literatura Contemporánea Seix Barral', 'F-6', 317, '2016-06-14 17:05:17', '2016-06-14 17:05:17'),
(425, 13, 1, 1, 'Abaddón el exterminador', 'Ernesto Sabato', 'Literatura Contemporánea Seix Barral', 'F-6', 480, '2016-06-14 17:19:37', '2016-06-14 17:19:37'),
(426, 23, 1, 1, 'Bearn o La sala de las muñecas', 'Lorenzo Villalonga', 'Círculo de Lectores, S.A.', 'A-1', 253, '2016-06-14 17:20:47', '2016-07-11 09:16:40'),
(427, 13, 1, 1, 'Las afueras', 'Luis Goytisolo', 'Literatura Contemporánea Seix Barral', 'F-6', 200, '2016-06-14 17:21:36', '2016-06-14 17:21:36'),
(428, 13, 1, 1, 'Octubre, Octubre II', 'José Luís Sampedro', 'Literatura Contemporánea Seix Barral', 'F-6', 666, '2016-06-14 17:23:25', '2016-06-14 17:23:25'),
(429, 13, 1, 1, 'Casa de campo II', 'José Donoso', 'Literatura Contemporánea Seix Barral', 'F-6', 498, '2016-06-14 17:24:16', '2016-06-14 17:24:16'),
(430, 13, 1, 1, 'Historia de Mayta', 'Mario Vargas Llosa', 'Coleccion Basica aragonesa', 'F-6', 346, '2016-06-14 17:25:14', '2016-06-14 17:25:14'),
(431, 13, 1, 1, 'La invención de Morel', 'Adolfo Bioy Casares', 'Literatura Contemporánea Seix Barral', 'F-6', 126, '2016-06-14 17:26:38', '2016-06-14 17:26:38'),
(432, 13, 1, 1, 'Cuentos romanos I', 'Alberto Moravia', 'Literatura Contemporánea Seix Barral', 'F-6', 243, '2016-06-14 17:27:23', '2016-06-14 17:27:23'),
(433, 13, 1, 1, 'Artículos de costumbres', 'Mariano José de Larra', 'Colección Austral', 'f-6', 525, '2016-06-14 17:32:22', '2016-06-14 17:32:22'),
(434, 13, 1, 1, 'Un soñador para un pueblo', 'Antonio Buero Vallejo', 'Colección Austral', 'F-6', 196, '2016-06-14 17:33:24', '2016-06-14 17:33:24'),
(435, 13, 1, 1, 'El pastor Quijótiz', 'José Camón Aznar', 'Colección Austral', 'F-6', 150, '2016-06-14 17:35:03', '2016-06-14 17:35:03'),
(436, 13, 1, 1, 'Fábulas', 'Félix María Samaniego', 'Colección Austral', 'F-6', 157, '2016-06-14 17:35:49', '2016-06-14 17:35:49'),
(437, 13, 1, 1, 'Romancero gitano - Poema del cante jondo', 'Federico García Lorca', 'Colección Austral', 'F-6', 213, '2016-06-14 17:37:06', '2016-06-14 17:37:06'),
(438, 13, 12, 1, 'Castellanas-Nuevas castellanas-Extremeñas', 'Gabriel y Galán', 'Colección Austral', 'F-6', 213, '2016-06-14 17:38:31', '2016-06-14 17:38:31'),
(439, 13, 1, 1, 'Cuatro poetas de hoy', 'J.L.Hidalgo-Gabriel Celaya-Blas Otero-J.Hierro', 'Ediciones Taurus, S.A.', 'F-6', 249, '2016-06-14 17:41:40', '2016-06-14 17:41:40'),
(440, 13, 1, 1, 'Artículos políticos', 'Mariano José de Larra', 'Ediciones Taurus, S.A.', 'F-6', 318, '2016-06-14 17:42:33', '2016-06-14 17:42:33'),
(441, 13, 1, 1, 'La generación de 1936-Antología poética', 'Varios', 'Ediciones Taurus, S.A.', 'F-6', 209, '2016-06-14 17:43:46', '2016-06-14 17:43:46'),
(442, 13, 1, 1, 'El pelo de la dehesa', 'Manuel Bretón de los Herreros', 'Cátedra', 'F-6', 156, '2016-06-14 17:45:16', '2016-06-14 17:45:16'),
(443, 13, 1, 1, 'El vergonzoso en palacio', 'Tirso de Molina', 'Cátedra', 'F-6', 161, '2016-06-14 17:46:27', '2016-06-14 17:46:27'),
(444, 13, 1, 1, 'Traidor, inconfeso y martir', 'José Zorrilla', 'Cát', 'F-6', 198, '2016-06-14 17:47:14', '2016-06-14 17:47:14'),
(445, 13, 1, 1, 'Lirica Española de hoy', 'José Luis Cano', 'Cátedra', 'F-6', 225, '2016-06-14 17:48:11', '2016-06-14 17:48:11'),
(446, 13, 1, 1, 'Antologia del grupo', 'Vicente Gaos', 'Cátedra', 'F-6', 239, '2016-06-14 17:49:00', '2016-06-14 17:49:00'),
(447, 13, 1, 1, 'La Tejedora de sueños llegada de los dioses', 'Antonio Buero Vallejo', 'Cátedra', 'F-6', 342, '2016-06-14 17:50:44', '2016-06-14 17:50:44'),
(448, 13, 1, 1, 'El Tejedor de Segovia', 'Juan Ruiz de Alarcón', 'Anaya, S.A.', 'F-6', 159, '2016-06-14 17:55:21', '2016-06-14 17:55:21'),
(449, 13, 1, 1, 'Entremeses', 'Luis Quinones de Benavente', 'Anaya, S.A.', 'F-6', 140, '2016-06-14 17:56:19', '2016-06-14 17:56:19'),
(451, 13, 1, 1, 'Delitos y cuestiones penales en el ámbito empresarial VII', 'Abogados y Asesores Tributarios', 'Expansión', 'F-6', 0, '2016-06-14 17:59:49', '2016-06-14 17:59:49'),
(452, 13, 1, 1, 'Delitos y cuestiones penales en el ámbito empresarial III', 'Abogados y Asesores Tributarios', 'Expansión', 'F-6', 0, '2016-06-14 18:01:14', '2016-06-14 18:01:14'),
(453, 13, 1, 1, 'Delitos y cuestiones penales en el ámbito empresarial IV', 'Abogados y Asesores Tributarios', 'Expansión', 'F-6', 0, '2016-06-14 18:01:49', '2016-06-14 18:01:49'),
(454, 13, 1, 1, 'La contaminación', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 144, '2016-06-16 06:36:58', '2016-06-16 06:36:58'),
(455, 13, 1, 1, 'Historia mundial desde 1939', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:37:49', '2016-06-16 06:37:49'),
(456, 13, 1, 1, 'La formación de la tierra', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 142, '2016-06-16 06:38:48', '2016-06-16 06:38:48'),
(457, 13, 1, 1, 'El nacimiento de un niño', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 144, '2016-06-16 06:39:23', '2016-06-16 06:39:23'),
(458, 13, 1, 1, 'El cine, arte e industria', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 144, '2016-06-16 06:40:02', '2016-06-16 06:40:02'),
(459, 13, 1, 1, 'Los átomos', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:40:42', '2016-06-16 06:40:42'),
(460, 13, 1, 1, 'Arte abstracto y arte figurativo', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:41:28', '2016-06-16 06:41:28'),
(461, 13, 1, 1, 'El origen del hombre', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:42:06', '2016-06-16 06:42:06'),
(462, 13, 1, 1, 'Las noticias y la información', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:42:43', '2016-06-16 06:42:43'),
(463, 13, 1, 1, 'El sistema solar', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:43:19', '2016-06-16 06:43:19'),
(464, 13, 1, 1, 'La pobreza en las grandes ciudades', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:43:58', '2016-06-16 06:43:58'),
(465, 13, 1, 1, 'Nuevos rumbos del teatro', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:44:37', '2016-06-16 06:44:37'),
(466, 13, 1, 1, 'Lingüística y significación', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:45:17', '2016-06-16 06:45:17'),
(467, 13, 1, 1, 'La televisión', 'Biblioteca Salvat de grandes temas', 'Salvat  Editores, S.A.', 'E-1', 143, '2016-06-16 06:45:52', '2016-06-16 06:45:52'),
(468, 13, 1, 1, 'Diccionario de la lengua española (2 tomos)', 'Vacio', 'Espasa', 'E-2', 0, '2016-06-16 06:52:39', '2016-06-16 06:52:39'),
(469, 13, 1, 1, 'Diccionario enciclopédico Vox (24 tomos)', 'Vacio', 'Biblograf', 'E-3', 0, '2016-06-16 06:55:24', '2016-06-16 06:55:24'),
(470, 13, 1, 1, 'Dictionary Collins (Español-Inglés)', 'Vacio', 'Grijalbo', 'E-3', 1290, '2016-06-16 06:57:33', '2016-06-16 06:57:33'),
(471, 13, 1, 1, 'Diccionari de la llengua catalana', 'Vacio', 'Albertí editor', 'E-3', 411, '2016-06-16 07:04:32', '2016-06-16 07:04:32'),
(472, 13, 1, 1, 'English programme (6 tomos)', 'Vacio', 'Cambridge', 'E-3', 0, '2016-06-16 07:06:45', '2016-06-16 07:06:45'),
(473, 13, 1, 1, 'Programa general d\'estudis catalans (2 tomos)', 'Vacio', 'Ayuda escolar, S.A.', 'E-4', 0, '2016-06-16 07:10:13', '2016-06-16 07:10:13'),
(474, 13, 1, 1, 'Informática y programación (31 tomos)', 'Vacio', 'Ediciones siglo cultural, S.A.', 'E-4', 0, '2016-06-16 07:13:46', '2016-06-16 07:13:46'),
(475, 13, 1, 1, 'Enciclopedia de la vida natural (8 tomos)', 'Vacio', 'Ediciones Nauta, S.A.', 'E-4', 0, '2016-06-16 07:18:13', '2016-06-16 07:18:13'),
(476, 13, 1, 1, 'Historia del mundo antiguo (7 tomos)', 'Vacio', 'Ediciones Akal, S.A.', 'E-4', 0, '2016-06-16 07:22:07', '2016-06-16 07:22:07'),
(477, 13, 1, 1, 'Piensa mal... ¿ y acertarás?', 'José Echegaray', 'Ediciones Rueda, J.M, S.A.', 'D-1', 223, '2016-06-16 07:31:50', '2016-06-16 07:31:50'),
(478, 13, 1, 1, 'El hombre y el mundo', 'Rudolf Ch. Eucken', 'Ediciones Rueda, J.M, S.A.', 'D-1', 263, '2016-06-16 07:33:17', '2016-06-16 07:33:17'),
(479, 13, 1, 1, 'El matrimonio de Maciej Boryna', 'Wladislaw Reymont', 'Ediciones Rueda, J.M, S.A.', 'D-1', 134, '2016-06-16 07:34:47', '2016-06-16 07:34:47'),
(480, 13, 1, 1, 'Colección teatro español', 'Varios', 'Ediciones Rueda, J.M, S.A.', 'D-1', 0, '2016-06-16 07:37:23', '2016-06-16 07:37:23'),
(481, 13, 1, 1, 'Lolita', 'Vladimir Nabokov', 'Editorial Planeta', 'D-1', 364, '2016-06-16 07:39:13', '2016-06-16 07:39:13'),
(483, 13, 1, 1, 'Fan club *', 'Irving Wallace', 'Editorial Planeta', 'D-1', 376, '2016-06-16 07:42:02', '2016-06-16 07:42:02'),
(484, 13, 1, 1, 'Fan club **', 'Irving Wallace', 'Editorial Planeta', 'D-1', 394, '2016-06-16 07:43:21', '2016-06-16 07:43:21'),
(485, 13, 1, 1, 'El amante de Lady Chatterley *', 'D.H. Lawrence', 'Editorial Planeta', 'D-1', 347, '2016-06-16 07:46:57', '2016-06-16 07:46:57'),
(486, 13, 1, 1, 'Ada *', 'Vladimir Nabokov', 'Editorial Planeta', 'D-1', 279, '2016-06-16 07:47:44', '2016-06-16 07:47:44'),
(487, 13, 1, 1, 'Ada **', 'Vladimir Nabokov', 'Editorial Planeta', 'D-1', 280, '2016-06-16 07:48:24', '2016-06-16 07:48:24'),
(488, 13, 1, 1, 'Best seller', 'Toni Seller', 'Editorial Planeta', 'D-1', 324, '2016-06-16 07:49:29', '2016-06-16 07:49:29'),
(489, 13, 1, 1, 'Belle de jour', 'Joseph Kessel', 'Editorial Planeta', 'D-1', 203, '2016-06-16 07:50:36', '2016-06-16 07:50:36'),
(490, 13, 1, 1, 'Trópico de cáncer', 'Henry Miller', 'Editorial Planeta', 'D-1', 306, '2016-06-16 07:54:03', '2016-06-16 07:54:03'),
(491, 13, 1, 1, 'Trópico de capricornio', 'Henry Miller', 'Editorial Planeta', 'D-1', 312, '2016-06-16 07:54:39', '2016-06-16 07:54:39'),
(492, 13, 1, 1, 'Confesiones inconfesables', 'Salvador Dalí', 'Editorial Planeta', 'D-1', 490, '2016-06-16 07:55:46', '2016-06-16 07:55:46'),
(493, 13, 1, 1, 'Candy', 'Terry Southern', 'Editorial Planeta', 'D-1', 249, '2016-06-16 07:57:14', '2016-06-16 07:57:14'),
(494, 21, 1, 1, 'El gran libro práctico del tarot', 'Equipo de expertos Osiris', 'De Vecchi, S.A.', 'D-2', 207, '2016-06-16 08:01:43', '2016-06-16 08:01:43'),
(495, 21, 1, 1, 'Los versos satánicos', 'Salman Rushdie', 'Circulo de lectores', 'D-2', 516, '2016-06-16 08:06:21', '2016-06-16 08:06:21'),
(496, 21, 1, 1, 'La biblia y sus secretos', 'Juan Arias', 'Circulo de lectores', 'D-2', 250, '2016-06-16 08:07:15', '2016-06-16 08:07:15'),
(497, 21, 1, 1, 'La verdadera historia de los cátaros', 'Anne Brenon', 'Circulo de lectores', 'D-2', 220, '2016-06-16 08:08:25', '2016-06-16 08:08:25'),
(498, 21, 1, 1, 'Misterios de la iglesia', 'Carmen Porter', 'Circulo de lectores', 'D-2', 229, '2016-06-16 08:09:21', '2016-06-16 08:09:21'),
(499, 21, 1, 1, 'La sábana santa', 'Carmen Porter', 'Circulo de lectores', 'D-2', 189, '2016-06-16 08:10:07', '2016-06-16 08:10:07'),
(500, 21, 1, 1, 'Los evangelios apócrifos', 'Pierre Crépon', 'Circulo de lectores', 'D-2', 190, '2016-06-16 08:11:22', '2016-06-16 08:11:22'),
(501, 21, 1, 1, 'Los misterios de Jesús', 'Timothy Freke - Peter Gandy', 'Circulo de lectores', 'D-2', 479, '2016-06-16 08:12:51', '2016-06-16 08:12:51'),
(502, 21, 1, 1, 'Jesús vivió y murió en Cachemira', 'Andreas Faber-Kaiser', 'Circulo de lectores', 'D-2', 253, '2016-06-16 08:14:14', '2016-06-16 08:14:14'),
(503, 21, 1, 1, 'Lo oculto', 'Colin Wilson', 'Editorial Noguer, S.A.', 'D-2', 477, '2016-06-16 08:17:13', '2016-06-16 08:17:13'),
(504, 21, 1, 1, 'Juan Pablo II', 'Vacio', 'Plaza & Janes Editores, S.A.', 'D-2', 222, '2016-06-16 08:19:03', '2016-06-16 08:19:03'),
(505, 21, 1, 1, 'Oscura rebelion en la iglesia', 'Ricardo de la Cierva', 'Plaza & Janes Editores, S.A.', 'D-2', 791, '2016-06-16 08:20:30', '2016-06-16 08:20:30'),
(506, 21, 1, 1, 'Opus Nigrum', 'Marguerite Yourcenar', 'Circulo de lectores', 'D-2', 389, '2016-06-16 08:22:10', '2016-06-16 08:22:10'),
(507, 21, 1, 3, 'El libro de atrus', 'Rand y Robyn Miller con David Wingrove', 'Planeta de Agostini', 'D-2', 335, '2016-06-16 08:24:37', '2016-06-16 08:24:37'),
(508, 21, 1, 1, 'Teresa de Jesús', 'José María Javierre', 'Ediciones Sigueme', 'D-2', 631, '2016-06-16 08:26:01', '2016-06-16 08:26:01'),
(509, 21, 1, 1, 'Los procesos del Tribunal de Cuenca', 'Mercedes García-Arenal', 'Siglo XXI de España, S.A.', 'D-2', 172, '2016-06-16 08:27:57', '2016-06-16 08:27:57'),
(510, 21, 1, 1, 'El poder de la magia', 'Maga Iris', 'Club de autores', 'D-2', 140, '2016-06-16 08:29:16', '2016-06-16 08:29:16'),
(511, 21, 1, 1, 'El camino a Cristo', 'Ellen G. White', 'Editorial Safeliz', 'D-2', 122, '2016-06-16 08:30:32', '2016-06-16 08:30:32'),
(512, 21, 1, 1, 'El tercer ojo', 'Lobsang Rampa', 'Editorial Troquel', 'D-2', 255, '2016-06-16 08:36:26', '2016-06-16 08:36:26'),
(513, 21, 1, 1, 'Amor y noviazgo', 'P. Federico Sopeña Ibáñez', 'Vacio', 'D-2', 281, '2016-06-16 08:37:49', '2016-06-16 08:37:49'),
(514, 21, 1, 1, 'Jesús de Nazaret', 'Franco Zeffirelli', 'Editorial Noguer, S.A.', 'D-2', 206, '2016-07-01 06:36:28', '2016-07-01 06:36:28'),
(515, 21, 1, 1, 'Los límites diocesanos en el Aragón oriental', 'Eladio Gros Bitria', 'Guara Editorial', 'D-2', 146, '2016-07-01 06:38:12', '2016-07-01 06:38:12'),
(516, 21, 1, 1, 'Las apariciones', 'Erich von Däniken', 'Ediciones Martínez Roca, S.A.', 'D-2', 315, '2016-07-01 06:41:36', '2016-07-01 06:41:36'),
(517, 21, 1, 1, 'El profeta', 'Khalil Gibran', 'Editorial y libreria Goncourt', 'D-2', 109, '2016-07-01 06:43:22', '2016-07-01 06:43:22'),
(518, 21, 1, 1, 'El hombre. Antropología cristiana en los conflictos del presente', 'Jürgen Moltmann', 'Ediciones Sígueme', 'D-2', 158, '2016-07-01 06:45:34', '2016-07-01 06:45:34'),
(519, 21, 1, 1, 'Mis tentaciones. 10 lecciones para bajar al infierno', 'Fernando G. Tola', 'Ediciones temas de hoy', 'D-2', 178, '2016-07-01 06:47:26', '2016-07-01 06:47:26'),
(520, 21, 1, 1, 'El verdadero rostro de Maria Rafols', 'Jose L. Martin Descalzo', 'Vacio', 'D-2', 222, '2016-07-01 06:49:17', '2016-07-01 06:49:17'),
(521, 21, 1, 1, 'Como adivinar el futuro por las lineas de la mano', 'Guillermo Nápoli', 'Tribuna de Ediciones de Medios Informativos', 'D-2', 127, '2016-07-01 06:51:25', '2016-07-01 06:51:25'),
(522, 21, 1, 1, 'Jesús íntimo', 'Carlos Sauvé', 'Libreria religiosa', 'D-2', 302, '2016-07-01 06:52:50', '2016-07-01 06:52:50'),
(523, 21, 1, 1, 'Nuevo testamento', 'Juan Mateos y L.Alonso Schökel', 'Cristiandad', 'D-2', 652, '2016-07-01 06:54:49', '2016-07-01 06:54:49'),
(524, 21, 1, 1, 'Camino de perfección', 'Santa Teresa de Jesús', 'Editorial de espiritualidad', 'D-2', 298, '2016-07-01 06:57:20', '2016-07-01 06:57:20'),
(525, 21, 1, 1, 'En otras palabras', 'Ángel Calvo Cortés', 'Fundación CAI', 'D-2', 110, '2016-07-01 06:59:06', '2016-07-01 06:59:06'),
(526, 21, 1, 1, 'Vida y escritos de Fray María Rafael Arnáiz Barón', 'Monje Trapense', 'El Perpetuo Socorro', 'D-2', 575, '2016-07-01 07:01:06', '2016-07-01 07:01:06'),
(527, 21, 1, 1, 'Videte vocationem vestram', 'D. Elias Dalla Costa', 'Vacio', 'D-2', 125, '2016-07-01 07:05:59', '2016-07-01 07:05:59'),
(528, 21, 1, 1, 'El evangelio en escena', 'Amado Saez de Ibarra', 'Católica Toledana', 'D-2', 208, '2016-07-01 07:07:33', '2016-07-01 07:07:33'),
(529, 21, 1, 1, 'Vida y Misterios de la gloriosa Virgen María', 'Vacio', 'Vacio', 'D-2', 261, '2016-07-01 07:09:18', '2016-07-01 07:09:18'),
(530, 21, 1, 1, 'Mujeres Místicas', 'Vacio', 'José J. de Olañeta, Editor', 'D-2', 95, '2016-07-01 07:11:34', '2016-07-01 07:11:34'),
(531, 9, 1, 1, 'Cuentos infantiles con actividades para los niños', 'Vacio', 'MMV Ediciones Credimar', 'D-3', 236, '2016-07-01 07:21:32', '2016-07-01 07:21:32'),
(532, 9, 1, 1, 'El pequeño ciudadano, derechos y deberes', 'Vacio', 'Oceano', 'D-3', 112, '2016-07-01 07:23:37', '2016-07-01 07:23:37'),
(533, 9, 1, 1, 'El pequeño ciudadano, compartir y respetar', 'Vacio', 'Oceano', 'D-3', 112, '2016-07-01 07:24:59', '2016-07-01 07:24:59'),
(534, 9, 1, 1, 'Los tres cerditos', 'Walt Disney', 'Planeta-De Agostini', 'D-3', 24, '2016-07-01 07:27:00', '2016-07-01 07:32:07'),
(535, 9, 1, 1, 'Aladdín', 'Disney', 'Longmeadow Press', 'D-3', 96, '2016-07-01 07:28:42', '2016-07-01 07:28:42'),
(536, 9, 1, 1, 'Dumbo', 'Walt Disney', 'Planeta-De Agostini', 'D-3', 24, '2016-07-01 07:29:39', '2016-07-01 07:32:44'),
(537, 9, 1, 1, 'Alicia en el País de las Maravillas', 'Walt Disney', 'Planeta-De Agostini', 'D-3', 24, '2016-07-01 07:31:06', '2016-07-01 07:31:06'),
(538, 9, 1, 1, 'Chicken little', 'Disney', 'Disney Enterprises, Inc.', 'D-3', 48, '2016-07-01 07:35:16', '2016-07-01 07:35:16'),
(539, 9, 1, 1, '101 Dalmatas', 'Walt Disney', 'Planeta-De Agostini', 'D-3', 24, '2016-07-01 07:36:08', '2016-07-01 07:36:08'),
(540, 9, 1, 1, 'Pato Donald- El manitas', 'Disney', 'RBA Revistas', 'D-3', 66, '2016-07-01 07:38:24', '2016-07-01 07:39:35'),
(541, 9, 1, 1, 'Pato Donald - Los curanderos de los Andes', 'Disney', 'RBA Revistas', 'D-3', 66, '2016-07-01 07:40:57', '2016-07-01 07:40:57'),
(542, 9, 1, 1, 'Super Joyas', 'Edmundo d\'amicis', 'Bruguera, S.A.', 'D-3', 0, '2016-07-01 07:43:20', '2016-07-01 07:43:20'),
(543, 9, 1, 1, 'La pequeña Dorrit', 'Charles Dickens', 'Vacio', 'D-3', 0, '2016-07-01 07:44:48', '2016-07-01 07:44:48'),
(544, 9, 1, 1, 'Super Joyas-2', 'Julio Verne', 'Bruguera, S.A.', 'D-3', 0, '2016-07-01 07:45:53', '2016-07-01 07:45:53'),
(545, 9, 1, 1, 'La paloma y la hormiga', 'Vacio', 'Testa, S.L.', 'D-3', 0, '2016-07-01 07:50:49', '2016-07-01 07:50:49'),
(546, 9, 1, 1, '100 primeras palabras para aprender con tu hijo', 'Edwina Riddell', 'Ediciones B', 'D-3', 0, '2016-07-01 07:52:37', '2016-07-01 07:52:37'),
(547, 9, 1, 1, 'El genio del río', 'Vacio', 'La Galera, S.A. Editorial', 'D-3', 0, '2016-07-01 07:54:07', '2016-07-01 07:54:07'),
(548, 9, 1, 1, 'Caperucita Roja', 'Vacio', 'Combel Editorial, S.A.', 'D-3', 23, '2016-07-01 07:55:45', '2016-07-01 07:55:45'),
(549, 9, 1, 1, 'Ricitos de oro', 'Vacio', 'Combel Editorial, S.A.', 'D-3', 22, '2016-07-01 07:57:02', '2016-07-01 07:57:02'),
(550, 9, 1, 1, 'Los siete cabritillos y el lobo', 'Vacio', 'Combel Editorial, S.A.', 'D-3', 22, '2016-07-01 07:58:11', '2016-07-01 07:58:11'),
(551, 9, 1, 1, 'La ratita presumida', 'Vacio', 'Combel Editorial, S.A.', 'D-3', 22, '2016-07-01 08:02:03', '2016-07-01 08:02:03'),
(552, 9, 1, 1, 'Dentro de un castaño', 'Francesc Boada/Valentina Cruz', 'La Galera, S.A. Editorial', 'D-3', 0, '2016-07-01 08:08:48', '2016-07-01 08:08:48'),
(553, 9, 1, 1, 'Caperucita Roja (Para leer, jugar y aprender)', 'El Pais', 'Sol 90, S.L.', 'D-3', 45, '2016-07-01 08:11:28', '2016-07-01 08:11:28'),
(554, 9, 1, 1, 'Pulgarcito (Para leer, jugar y aprender)', 'El Pais', 'Sol 90, S.L.', 'D-3', 45, '2016-07-01 08:13:11', '2016-07-01 08:13:11'),
(555, 9, 1, 1, 'Buscando a Nemo (juego y aprendo)', 'Disney', 'Everest, S.A.', 'D-3', 32, '2016-07-01 08:15:33', '2016-07-01 08:15:33'),
(556, 9, 1, 1, 'La Alondra, sus crias y el campesino', 'Vacio', 'Testa, S.L.', 'D-3', 0, '2016-07-01 08:17:15', '2016-07-01 08:17:15'),
(557, 9, 1, 1, 'La vaca bailarina', 'Vacio', 'Vicens Vives', 'D-3', 23, '2016-07-01 08:19:09', '2016-07-01 08:19:09'),
(558, 9, 1, 1, 'Ice Age 3, el origen de los dinosaurios', 'Vacio', 'Everest, S.A.', 'D-3', 30, '2016-07-01 08:20:55', '2016-07-01 08:20:55'),
(559, 9, 1, 1, 'Nomadas del Norte', 'Walt Disney', 'Gaisa, S.L.', 'D-3', 60, '2016-07-01 08:23:08', '2016-07-01 08:23:08'),
(560, 9, 1, 1, 'El misterio del solitario', 'Jostein Gaarder', 'Ediciones Siruela', 'D-3', 380, '2016-07-01 08:24:31', '2016-07-01 08:24:31'),
(561, 9, 1, 1, 'Las fieras fútbol club-Félix el Torbellino', 'Joachim Masannek', 'Destino', 'D-3', 157, '2016-07-01 08:26:48', '2016-07-01 08:26:48'),
(562, 9, 1, 1, 'Los Hollister en el campamento de nieve', 'Jerry West', 'Ediciones Toray, S.A.', 'D-3', 183, '2016-07-01 08:34:25', '2016-07-01 08:34:25'),
(563, 9, 1, 1, 'Los Hollister van al oeste', 'Jerry West', 'Ediciones Toray, S.A.', 'D-3', 200, '2016-07-01 08:35:50', '2016-07-01 08:35:50'),
(564, 9, 1, 1, 'Los Hollister y el viejo barco', 'Jerry West', 'Ediciones Toray, S.A.', 'D-3', 197, '2016-07-01 08:36:44', '2016-07-01 08:36:44'),
(565, 9, 1, 1, 'Los Hollister y el secreto del fuerte', 'Jerry West', 'Ediciones Toray, S.A.', 'D-3', 173, '2016-07-01 08:37:44', '2016-07-01 08:37:44'),
(566, 9, 1, 1, 'Bonanza en aventuras en Carson City', 'Coleccion Heroes', 'Bruguera, S.A.', 'D-3', 256, '2016-07-01 08:51:19', '2016-07-01 08:51:19'),
(567, 9, 1, 1, 'Kika Superbruja y la espada mágica', 'Knister', 'Grupo Editorial Bruño', 'D-3', 151, '2016-07-01 08:53:30', '2016-07-01 08:53:30'),
(568, 9, 1, 1, 'El fantasma de la carretera', 'Stefan Wolf', 'Susaeta Ediciones, S.A.', 'D-3', 183, '2016-07-01 08:55:35', '2016-07-01 08:55:35'),
(569, 9, 1, 1, 'El misteri de la tomba buida', 'Stefan Wolf', 'Susaeta Ediciones, S.A.', 'D-3', 186, '2016-07-01 08:56:37', '2016-07-01 08:56:37'),
(570, 9, 1, 1, 'El ojo de la mente', 'Alan Dean Foster', 'Libreria Editorial Argos, S.A.', 'D-3', 254, '2016-07-01 08:57:56', '2016-07-01 08:57:56'),
(571, 9, 1, 1, 'Bambulo, la crisis', 'Bernardo Atxaga', 'Alfaguara, S.A.', 'D-3', 150, '2016-07-01 09:00:11', '2016-07-01 09:00:11'),
(572, 9, 1, 1, 'Aventura en el Ciberespacio', 'Javier Barquín', 'Santillana, S.A.', 'D-3', 103, '2016-07-01 09:01:18', '2016-07-01 09:01:18'),
(573, 9, 1, 1, 'Los tres cerditos y otros cuentos', 'Coleccion Heidi', 'Bruguera, S.A.', 'D-3', 255, '2016-07-01 09:02:49', '2016-07-01 09:02:49'),
(574, 9, 1, 1, 'La visita de Osito', 'Else Holmelund Minarik', 'Alfaguara, S.A.', 'D-3', 64, '2016-07-01 09:04:53', '2016-07-01 09:04:53'),
(575, 9, 1, 1, 'La gota de lluvia', 'Alfredo Gómez Cerdá', 'Bruño', 'D-3', 57, '2016-07-01 09:06:30', '2016-07-01 09:06:30'),
(576, 9, 1, 1, 'Los cinco se escapan', 'Enid Blyton', 'Juventud', 'D-3', 160, '2016-07-01 09:07:35', '2016-07-01 09:07:35'),
(577, 9, 1, 1, 'Juego de adultos', 'Manuel L. Alonso', 'Ediciones SM', 'D-3', 110, '2016-07-01 09:09:15', '2016-07-01 09:09:15'),
(578, 1, 1, 1, 'El país de las últimas cosas', 'Paul Auster', 'Anagrama', 'A-2', 205, '2016-07-01 09:10:23', '2016-08-08 08:53:24'),
(579, 9, 1, 1, 'El pequeño Nicolás', 'René Goscinny', 'Alfaguara, S.A.', 'D-3', 139, '2016-07-01 09:12:22', '2016-07-01 09:12:22'),
(580, 9, 1, 1, 'El barco de vapor, nube de Noviembre', 'Hilary Ruben', 'Ediciones SM', 'D-3', 138, '2016-07-01 09:14:16', '2016-07-01 09:14:16'),
(581, 9, 1, 1, 'El barco de vapor, Fray Perico en la guerra', 'Juan Muñoz Martín', 'Ediciones SM', 'D-3', 158, '2016-07-01 09:15:33', '2016-07-01 09:15:33'),
(582, 9, 1, 1, 'El barco de vapor, Fray Perico y Monpetit', 'Juan Muñoz Martín', 'Ediciones SM', 'D-3', 158, '2016-07-01 09:16:31', '2016-07-01 09:16:31'),
(583, 9, 1, 1, 'El barco de vapor, un solo de clarinete', 'Fernando Almena', 'Ediciones SM', 'D-3', 105, '2016-07-01 09:17:49', '2016-07-01 09:17:49'),
(584, 9, 1, 1, 'El barco de vapor, Fray Perico, Calcetín y el guerrillero Martín', 'Juan Muñoz', 'Ediciones SM', 'D-3', 150, '2016-07-01 09:19:22', '2016-07-01 09:19:22'),
(585, 9, 1, 1, 'La calle del terror : Pánico en la nieve', 'R.L.Stine', 'Ediciones B', 'D-3', 152, '2016-07-01 09:24:37', '2016-07-01 09:24:37'),
(586, 9, 1, 1, 'La calle del terror : Quemada por el sol', 'R.L.Stine', 'Ediciones B', 'D-3', 135, '2016-07-01 09:25:46', '2016-07-01 09:25:46'),
(587, 9, 1, 1, 'Pesadillas : La máscara maldita (2 libros, repetidos)', 'R.L.Stine', 'Ediciones B', 'D-3', 129, '2016-07-01 09:27:50', '2016-07-01 09:27:50'),
(588, 9, 1, 1, 'Pesadillas : Visita aterradora (2 libros, repetidos)', 'R.L.Stine', 'Ediciones B', 'D-3', 143, '2016-07-01 09:29:08', '2016-07-01 09:29:08'),
(589, 9, 1, 1, 'La Tierra del Oro Ardiente', 'Ronimund H. von Bissing', 'Editorial Bruño', 'D-3', 177, '2016-07-01 09:30:57', '2016-07-01 09:30:57'),
(590, 9, 1, 1, 'El barco de vapor : Juan Chorlito y el indio invisible', 'Janosch', 'Ediciones SM', 'D-3', 88, '2016-07-01 09:34:23', '2016-07-01 09:34:23'),
(591, 9, 1, 1, 'El barco de vapor : El dragón de Jano', 'Irina Korschunow', 'Ediciones SM', 'D-3', 68, '2016-07-01 09:35:31', '2016-07-01 09:35:31'),
(592, 9, 1, 1, 'El barco de vapor : El caballero de la noche', 'Mary Pope Osborne', 'Ediciones SM', 'D-3', 73, '2016-07-01 09:36:36', '2016-07-01 09:36:36'),
(593, 9, 1, 1, 'El barco de vapor : Mini y el gato', 'Christine Nöstlinger', 'Ediciones SM', 'D-3', 77, '2016-07-01 09:37:22', '2016-07-01 09:37:22'),
(594, 9, 1, 1, 'El barco de vapor : Mini va a la playa', 'Christine Nöstlinger', 'Ediciones SM', 'D-3', 76, '2016-07-01 09:38:27', '2016-07-01 09:38:27'),
(595, 9, 1, 1, 'El barco de vapor : El ladrón sin huellas', 'Luisa Villar Liébana', 'Ediciones SM', 'D-3', 72, '2016-07-01 09:39:17', '2016-07-01 09:39:17'),
(596, 9, 1, 1, 'El barco de vapor : Pablo Diablo y los fantasmas', 'Francesca Simon', 'Ediciones SM', 'D-3', 94, '2016-07-01 09:40:51', '2016-07-01 09:40:51'),
(597, 9, 1, 1, 'El barco de vapor : Historias de Ninguno', 'Pilar Mateos', 'Ediciones SM', 'D-3', 90, '2016-07-01 09:41:48', '2016-07-01 09:41:48'),
(598, 9, 1, 1, 'El barco de vapor : Mini y su nuevo abuelo', 'Christine Nöstlinger', 'Ediciones SM', 'D-3', 63, '2016-07-01 09:42:47', '2016-07-01 09:42:47'),
(599, 9, 1, 1, 'El barco de vapor : El secreto de la arboleda', 'Fernando Lalana', 'Ediciones SM', 'D-3', 94, '2016-07-01 09:43:48', '2016-07-01 09:43:48'),
(600, 9, 1, 1, 'El barco de vapor : Tintof, el monstruo de la tinta', 'Ursel Scheffler', 'Ediciones SM', 'D-3', 103, '2016-07-01 09:45:19', '2016-07-01 09:46:03'),
(601, 9, 1, 1, 'El barco de vapor : Gafitas', 'Carmen Vázquez-Vigo', 'Ediciones SM', 'D-3', 78, '2016-07-01 09:47:06', '2016-07-01 09:47:06'),
(602, 9, 1, 1, 'El barco de vapor : ¡Mini es la mejor!', 'Christine Nöstlinger', 'Ediciones SM', 'D-3', 74, '2016-07-01 09:48:14', '2016-07-01 09:48:14'),
(603, 9, 1, 1, 'El barco de vapor : ¿Sabes silbar, Johanna?', 'Ulf Stark', 'Ediciones SM', 'D-3', 59, '2016-07-01 09:49:34', '2016-07-01 09:49:34'),
(604, 9, 1, 1, 'El barco de vapor : Kiatoski: goles, trucos y matones', 'Jürgen Banscherus', 'Ediciones SM', 'D-3', 61, '2016-07-01 09:51:04', '2016-07-01 09:51:04'),
(605, 9, 1, 1, 'Mi hermana Clara y el dichoso dinero', 'Dimiter Inkiow', 'Everest, S.A.', 'D-3', 88, '2016-07-01 09:53:08', '2016-07-01 09:53:08'),
(606, 9, 1, 1, 'Rebelion en la galaxia', 'Isaac Asimor', 'E.D.H.A.S.A.', 'D-3', 258, '2016-07-01 09:54:41', '2016-07-01 09:54:41'),
(607, 9, 1, 4, 'Cuéntame un cuento de hadas y juguetes', 'Patricia Antón y Horacio Elena', 'Planeta, S.A.', 'D-4', 93, '2016-07-04 07:03:45', '2016-07-04 07:03:45'),
(608, 9, 1, 4, 'El Ratoncito Pérez', 'Ana Serna-Vara', 'Susaeta Ediciones, S.A.', 'D-4', 35, '2016-07-04 07:05:31', '2016-07-04 07:05:31'),
(609, 9, 1, 4, 'Cuentos de ositos', 'Sally Grindley - Peter Utton', 'Grupo Editorial Ceac, S.A.', 'D-4', 77, '2016-07-04 07:08:55', '2016-07-04 07:08:55'),
(610, 9, 1, 1, 'Mickey', 'Walt Disney', 'Maves Editorial', 'D-4', 0, '2016-07-04 07:10:53', '2016-07-04 07:10:53'),
(611, 9, 1, 1, 'Blancanieves y los siete enanitos', 'Disney', 'Disney Enterprises, Inc.', 'D-4', 46, '2016-07-04 07:13:04', '2016-07-04 07:13:04'),
(612, 9, 1, 1, 'Colección Diverti Fábulas: La liebre y la tortuga', 'Colección Diverti Fábulas', 'G & G', 'D-4', 0, '2016-07-04 07:32:43', '2016-07-04 07:32:43'),
(613, 9, 1, 1, 'La astucia de Gallinita', 'Vacio', 'Ediciones Cuenticolor', 'D-4', 0, '2016-07-04 07:34:02', '2016-07-04 07:34:02'),
(614, 9, 1, 1, 'Me divierto, aprendo y practico inglés : Home and Family', 'Disney', 'Disney Enterprises, Inc.', 'D-4', 32, '2016-07-04 07:37:34', '2016-07-04 07:39:37'),
(615, 9, 1, 1, 'Me divierto, aprendo y practico inglés ', 'Disney', 'Vacio', 'D-4', 47, '2016-07-04 07:43:43', '2016-07-04 07:43:43'),
(616, 9, 1, 4, 'Leyendas del bosque. Gnomos', 'Vacio', 'Susaeta Ediciones, S.A.', 'D-4', 40, '2016-07-04 07:45:16', '2016-07-04 07:45:16'),
(617, 9, 1, 1, '160 actividades', 'Vacio', 'Ediciones Saldaña, S.A.', 'D-4', 0, '2016-07-04 07:47:15', '2016-07-04 07:47:15'),
(618, 9, 1, 4, 'Amunt i avall. El mar', 'Alex Burnett', 'Combel Editorial, S.A.', 'D-4', 0, '2016-07-04 07:49:40', '2016-07-04 07:49:40'),
(619, 9, 1, 1, '¿Qué tienen?', 'Alain Crozon', 'Ediciones SM', 'D-4', 0, '2016-07-04 07:51:43', '2016-07-04 07:51:43'),
(620, 9, 1, 1, 'Los deportes', 'Alain Crozon', 'Ediciones SM', 'D-4', 0, '2016-07-04 07:52:20', '2016-07-04 07:52:20'),
(621, 9, 1, 1, '¿Quién soy?', 'Aurélie Lanchais - Alain Crozon', 'Ediciones SM', 'D-4', 0, '2016-07-04 07:53:11', '2016-07-04 07:53:11'),
(622, 9, 1, 1, '¿Qué es esto?', 'Aurélie Lanchais - Alain Crozon', 'Ediciones SM', 'D-4', 0, '2016-07-04 07:54:08', '2016-07-04 07:54:08'),
(623, 9, 1, 1, 'Bumba y Baya, la jirafa', 'Cyril Hahn', 'Luis Vives', 'D-4', 0, '2016-07-04 07:56:08', '2016-07-04 07:56:08'),
(624, 9, 1, 1, 'El perro y el lobo', 'Colección fabulosa', 'Ediciones ', 'D-4', 0, '2016-07-04 07:57:24', '2016-07-04 07:57:24'),
(625, 9, 1, 1, 'Marco, de los apeninos  a los Andes', 'Vacio', 'Bruguera, S.A.', 'D-4', 48, '2016-07-04 08:29:07', '2016-07-04 08:29:07'),
(626, 9, 1, 1, 'Tebeo', 'Vacio', 'Vacio', 'D-4', 32, '2016-07-04 08:31:12', '2016-07-04 08:31:12'),
(627, 9, 1, 1, 'Los novios de la ratita presumida', 'Violeta Monreal / Fernando Lalana', 'Bruño', 'D-4', 29, '2016-07-04 08:32:51', '2016-07-04 08:32:51'),
(628, 9, 1, 4, 'Los 102 Dálmatas', 'Disney', 'Disney Enterprises, Inc.', 'D-4', 0, '2016-07-04 08:34:11', '2016-07-04 08:34:11'),
(629, 9, 1, 4, 'Gilberto Mariposa', 'Antoon Krings', 'Blume', 'D-4', 0, '2016-07-04 08:36:22', '2016-07-04 08:36:22'),
(630, 9, 1, 4, 'El zoo', 'Heather Amery y Stephen Cartwright', 'Usborne', 'D-4', 0, '2016-07-04 08:38:37', '2016-07-04 08:38:37'),
(631, 9, 1, 1, 'Busca colores', 'Faulkner / Lambert', 'Ediciones SM', 'D-4', 0, '2016-07-04 08:39:54', '2016-07-04 08:39:54'),
(632, 9, 1, 1, 'Mi querido libro de cuentos', 'Vacio', 'Vacio', 'D-4', 0, '2016-07-04 08:41:33', '2016-07-04 08:41:33'),
(633, 9, 1, 1, 'Barrio Sésamo. ¡ Es un secreto !', 'Vacio', 'RBA Editores', 'D-4', 0, '2016-07-04 08:43:53', '2016-07-04 08:43:53'),
(634, 9, 1, 4, 'Colores', 'Vacio', 'Susaeta Ediciones, S.A.', 'D-4', 0, '2016-07-04 08:53:05', '2016-07-04 08:53:58'),
(635, 9, 1, 1, 'Libro educativo. Colores', 'Vacio', 'Ediciones Saldaña, S.A.', 'D-4', 0, '2016-07-04 08:55:21', '2016-07-04 08:55:21'),
(636, 9, 1, 1, '¡ Buenos días !', 'Catherine Vase', 'RBA libros', 'D-4', 0, '2016-07-04 08:57:02', '2016-07-04 08:57:02'),
(637, 9, 1, 1, 'Coleción Bang on the door. Chiquitín', 'Vacio', 'Salvat', 'D-4', 0, '2016-07-04 08:58:15', '2016-07-04 09:10:00'),
(638, 9, 1, 1, 'Libro para ver y tocar. El zoo', 'Vacio', 'Susaeta Ediciones, S.A.', 'D-4', 0, '2016-07-04 09:00:00', '2016-07-04 09:00:00'),
(639, 9, 1, 1, 'El Principito en su planeta', 'Antoine de Saint - Exupéry', 'Vacio', 'D-4', 0, '2016-07-04 09:02:01', '2016-07-04 09:02:01'),
(640, 9, 1, 1, '¡ Buenas noches !', 'Catherine Vase', 'RBA libros', 'D-4', 0, '2016-07-04 09:03:31', '2016-07-04 09:03:31'),
(641, 9, 1, 1, 'Muñequita', 'Vacio', 'Salvat', 'D-4', 0, '2016-07-04 09:06:50', '2016-07-04 09:06:50'),
(642, 9, 1, 1, 'Colección Bang on the door.  Muñequita', 'Vacio', 'Salvat', 'D-4', 0, '2016-07-04 09:15:08', '2016-07-04 09:15:08'),
(643, 9, 1, 1, 'Colección Bang on the door. Chiquitín', 'Vacio', 'Salvat', 'D-4', 0, '2016-07-04 09:17:33', '2016-07-04 09:17:33'),
(644, 9, 1, 1, 'Colección Bang on the door. Muñequita', 'Vacio', 'Salvat', 'D-4', 0, '2016-07-04 09:18:57', '2016-07-04 09:18:57'),
(645, 9, 1, 1, 'Colección Bang on the door.  Torbellino', 'Vacio', 'Salvat', 'D-4', 0, '2016-07-04 09:19:50', '2016-07-04 09:19:50'),
(646, 9, 1, 1, 'Mi gran libro de actividades', 'VVV', 'VVV', 'D-4', 0, '2016-07-04 09:21:32', '2016-07-04 09:21:32'),
(647, 9, 1, 1, 'El Principito encuentra un amigo', 'Antoine de Saint - Exupéry', 'Vacio', 'D-4', 0, '2016-07-04 09:24:51', '2016-07-04 09:24:51'),
(648, 9, 1, 1, 'La Ventafocs', 'Vacio', 'Susaeta Ediciones, S.A.', 'D-4', 0, '2016-07-04 09:25:49', '2016-07-04 09:25:49'),
(649, 9, 1, 1, 'Bumba y Bembé, el elefante', 'Cyril Hahn', 'Luis Vives', 'D-4', 0, '2016-07-04 09:27:26', '2016-07-04 09:27:26'),
(650, 9, 1, 1, 'Bumba y Gorko, el cocodrilo', 'Cyril Hahn', 'Luis Vives', 'D-4', 0, '2016-07-04 09:29:09', '2016-07-04 09:29:09'),
(651, 9, 1, 1, 'Bumba y Naaba, el león', 'Cyril Hahn', 'Luis Vives', 'D-4', 0, '2016-07-04 09:30:18', '2016-07-04 09:30:18'),
(652, 9, 1, 1, 'Los dos duendes', 'Vacio', 'Colección HDG', 'D-4', 0, '2016-07-04 09:32:33', '2016-07-04 09:32:33'),
(653, 9, 1, 1, 'Los duros del barco de vapor. Un abrigo crecedero', 'Margarita Menéndez', 'Ediciones SM', 'D-4', 0, '2016-07-04 09:34:34', '2016-07-04 09:34:34'),
(654, 9, 1, 1, 'TEO juega', 'Violeta Denou', 'Vacio', 'D-4', 0, '2016-07-04 09:35:35', '2016-07-04 09:35:35'),
(655, 9, 1, 1, 'Yo llevo mi neceser', 'Vacio', 'Vacio', 'D-4', 0, '2016-07-04 09:36:47', '2016-07-04 09:36:47'),
(656, 9, 1, 1, 'Kika Superbruja y la momia', 'Knister', 'Bruño', 'D-4', 119, '2016-07-04 09:45:58', '2016-07-04 09:45:58'),
(657, 9, 1, 1, 'Pesadillas : ¡ Sálvese quien pueda !', 'R.L.Stine', 'Ediciones B', 'D-4', 126, '2016-07-04 09:48:43', '2016-07-04 09:48:43'),
(658, 9, 1, 1, 'Los duros del barco de vapor. Pablito', 'Asun Balzola', 'Ediciones SM', 'D-4', 0, '2016-07-04 09:49:58', '2016-07-04 09:49:58'),
(659, 9, 1, 1, 'Margarita', 'Rubén Darío / Elena Odriozola', 'Imaginarium', 'D-4', 0, '2016-07-04 09:51:04', '2016-07-04 09:51:04'),
(660, 9, 1, 1, 'Aladino', 'Sonja Lamut', 'Beascoa, S.A.', 'D-4', 0, '2016-07-04 09:52:38', '2016-07-04 09:52:38'),
(661, 9, 1, 1, 'El cuento del señor Pato', 'Juanvi Sánchez', 'Anaya', 'D-4', 0, '2016-07-04 09:53:33', '2016-07-04 09:53:33'),
(662, 9, 1, 1, 'Animales de la selva', 'Vacio', 'Todolibro Ediciones', 'D-4', 0, '2016-07-04 09:54:37', '2016-07-04 09:54:37'),
(663, 9, 1, 1, 'Mi amigo Bubu', 'Vacio', 'Ediciones Saldaña, S.A.', 'D-4', 0, '2016-07-04 09:55:29', '2016-07-04 09:55:29'),
(664, 9, 1, 1, 'Javi, sus amigos y sus cachorros', 'Juan Cervera', 'Luis Vives', 'D-4', 140, '2016-07-06 06:08:56', '2016-07-06 06:08:56'),
(665, 9, 1, 1, 'Brillo y brillo', 'Vacio', 'Susaeta Ediciones, S.A.', 'D-4', 0, '2016-07-06 06:09:57', '2016-07-06 06:09:57'),
(666, 9, 1, 1, 'Un caso para ti y el equipo tigre-La góndola espeluznante', 'Thomas Brezina', 'Ediciones SM', 'D-4', 125, '2016-07-06 06:12:27', '2016-07-06 06:12:27'),
(667, 9, 1, 1, 'Pesadilla : ¡ Invisibles !', 'R.L.Stine', 'Ediciones B', 'D-4', 153, '2016-07-06 06:13:53', '2016-07-06 06:13:53'),
(668, 9, 1, 1, 'El misteri de la calavera', 'Stefan Wolf', 'Susaeta Ediciones, S.A.', 'D-4', 180, '2016-07-06 06:16:41', '2016-07-06 06:16:41'),
(669, 9, 1, 1, 'Les aventures d\'en Pere Pistoles', 'Gabriel Janer Manila', 'Bruño', 'D-4', 155, '2016-07-06 06:18:01', '2016-07-06 06:18:01'),
(670, 9, 1, 1, 'El barco de vapor : Soy el mostooo...', 'Patxi Zubizarreta', 'Ediciones SM', 'D-4', 57, '2016-07-06 06:25:31', '2016-07-06 06:25:31'),
(671, 9, 1, 1, 'Robin Hood', 'Anónimo', 'Susaeta Ediciones, S.A.', 'D-4', 163, '2016-07-06 06:26:49', '2016-07-06 06:26:49'),
(672, 9, 1, 1, 'El barco de vapor : Tanit', 'Núria Albó', 'Ediciones SM', 'D-4', 115, '2016-07-06 06:32:22', '2016-07-06 06:32:22'),
(673, 9, 1, 1, 'Una ciudad en obras', 'Georges Ata', 'Ediciones SM', 'D-4', 71, '2016-07-06 06:33:04', '2016-07-06 06:33:04'),
(674, 9, 1, 1, 'Un caso para ti y el equipo tigre-Ojo de fuego', 'Thomas Brezina', 'Ediciones SM', 'D-4', 124, '2016-07-06 06:35:01', '2016-07-06 06:35:01'),
(675, 9, 1, 1, 'Geronimo Stilton : El secreto de la familia Tenebrax', 'Vacio', 'Destino', 'D-4', 115, '2016-07-06 06:36:23', '2016-07-06 06:36:23'),
(676, 9, 1, 1, 'Walt Disney : Tarón y el caldero mágico', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:41:55', '2016-07-06 06:41:55'),
(677, 9, 1, 1, 'Walt Disney : Blancanieves y los 7 enanitos', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:43:11', '2016-07-06 06:43:11'),
(678, 9, 1, 1, 'Walt Disney : Peter Pan y la Imaginación', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:43:44', '2016-07-06 06:51:46'),
(679, 9, 1, 1, 'Walt Disney : 101 Dálmatas y la Familia', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:44:47', '2016-07-06 06:49:31'),
(680, 9, 1, 1, 'Walt Disney : Robin Hood y la justicia', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:48:32', '2016-07-06 06:48:32'),
(681, 9, 1, 1, 'Walt Disney : Pinocho y el Optimismo', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:53:49', '2016-07-06 06:53:49'),
(682, 9, 1, 1, 'Walt Disney : Alicia en el país de las maravillas. Alicia y la Fantasía', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:55:34', '2016-07-06 06:55:34'),
(683, 9, 1, 1, 'Walt Disney : Bernardo y Bianca', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:56:43', '2016-07-06 06:56:43'),
(684, 9, 1, 1, 'Walt Disney : El burrito y el niño', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:57:57', '2016-07-06 06:57:57'),
(685, 9, 1, 1, 'Walt Disney : Bambi y la Amistad', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 06:58:59', '2016-07-06 06:58:59'),
(686, 9, 1, 1, 'Walt Disney : El sastrecillo Valiente. Mickey y la Audacia', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:00:40', '2016-07-06 07:00:40'),
(687, 9, 1, 1, 'Walt Disney : Merlin el Mago. Merlín y la Educación', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:02:04', '2016-07-06 07:02:04'),
(688, 9, 1, 1, 'Walt Disney : El libro de la Selva. Mowgli y el Valor', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:03:38', '2016-07-06 07:03:38'),
(689, 9, 1, 1, 'Walt Disney : La Cenicienta. Cenicienta y la Abnegación', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:04:49', '2016-07-06 07:04:49'),
(690, 9, 1, 1, 'Walt Disney : Los Aristogatos y el Compañerismo', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:05:50', '2016-07-06 07:05:50'),
(691, 9, 1, 1, 'Walt Disney : Dumbo y la Bondad', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:07:28', '2016-07-06 07:07:28'),
(692, 9, 1, 1, 'Walt Disney : Aladino y la Honradez', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:08:58', '2016-07-06 07:08:58'),
(693, 9, 1, 1, 'Walt Disney : La Bella Durmiente y el Amor', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:10:09', '2016-07-06 07:10:09'),
(694, 9, 1, 1, 'Walt Disney : La Dama y el Vagabundo. Reina y la Fidelidad', 'Walt Disney', 'S.A. de Promoción y Ediciones', 'D-4', 0, '2016-07-06 07:11:45', '2016-07-06 07:11:45'),
(695, 1, 1, 1, 'Disney. Los números', 'Vacio', 'Disney Enterprises, Inc.', 'D-4', 0, '2016-07-06 07:13:49', '2016-07-06 07:13:49'),
(696, 9, 1, 1, 'Peter Pan', 'Vacio', 'Todolibro Ediciones', 'D-4', 0, '2016-07-06 07:14:55', '2016-07-06 07:14:55'),
(697, 9, 1, 1, 'Animales', 'Vacio', 'Todolibro Ediciones', 'D-4', 0, '2016-07-06 07:15:45', '2016-07-06 07:15:45'),
(698, 23, 1, 1, 'Materias Militares', 'Centro de Instruccion de la Guardia Civil', 'Vacio', 'C-1', 448, '2016-07-06 08:00:56', '2016-07-06 08:00:56'),
(699, 23, 1, 1, 'El Concierto de San Ovidio / La Fundación', 'Antonio Buero Vallejo', 'Espasa-Calpe, S.A.', 'C-1', 258, '2016-07-06 08:05:38', '2016-07-06 08:05:38'),
(700, 23, 1, 1, 'El Coyote : Un caballero / Eran 7 Hombres Malos', 'J. Mallorquí', 'Ediciones Forum, S.A.', 'C-1', 0, '2016-07-06 08:23:18', '2016-07-06 08:23:18'),
(701, 23, 1, 1, 'Centinela de Occidente', 'Luis de Galinsoga', 'Vacio', 'C-1', 467, '2016-07-06 08:34:08', '2016-07-06 08:34:08'),
(702, 23, 1, 1, 'Le bourgeois gentilhomme', 'Molière', 'Vacio', 'C-1', 152, '2016-07-06 08:37:30', '2016-07-06 08:37:30'),
(703, 23, 1, 1, 'Laureados', 'Vacio', 'Vacio', 'C-1', 94, '2016-07-06 08:39:10', '2016-07-06 08:39:10'),
(704, 23, 1, 1, 'La Isla de las tres Sirenas', 'Irving Wallace', 'Ediciones Grijalbo', 'C-1', 552, '2016-07-06 08:46:44', '2016-07-06 08:46:44'),
(705, 23, 1, 1, 'El Avaro / El Misántropo / El Hipócrita', 'Moliere', 'Cisne', 'C-1', 166, '2016-07-06 08:49:43', '2016-07-06 08:49:43'),
(706, 23, 1, 1, 'Huésped del mar (Noticia y sueño de Sitges)', 'César González-Ruano', 'Vacio', 'C-1', 162, '2016-07-06 08:54:19', '2016-07-06 08:54:19'),
(707, 23, 1, 1, 'León el Africano', 'Amin Maalouf', 'Alianza Editorial', 'C-1', 421, '2016-07-06 08:58:29', '2016-07-06 08:58:29'),
(708, 4, 1, 1, 'La Guerra del fin del mundo', 'Mario Vargas Llosa', 'Plaza & Janés, S.A. Editores', 'C-2', 427, '2016-07-06 09:19:39', '2016-07-06 09:19:39'),
(709, 4, 1, 1, 'La Agencia de viajes Thompson y Cia.', 'Julio Verne', 'Molino', 'C-2', 314, '2016-07-06 09:21:33', '2016-07-06 09:21:33'),
(710, 4, 1, 1, 'La Esfinge de los hielos', 'Julio Verne', 'Molino', 'C-2', 271, '2016-07-06 09:22:40', '2016-07-06 09:22:40'),
(711, 4, 1, 1, 'Misterio en la mina de oro abandonada', 'Pierre Lamblin', 'Molino', 'C-2', 160, '2016-07-06 09:24:07', '2016-07-06 09:24:07'),
(712, 4, 1, 1, 'Con buen viento hacia Java', 'Garland Roark', 'Luis de Caralt Editor', 'C-2', 409, '2016-07-06 09:26:01', '2016-07-06 09:26:01'),
(713, 4, 1, 1, 'Perdidos en la nieve', 'Reidar Brodtkorb', 'Editorial Noguer, S.A.', 'C-2', 126, '2016-07-06 09:27:06', '2016-07-06 09:27:06'),
(714, 4, 1, 1, 'Los hijos del Capitán Grant', 'Julio Verne', 'Bruguera, S.A.', 'C-2', 255, '2016-07-06 09:28:17', '2016-07-06 09:28:17'),
(715, 4, 1, 1, 'De la Tierra a la Luna', 'Julio Verne', 'Ediciones Forum, S.A.', 'C-2', 228, '2016-07-06 09:31:00', '2016-07-06 09:31:00'),
(716, 4, 1, 1, 'Dueño del Mundo', 'Julio Verne', 'Molino', 'C-2', 158, '2016-07-06 09:31:54', '2016-07-06 09:31:54'),
(717, 4, 1, 1, 'Bermudas, base secreta de los ovnis', 'Jean Prachan', 'Circulo de Lectores, S.A', 'C-2', 190, '2016-07-06 09:33:33', '2016-07-06 09:33:33'),
(718, 4, 1, 1, 'Mística y misterio de los Ovnis', 'José Antonio Silva', 'Círculo de Lectores, S.A.', 'C-2', 234, '2016-07-06 09:35:04', '2016-07-06 09:35:04'),
(719, 4, 1, 1, 'Un día en la vida de Ivan Denisovitch', 'Alexander Solschenizyn', 'Luis de Caralt Editor', 'C-2', 165, '2016-07-06 09:36:36', '2016-07-06 09:36:36'),
(720, 4, 1, 1, 'Fundación y Tierra', 'Isaac Asimov', 'Plaza & Janés, S.A. Editores', 'C-2', 524, '2016-07-06 09:37:53', '2016-07-06 09:37:53'),
(721, 4, 1, 2, 'El exorcista', 'William Peter Blatty', 'Plaza & Janés, S.A. Editores', 'C-2', 310, '2016-07-06 09:39:50', '2016-07-06 09:39:50'),
(722, 10, 1, 1, 'El Arte de relajarse', 'Marcel Rouet', 'Alas', 'C-2', 91, '2016-07-06 09:42:20', '2016-07-06 09:42:20'),
(723, 10, 1, 1, 'Las semillas de la violencia', 'Luis Rojas Marcos', 'Espasa-Calpe, S.A.', 'C-2', 228, '2016-07-06 09:43:36', '2016-07-06 09:43:36'),
(724, 10, 1, 1, 'Las nueve revelaciones', 'James Redfield', 'Ediciones B, S.A.', 'C-2', 391, '2016-07-06 09:45:21', '2016-07-06 09:45:21'),
(725, 10, 1, 1, 'El envejecimiento', 'David P. Barash', 'Salvat', 'C-2', 229, '2016-07-06 09:48:07', '2016-07-06 09:48:07'),
(726, 10, 1, 1, 'Ahora no, cariño, me duele la cabeza...', 'Guía de bolsillo', 'Vacio', 'C-2', 223, '2016-07-06 09:49:51', '2016-07-06 09:49:51');
INSERT INTO `libros` (`id`, `categoria_id`, `enciclopedia_id`, `donante_id`, `title`, `autor`, `editorial`, `estanteria`, `paginasNumero`, `created_at`, `updated_at`) VALUES
(727, 10, 1, 1, 'Sí, cariño, ahora voy...', 'Guía de bolsillo', 'Vacio', 'C-2', 221, '2016-07-06 09:52:00', '2016-07-06 09:52:00'),
(728, 10, 23, 5, 'Diccionario del Mueble', 'Vanessa Cucco', 'Libsa', 'C-2', 280, '2016-07-07 07:03:44', '2016-07-15 09:21:17'),
(729, 10, 23, 5, 'El Arte de la Seducción', 'Héctor Alonso Rodríguez', 'Libsa', 'C-2', 319, '2016-07-07 07:11:46', '2016-07-15 09:20:26'),
(730, 4, 1, 5, 'Isla Misteriosa : Narraciones', 'Jack London', 'Libsa', 'C-2', 190, '2016-07-07 07:27:06', '2016-07-15 09:17:31'),
(731, 4, 1, 5, 'Isla Misteriosa : La Vuelta al Mundo en 80 Días', 'Julio Verne', 'Libsa', 'C-2', 252, '2016-07-07 07:28:17', '2016-07-15 09:17:00'),
(732, 4, 1, 5, 'Isla Misteriosa : Cinco semanas en globo', 'Julio Verne', 'Libsa', 'C-2', 222, '2016-07-07 07:31:33', '2016-07-15 09:16:36'),
(733, 4, 1, 1, 'Isla Misteriosa : El Corsario negro', 'Emilio Salgari', 'Libsa', 'C-2', 125, '2016-07-07 07:33:23', '2016-07-15 09:16:14'),
(734, 4, 1, 5, 'Isla Misteriosa : El Escarabajo de oro y otros relatos', 'Edgar Allan Poe', 'Libsa', 'C-2', 92, '2016-07-07 07:36:16', '2016-07-15 09:15:51'),
(735, 4, 1, 5, 'Isla Misteriosa : La Isla del Tesoro', 'Robert Louis Stevenson', 'Libsa', 'C-2', 188, '2016-07-07 07:38:03', '2016-07-15 09:15:29'),
(736, 2, 1, 5, 'Ivanhoe', 'Walter Scott', 'Producciones Editoriales', 'C-3', 190, '2016-07-07 07:47:10', '2016-07-15 09:30:16'),
(737, 2, 1, 5, 'Grandes obras de la Literatura : Macbeth', 'William Shakespeare', 'Alba', 'C-3', 122, '2016-07-07 08:08:37', '2016-07-15 09:13:04'),
(738, 2, 1, 5, 'Grandes obras de la Literatura : Otelo', 'William Shakespeare', 'Alba', 'C-3', 152, '2016-07-07 08:12:48', '2016-07-15 09:12:39'),
(739, 2, 1, 5, 'Grandes obras de la Literatura : El Profeta', 'Gibrán Khalil Gibrán', 'Alba', 'C-3', 141, '2016-07-07 08:14:38', '2016-07-15 09:11:44'),
(740, 2, 1, 5, 'Grandes obras de la Literatura : Fuenteovejuna', 'Lope de Vega', 'Alba', 'C-3', 99, '2016-07-07 08:18:47', '2016-07-15 09:10:53'),
(741, 2, 1, 5, 'Grandes obras de la Literatura : El Contrato Social', 'J. -J. Rousseau', 'Alba', 'C-3', 173, '2016-07-07 08:20:29', '2016-07-15 09:10:17'),
(742, 1, 1, 5, 'Las cerezas del cementerio', 'Gabriel Miró', 'Taurus Ediciones', 'A-3', 342, '2016-07-07 08:30:34', '2016-07-15 09:28:11'),
(743, 3, 1, 5, 'A sangre viva', 'Alfred Hitchcock', 'Ágata', 'B-3', 223, '2016-07-07 08:39:47', '2016-07-15 09:07:51'),
(744, 26, 1, 5, 'Sueños de un seductor', 'Woody Allen', 'Fabula Tusquets Editores', 'C-4', 0, '2016-07-07 08:53:05', '2016-07-15 09:06:14'),
(745, 3, 1, 5, 'Morir para ver', 'Alfred Hitchcock', 'Ágata', 'B-3', 223, '2016-07-07 08:54:21', '2016-07-15 09:07:18'),
(746, 1, 1, 5, 'Rebeca', 'Daphne du Maurier', 'Santillana Ediciones Generales, S.L.', 'A-3', 478, '2016-07-07 08:57:26', '2016-07-15 09:29:29'),
(747, 10, 23, 5, 'Manual de las buenas maneras', 'Arantxa G. de Castro', 'Libsa', 'C-2', 319, '2016-07-07 09:01:41', '2016-07-15 09:19:45'),
(748, 21, 1, 5, 'I Ching. Libro de las Mutaciones', 'Donatella Bergamino / Diego Meldi', 'Libsa', 'D-2', 319, '2016-07-07 09:18:29', '2016-07-15 09:25:23'),
(749, 21, 1, 5, 'Manual de la buena Estrella', 'Juan Echenique', 'Libsa', 'D-2', 319, '2016-07-07 09:19:49', '2016-07-15 09:24:51'),
(750, 10, 1, 1, 'Obras maestras del Pensamiento Contemporáneo. La interpretación de los sueños', 'Sigmund Freud', 'Planeta-De Agostini', 'C-2', 688, '2016-07-07 12:14:35', '2016-07-07 12:14:35'),
(751, 1, 1, 1, 'Tu hijo: Genio en potencia', 'Manuel Penella', 'Espasa-Calpe, S.A.', 'C-2', 234, '2016-07-07 12:16:21', '2016-07-07 12:16:21'),
(752, 1, 1, 1, 'Todo sobre tu embarazo', 'Dr. Bartolomé Beltrán', 'Espasa-Calpe, S.A.', 'C-2', 223, '2016-07-07 12:17:35', '2016-07-07 12:17:35'),
(753, 10, 1, 1, 'Conócete mejor. Descubre tu personalidad.', 'Javier de las Heras', 'Espasa-Calpe, S.A.', 'C-2', 263, '2016-07-07 12:19:26', '2016-07-07 12:19:26'),
(754, 10, 1, 1, 'La salud de tu hijo', 'José Ignacio de Arana', 'Espasa-Calpe, S.A.', 'C-2', 278, '2016-07-07 12:20:38', '2016-07-07 12:20:38'),
(755, 10, 1, 1, 'Por tu propia seguridad', 'Manuel Giménez', 'Espasa-Calpe, S.A.', 'C-2', 214, '2016-07-07 12:21:58', '2016-07-07 12:21:58'),
(756, 10, 1, 1, 'El niño feliz. Su clave Psicológica', 'Dorothy Corkille Briggs', 'Gedisa', 'C-2', 251, '2016-07-07 12:23:53', '2016-07-07 12:23:53'),
(757, 10, 1, 1, 'Remedios para el desamor. Como afrontar las crisis de la pareja', 'Enrique Rojas', 'Ediciones temas de hoy', 'C-2', 255, '2016-07-07 12:26:14', '2016-07-07 12:26:14'),
(758, 10, 1, 1, 'La mujer en el Siglo XX', 'Julián Marías', 'Circulo de Lectores, S.A', 'C-2', 206, '2016-07-07 12:28:12', '2016-07-07 12:28:12'),
(759, 10, 1, 1, '¡ Bésame, tonto !', 'Patrizia Carrano', 'Círculo de Lectores, S.A.', 'C-2', 229, '2016-07-07 12:29:58', '2016-07-07 12:29:58'),
(760, 10, 1, 1, 'El bebé y el niño', 'Vacio', 'Vacio', 'C-2', 290, '2016-07-07 12:32:11', '2016-07-07 12:32:11'),
(761, 10, 1, 1, 'Resolver los conflictos con éxito', 'John Macdonald', 'Vacio', 'C-2', 103, '2016-07-07 12:34:21', '2016-07-07 12:34:21'),
(762, 10, 1, 1, 'Parapsicologia moderna', 'J. Gaither Pratt', 'Vacio', 'C-2', 179, '2016-07-07 12:36:02', '2016-07-07 12:36:02'),
(763, 10, 1, 1, 'Las teorias sociologicas desde la segunda Guerra Mundial', 'Jeffrey C. Alexander', 'Gedisa', 'C-2', 315, '2016-07-07 12:38:11', '2016-07-07 12:38:11'),
(764, 10, 1, 1, 'Escuela del amor y del matrimonio', 'Dr. O. Karsten', 'Ediciones Zeus', 'C-2', 453, '2016-07-07 12:41:04', '2016-07-07 12:41:04'),
(765, 10, 1, 1, 'Agrupémonos todas. La lucha de las españolas por la igualdad.', 'Isaías Lafuente', 'Santillana, S.A.', 'C-2', 327, '2016-07-07 12:43:13', '2016-07-07 12:44:42'),
(766, 1, 1, 1, 'Supernanny. Consells pràctics i sensats per educar els teus fills', 'Jo Frost', 'Columna Edicions, S.A.', 'C-2', 216, '2016-07-07 12:47:16', '2016-07-07 12:47:16'),
(767, 2, 1, 1, 'El ángel perdido', 'Javier Sierra', 'Planeta, S.A.', 'C-3', 534, '2016-07-07 12:54:53', '2016-07-07 12:54:53'),
(768, 2, 1, 1, 'La cuarta alianza', 'Gonzalo Giner', 'Plaza & Janés, S.A. Editores', 'C-3', 507, '2016-07-07 12:57:12', '2016-07-07 12:57:12'),
(769, 2, 1, 3, 'El Señor de los cátaros', 'Hanny Alders', 'Planeta-De Agostini', 'C-3', 479, '2016-07-07 12:59:02', '2016-07-07 12:59:02'),
(770, 2, 1, 1, 'Memorias de una vida inesperada. ', 'Reina Noor', 'Plaza & Janés, S.A. Editores', 'C-3', 478, '2016-07-07 13:03:36', '2016-07-07 13:03:36'),
(771, 2, 1, 1, 'A la sombre de un destino', 'Luis Gómez-Acebo', 'Tusquets Editores, S.A.', 'C-3', 308, '2016-07-07 13:06:00', '2016-07-07 13:06:00'),
(772, 2, 1, 1, 'Los hijos secretos del Grial', 'Varios', 'Círculo de lectores', 'C-3', 375, '2016-07-07 13:08:03', '2016-07-07 13:08:03'),
(773, 2, 1, 1, 'Mis anécdotas preferidas', 'Carlos Fisas', 'Círculo de Lectores, S.A.', 'C-3', 623, '2016-07-07 13:09:51', '2016-07-07 13:09:51'),
(774, 2, 1, 1, 'La judía de Toledo', 'Lion Feuchtwanger', 'Planeta-De Agostini', 'C-3', 573, '2016-07-07 13:11:49', '2016-07-07 13:11:49'),
(775, 2, 1, 1, 'Camina o revienta. Memorias de "El Lute"', 'Eleuterio Sánchez', 'Vacio', 'C-3', 525, '2016-07-07 13:13:46', '2016-07-07 13:13:46'),
(776, 2, 1, 1, 'Los grandes enigmas de la Historia', 'Vacio', 'Planeta, S.A.', 'C-3', 300, '2016-07-07 13:25:39', '2016-07-07 13:25:39'),
(777, 2, 1, 1, 'Historia Oxford del Mundo clasico 2. Roma', 'John Boardman / Jasper Griffin / Oswyn Murray', 'Alianza Editorial', 'C-3', 958, '2016-07-07 13:28:16', '2016-07-07 13:28:16'),
(778, 2, 1, 1, 'De la marca superior de Al-Andalus al Reino de Aragon Sobrarbe y Ribagorza', 'Antonio Duran Gudiol', 'Vacio', 'C-3', 200, '2016-07-07 13:29:43', '2016-07-07 13:29:43'),
(779, 2, 1, 1, 'España en la Edad Antigua', 'Luis A. García Moreno', 'Ediciones Anaya, S.A.', 'C-3', 127, '2016-07-07 13:32:01', '2016-07-07 13:32:01'),
(780, 2, 1, 1, 'Prehistoria de España. Los orígenes', 'Maria Luisa Ruiz - Gálvez Priego', 'Anaya', 'C-3', 127, '2016-07-07 13:33:41', '2016-07-07 13:33:41'),
(781, 2, 1, 1, 'El fin del Imperio Romano', 'Alberto Prieto Arciniega', 'Sintesis', 'C-3', 143, '2016-07-07 13:35:21', '2016-07-07 13:35:21'),
(782, 2, 1, 1, 'Tregua para la orquesta', 'Fania  Fenelon', 'Editorial Noguer, S.A.', 'C-3', 371, '2016-07-07 13:37:07', '2016-07-07 13:37:07'),
(783, 2, 1, 1, 'Locos egregios', 'Juan Antonio Vallejo-Nágera', 'Planeta, S.A.', 'C-3', 296, '2016-07-07 13:38:08', '2016-07-07 13:38:08'),
(784, 2, 1, 1, 'Genesis de una leyenda africana. La historia de Biafra', 'Frederick Forsyth', 'Plaza & Janés, S.A. Editores', 'C-3', 359, '2016-07-07 13:40:51', '2016-07-07 13:40:51'),
(785, 2, 1, 1, 'El otro árbol de Guernica', 'Luis de Castresana', 'Círculo de Lectores, S.A.', 'C-3', 220, '2016-07-07 13:42:59', '2016-07-07 13:43:41'),
(786, 2, 1, 1, 'La Prehistoria de la sociedad europea', 'Gordon Childe', 'Icaria Editorial, S.A.', 'C-3', 206, '2016-07-07 13:45:24', '2016-07-07 13:45:24'),
(787, 2, 1, 1, 'El mozárabe (I)', 'Jesús Sánchez Adalid', 'Planeta-De Agostini', 'C-3', 330, '2016-07-07 13:47:07', '2016-07-07 13:47:07'),
(788, 2, 1, 1, 'Historia de las antiguas culturas del mundo', 'Karl Gutbrod', 'Ediciones del Serbal', 'C-3', 414, '2016-07-07 13:49:01', '2016-07-07 13:49:01'),
(789, 2, 1, 1, 'El Cercano Oriente. Los Sumerios', 'Maria Camino Garcia - Joan Santacana', 'Grupo Anaya, S.A.', 'C-3', 96, '2016-07-07 13:53:07', '2016-07-07 13:57:22'),
(790, 2, 1, 1, 'La Guerra Civil Española', 'Gabriel Cardona', 'Arlanza Ediciones, S.A.', 'C-3', 63, '2016-07-07 13:56:33', '2016-07-07 13:56:33'),
(791, 8, 1, 1, 'Memorias de un revolucionario', 'Jack Max', 'Plaza & Janés, S.A. Editores', 'C-3', 536, '2016-07-07 14:00:00', '2016-07-07 14:00:00'),
(792, 8, 1, 1, 'Por qué perdimos la guerra', 'Diego Abad de Santillan', 'Plaza & Janés, S.A. Editores', 'C-3', 444, '2016-07-07 14:01:28', '2016-07-07 14:01:28'),
(793, 8, 1, 1, 'Obras Selectas. Marco Tulio Cicerón', 'Marco Tulio Cicerón', 'Edimat', 'C-3', 426, '2016-07-07 14:04:53', '2016-07-07 14:04:53'),
(794, 8, 1, 1, 'Cartas desde el infierno', 'Ramón Sampedro', 'Planeta, S.A.', 'C-3', 284, '2016-07-07 14:07:19', '2016-07-07 14:07:19'),
(795, 8, 1, 1, 'Chopin y George Sand', 'Bartomeu Ferra', 'Vacio', 'C-3', 0, '2016-07-07 14:09:44', '2016-07-07 14:09:44'),
(796, 8, 1, 1, 'De profesión periodista', 'Antonio Coll Gilabert', 'Editorial Noguer, S.A.', 'C-3', 222, '2016-07-07 14:11:16', '2016-07-07 14:11:16'),
(797, 8, 1, 1, 'Confesiones', 'Juan Jacobo Rousseau', 'Mateu', 'C-3', 532, '2016-07-07 14:12:41', '2016-07-07 14:12:41'),
(798, 8, 1, 1, 'La Reina', 'Pilar Urbano', 'Plaza & Janés, S.A. Editores', 'C-3', 255, '2016-07-07 14:14:15', '2016-07-07 14:14:15'),
(799, 8, 1, 1, 'Napoleón', 'André Maurois', 'Salvat', 'C-3', 189, '2016-07-07 14:15:44', '2016-07-07 14:15:44'),
(800, 8, 1, 1, 'El significado de la relatividad', 'Albert Einstein', 'Planeta-De Agostini', 'C-3', 237, '2016-07-07 14:16:47', '2016-07-07 14:16:47'),
(801, 8, 1, 1, 'Miguel Angel', 'Heinrich Koch', 'Salvat', 'C-3', 191, '2016-07-07 14:19:53', '2016-07-07 14:19:53'),
(802, 15, 1, 1, 'Felipe & Letizia. El compromiso real', 'Vacio', 'Vacio', 'C-4', 127, '2016-07-07 14:44:09', '2016-07-07 14:44:09'),
(803, 15, 1, 1, 'GAL. Crimen de Estado', 'Alvaro Baeza L.', 'ABL Press ABL', 'C-4', 650, '2016-07-07 14:46:22', '2016-07-07 14:46:22'),
(804, 15, 1, 1, '¡Matar al Papa!', 'Alvaro Baeza L.', 'ABL Editor', 'C-4', 624, '2016-07-07 14:47:44', '2016-07-07 14:47:44'),
(805, 15, 1, 1, '¡ Burla para matar !', 'Alvaro Baeza L.', 'ABL Editor', 'C-4', 555, '2016-07-07 14:48:58', '2016-07-07 14:48:58'),
(806, 15, 1, 1, 'Memorias del futuro', 'Felipe González', 'Aguilar', 'C-4', 389, '2016-07-07 14:50:09', '2016-07-07 14:50:09'),
(807, 15, 1, 1, 'España', 'Pietro Nenni', 'Plaza & Janés, S.A. Editores', 'C-4', 292, '2016-07-07 14:51:14', '2016-07-07 14:51:14'),
(808, 15, 1, 1, 'Juan Carlos, el Rey de un pueblo', 'Paul Preston', 'Ediciones Folio, S.A.', 'C-4', 317, '2016-07-07 14:52:57', '2016-07-07 14:52:57'),
(809, 15, 1, 1, 'Las relaciones laborales', 'Varios', 'Fernando Torres - Editor', 'C-4', 302, '2016-07-07 14:54:29', '2016-07-07 14:54:29'),
(810, 15, 1, 1, 'Sindicalismo y Autogestión', 'Heleno Saña', 'G. del Toro - Editor', 'C-4', 239, '2016-07-07 14:55:56', '2016-07-07 14:55:56'),
(811, 15, 1, 1, 'Léxico de Politica', 'José María Coloma', 'Laia', 'C-4', 191, '2016-07-07 14:59:28', '2016-07-07 14:59:28'),
(812, 15, 1, 1, 'Yo, el Rey', 'Juan Antonio Vallejo-Nágera', 'Planeta, S.A.', 'C-4', 285, '2016-07-07 15:02:35', '2016-07-07 15:02:35'),
(813, 15, 1, 1, 'Introducción al derecho', 'Ángel Latorre', 'Ariel, S.A.', 'C-4', 231, '2016-07-07 15:04:22', '2016-07-07 15:04:22'),
(814, 15, 1, 1, 'El Marco Politico de la desamortización en España', 'F. Tomas y Valiente', 'Ariel, S.A.', 'C-4', 172, '2016-07-07 15:06:05', '2016-07-07 15:06:05'),
(815, 15, 1, 1, 'Economia Basica', 'Francisco Mochon', 'Vacio', 'C-4', 375, '2016-07-07 15:16:25', '2016-07-07 15:16:25'),
(816, 15, 1, 1, 'Derecho Civil y Mercantil', 'Vicente del Valle / Manuela Zaragoza', 'Vacio', 'C-4', 254, '2016-07-07 15:18:30', '2016-07-07 15:18:30'),
(817, 15, 1, 1, 'Derecho Laboral y Fiscal', 'Manuela Zaragoza / Vicente del Valle', 'Vacio', 'C-4', 229, '2016-07-07 15:20:16', '2016-07-07 15:20:16'),
(818, 15, 1, 1, 'Delitos y cuestiones penales en el ámbito empresarial (4 manuales)', 'Vacio', 'Expansión', 'C-4', 0, '2016-07-07 15:22:44', '2016-07-07 15:22:44'),
(819, 19, 1, 1, 'La venganza es mía, S.A. Génesis y catástrofe', 'Roald Dahl', 'Círculo de Lectores', 'C-4', 287, '2016-07-07 15:29:37', '2016-07-07 15:29:37'),
(820, 19, 1, 1, '555 Chistes cortísimos', 'Vacio', 'Rayuela', 'C-4', 238, '2016-07-07 15:30:35', '2016-07-07 15:30:35'),
(821, 19, 1, 1, 'Las 100 mejores anécdotas de la Bolsa y de los mercados financieros', 'Varios', 'Vacio', 'C-4', 63, '2016-07-07 15:40:49', '2016-07-07 15:40:49'),
(822, 19, 1, 1, 'Guía espiritual para masocas', 'Millan Salcedo', 'Ediciones temas de hoy, S.A.', 'C-4', 202, '2016-07-07 15:42:49', '2016-07-07 15:42:49'),
(823, 19, 1, 1, 'Humor en escena', 'Javier Tapia', 'Edicomunicación, S.A.', 'C-4', 157, '2016-07-07 15:45:10', '2016-07-07 15:45:10'),
(824, 19, 1, 1, 'La del Prado', 'Consuelo Luca de Tena / Manuela Mena', 'Silex', 'C-4', 291, '2016-07-07 15:46:55', '2016-07-07 15:46:55'),
(825, 19, 1, 1, 'Un genio de la música', 'Ricardo Wagner', 'Ediciones Toray, S.A.', 'C-4', 190, '2016-07-07 15:48:16', '2016-07-07 15:48:16'),
(826, 19, 1, 1, 'Sting', 'Marsha Bronson', 'Baula', 'C-4', 64, '2016-07-07 15:49:15', '2016-07-07 15:49:15'),
(827, 19, 1, 1, 'Mick Jagger', 'Anthony Scaduto', 'Ediciones Jucar', 'C-4', 309, '2016-07-07 15:50:40', '2016-07-07 15:50:40'),
(828, 19, 1, 1, 'Rod Stewart', 'George Tremlett', 'Ediciones Jucar', 'C-4', 222, '2016-07-07 15:52:08', '2016-07-07 15:52:08'),
(829, 19, 1, 1, 'David Bowie', 'Esteban Leivas', 'Ediciones Júcar', 'C-4', 230, '2016-07-07 15:53:20', '2016-07-07 15:53:20'),
(830, 19, 1, 1, 'Bruce Springsteen', 'Vacio', 'Fundamentos', 'C-4', 128, '2016-07-07 15:54:33', '2016-07-07 15:54:33'),
(831, 19, 1, 1, 'Elvis Presley', 'Vacio', 'Fundamentos', 'C-4', 127, '2016-07-07 15:55:43', '2016-07-07 15:55:43'),
(832, 19, 1, 1, 'Manual de la navegación a vela', 'Vacio', 'Everest, S.A.', 'C-4', 222, '2016-07-07 15:56:52', '2016-07-07 15:56:52'),
(833, 19, 1, 1, 'Navegación con mal tiempo', 'K. Adlard Coles', 'Juventud', 'C-4', 425, '2016-07-07 15:58:04', '2016-07-07 15:58:04'),
(834, 19, 1, 1, 'Submarinismo deportivo', 'Siegfried Müssig', 'Grupo Editorial Ceac, S.A.', 'C-4', 138, '2016-07-07 15:59:14', '2016-07-07 15:59:14'),
(835, 19, 1, 1, 'Aprendiendo a navegar a vela', 'H.A.Calahan', 'Juventud', 'C-4', 244, '2016-07-07 16:01:05', '2016-07-07 16:01:05'),
(836, 19, 1, 1, 'El curso en que amamos a Pfeiffer', 'Blanca Álvarez', 'Ediciones del bronce', 'C-4', 140, '2016-07-07 16:02:05', '2016-07-07 16:02:05'),
(837, 19, 1, 1, 'Premio Nobel de Medicina', 'Ramon y Cajal', 'Ediciones Toray, S.A.', 'C-4', 192, '2016-07-07 16:04:09', '2016-07-07 16:04:09'),
(838, 19, 1, 1, 'Colección Personajes del Siglo XX (3 tomos)', 'Greta Garbo / Marilyn Monroe / Al Capone', 'Ediciones Rueda, J.M. S.A.', 'C-4', 0, '2016-07-07 16:06:58', '2016-07-07 16:06:58'),
(839, 19, 1, 3, 'Oak, vivencias de un agente forestal', 'Antonio Gutiérrez Sánchez', 'Guarda Bosques', 'C-4', 312, '2016-07-07 16:08:45', '2016-07-07 16:08:45'),
(840, 23, 1, 1, 'Grandes novelas historicas. El Espia', 'Fenomore Cooper', 'Círculo de amigos de la Historia', 'B-1', 351, '2016-07-08 07:00:51', '2016-07-08 07:00:51'),
(841, 23, 1, 1, 'Selecciones vertice de aventuras. ¡Hombre o gorila!', 'Vacio', 'Vertice', 'B-1', 127, '2016-07-08 07:18:12', '2016-07-08 07:18:12'),
(842, 23, 1, 1, 'El Coyote. Rapto / Cuando el Coyote avisa', 'J. Mallorquí', 'Ediciones Forum, S.A.', 'B-1', 0, '2016-07-08 07:20:35', '2016-07-08 07:20:35'),
(843, 23, 1, 1, 'Primer amor, primer dolor', 'José Luis Martín Vigil', 'Richard Grandio Editor', 'B-1', 310, '2016-07-08 07:22:46', '2016-07-08 07:22:46'),
(844, 1, 1, 1, 'Los tributos del amor', 'Ramon Raluy Atanasio', 'Vacio', 'B-2', 215, '2016-07-08 07:35:58', '2016-07-08 07:35:58'),
(845, 1, 1, 1, 'Madame Bovary', 'Gustave Flaubert', 'Bruguera, S.A.', 'B-2', 412, '2016-07-08 07:45:23', '2016-07-08 07:45:23'),
(846, 1, 1, 1, 'Viaje al fin del mundo : Galapagos', 'Alberto Vázquez-Figueroa', 'Plaza & Janés, S.A. Editores', 'B-2', 188, '2016-07-08 07:47:07', '2016-07-08 07:47:07'),
(847, 1, 1, 1, 'La familia de Alvareda', 'Fernan Caballero', 'Luis de Caralt Editor', 'B-2', 217, '2016-07-08 08:01:55', '2016-07-08 08:01:55'),
(848, 1, 1, 1, 'Del Madrid castizo. Sainetes', 'Carlos Arniches', 'Cátedra', 'B-2', 161, '2016-07-08 08:05:17', '2016-07-08 08:05:17'),
(849, 1, 1, 1, 'Las obras contemporaneas de mayor éxito (Varios)', 'Varios', 'Selecciones del Reader\'s Digest, S.A.', 'B-2', 0, '2016-07-08 08:27:30', '2016-07-08 08:27:30'),
(850, 1, 1, 1, 'Grandes maestros de la literatura contemporanea', 'Harold Robbins', 'Luis de Caralt Editor', 'B-2', 895, '2016-07-08 08:28:50', '2016-07-08 08:28:50'),
(852, 3, 1, 4, 'Los hombres que no amaban a las mujeres', 'Stieg Larsson', 'Ediciones Destino', 'B-3', 665, '2016-07-08 08:55:22', '2016-07-08 08:58:24'),
(853, 3, 1, 1, 'El enigma del cuatro', 'Ian Caldwell / Dustin Thomason', 'Roca Editorial', 'B-3', 394, '2016-07-08 08:57:45', '2016-07-08 08:57:45'),
(854, 3, 1, 1, 'Los ojos del dragon', 'Stephen King', 'Plaza & Janés, S.A. Editores', 'B-3', 272, '2016-07-08 08:59:36', '2016-07-08 08:59:36'),
(855, 3, 1, 1, 'Torpejusticia', 'Lisa Scottoline', 'Círculo de Lectores, S.A.', 'B-3', 443, '2016-07-08 09:01:14', '2016-07-08 09:01:14'),
(856, 3, 1, 1, '¡ Un animal tan humano... !', 'René Dubos', 'Plaza & Janés, S.A. Editores', 'B-3', 303, '2016-07-08 09:02:35', '2016-07-08 09:03:42'),
(857, 3, 1, 1, 'Un beso para mi asesino', 'Ruth Rendell', 'Círculo de Lectores, S.A.', 'B-3', 357, '2016-07-08 09:05:13', '2016-07-08 09:05:13'),
(858, 3, 1, 1, 'Intención criminal', 'Robin Cook', 'Círculo de Lectores, S.A.', 'B-3', 446, '2016-07-08 09:06:50', '2016-07-08 09:06:50'),
(859, 3, 1, 1, 'El inocente', 'Michael Connelly', 'Ediciones B', 'B-3', 435, '2016-07-08 09:09:27', '2016-07-08 09:09:27'),
(860, 3, 1, 1, 'Elisa', 'Ricardo Conde', 'Mira Editores, S.A.', 'B-3', 145, '2016-07-08 09:10:33', '2016-07-08 09:10:33'),
(861, 3, 1, 3, 'Cujo', 'Stephen King', 'RBA Editores', 'B-3', 413, '2016-07-08 09:12:55', '2016-07-08 09:12:55'),
(862, 3, 1, 1, 'Arlequin', 'Morris West', 'Pomaire, S.A.', 'B-3', 380, '2016-07-08 09:13:51', '2016-07-08 09:13:51'),
(863, 3, 1, 1, 'Las manzanas', 'Agatha Christie', 'Molino', 'B-3', 251, '2016-07-08 09:19:37', '2016-07-08 09:19:37'),
(864, 3, 1, 1, 'El enjambre', 'Arthur Herzog', 'Bruguera, S.A.', 'B-3', 251, '2016-07-08 09:20:49', '2016-07-08 09:20:49'),
(865, 3, 1, 1, 'La gente de Smiley', 'Le Carré', 'Argos Vergara, S.A.', 'B-3', 365, '2016-07-08 09:25:45', '2016-07-08 09:25:45'),
(866, 3, 1, 1, 'Maigret y el confidente', 'Simeon', 'Luis de Caralt Editor', 'B-3', 158, '2016-07-08 09:47:28', '2016-07-08 09:47:28'),
(867, 3, 1, 1, 'El hombre que mitaba pasar los trenes', 'Simeon', 'Luis de Caralt Editor', 'B-3', 190, '2016-07-08 09:48:39', '2016-07-08 09:48:39'),
(868, 3, 1, 1, 'El misterio del cuarto amarillo', 'Gaston Leroux', 'Anaya', 'B-3', 285, '2016-07-08 09:51:50', '2016-07-08 09:51:50'),
(869, 3, 1, 1, 'El Perfume', 'Patrik Süskind', 'Seix Barral, S.A.', 'B-3', 308, '2016-07-08 09:53:12', '2016-07-08 09:53:12'),
(870, 3, 1, 1, 'El criterio de las moscas', 'Luis Manuel Ruiz', 'Alfaguara, S.A.', 'B-3', 159, '2016-07-08 09:55:08', '2016-07-08 09:55:08'),
(871, 3, 1, 1, 'La manipulación de las mentes', 'Robin Cook', 'Plaza & Janés, S.A. Editores', 'B-3', 254, '2016-07-08 09:56:16', '2016-07-08 09:56:16'),
(872, 3, 1, 1, 'Prohibido a los nerviosos', 'Alfred Hitchcock', 'Bruguera, S.A.', 'B-3', 382, '2016-07-08 09:57:20', '2016-07-08 09:58:05'),
(873, 3, 1, 1, 'La loca de Maigret', 'Simeon', 'Luis de Caralt Editor', 'B-3', 159, '2016-07-08 09:59:21', '2016-07-08 09:59:21'),
(874, 3, 1, 1, 'Maigret y los muertos del canal', 'Simeon', 'Luis de Caralt Editor', 'B-3', 156, '2016-07-08 10:50:35', '2016-07-08 10:50:35'),
(875, 3, 1, 1, 'Cosecha roja', 'Dashiell Hammett', 'Bruguera, S.A.', 'B-3', 251, '2016-07-08 10:51:36', '2016-07-08 10:51:36'),
(876, 3, 1, 1, 'Por amor a Imabelle', 'Chester Himes', 'Bruguera, S.A.', 'B-3', 223, '2016-07-08 10:52:32', '2016-07-08 10:52:32'),
(877, 3, 1, 3, 'Chacal', 'Frederick Forsyth', 'Plaza & Janés, S.A. Editores', 'B-3', 400, '2016-07-08 10:53:36', '2016-07-08 10:53:36'),
(878, 1, 1, 1, 'Avenida del parque 79', 'Harold Robbins', 'Plaza & Janés, S.A. Editores', 'B-2', 320, '2016-07-08 10:54:30', '2016-07-27 08:30:50'),
(879, 3, 1, 1, 'A sangre fría', 'Truman Capote', 'Bruguera, S.A.', 'B-3', 444, '2016-07-08 10:55:12', '2016-07-08 10:55:12'),
(880, 3, 1, 1, 'El reloj de la muerte', 'John Dickson Carr', 'Alianza Editorial', 'B-3', 195, '2016-07-08 10:56:17', '2016-07-08 10:56:17'),
(881, 3, 1, 1, 'El entierro del Señor Bouvet', 'Simeon', 'Luis de Caralt Editor', 'B-3', 191, '2016-07-11 06:24:15', '2016-07-11 06:24:15'),
(882, 25, 1, 1, 'Teruel', 'Teodoro Perez Bordetas', 'Vacio', 'B-4', 75, '2016-07-11 07:20:44', '2016-07-11 07:20:44'),
(883, 25, 1, 1, 'Huesca en imágenes', 'Caja de Ahorros de Zaragoza, Aragón  y Rioja', 'Vacio', 'B-4', 127, '2016-07-11 07:23:07', '2016-07-11 07:23:07'),
(884, 25, 1, 1, 'Caja Inmaculada 1905-2005', 'Varios', 'Vacio', 'B-4', 233, '2016-07-11 07:24:30', '2016-07-11 07:24:30'),
(885, 25, 1, 1, 'Breve Historia de Aragón', 'Varios', 'Caja de Ahorros de la Inmaculada de Aragón', 'B-4', 129, '2016-07-11 07:26:29', '2016-07-11 07:26:29'),
(886, 25, 1, 1, 'Plan general de actividades 1975', 'Campamento "Valle de Pineta"', 'Vacio', 'B-4', 101, '2016-07-11 07:29:08', '2016-07-11 07:29:08'),
(887, 25, 1, 1, 'Aragón constante histórica', 'Caja de Ahorros de Zaragoza, Aragón  y Rioja', 'Vacio', 'B-4', 126, '2016-07-11 07:30:24', '2016-07-11 07:30:24'),
(888, 25, 1, 1, 'Aragón, Rioja y Guadalajara', 'Caja de Ahorros de Zaragoza, Aragón  y Rioja', 'Diáfora, S.A.', 'B-4', 80, '2016-07-11 07:32:18', '2016-07-11 07:32:18'),
(889, 25, 1, 1, 'Instantáneas zaragozanas', 'Gabriel de Escalante Monterde', 'Caja de Ahorros de la Inmaculada de Aragón', 'B-4', 256, '2016-07-11 07:40:51', '2016-07-11 07:40:51'),
(890, 25, 1, 1, 'Colección Caja de Ahorros : Huesca', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 15, '2016-07-11 07:43:06', '2016-07-11 07:46:50'),
(891, 25, 1, 1, '¡ Despierta, Aragón!', 'Carlos Royo Villanova y Laguna', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 158, '2016-07-11 07:44:54', '2016-07-11 07:44:54'),
(892, 25, 1, 1, 'Colección Caja de Ahorros : Valle de Benasque', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 43, '2016-07-11 07:48:07', '2016-07-11 07:48:07'),
(893, 25, 1, 1, 'Colección Caja de Ahorros : Valle de Tena', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 20, '2016-07-11 07:51:00', '2016-07-11 07:51:00'),
(894, 25, 1, 1, 'Colección Caja de Ahorros : Graus', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 38, '2016-07-11 07:51:53', '2016-07-11 07:51:53'),
(895, 25, 1, 1, 'Colección Caja de Ahorros : Barbastro', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 35, '2016-07-11 07:53:30', '2016-07-11 07:53:30'),
(896, 25, 1, 1, 'Colección Caja de Ahorros : Jaca', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 20, '2016-07-11 07:54:33', '2016-07-11 07:54:33'),
(897, 25, 1, 1, 'Colección Caja de Ahorros : Nieve en el Pirineo Oscense', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 18, '2016-07-11 07:56:13', '2016-07-11 07:56:13'),
(898, 25, 1, 1, 'Colección Caja de Ahorros : Los Arcensola', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 20, '2016-07-11 07:57:29', '2016-07-11 07:57:29'),
(899, 25, 1, 1, 'Colección Caja de Ahorros : Loarre', 'Vacio', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 38, '2016-07-11 07:58:54', '2016-07-11 07:58:54'),
(900, 25, 1, 1, 'La Diocesis de Barbastro', 'Damian Iguacen Borau', 'Caja de Ahorros de Zaragoza, Aragón y Rioja', 'B-4', 35, '2016-07-11 08:01:13', '2016-07-11 08:01:13'),
(901, 25, 1, 1, 'La población aragonesa y su problemática actual', 'Vicente Bielza de Ory', 'Libreria General', 'B-4', 170, '2016-07-11 08:03:45', '2016-07-11 08:03:45'),
(902, 25, 1, 1, 'Zaragoza', 'Benito Perez Galdos', 'Hernando, S.A.', 'B-4', 307, '2016-07-11 08:05:38', '2016-07-11 08:05:38'),
(903, 25, 1, 1, 'Zaragoza, en el recuerdo', 'Genaro Poza Ibáñez', 'Vacio', 'B-4', 189, '2016-07-11 08:07:37', '2016-07-11 08:07:37'),
(904, 24, 1, 1, 'La correspondència comercial en català', 'Osvald Cardona', 'Curial Edicions Catalanes, S.A.', 'B-4', 231, '2016-07-11 08:20:31', '2016-07-11 08:20:31'),
(905, 24, 1, 1, 'Pànic, la casa de la mort', 'R.L.Stine', 'Ediciones B', 'B-4', 138, '2016-07-11 08:22:53', '2016-07-11 08:22:53'),
(906, 24, 1, 1, 'Antologia de la Poesía Catalana 1900-1950', 'Joan Triadú', 'Selecta', 'B-4', 298, '2016-07-11 08:27:21', '2016-07-11 08:27:21'),
(907, 24, 1, 1, 'Fora d\'antena. Què s\'amaga darrera d\'un micròfon', 'Josep Cuní', 'Planeta, S.A.', 'B-4', 223, '2016-07-11 08:33:57', '2016-07-11 08:33:57'),
(908, 24, 1, 1, 'El dia que va morir Marilyn', 'Terenci Moix', 'Edicions 62', 'B-4', 336, '2016-07-11 08:40:26', '2016-07-11 08:40:26'),
(909, 24, 1, 1, 'Falgueres informa', 'Manuel de Pedrolo', 'Edicions 62', 'B-4', 234, '2016-07-11 08:42:29', '2016-07-11 08:42:29'),
(910, 24, 1, 1, 'Pell d\'armadillo', 'Jordi Puntí', 'Proa, S.A.', 'B-4', 172, '2016-07-11 08:45:55', '2016-07-11 08:45:55'),
(911, 23, 1, 1, 'Mundo famoso', 'José Mª Iñigo', 'Jaimes Libros, S.A.', 'A-1', 92, '2016-07-11 08:59:48', '2016-07-11 08:59:48'),
(912, 23, 1, 1, 'Calculo financiero y estadistica', 'Banco de España', 'Vacio', 'A-1', 192, '2016-07-11 09:02:51', '2016-07-11 09:02:51'),
(913, 23, 1, 1, 'Introduccion a la estadistica', 'Vacio', 'Aguilar, S.A. de Ediciones', 'A-1', 174, '2016-07-11 09:05:42', '2016-07-11 09:05:42'),
(914, 23, 1, 1, 'El Padre Avellanas', 'Francisco de Asís Gabriel Ponce', 'Caja Rural Provincial - Huesca', 'A-1', 192, '2016-07-11 09:08:29', '2016-07-11 09:08:29'),
(915, 23, 1, 1, 'Miriam la convertida de Magdala', 'León Villuendas Polo', 'Vacio', 'A-1', 327, '2016-07-11 09:29:52', '2016-07-11 09:29:52'),
(916, 23, 1, 1, 'Sófocles', 'José Velasco y García', 'Promoteo', 'A-1', 172, '2016-07-11 09:44:17', '2016-07-11 09:44:17'),
(917, 23, 1, 1, 'La mujer acorralada', 'James O. Curwood', 'Juventud, S.A.', 'A-1', 212, '2016-07-13 06:49:25', '2016-07-13 06:49:25'),
(918, 23, 1, 1, 'Un heroe moderno', 'Louis Bromfield', 'La Nave', 'A-1', 559, '2016-07-13 06:53:22', '2016-07-13 06:53:22'),
(919, 23, 1, 1, 'Le Rouge et le Noir', 'Stendhal', 'Hachette', 'A-1', 78, '2016-07-13 06:54:35', '2016-07-13 06:54:35'),
(920, 23, 1, 1, 'L\'etranger', 'Albert Camus', 'Gallimard', 'A-1', 186, '2016-07-13 07:10:40', '2016-07-13 07:10:40'),
(921, 1, 1, 4, 'Doctor... supongo', 'Miguel Gutiérrez Garitano / Miguel G. Fraile', 'Ikusager Ediciones, S.A.', 'A-2', 485, '2016-07-13 07:29:25', '2016-07-13 07:29:25'),
(922, 1, 1, 1, 'El teatro de los lirios', 'Lulu Wang', 'Tusquets Editores, S.A.', 'A-2', 493, '2016-07-13 07:48:54', '2016-07-13 07:48:54'),
(923, 1, 1, 1, 'Tres novelas del siglo de oro', 'Varios', 'Planeta', 'A-2', 240, '2016-07-13 08:03:09', '2016-07-13 08:03:09'),
(924, 1, 1, 1, 'Tiempo de silencio (Repetido)', 'Luis Martín - Santos', 'Seix Barral', 'A-2', 295, '2016-07-13 08:18:31', '2016-07-13 08:18:31'),
(925, 1, 1, 1, 'Buenos días tristeza', 'Françoise Sagan', 'Tusquets Editores, S.A.', 'A-3', 179, '2016-07-13 08:38:14', '2016-07-13 08:38:14'),
(926, 1, 1, 1, 'Las Hogueras', 'Concha Alós', 'Planeta, S.A.', 'A-3', 213, '2016-07-13 09:11:15', '2016-07-13 09:11:15'),
(927, 20, 1, 1, 'La historia de Erika', 'Ruth Vander  Zee / Roberto Innocenti', 'Círculo de Lectores', 'A-4', 0, '2016-07-13 09:14:21', '2016-07-13 09:14:21'),
(928, 20, 1, 1, 'El Profeta *', 'Gibran Khalil Gibran', 'Pomaire', 'A-4', 132, '2016-07-13 09:19:18', '2016-07-13 09:19:18'),
(929, 20, 1, 1, 'La Poesía a l\'escola', 'Celdoni Fonoll', 'La Caixa de Pensions', 'A-4', 113, '2016-07-13 09:21:02', '2016-07-13 09:21:02'),
(930, 20, 1, 1, 'Tierra amarga', 'Ramon Chesa', 'Vacio', 'A-4', 407, '2016-07-13 09:21:52', '2016-07-13 09:21:52'),
(931, 20, 1, 1, 'Casi cien poemas', 'Luis García Montero', 'Ediciones Hiperión, S.L.', 'A-4', 214, '2016-07-13 09:23:00', '2016-07-13 09:23:00'),
(932, 20, 1, 3, 'Leyendas de l\'Alto Aragón', 'Nieus-Luzía Dueso Lascorz', 'D\' o Consello d\'a Fabla Aragonesa', 'A-4', 182, '2016-07-13 09:26:08', '2016-07-13 09:26:08'),
(933, 20, 1, 1, 'Piedras', 'Ramon Chesa', 'Vacio', 'A-4', 103, '2016-07-13 09:27:12', '2016-07-13 09:27:12'),
(934, 20, 1, 1, 'Formas débiles', 'José Ángel Cilleruelo', 'DVD Ediciones', 'A-4', 86, '2016-07-13 09:28:23', '2016-07-13 09:28:23'),
(935, 20, 1, 1, 'Antologia', 'Larra y Bécquer', 'Reader\'s Digest', 'A-4', 157, '2016-07-13 09:30:12', '2016-07-13 09:30:12'),
(936, 20, 1, 1, 'Caminante', 'Antonio Machado', 'Unidad Editorial', 'A-4', 63, '2016-07-13 09:32:22', '2016-07-13 09:32:22'),
(937, 20, 1, 1, 'Seré leve y parecerá que no te amo', 'Magdalena Lasala', 'Olifante', 'A-4', 50, '2016-07-13 09:33:39', '2016-07-13 09:33:39'),
(938, 20, 1, 1, 'Antología de la Generación del 27', 'Varios', 'Anaya', 'A-4', 227, '2016-07-13 09:35:25', '2016-07-13 09:35:25'),
(939, 20, 1, 1, 'Luces de Bohemia', 'Ramón del Valle - Inclán', 'Espasa - Calpe, S.A.', 'A-4', 182, '2016-07-13 09:36:20', '2016-07-13 09:36:20'),
(940, 20, 1, 1, 'Cuentos de San Cayetano', 'José Antonio Labordeta', 'Xordica Editorial', 'A-4', 98, '2016-07-13 09:38:02', '2016-07-13 09:38:02'),
(941, 20, 1, 1, 'Calavera de borrico', 'José Antonio del CAÑIZO', 'Luis Vives', 'A-4', 125, '2016-07-13 09:39:39', '2016-07-13 09:39:39'),
(942, 20, 1, 1, 'Gibran el Profeta', 'Khalil', 'Felmar', 'A-4', 63, '2016-07-13 09:41:16', '2016-07-13 09:41:16'),
(943, 20, 1, 1, 'Cantar de Mio Cid', 'Varios', 'Espasa - Calpe, S.A.', 'A-4', 343, '2016-07-13 09:42:23', '2016-07-13 09:42:23'),
(944, 20, 1, 1, 'Rimas y Leyendas', 'Gustavo Adolfo Bécquer', 'Espasa - Calpe, S.A.', 'A-4', 149, '2016-07-13 09:43:10', '2016-07-13 09:43:10'),
(945, 20, 1, 1, 'Antologia Poetica', 'Vicente Alexandre', 'Alianza Editorial', 'A-4', 186, '2016-07-13 09:44:12', '2016-07-13 09:44:12'),
(946, 20, 1, 1, 'Cántico', 'Jorge Guillén', 'Seix Barral, S.A.', 'A-4', 546, '2016-07-13 09:45:14', '2016-07-13 09:45:14'),
(947, 20, 1, 1, 'Poesía', 'Jorge Manrique', 'Magisterio Español, S.A.', 'A-4', 149, '2016-07-13 09:46:29', '2016-07-13 09:46:29'),
(948, 20, 1, 1, 'Ricardo III / Enrique V', 'William Shakespeare', 'Planeta', 'A-4', 207, '2016-07-13 09:47:33', '2016-07-13 09:47:33'),
(949, 20, 1, 1, 'Al canto\'l zinqueta', 'Niéus Lucía Dueso Lascorz', 'Vacio', 'A-4', 83, '2016-07-13 09:48:44', '2016-07-13 09:48:44'),
(950, 20, 1, 1, 'El Edefesio', 'Rafael Alberti', 'Cuadernos para el dialogo, S.A.', 'A-4', 147, '2016-07-13 09:50:11', '2016-07-13 09:50:11'),
(951, 20, 1, 1, 'Romeo y Julieta', 'William Shakespeare', 'Alba, S.A.', 'A-4', 160, '2016-07-13 09:51:07', '2016-07-13 09:51:07'),
(952, 20, 1, 1, 'Poética Narrativa', 'Gustavo Adolfo Bécquer', 'Alianza Editorial', 'A-4', 231, '2016-07-13 10:01:58', '2016-07-13 10:02:58'),
(953, 20, 1, 1, 'Nueva antología personal', 'Jorge Luis Borges', 'Bruguera', 'A-4', 282, '2016-07-13 10:03:52', '2016-07-13 10:03:52'),
(954, 26, 1, 1, 'El diablo en invierno', 'Lisa Kleypas', 'Círculo de Lectores, S.A.', 'A-4', 296, '2016-07-14 12:10:43', '2016-07-14 12:32:59'),
(955, 26, 1, 1, 'La máquina del amor', 'Jacqueline Susann', 'Círculo de Lectores, S.A.', 'A-4', 447, '2016-07-14 12:12:10', '2016-07-14 12:12:10'),
(956, 26, 1, 1, 'Días de odio, días de amor', 'Christine Taylor', 'Círculo de Lectores, S.A.', 'A-4', 286, '2016-07-14 12:13:23', '2016-07-14 12:13:23'),
(957, 26, 1, 1, 'Amor radiante', 'Valerie Sherwood', 'Círculo de Lectores, S.A.', 'A-4', 398, '2016-07-14 12:14:15', '2016-07-14 12:14:15'),
(958, 26, 1, 1, 'Prisionera del deseo', 'Jennifer Blake', 'Círculo de Lectores, S.A.', 'A-4', 261, '2016-07-14 12:15:14', '2016-07-14 12:15:14'),
(959, 26, 1, 1, 'Sólo hasta el amanecer', 'Esther Sager', 'Círculo de Lectores, S.A.', 'A-4', 371, '2016-07-14 12:16:16', '2016-07-14 12:16:16'),
(960, 26, 1, 1, 'Amarás a un extraño', 'Kathleen Woodiwiss', 'Círculo de Lectores, S.A.', 'A-4', 325, '2016-07-14 12:17:25', '2016-07-14 12:17:25'),
(961, 26, 1, 1, 'Una dulce enemistad', 'Johanna Lindsey', 'Círculo de Lectores, S.A.', 'A-4', 232, '2016-07-14 12:18:33', '2016-07-14 12:18:33'),
(962, 26, 1, 1, 'Una rosa en invierno', 'Kathleen Woodiwiss', 'Círculo de Lectores, S.A.', 'A-4', 429, '2016-07-14 12:19:37', '2016-07-14 12:19:37'),
(963, 26, 1, 1, 'Sueños de mujer', 'Catherine Nicolson', 'Círculo de Lectores, S.A.', 'A-4', 248, '2016-07-14 12:20:30', '2016-07-14 12:20:30'),
(964, 26, 1, 1, 'La fuerza del deseo', 'Marlene Suson', 'Círculo de Lectores, S.A.', 'A-4', 275, '2016-07-14 12:21:50', '2016-07-14 12:21:50'),
(965, 26, 1, 1, 'Erotismo y sociedad de consumo', 'Dr. Enrique Salgado', 'Círculo de Lectores, S.A.', 'A-4', 277, '2016-07-14 12:23:09', '2016-07-14 12:23:09'),
(966, 26, 1, 1, 'El navegante', 'Morris West', 'Mundo actual de Ediciones, S.A.', 'A-4', 455, '2016-07-14 12:24:19', '2016-07-14 12:24:19'),
(967, 26, 1, 1, 'Tacones de muerte', 'Sheryl Anderson', 'Ediciones El Andén, S.A.', 'A-4', 316, '2016-07-14 12:26:20', '2016-07-14 12:26:20'),
(968, 26, 1, 1, 'Morir de amor', 'Pierre Duchesne', 'G. del Toro Editor', 'A-4', 252, '2016-07-14 12:28:32', '2016-07-14 12:28:32'),
(969, 26, 1, 1, 'Esposas de médicos', 'Frank G. Slaughter', 'Luis de Caralt Editor, S.A.', 'A-4', 405, '2016-07-14 12:30:17', '2016-07-14 12:30:17'),
(970, 26, 1, 1, 'Vidas cruzadas', 'Danielle Steel', 'Plaza & Janes, S.A.', 'A-4', 451, '2016-07-14 12:31:12', '2016-07-14 12:31:12'),
(971, 26, 1, 1, 'Amor en New York', 'Yolanda Arias', 'Publicaciones Heres, S.A.', 'A-4', 79, '2016-07-14 12:32:25', '2016-07-14 12:32:25'),
(972, 19, 1, 1, 'Eran siete', 'Eden Phillpotts', 'Alianza Editorial, S.A.', 'A-5', 234, '2016-07-14 12:36:38', '2016-07-14 12:36:38'),
(973, 19, 1, 1, 'Don Sancho de Aragón / El Cid', 'Corneille', 'Ramón Sopena, S.A.', 'A-5', 189, '2016-07-14 12:38:20', '2016-07-14 12:38:20'),
(974, 3, 1, 1, 'La Jota de corazones', 'Patricia D. Cornwell', 'Ediciones B, S.A.', 'B-3', 446, '2016-07-14 12:39:50', '2016-07-14 14:44:00'),
(975, 19, 1, 1, 'La conquista del horizonte', 'W. Fernández Flórez', 'Vacio', 'A-5', 384, '2016-07-14 12:41:43', '2016-07-14 12:41:43'),
(976, 19, 1, 1, 'Manchas de tinta', 'Luis Royo Villanova', 'Ediciones Bergua', 'A-5', 509, '2016-07-14 12:42:48', '2016-07-14 12:42:48'),
(977, 19, 1, 1, 'Antología poética de Juan Ramón Jiménez', 'Juan Ramón Jiménez', 'Magisterio Español, S.A.', 'A-5', 199, '2016-07-14 12:47:52', '2016-07-14 12:47:52'),
(978, 19, 1, 1, 'Antologia Poetica de Antonio Machado', 'Antonio Machado', 'Magisterio Español, S.A.', 'A-5', 144, '2016-07-14 12:48:51', '2016-07-14 12:48:51'),
(979, 19, 1, 1, 'El juglarón', 'León Felipe', 'Finisterre Editores', 'A-5', 133, '2016-07-14 12:51:35', '2016-07-14 12:51:35'),
(980, 20, 1, 1, 'Poesia de Pedro Salinas', 'Pedro Salinas', 'Alianza Editorial, S.A.', 'A-4', 215, '2016-07-14 12:54:36', '2016-07-14 14:40:27'),
(981, 19, 1, 1, 'Epistolario y redacción de documentos', 'Antonio de Armenteras', 'De Gassó Hns.', 'A-5', 333, '2016-07-14 12:56:52', '2016-07-14 12:56:52'),
(982, 1, 1, 1, 'Martina, la rosa número trece', 'Ángeles López', 'Círculo de Lectores, S.A.', 'A-2', 253, '2016-07-14 12:58:26', '2016-07-14 14:35:29'),
(983, 4, 1, 1, 'Viracocha', 'Alberto Vázquez-Figueroa', 'Círculo de Lectores, S.A.', 'C-2', 296, '2016-07-14 12:59:29', '2016-07-14 14:33:49'),
(984, 19, 1, 1, 'Sitio, Naturaleza y Propiedades de la Ciudad de México', 'Diego Cisneros', 'Vacio', 'A-5', 149, '2016-07-14 13:01:40', '2016-07-14 13:01:40'),
(985, 3, 1, 1, 'Mortaja para un ruiseñor', 'P.D. James', 'Círculo de Lectores, S.A.', 'B-3', 345, '2016-07-14 13:02:49', '2016-07-14 14:34:49'),
(986, 19, 1, 1, 'Manual del conductor', 'Dirección General de Trafico', 'Fama', 'A-5', 223, '2016-07-14 13:06:13', '2016-07-14 13:06:13'),
(987, 19, 1, 1, 'El gran Faraón de Egipto Ramsés II', 'Bernadette Menu', 'National Geographic', 'A-5', 127, '2016-07-14 13:07:32', '2016-07-14 13:08:32'),
(988, 19, 1, 1, 'Ortografía', 'Vacio', 'Primera Plana, S.A.', 'A-5', 55, '2016-07-14 13:10:36', '2016-07-14 13:10:36'),
(989, 19, 1, 1, 'Pequeños pueblos con encanto', 'Vacio', 'Ediciones El País, S.A.', 'A-5', 104, '2016-07-14 13:12:40', '2016-07-14 13:12:40'),
(990, 19, 1, 1, 'Verbes français', 'Vacio', 'Vacio', 'A-5', 121, '2016-07-14 13:13:36', '2016-07-14 13:13:36'),
(991, 19, 1, 1, 'Diccionario Francés - Español', 'Vacio', 'Vacio', 'A-5', 512, '2016-07-14 13:15:27', '2016-07-14 13:15:27'),
(992, 19, 1, 1, 'Deuxième Livre', 'Vacio', 'Vacio', 'A-5', 224, '2016-07-14 13:16:51', '2016-07-14 13:16:51'),
(993, 19, 1, 1, 'Lengua Francesa', 'Vacio', 'Vacio', 'A-5', 318, '2016-07-14 13:17:53', '2016-07-14 13:17:53'),
(994, 19, 1, 1, 'Todos los países del mundo 1', 'Vacio', 'Ediciones B, S.A.', 'A-5', 94, '2016-07-14 13:19:11', '2016-07-14 13:20:15'),
(995, 19, 1, 1, 'Todos los países del mundo 2', 'Vacio', 'Ediciones B, S.A.', 'A-5', 94, '2016-07-14 13:20:58', '2016-07-14 13:20:58'),
(996, 19, 1, 1, 'Todos los países del mundo 3', 'Vacio', 'Vacio', 'A-5', 94, '2016-07-14 13:21:49', '2016-07-14 13:21:49'),
(997, 19, 1, 1, 'L\'art de conjuguer', 'Vacio', 'Vacio', 'A-5', 157, '2016-07-14 13:23:53', '2016-07-14 13:23:53'),
(998, 19, 1, 1, 'Trotamundos : Amsterdam y sus alrededores', 'Vacio', 'Salvat', 'A-5', 175, '2016-07-14 13:25:47', '2016-07-14 13:25:47'),
(999, 19, 1, 1, 'Literatura Española', 'F. Lázaro / V. Tusón', 'Anaya', 'A-5', 411, '2016-07-14 13:27:34', '2016-07-14 13:27:34'),
(1000, 19, 1, 1, 'Nuevo metodo teorico - practico para guitarra', 'Gaspar de Luz', 'Vacio', 'A-5', 83, '2016-07-14 13:29:12', '2016-07-14 13:29:12'),
(1001, 19, 1, 1, 'Shalom', 'Vacio', 'Vacio', 'A-5', 0, '2016-07-14 13:30:08', '2016-07-14 13:30:08'),
(1007, 13, 1, 6, 'Anuario de los hechos 1991', 'Vacio', 'Difusora Internacional S.A.', 'E-1', 541, '2016-07-20 09:39:16', '2016-07-20 09:39:16'),
(1008, 13, 1, 6, 'Anuario de los hechos 1992', 'Vacio', 'Difusora Internacional S.A.', 'E-1', 509, '2016-07-20 09:40:10', '2016-07-20 09:40:10'),
(1009, 26, 1, 6, 'La mujer de los mil secretos', 'Barbara Wood', 'Grijalbo', 'A-4', 556, '2016-07-21 07:40:56', '2016-07-21 12:44:13'),
(1010, 26, 1, 6, 'Ángel de medianoche', 'Lisa Kleypas', 'Ediciones Primera Plana, S.A.', 'A-4', 380, '2016-07-21 07:46:27', '2016-07-21 12:43:18'),
(1011, 26, 1, 6, 'Te di la vida entera', 'Zoé Valdés', 'Planeta, S.A.', 'A-4', 362, '2016-07-21 07:50:15', '2016-07-21 12:54:15'),
(1012, 26, 1, 6, 'A tientas y a ciegas', 'Marta Portal', 'Planeta, S.A.', 'A-4', 212, '2016-07-21 08:05:05', '2016-07-21 12:54:49'),
(1013, 1, 1, 6, 'La feria de las vanidades', 'W.Makepeace Thackeray', 'Ramon Sopena, S.A.', 'A-3', 656, '2016-07-21 08:07:52', '2016-07-21 12:55:58'),
(1014, 1, 1, 1, 'Fortunata y Jacinta', 'Benito Pérez Galdós', 'Hernando, S.A.', 'A-3', 826, '2016-07-21 08:12:23', '2016-07-21 12:51:35'),
(1015, 25, 1, 6, 'Quince días, a pie, por el Pirineo Aragonés', 'Miguel Lacoma Mairal', 'Vacio', 'B-4', 210, '2016-07-21 08:15:38', '2016-07-21 12:42:05'),
(1016, 1, 1, 6, 'Bailarina', 'Vicki Baum', 'Plaza & Janes Editores, S.A.', 'A-3', 442, '2016-07-21 08:18:46', '2016-07-21 12:52:48'),
(1017, 21, 1, 6, 'Meditaciones', 'P.Luis de la Puente, S.L.', 'Testimonio', 'D-2', 1046, '2016-07-21 08:21:24', '2016-07-21 12:38:58'),
(1018, 23, 1, 6, 'Las sandalias del Pescador', 'Morris West', 'Ediciones G.P.', 'A-1', 347, '2016-07-21 08:24:48', '2016-07-21 12:40:48'),
(1019, 23, 1, 6, 'Prisionero en sus redes', 'Corin Tellado', 'Bruguera, S.A.', 'C-1', 121, '2016-07-21 08:28:38', '2016-07-21 13:38:14'),
(1020, 23, 1, 6, 'Estás en mi corazón', 'Jesús Navarro', 'Bruguera, S.A.', 'C-1', 122, '2016-07-21 08:29:23', '2016-07-21 13:37:38'),
(1021, 23, 1, 6, 'Ella y él', 'Corin Tellado', 'Bruguera, S.A.', 'C-1', 96, '2016-07-21 08:30:09', '2016-07-21 13:37:17'),
(1022, 23, 1, 6, 'Estrellas en el suelo', 'Javier de Montalban', 'Bruguera, S.A.', 'C-1', 127, '2016-07-21 08:31:02', '2016-07-21 13:36:56'),
(1023, 23, 1, 6, 'Los esqueletos del armario', 'Peter Debry', 'Bruguera, S.A.', 'C-1', 122, '2016-07-21 08:31:47', '2016-07-21 13:36:37'),
(1024, 23, 1, 6, 'Un marido para Berta', 'Corin Tellado', 'Bruguera, S.A.', 'C-1', 122, '2016-07-21 08:32:23', '2016-07-21 13:36:11'),
(1025, 23, 1, 6, 'Al fin salió el sol', 'Mª Teresa Sesé', 'Pueyo, S.L.', 'C-1', 182, '2016-07-21 08:33:37', '2016-07-21 13:35:25'),
(1026, 23, 1, 6, 'Aventura a bordo', 'Corin Tellado', 'Bruguera, S.A.', 'C-1', 96, '2016-07-21 08:34:20', '2016-07-21 13:34:52'),
(1027, 23, 1, 6, 'La cortina de humo', 'Jo Monray', 'Rollan, S.A.', 'C-1', 128, '2016-07-21 08:35:22', '2016-07-21 13:34:33'),
(1028, 23, 1, 6, 'Zárate el marino', 'Mª Teresa Sesé', 'Pueyo, S.L.', 'C-1', 139, '2016-07-21 08:36:15', '2016-07-21 13:34:11'),
(1029, 23, 1, 6, 'Ensueños', 'M.J. Champos', 'Pueyo, S.L.', 'C-1', 199, '2016-07-21 08:37:14', '2016-07-21 13:33:46'),
(1030, 19, 1, 6, 'Ninots indultats', 'Vacio', 'Vacio', 'A-5', 0, '2016-07-21 08:53:41', '2016-07-21 12:36:42'),
(1031, 27, 1, 6, '5 DVD \' S : Fortunata y Jacinta', 'Benito Pérez Galdós', 'Vacio', 'A-6', 0, '2016-07-21 08:59:19', '2016-07-21 13:42:41'),
(1032, 27, 1, 6, 'DVD : Tres meses para la historia (Expo Zgz 2008)', 'Heraldo de Aragón', 'Vacio', 'A-6', 0, '2016-07-21 09:00:16', '2016-07-21 13:42:18'),
(1033, 28, 1, 6, 'VHS : Huesca', 'Diario del Altoaragón', 'Vacio', 'A-6', 0, '2016-07-21 09:01:11', '2016-07-21 13:43:24'),
(1034, 28, 1, 6, 'VHS : Amores de Siega', 'Rosendo López Gracia', 'Vacio', 'A-6', 0, '2016-07-21 09:02:05', '2016-07-21 13:43:01'),
(1035, 25, 1, 6, 'Entre dos fuegos', 'Mª Rosario de Parada', 'Libros Certeza', 'B-4', 393, '2016-07-21 13:49:47', '2016-07-21 13:49:47'),
(1036, 2, 1, 6, 'Del Renacimiento al Romanticismo', 'Vacio', 'Central Hispano', 'C-3', 310, '2016-07-21 13:55:53', '2016-07-21 13:55:53'),
(1037, 19, 1, 6, 'EXPO \' 92', 'Vacio', 'Difusora Internacional S.A.', 'A-5', 381, '2016-07-21 13:59:28', '2016-07-21 13:59:28'),
(1038, 19, 1, 1, 'Entrantes y Aperitivos', 'Vacio', 'Librum, S.A.', 'A-5', 146, '2016-07-21 14:10:03', '2016-07-21 14:10:03'),
(1039, 23, 1, 1, 'El siglo de las luces', 'Alejo Carpentier', 'Bruguera, S.A.', 'A-1', 345, '2016-07-21 14:41:55', '2016-07-21 14:41:55'),
(1040, 10, 1, 1, 'ABC de la puericultura', 'Dra. H. Uflacker', 'Círculo de Lectores, S.A.', 'C-2', 384, '2016-07-21 14:44:14', '2016-07-21 14:44:14'),
(1041, 19, 1, 1, 'El gran libro de los cocktails', 'José María Gotarda', 'De Vecchi, S.A.', 'A-5', 316, '2016-07-21 14:54:36', '2016-07-21 14:54:36'),
(1042, 19, 1, 1, 'La decoración del hogar', 'Caja de Ahorros de Zaragoza, Aragon y Rioja', 'Vacio', 'A-5', 349, '2016-07-21 14:56:43', '2016-07-21 14:56:43'),
(1043, 19, 1, 1, 'Dibujar y pintar', 'Ken Howard', 'Círculo de Lectores, S.A.', 'A-5', 240, '2016-07-21 14:58:13', '2016-07-21 14:58:13'),
(1044, 3, 1, 1, 'Odessa', 'Frederick Forsyth', 'Plaza & Janes Editores, S.A.', 'B-3', 361, '2016-07-21 15:01:43', '2016-07-21 15:01:43'),
(1045, 23, 1, 1, 'Lo sclasicos del Siglo XX', 'Maxence Van Der', 'Ediciones G.P.', 'A-1', 467, '2016-07-21 15:05:44', '2016-07-21 15:05:44'),
(1046, 23, 1, 1, 'Cisne', 'Luis M.González-Mata', 'Argos, S.A.', 'A-1', 397, '2016-07-21 15:08:50', '2016-07-21 15:08:50'),
(1047, 1, 1, 6, 'Trilogía Los Gozos y las Sombras (Donde da la vuelta el aire)', 'Gonzalo Torrente Ballester', 'Círculo de Lectores', 'B-2', 367, '2016-07-25 09:06:19', '2016-07-25 09:06:19'),
(1048, 1, 1, 6, 'Trilogía Los Gozos y las Sombras (El Señor llega)', 'Gonzalo Torrente Ballester', 'Círculo de Lectores', 'B-2', 319, '2016-07-25 09:07:25', '2016-07-25 09:07:25'),
(1049, 1, 1, 6, 'Trilogía Los Gozos y las Sombras (La Pascua triste)', 'Gonzalo Torrente Ballester', 'Círculo de Lectores', 'B-2', 346, '2016-07-25 09:08:05', '2016-07-25 09:08:05'),
(1050, 2, 1, 1, 'El capitan rebelde', 'Frank Yerby', 'Planeta', 'C-3', 308, '2016-07-25 09:48:32', '2016-07-25 09:48:32'),
(1051, 23, 1, 1, 'Carceles de mujeres', 'Sinclair Lewis', 'Planeta', 'A-1', 439, '2016-07-25 09:55:54', '2016-07-25 09:55:54'),
(1052, 26, 1, 1, 'Historias de amor', 'Jesús Torbado', 'Plaza & Janes, S.A.', 'A-4', 250, '2016-07-25 09:58:19', '2016-07-25 09:58:19'),
(1053, 1, 1, 7, 'Cirujano del aire', 'Frank G. Slaughter', 'Planeta', 'B-2', 314, '2016-07-26 07:41:16', '2016-07-27 08:30:08'),
(1054, 1, 1, 7, '¡Desciende, Moisés!', 'William Faulkner', 'Plaza & Janes, S.A.', '', 313, '2016-07-26 07:45:25', '2016-07-26 07:45:25'),
(1055, 1, 1, 7, 'Los cirujanos', 'Shirley Hartman y Walter Ellerbeck', 'Plaza & Janes, S.A.', 'A-3', 317, '2016-07-26 07:47:23', '2016-07-27 08:17:57'),
(1056, 1, 1, 7, 'La Comedia', 'Henry-François Rey', 'Plaza & Janes, S.A.', 'B-2', 319, '2016-07-26 07:51:55', '2016-07-27 08:28:14'),
(1057, 1, 1, 7, 'La casa de los espiritus', 'Isabel Allende', 'Plaza & Janes, S.A.', 'A-2', 411, '2016-07-26 08:00:25', '2016-07-27 08:35:17'),
(1058, 1, 1, 7, 'Mare Nostrum', 'V.Blasco Ibañez', 'Prometeo', 'A-3', 446, '2016-07-26 08:03:59', '2016-07-27 08:26:54'),
(1059, 1, 1, 7, 'La fiesta española', 'Henry-François Rey', 'Plaza & Janes, S.A.', 'A-3', 252, '2016-07-26 08:15:34', '2016-07-27 08:19:46'),
(1060, 1, 1, 7, 'La legión de los condenados', 'Sven Hassel', 'Plaza & Janes, S.A.', 'A-3', 317, '2016-07-26 08:16:55', '2016-07-27 08:15:56'),
(1061, 3, 1, 7, 'El arrecife del miedo', 'José María Latorre', 'Edebé', 'B-3', 206, '2016-07-26 08:18:37', '2016-07-27 08:14:07'),
(1062, 2, 1, 7, '... Y al tercer año, resucitó', 'Fernando Vizcaino Casas', 'Planeta', 'C-3', 213, '2016-07-26 08:21:18', '2016-07-27 08:35:56'),
(1063, 1, 1, 7, 'Tempestad de pasiones', 'Frank G. Slaughter', 'Planeta', 'A-3', 440, '2016-07-26 08:22:59', '2016-07-27 08:26:08'),
(1064, 1, 1, 7, '¡ Desciende, Moisés !', 'William Faulkner', 'Plaza & Janes, S.A.', 'B-2', 313, '2016-07-27 08:33:41', '2016-07-27 08:33:41'),
(1065, 28, 1, 7, 'VHS : Family Man', 'Vacio', '', 'A-6', 0, '2016-07-27 08:48:44', '2016-07-27 08:49:33'),
(1066, 28, 1, 7, 'VHS : The Mummy returns', 'Vacio', '', 'A-6', 0, '2016-07-27 08:50:36', '2016-07-27 08:50:36'),
(1067, 28, 1, 7, 'VHS : Junior English', 'Vacio', '', 'A-6', 0, '2016-07-27 08:55:59', '2016-07-27 08:55:59'),
(1068, 28, 1, 7, 'VHS : Spice girls', 'Vacio', '', 'A-6', 0, '2016-07-27 08:56:32', '2016-07-27 08:56:32'),
(1069, 28, 1, 7, 'VHS : Presunto inocente', 'Vacio', '', 'A-6', 0, '2016-07-27 08:57:07', '2016-07-27 08:57:07'),
(1070, 28, 1, 7, 'VHS : Veneno', 'Vacio', '', 'A-6', 0, '2016-07-27 08:57:34', '2016-07-27 08:57:34'),
(1071, 28, 1, 7, 'VHS : La verdad sobre el caso Savolta', 'Vacio', '', 'A-6', 0, '2016-07-27 08:58:17', '2016-07-27 08:58:17'),
(1072, 28, 1, 7, 'VHS : Juan sin miedo', 'Vacio', '', 'A-6', 0, '2016-07-27 08:58:49', '2016-07-27 08:58:49'),
(1073, 1, 1, 8, 'Honore de Balzac', 'Eugenia Grandet', 'S.A. de Promoción y Ediciones', 'A-2', 192, '2016-08-05 08:29:21', '2016-08-05 08:29:21'),
(1074, 19, 1, 8, 'Aquí', 'Richard Mcguire', 'Ediciones Salamandra', 'A-5', 0, '2016-08-05 08:34:01', '2016-08-05 08:34:01'),
(1075, 21, 1, 8, 'La Biblia miniada del Rey Wenceslao', 'Vacio', 'Casariego', 'D-2', 179, '2016-08-05 08:39:17', '2016-08-05 08:39:17'),
(1076, 3, 1, 9, 'La Princesa de hielo', 'Camilla Läckberg', 'Maeva Ediciones', 'B-3', 415, '2016-08-08 07:13:05', '2016-08-08 07:13:05'),
(1077, 1, 1, 9, 'Cristo versus Arizona', 'Camilo José Cela', 'Seix Barral, S.A.', 'A-2', 238, '2016-08-08 07:16:49', '2016-08-08 07:16:49'),
(1078, 3, 1, 9, 'Casualidades', 'Gregorio Salvador', 'Espasa Calpe, S.A.', 'B-3', 228, '2016-08-08 07:26:57', '2016-08-08 07:26:57'),
(1079, 1, 1, 9, 'Granada de las mil noches', 'Francisco Nieva', 'Seix Barral, S.A.', 'A-2', 274, '2016-08-08 07:28:33', '2016-08-08 07:28:33'),
(1080, 2, 1, 9, 'La sombra del águila', 'Arturo Pérez-Reverte', 'Alfaguara', 'C-3', 154, '2016-08-08 07:32:56', '2016-08-08 07:32:56'),
(1081, 3, 1, 9, 'Fluye el Sena', 'Fred Vargas', 'Ediciones Siruela', 'B-3', 135, '2016-08-08 07:38:48', '2016-08-08 07:38:48'),
(1082, 3, 1, 9, 'Malas artes', 'Donna Leon', 'Seix Barral, S.A.', 'B-3', 333, '2016-08-08 07:44:20', '2016-08-08 07:44:20'),
(1083, 1, 1, 9, 'La velocidad de la luz', 'Javier Cercas', 'Tusquets Editores', 'B-2', 305, '2016-08-08 07:55:41', '2016-08-08 07:55:41'),
(1084, 3, 1, 9, 'Una mañana de Mayo', 'Anne Holt', 'Roca Editorial', 'B-3', 359, '2016-08-08 08:03:40', '2016-08-08 08:03:40'),
(1085, 1, 1, 9, 'Cien años de soledad', 'Gabriel García Márquez', 'RBA Editores', 'A-2', 315, '2016-08-08 08:07:31', '2016-08-08 08:07:31'),
(1086, 3, 1, 9, 'La playa de los ahogados', 'Domingo Villar', 'Ediciones Siruela', 'B-3', 445, '2016-08-08 08:09:11', '2016-08-08 08:09:11'),
(1087, 3, 1, 9, 'Que se levanten los muertos', 'Fred Vargas', 'Ediciones Siruela', 'B-3', 311, '2016-08-08 08:13:03', '2016-08-08 08:13:03'),
(1088, 1, 1, 9, 'Madera de Boj', 'Camilo José Cela', 'Espasa Calpe, S.A.', 'A-2', 323, '2016-08-08 08:22:50', '2016-08-08 08:22:50');
INSERT INTO `libros` (`id`, `categoria_id`, `enciclopedia_id`, `donante_id`, `title`, `autor`, `editorial`, `estanteria`, `paginasNumero`, `created_at`, `updated_at`) VALUES
(1089, 3, 1, 9, 'Los amigos del crimen perfecto', 'Andrés Trapiello', 'Ediciones Destino, S.A', 'B-3', 334, '2016-08-08 08:33:18', '2016-08-08 08:33:18'),
(1090, 3, 1, 9, 'Acqua alta', 'Donna Leon', 'Seix Barral, S.A.', 'B-3', 318, '2016-08-08 08:35:13', '2016-08-08 08:35:13'),
(1091, 1, 1, 9, 'El Lazarillo y el buscador', 'Anónimo / Quevedo', 'Selecciones del Reader\'s Digest', 'A-2', 173, '2016-08-08 08:39:47', '2016-08-08 08:39:47'),
(1092, 3, 1, 9, 'La muerte en la fenice', 'Donna Leon', 'Planeta de Agostini', 'B-3', 283, '2016-08-08 08:56:58', '2016-08-08 08:56:58'),
(1093, 20, 1, 9, 'Poemas', 'Francisco de Quevedo', 'Alba', 'A-4', 96, '2016-08-08 08:58:17', '2016-08-08 08:58:17'),
(1094, 3, 1, 9, 'Amigos en las altas esferas', 'Donna León', 'Seix Barral, S.A.', 'B-3', 302, '2016-08-08 09:01:11', '2016-08-08 09:01:11'),
(1095, 3, 1, 9, 'Un mar de problemas', 'Donna Leon', 'Seix Barral, S.A.', 'B-3', 287, '2016-08-08 09:03:00', '2016-08-08 09:03:00'),
(1096, 1, 1, 9, 'Los juguetes perdidos', 'Luis del Val', 'Afanias', 'A-2', 362, '2016-08-08 09:05:24', '2016-08-08 09:05:24'),
(1097, 3, 1, 9, 'Muerte en un país extraño', 'Donna Leon', 'Seix Barral, S.A.', 'B-3', 363, '2016-08-08 09:06:48', '2016-08-08 09:06:48'),
(1098, 3, 1, 9, 'Líbranos del bien', 'Donna Leon', 'Seix Barral, S.A.', 'B-3', 312, '2016-08-08 09:07:26', '2016-08-08 09:07:26'),
(1099, 3, 1, 9, 'Vestido para la muerte', 'Donna Leon', 'Seix Barral, S.A.', 'B-3', 285, '2016-08-08 09:08:04', '2016-08-08 09:08:04'),
(1100, 1, 1, 9, 'Tiempo de guerras perdidas', 'José Manuel Caballero Bonald', 'Anagrama', 'A-2', 364, '2016-08-08 09:14:54', '2016-08-08 09:14:54'),
(1101, 3, 1, 9, 'El lápiz del carpintero', 'Manuel Rivas', 'Alfaguara', 'B-3', 201, '2016-08-08 09:26:40', '2016-08-08 09:26:40'),
(1102, 3, 1, 9, 'La reina sin espejo', 'Lorenzo Silva', 'Ediciones Destino', 'B-3', 382, '2016-08-10 06:34:36', '2016-08-10 06:34:36'),
(1103, 3, 1, 9, 'Un lugar incierto', 'Fred Vargas', 'Ediciones Siruela', 'B-3', 347, '2016-08-10 06:36:06', '2016-08-10 06:36:06'),
(1104, 3, 1, 9, 'Bajo los vientos de Neptuno', 'Fred Vargas', 'Ediciones Siruela', 'B-3', 409, '2016-08-10 06:37:17', '2016-08-10 06:37:17'),
(1105, 3, 1, 9, 'Huye rápido, vete lejos', 'Fred Vargas', 'Ediciones Siruela', 'B-3', 410, '2016-08-10 06:38:43', '2016-08-10 06:38:43'),
(1106, 3, 1, 9, 'Prenilunio', 'Antonio Muñoz Molina', 'Alfaguara', 'B-3', 485, '2016-08-10 06:40:49', '2016-08-10 06:40:49'),
(1107, 3, 1, 9, 'Aurora Boreal', 'Asa Larsson', 'Seix Barral, S.A.', 'B-3', 381, '2016-08-10 06:43:17', '2016-08-10 06:43:17'),
(1108, 3, 1, 9, 'Y qué amor no cambia', 'Giorgio Todde', 'Ediciones Siruela', 'B-3', 194, '2016-08-10 06:44:20', '2016-08-10 06:44:20'),
(1109, 1, 1, 9, 'Dos mujeres en Praga', 'Juan José Millás', 'Espasa Calpe, S.A.', 'B-2', 230, '2016-08-10 06:49:55', '2016-08-10 06:49:55'),
(1110, 2, 1, 9, 'Anatomía de un instante', 'Javier Cercas', 'Mondadori', 'C-3', 463, '2016-08-10 06:55:35', '2016-08-10 06:55:35'),
(1111, 4, 1, 9, 'La carta esférica', 'Arturo Pérez-Reverte', 'Alfaguara', 'C-2', 590, '2016-08-10 07:00:43', '2016-08-10 07:00:43'),
(1112, 3, 1, 9, 'La piel del tambor', 'Arturo Pérez-Reverte', 'Alfaguara', 'B-3', 589, '2016-08-10 07:12:20', '2016-08-10 07:12:20'),
(1113, 3, 1, 9, 'El enigma Vivaldi', 'Peter Harris', 'Vacio', 'B-3', 364, '2016-08-10 07:17:15', '2016-08-10 07:17:15'),
(1114, 1, 1, 9, 'Un calor tan cercano', 'Maruja Torres', 'Alfaguara', 'B-2', 269, '2016-08-10 07:30:04', '2016-08-10 07:30:04'),
(1115, 26, 1, 9, 'Amantes y enemigos', 'Rosa Montero', 'Alfaguara', 'A-4', 276, '2016-08-10 07:33:04', '2016-08-10 07:33:04'),
(1116, 1, 1, 9, 'Un mundo que se va ...', 'Víctor Márquez Reviriego', 'Espasa Calpe, S.A.', 'B-2', 278, '2016-08-10 07:47:52', '2016-08-10 07:47:52'),
(1117, 3, 1, 9, 'La tercera casualidad', 'Edgar Wallace', 'Ediciones Altea', 'B-3', 145, '2016-08-10 07:49:16', '2016-08-10 07:49:16'),
(1118, 19, 1, 9, 'El tercer hombre', 'Graham Greene', 'Vacio', 'A-5', 94, '2016-08-10 07:50:14', '2016-08-10 07:50:14'),
(1119, 3, 1, 9, 'La paciencia de la araña', 'Andrea Camilleri', 'Ediciones Salamandra, S.A.', 'B-3', 253, '2016-08-10 07:55:10', '2016-08-10 07:55:10'),
(1120, 1, 1, 9, 'Mortal y rosa', 'Francisco Umbral', 'El Mundo, unidad editorial, S.A.', 'A-2', 159, '2016-08-10 08:12:14', '2016-08-10 08:12:14'),
(1121, 1, 1, 9, 'El gran golpe', 'Dashiell Hammett', 'El mundo y la revista', 'A-2', 94, '2016-08-10 08:16:06', '2016-08-10 08:17:24'),
(1122, 10, 1, 9, 'Amigos íntimos', 'Nativel Preciado', 'Ediciones temas de hoy', 'C-2', 182, '2016-08-10 08:22:59', '2016-08-10 08:22:59'),
(1123, 1, 1, 9, 'Algo más inesperado que la muerte', 'Elvira Lindo', 'Alfaguara', 'B-2', 314, '2016-08-10 08:29:31', '2016-08-10 08:29:31'),
(1124, 19, 1, 9, 'Siete cuentos de la patrulla pesquera y otros relatos', 'Jack London', 'Alianza Editorial', 'A-5', 137, '2016-08-10 08:31:10', '2016-08-10 08:31:10'),
(1125, 19, 1, 9, 'El balneario', 'Martín Gaite', 'Alianza Editorial', 'A-5', 89, '2016-08-10 08:32:31', '2016-08-10 08:32:31'),
(1126, 19, 1, 9, 'Por un bistec / El chinago', 'Jack London', 'Alianza Editorial', 'A-5', 63, '2016-08-10 08:33:41', '2016-08-10 08:33:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_19_074337_create_usuarios_table', 1),
('2016_05_19_074618_create_donantes_table', 1),
('2016_05_19_084624_create_categorias_table', 1),
('2016_05_19_084625_create_enciclopedias_table', 1),
('2016_05_19_084634_create_libros_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellidos`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Carmen', 'vilellas Jordan', 'carme.vile@hotmail.com', '$2y$10$hYAq0FErjvhAdR5f0c/0i.m1yy.Ecl5zgwCEBwr4/hbN6esxLEukq', 'Dx8QxZUFotwu36dHk5etfOFl5xSTEvfVU3wSMTe4SCYgfSRGtCQQdckN8e3E', '2017-03-09 16:31:05', '2017-03-09 18:15:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_title_unique` (`title`);

--
-- Indices de la tabla `donantes`
--
ALTER TABLE `donantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enciclopedias`
--
ALTER TABLE `enciclopedias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enciclopedias_title_unique` (`title`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `libros_title_unique` (`title`),
  ADD KEY `libros_categoria_id_foreign` (`categoria_id`),
  ADD KEY `libros_enciclopedia_id_foreign` (`enciclopedia_id`),
  ADD KEY `libros_donante_id_foreign` (`donante_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `donantes`
--
ALTER TABLE `donantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `enciclopedias`
--
ALTER TABLE `enciclopedias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1127;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `libros_donante_id_foreign` FOREIGN KEY (`donante_id`) REFERENCES `donantes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `libros_enciclopedia_id_foreign` FOREIGN KEY (`enciclopedia_id`) REFERENCES `enciclopedias` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_user_avatar', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_10_30_000000_set_user_avatar_nullable', 1),
(12, '2016_11_30_131710_add_user_role', 1),
(13, '2016_11_30_135954_create_permission_table', 1),
(14, '2016_11_30_141208_create_permission_role_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `role_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `role_id`) VALUES
(1, 'DavidS', 'davidsanc73@gmail.com', '$2y$10$W.l9tOq044GxJmax6hzxU.nkWLussbnAs9/pf0pmEqKB30745rOZC', NULL, '2017-03-08 22:08:28', '2017-03-08 22:08:28', 'users/default.png', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `controlListadosPueblos`
--
CREATE DATABASE IF NOT EXISTS `controlListadosPueblos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `controlListadosPueblos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuadro_de_clasificaciones`
--

CREATE TABLE `cuadro_de_clasificaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `unidad_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `number_section` int(10) UNSIGNED DEFAULT NULL,
  `number_street` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cuadro_de_clasificaciones`
--

INSERT INTO `cuadro_de_clasificaciones` (`id`, `unidad_id`, `title`, `number_section`, `number_street`, `clave`, `created_at`, `updated_at`) VALUES
(1, 1, 'Albarderos', 5, '', NULL, '2017-11-20 17:35:33', '2017-11-20 17:35:33'),
(2, 1, 'Alfántega', 8, '', NULL, '2017-11-20 17:35:44', '2017-11-20 17:35:44'),
(3, 1, 'Afueras Sto Domingo', 5, '', NULL, '2017-11-20 17:36:00', '2017-11-20 17:36:00'),
(4, 1, 'Alcanadre, Río', 3, '', 'rio', '2017-11-20 17:36:13', '2018-03-13 21:35:58'),
(5, 1, 'Alcantarilla', 4, '', NULL, '2017-11-20 17:36:24', '2017-11-20 17:36:24'),
(6, 1, 'Alegría Ntra Sra', 3, '1-11', NULL, '2017-11-20 17:36:47', '2017-11-20 17:36:47'),
(7, 1, 'Alegría Ntra Sra', 3, '2-12', NULL, '2017-11-20 17:37:05', '2017-11-20 17:37:05'),
(8, 1, 'Alegría Ntra Sra', 8, '13-89', NULL, '2017-11-20 17:37:57', '2017-11-20 17:37:57'),
(9, 1, 'Alegría Ntra Sra', 8, '14-88', NULL, '2017-11-20 17:38:17', '2017-11-20 17:38:17'),
(10, 1, 'Alfarería', 5, '', NULL, '2017-11-20 17:38:36', '2017-11-20 17:38:36'),
(11, 1, 'Almeria', 1, '', 'ciudad', '2017-11-20 17:38:49', '2018-03-13 11:11:55'),
(12, 1, 'Almunia', 6, '', NULL, '2017-11-20 17:39:04', '2017-11-20 17:39:04'),
(13, 1, 'Aneto', 6, '', NULL, '2017-11-20 17:39:21', '2017-11-20 17:39:21'),
(14, 1, 'Ángeles Cosculluela', 7, '', NULL, '2017-11-20 17:39:40', '2017-11-20 17:39:40'),
(15, 1, 'Angosta', 5, '', NULL, '2017-11-20 17:39:57', '2017-11-20 17:39:57'),
(16, 1, 'Antonio Machado', 1, '', 'escritor', '2017-11-20 17:40:15', '2018-03-13 11:15:50'),
(17, 1, 'Antonio T. Palacio', 2, '2-6', NULL, '2017-11-20 17:40:55', '2017-11-20 17:40:55'),
(18, 1, 'Antonio Torres Palacio', 1, '10-26', NULL, '2017-11-20 17:41:20', '2017-11-22 20:32:42'),
(19, 1, 'Ara, Río', 3, '', 'rio', '2017-11-20 17:41:40', '2018-03-13 21:42:11'),
(20, 1, 'Aragón, Cl', 6, '15-19', NULL, '2017-11-20 17:47:03', '2017-11-21 17:30:28'),
(21, 1, 'Aragón, Cl', 1, '2-28, 23-17', NULL, '2017-11-20 17:48:24', '2017-11-21 17:16:44'),
(22, 1, 'Aragón Pza', 7, '', NULL, '2017-11-20 17:48:44', '2017-11-20 17:48:44'),
(23, 1, 'Arboleda', 3, '', 'arbol', '2017-11-20 17:49:12', '2018-03-13 21:42:28'),
(24, 1, 'Armentera', 9, '', NULL, '2017-11-20 17:49:20', '2017-11-20 18:12:13'),
(25, 1, 'Arriba', 4, '2-24, 1-47', NULL, '2017-11-20 17:50:46', '2017-11-21 17:25:04'),
(26, 1, 'Arriba', 3, '34-58, 53-137', 'arriba', '2017-11-20 17:51:25', '2018-03-13 21:47:25'),
(27, 1, 'Azucarera', 7, '', NULL, '2017-11-20 17:51:52', '2017-11-20 17:51:52'),
(28, 1, 'Antonio M del Val', 1, '', NULL, '2017-11-20 17:52:06', '2017-11-20 17:52:06'),
(29, 1, 'Badajoz', 1, '', 'ciudad', '2017-11-20 17:52:18', '2018-03-13 11:15:16'),
(30, 1, 'Balsa', 5, '', NULL, '2017-11-20 17:53:07', '2017-11-20 17:53:07'),
(31, 1, 'Baltasar Gracían', 2, '1-3', 'escritor', '2017-11-20 17:53:35', '2018-03-13 21:31:46'),
(32, 1, 'Baltasar Gracían', 1, '5-13', 'escritor', '2017-11-20 17:53:59', '2018-03-13 11:15:36'),
(33, 1, 'Barbastro', 5, '', NULL, '2017-11-20 17:54:07', '2017-11-20 17:54:07'),
(34, 1, 'Barcelona Av', 5, '', NULL, '2017-11-20 17:54:28', '2017-11-20 17:54:28'),
(35, 1, 'Barón Eroles', 2, '', NULL, '2017-11-20 17:54:40', '2017-11-20 17:54:40'),
(36, 1, 'Bella Ntra Sra', 6, '', NULL, '2017-11-20 17:55:07', '2017-11-20 17:55:07'),
(37, 1, 'Bellavista', 5, '', NULL, '2017-11-20 17:55:18', '2017-11-20 17:55:18'),
(38, 1, 'Bellemonte', 5, '', NULL, '2017-11-20 17:55:25', '2017-11-20 17:55:25'),
(39, 1, 'Bellós, Río', 3, '', 'rio', '2017-11-20 17:56:39', '2018-03-13 21:47:47'),
(40, 1, 'Benasque', 1, '', 'pueblo', '2017-11-20 17:56:55', '2018-03-13 11:17:03'),
(41, 1, 'Berenguer de Peralta', 4, '', NULL, '2017-11-20 17:57:08', '2017-11-20 17:57:08'),
(42, 1, 'Binaced, Cl', 1, '', 'pueblo', '2017-11-20 17:57:26', '2018-03-13 11:17:16'),
(43, 1, 'Binaced, Av', 5, '', NULL, '2017-11-20 17:57:40', '2017-11-20 17:57:40'),
(44, 1, 'Binefar', 5, '', NULL, '2017-11-20 17:57:47', '2017-11-20 17:57:47'),
(45, 1, 'Blas Sorribas', 3, '', NULL, '2017-11-20 17:58:43', '2017-11-20 17:58:43'),
(46, 1, 'Bolilleras', 5, '', NULL, '2017-11-20 17:59:05', '2017-11-20 17:59:05'),
(47, 1, 'Bovila', 5, '', NULL, '2017-11-20 17:59:14', '2017-11-20 17:59:14'),
(48, 1, 'Burgos', 1, '', 'ciudad', '2017-11-20 17:59:20', '2018-03-13 11:17:28'),
(49, 1, 'Cabañera', 5, '', NULL, '2017-11-20 17:59:32', '2017-11-20 17:59:32'),
(50, 1, 'Calvario', 2, '1-9, 2-18', NULL, '2017-11-20 18:00:23', '2017-11-21 17:22:04'),
(51, 1, 'Calvario', 1, '11-13,  20-36', NULL, '2017-11-20 18:01:01', '2017-11-21 17:17:46'),
(52, 1, 'Calvario', 6, '23-45, 40-74', NULL, '2017-11-20 18:01:52', '2017-11-21 17:31:19'),
(53, 1, 'Canal Aragón y Cataluña', 8, '', NULL, '2017-11-20 18:02:49', '2017-11-20 18:02:49'),
(54, 1, 'Cantarero', 3, '', NULL, '2017-11-20 18:02:57', '2017-11-20 18:02:57'),
(55, 1, 'Carmen, Ntra Sra', 6, '', NULL, '2017-11-20 18:03:27', '2017-11-20 18:03:27'),
(56, 1, 'Carrodilla, Sra', 6, '', NULL, '2017-11-20 18:03:40', '2017-11-20 18:03:40'),
(57, 1, 'Castilla', 2, '', NULL, '2017-11-20 18:03:47', '2017-11-20 18:03:47'),
(58, 1, 'Castillo', 4, '', NULL, '2017-11-20 18:04:00', '2017-11-20 18:04:00'),
(59, 1, 'Central', 5, '', NULL, '2017-11-20 18:04:05', '2017-11-20 18:04:05'),
(60, 1, 'Cervantes', 2, '', 'escritor', '2017-11-20 18:04:19', '2018-03-13 21:32:33'),
(61, 1, 'Cesteros', 5, '', NULL, '2017-11-20 18:04:32', '2017-11-20 18:04:32'),
(62, 1, 'Cinca', 8, '', NULL, '2017-11-20 18:04:45', '2017-11-20 18:04:45'),
(63, 1, 'Cinca Medio, RB', 7, '', NULL, '2017-11-20 18:05:03', '2017-11-20 18:05:03'),
(64, 1, 'Cinqueta', 3, '', 'rio', '2017-11-20 18:05:12', '2018-03-13 21:49:01'),
(65, 1, 'Ciudad Real', 1, '', 'ciudad', '2017-11-20 18:05:19', '2018-03-13 11:17:43'),
(66, 1, 'Comas', 4, '', NULL, '2017-11-20 18:05:33', '2017-11-20 18:05:33'),
(67, 1, 'Conchel', 8, '', NULL, '2017-11-20 18:05:47', '2017-11-20 18:05:47'),
(68, 1, 'Córdoba', 1, '', 'ciudad', '2017-11-20 18:05:59', '2018-03-13 11:21:15'),
(69, 1, 'Corta', 4, '', NULL, '2017-11-20 18:06:04', '2017-11-20 18:06:04'),
(70, 1, 'Cortes de Aragón', 7, '', NULL, '2017-11-20 18:06:19', '2017-11-20 18:06:19'),
(71, 1, 'Cubierta', 4, '', NULL, '2017-11-20 18:06:25', '2017-11-20 18:06:25'),
(72, 1, 'Cuesta', 4, '', NULL, '2017-11-20 18:06:38', '2017-11-20 18:06:38'),
(73, 1, 'Deportes', 8, '', NULL, '2017-11-20 18:06:49', '2017-11-20 18:06:49'),
(74, 1, 'Derechos Humanos', 7, '', NULL, '2017-11-20 18:07:01', '2017-11-20 18:07:01'),
(75, 1, 'Duero', 8, '', NULL, '2017-11-20 18:07:12', '2017-11-20 18:07:12'),
(76, 1, 'Diego Velazquez ', 6, '', NULL, '2017-11-20 18:07:26', '2017-11-20 18:07:26'),
(77, 1, 'Ebro', 3, '', 'rio', '2017-11-20 18:07:34', '2018-03-13 21:49:19'),
(78, 1, 'Eras', 8, '', NULL, '2017-11-20 18:07:41', '2017-11-20 18:07:41'),
(79, 1, 'Ésera', 3, '', 'rio', '2017-11-20 18:07:54', '2018-03-13 21:49:31'),
(80, 1, 'Estación, Pza', 2, '', NULL, '2017-11-20 18:08:07', '2017-11-20 18:08:07'),
(81, 1, 'Estudios', 4, '', NULL, '2017-11-20 18:08:16', '2017-11-20 18:08:16'),
(82, 1, 'Eugenio Usanoizaga', 6, '', NULL, '2017-11-20 18:08:49', '2017-11-20 18:08:49'),
(83, 1, 'Europa Pza', 7, '', NULL, '2017-11-20 18:09:01', '2017-11-20 18:09:01'),
(84, 1, 'Ferrinales Cm', 5, '', NULL, '2017-11-20 18:09:16', '2017-11-20 18:09:16'),
(85, 1, 'Flumen', 8, '', NULL, '2017-11-20 18:09:26', '2017-11-20 18:09:26'),
(86, 1, 'Fonz', 6, '', NULL, '2017-11-20 18:09:39', '2017-11-20 18:09:39'),
(87, 1, 'Fco Tomás y Valient', 6, '', NULL, '2017-11-20 18:10:41', '2017-11-20 18:10:41'),
(88, 1, 'Fuendetodos', 1, '', 'pueblo', '2017-11-20 18:10:51', '2018-03-13 11:21:33'),
(89, 1, 'Fuente Saso', 8, '', NULL, '2017-11-20 18:10:58', '2017-11-20 18:10:58'),
(90, 1, 'Galicia', 2, '', NULL, '2017-11-20 18:13:53', '2017-11-20 18:13:53'),
(91, 1, 'Gállego, Río', 3, '', 'rio', '2017-11-20 18:14:20', '2018-03-13 21:49:48'),
(92, 1, 'Gerona', 1, '', 'ciudad', '2017-11-20 18:14:26', '2018-03-13 11:21:49'),
(93, 1, 'Goya', 4, '', NULL, '2017-11-20 18:14:32', '2017-11-20 18:14:32'),
(94, 1, 'Guadalquivir, Río', 8, '', NULL, '2017-11-20 18:15:37', '2017-11-20 18:15:37'),
(95, 1, 'Guadiana, Río', 8, '', NULL, '2017-11-20 18:15:53', '2017-11-20 18:15:53'),
(96, 1, 'Guatizalema, Río', 3, '', 'rio', '2017-11-20 18:16:07', '2018-03-13 21:50:02'),
(97, 1, 'Hilanderas, Pza', 5, '', NULL, '2017-11-20 18:16:20', '2017-11-20 18:16:20'),
(98, 1, 'Hospital', 4, '', NULL, '2017-11-20 18:16:33', '2017-11-20 18:16:33'),
(99, 1, 'Huesca', 1, '', 'ciudad', '2017-11-20 18:16:42', '2018-03-13 11:22:27'),
(100, 1, 'Huerva, Río', 8, '', NULL, '2017-11-20 18:16:54', '2017-11-20 18:16:54'),
(101, 1, 'Ignacio Luzan', 1, '1-35, 24-40', 'escritor', '2017-11-20 18:17:53', '2018-03-13 11:23:06'),
(102, 1, 'Ignacio Luzan', 2, '2-18', 'escritor', '2017-11-20 18:18:25', '2018-03-13 21:33:07'),
(103, 1, 'Industria Armentera', 9, '', NULL, '2017-11-20 18:18:39', '2017-11-20 18:18:39'),
(104, 1, 'Inmaculada', 6, '', NULL, '2017-11-20 18:18:46', '2017-11-20 20:48:04'),
(105, 1, 'Isábena, Río', 3, '', 'rio', '2017-11-20 18:18:59', '2018-03-13 21:50:20'),
(106, 1, 'Isuela, Río', 8, '', NULL, '2017-11-20 18:19:25', '2017-11-20 18:19:25'),
(107, 1, 'Jaen', 1, '', 'ciudad', '2017-11-20 18:19:34', '2018-03-13 11:23:24'),
(108, 1, 'Jaime I', 2, '', 'rey', '2017-11-20 18:19:46', '2018-03-13 21:33:28'),
(109, 1, 'Joaquín Costa', 4, '1-49, 20-54', NULL, '2017-11-20 18:20:19', '2017-11-21 17:26:05'),
(110, 1, 'Joaquín Costa', 5, '51-89, 56-104', NULL, '2017-11-20 18:20:53', '2017-11-21 17:28:43'),
(111, 1, 'Joaquín Pano', 4, '', NULL, '2017-11-20 18:21:18', '2017-11-20 18:21:18'),
(112, 1, 'José M Peñaranda', 6, '', NULL, '2017-11-20 18:21:53', '2017-11-20 18:21:53'),
(113, 1, 'Juan Carlos Pza', 3, '', 'rey', '2017-11-20 18:22:09', '2018-03-13 21:50:33'),
(114, 1, 'Juan de Lanuza', 4, '1-19, 2-14', NULL, '2017-11-20 18:23:11', '2017-11-21 17:27:11'),
(115, 1, 'Juan de Lanuza', 7, '21-25', NULL, '2017-11-20 18:23:40', '2017-11-21 17:32:06'),
(116, 1, 'Jucar, Río', 8, '', NULL, '2017-11-20 18:24:08', '2017-11-20 18:24:08'),
(117, 1, 'Julio Romero de T.', 6, '', NULL, '2017-11-20 18:24:25', '2017-11-20 18:24:25'),
(118, 1, 'La carcel', 4, '', NULL, '2017-11-20 18:24:36', '2017-11-20 18:24:36'),
(119, 1, 'La ceca', 3, '', NULL, '2017-11-20 18:24:45', '2017-11-20 18:24:45'),
(120, 1, 'La cueva', 5, '', NULL, '2017-11-20 18:24:53', '2017-11-20 18:24:53'),
(121, 1, 'La Huerta', 5, '', NULL, '2017-11-20 18:25:04', '2017-11-20 18:25:04'),
(122, 1, 'La Iglesia', 4, '', NULL, '2017-11-20 18:25:15', '2017-11-20 18:25:15'),
(123, 1, 'La Paz', 2, '', NULL, '2017-11-20 18:25:23', '2017-11-20 18:25:23'),
(124, 1, 'Lanata, Río', 3, '', 'rio', '2017-11-20 18:25:51', '2018-03-13 21:50:58'),
(125, 1, 'Lérida, Av', 2, '1-25', 'ciudad', '2017-11-20 18:26:22', '2018-03-13 21:33:50'),
(126, 1, 'Lérida, Av', 4, '2-10', NULL, '2017-11-20 18:26:44', '2017-11-21 17:27:44'),
(127, 1, 'Lérida, Av', 5, '12-88, 31-73', NULL, '2017-11-20 18:27:02', '2017-11-21 17:29:37'),
(129, 1, 'Loarre', 4, '', NULL, '2017-11-20 18:27:41', '2017-11-20 18:27:41'),
(130, 1, 'Lope de Vega', 2, '', 'escritor', '2017-11-20 18:27:52', '2018-03-13 21:34:05'),
(131, 1, 'Los Huertos', 3, '', NULL, '2017-11-20 18:27:59', '2018-02-08 18:26:14'),
(132, 1, 'Macelo', 4, '', NULL, '2017-11-20 18:28:13', '2017-11-20 18:28:13'),
(133, 1, 'Málaga', 1, '', 'ciudad', '2017-11-20 18:28:19', '2018-03-13 11:23:39'),
(134, 1, 'M. Guiterrez Mellado', 6, '', NULL, '2017-11-20 18:29:03', '2017-11-20 18:29:03'),
(135, 1, 'M. Auxiliadora', 6, '100-102', NULL, '2017-11-20 18:29:33', '2017-11-20 18:29:33'),
(136, 1, 'M. Auxiliadora', 7, '1-15, 2-92', NULL, '2017-11-20 18:30:08', '2017-11-20 18:30:08'),
(137, 1, 'María Moliner', 2, '', NULL, '2017-11-20 18:30:18', '2017-11-20 18:30:18'),
(138, 1, 'Mayor, Cl y Pza', 4, '', NULL, '2017-11-20 18:30:41', '2017-11-20 18:30:41'),
(139, 1, 'Mercado', 3, '', NULL, '2017-11-20 18:30:51', '2017-11-20 18:30:51'),
(140, 1, 'Miguel Servet', 4, '1-27, 2-18', NULL, '2017-11-20 18:31:46', '2017-11-20 18:31:46'),
(141, 1, 'Miguel Servet', 3, '33-61, 20-34', NULL, '2017-11-20 18:32:13', '2017-11-20 18:32:13'),
(142, 1, 'Molino', 8, '', NULL, '2017-11-20 18:32:21', '2017-11-20 18:32:21'),
(143, 1, 'Mor de Fuentes', 4, '', NULL, '2017-11-20 18:32:39', '2017-11-20 18:32:39'),
(144, 1, 'Murcia', 1, '', 'ciudad', '2017-11-20 18:32:49', '2018-03-13 11:24:07'),
(145, 1, 'Muret', 2, '', NULL, '2017-11-20 18:32:55', '2017-11-20 18:32:55'),
(146, 1, 'Murillo, pintor', 6, '', NULL, '2017-11-20 18:33:08', '2017-11-20 18:33:08'),
(147, 1, 'Música Pza', 7, '', NULL, '2017-11-20 18:34:12', '2017-11-20 18:34:12'),
(148, 1, 'Nacional 240 Km 147', 9, '', NULL, '2017-11-20 18:34:38', '2017-11-20 18:34:38'),
(149, 1, 'Navarra', 1, '', NULL, '2017-11-20 18:34:49', '2017-11-20 18:34:49'),
(150, 1, 'Nueva', 5, '', NULL, '2017-11-20 18:34:54', '2017-11-20 18:34:54'),
(151, 1, 'Olivos Pza', 8, '', NULL, '2017-11-20 18:35:34', '2017-11-20 18:35:34'),
(152, 1, 'Oviedo', 6, '', NULL, '2017-11-20 18:35:40', '2017-11-20 18:35:40'),
(153, 1, 'Ozcoidi', 4, '', NULL, '2017-11-20 18:35:53', '2017-11-20 18:35:53'),
(154, 1, 'Padre Manuel Serrano', 7, '', NULL, '2017-11-20 18:36:56', '2017-11-20 18:36:56'),
(155, 1, 'Pantano Barasona', 8, '', NULL, '2017-11-20 18:37:14', '2017-11-20 18:37:14'),
(156, 1, 'Pantano del Grado', 8, '', NULL, '2017-11-20 18:37:32', '2017-11-20 18:37:32'),
(157, 1, 'Paules, Cl', 7, '2-10', NULL, '2017-11-20 18:37:59', '2017-11-20 18:37:59'),
(158, 1, 'Paules, Cl', 2, '12-30', NULL, '2017-11-20 18:38:31', '2017-11-20 18:38:31'),
(159, 1, 'Paules, Plg y Pza', 6, '', NULL, '2017-11-20 18:39:00', '2017-11-20 18:39:00'),
(160, 1, 'Pedro II', 2, '', 'rey', '2017-11-20 18:39:11', '2018-03-13 21:34:52'),
(161, 1, 'Pedro Juan de Lastanosa', 1, '', NULL, '2017-11-20 18:39:31', '2017-11-20 18:39:31'),
(162, 1, 'Penosa', 5, '', NULL, '2017-11-20 18:39:41', '2017-11-20 18:39:41'),
(163, 1, 'Piedad Ntra Sra', 6, '', NULL, '2017-11-20 18:40:05', '2017-11-20 18:40:05'),
(164, 1, 'Pilar Ntra Sra', 7, '2-20', NULL, '2017-11-20 18:40:32', '2017-11-20 18:40:32'),
(165, 1, 'Pilar Ntra Sra', 3, '1-63, 32-42', NULL, '2017-11-20 18:41:00', '2017-11-20 18:41:00'),
(166, 1, 'Pueyo Av', 3, '1-17, 2-8', NULL, '2017-11-20 18:42:04', '2017-11-20 18:42:04'),
(167, 1, 'Pueyo Av', 8, '21-67, 12-148', NULL, '2017-11-20 18:42:29', '2017-11-20 18:42:29'),
(168, 1, 'Rambla', 1, '', NULL, '2017-11-20 18:42:43', '2017-11-20 18:42:43'),
(169, 1, 'Rb Canal Aragón y Cataluña', 8, '', NULL, '2017-11-20 18:43:10', '2017-11-20 18:43:10'),
(170, 1, 'Ramón J Sender', 1, '', 'escritor', '2017-11-20 18:43:23', '2018-03-13 11:25:22'),
(171, 1, 'Ramón y Cajal', 4, '', NULL, '2017-11-20 18:43:37', '2017-11-20 18:43:37'),
(172, 1, 'Resala', 3, '', NULL, '2017-11-20 18:43:44', '2017-11-20 18:43:44'),
(173, 1, 'Rivera, Pintor', 6, '', NULL, '2017-11-20 18:43:55', '2017-11-20 18:43:55'),
(174, 1, 'Romeral', 4, '', NULL, '2017-11-20 18:44:19', '2017-11-20 18:44:19'),
(175, 1, 'Salobras', 1, '', NULL, '2017-11-20 18:44:32', '2017-11-20 18:44:32'),
(176, 1, 'Salou', 5, '', NULL, '2017-11-20 18:44:40', '2017-11-20 18:44:40'),
(177, 1, 'San Antonio', 4, '', NULL, '2017-11-20 18:44:54', '2017-11-20 18:44:54'),
(178, 1, 'San Fco', 6, '40', NULL, '2017-11-20 18:45:18', '2017-11-20 18:45:18'),
(179, 1, 'San Fco', 7, '2-36, 1-59', NULL, '2017-11-20 18:45:49', '2017-11-20 18:45:49'),
(180, 1, 'San Fco, Pje', 7, '', NULL, '2017-11-20 18:46:11', '2017-11-20 18:46:11'),
(181, 1, 'San Isidro', 7, '', NULL, '2017-11-20 18:46:31', '2017-11-20 18:46:31'),
(182, 1, 'San Jorge', 7, '', NULL, '2017-11-20 18:46:42', '2017-11-20 18:46:42'),
(183, 1, 'San José de Calasanz', 7, '', NULL, '2017-11-20 18:46:54', '2017-11-20 18:46:54'),
(184, 1, 'San Juan Bosco', 6, '2-28, 53-199', NULL, '2017-11-20 18:47:32', '2017-11-20 18:47:32'),
(185, 1, 'San Juan Bosco', 7, '1-49', NULL, '2017-11-20 18:47:51', '2017-11-20 18:47:51'),
(186, 1, 'San Juan, Pza', 3, '', NULL, '2017-11-20 18:48:55', '2017-11-20 18:48:55'),
(187, 1, 'San Lázaro', 5, '', NULL, '2017-11-20 18:49:15', '2017-11-20 18:49:15'),
(188, 1, 'San Lorenzo', 5, '', NULL, '2017-11-20 18:49:25', '2017-11-20 18:49:25'),
(189, 1, 'San Mateo', 4, '', NULL, '2017-11-20 18:49:34', '2017-11-20 18:49:34'),
(190, 1, 'Sancho Ramirez', 4, '', NULL, '2017-11-20 18:49:48', '2017-11-20 18:49:48'),
(191, 1, 'Sanjuanistas', 5, '', NULL, '2017-11-20 18:50:03', '2017-11-20 18:50:03'),
(192, 1, 'Santa Ana', 7, '', NULL, '2017-11-20 18:50:16', '2017-11-20 18:50:16'),
(193, 1, 'Santa Bárbara', 4, '1-47, 2-66', NULL, '2017-11-20 18:50:42', '2017-11-20 18:50:42'),
(194, 1, 'Santa Bárbara', 5, '49-65', NULL, '2017-11-20 18:51:07', '2017-11-20 18:51:07'),
(195, 1, 'Santa Clara', 6, '', NULL, '2017-11-20 18:51:22', '2017-11-20 18:51:22'),
(196, 1, 'Santa María, Pza', 4, '', NULL, '2017-11-20 18:51:33', '2017-11-20 18:51:33'),
(197, 1, 'Santiago', 7, '', NULL, '2017-11-20 18:52:04', '2017-11-20 18:52:04'),
(198, 1, 'Santo Domingo Pza', 5, '', NULL, '2017-11-20 18:52:26', '2017-11-20 18:52:26'),
(199, 1, 'Sariñena', 1, '', 'pueblo', '2017-11-20 18:52:38', '2018-03-13 11:25:43'),
(200, 1, 'Segovia', 1, '', 'ciudad', '2017-11-20 18:52:53', '2018-03-13 11:26:03'),
(201, 1, 'Segura, Rio', 8, '', NULL, '2017-11-20 18:53:03', '2017-11-20 18:53:03'),
(202, 1, 'Selgua', 8, '', NULL, '2017-11-20 18:53:15', '2017-11-20 18:53:15'),
(203, 1, 'Sella, Río ', 8, '', NULL, '2017-11-20 18:53:28', '2017-11-20 20:47:53'),
(204, 1, 'Sevilla', 1, '', 'ciudad', '2017-11-20 18:53:35', '2018-03-13 11:26:15'),
(205, 1, 'Sierra Mediana', 5, '', NULL, '2017-11-20 18:54:03', '2017-11-20 18:54:03'),
(206, 1, 'Silleros', 5, '', NULL, '2017-11-20 18:54:14', '2017-11-20 18:54:14'),
(207, 1, 'Sisallo', 3, '', NULL, '2017-11-20 18:54:26', '2017-11-20 18:54:26'),
(208, 1, 'Sorolla, Pintor', 6, '', NULL, '2017-11-20 18:54:38', '2017-11-20 18:54:38'),
(209, 1, 'Sosa, Río', 3, '1-2-3', NULL, '2017-11-20 18:55:11', '2017-11-20 18:55:11'),
(210, 1, 'Sosa, Río', 7, '4-22, 5-21', NULL, '2017-11-20 18:55:45', '2017-11-20 18:55:45'),
(211, 1, 'Sosiles', 8, '', NULL, '2017-11-20 18:55:54', '2017-11-20 18:55:54'),
(212, 1, 'Subordán, Río', 8, '', NULL, '2017-11-20 18:56:07', '2017-11-20 18:56:07'),
(213, 1, 'Susia, Río', 8, '', NULL, '2017-11-20 18:56:19', '2017-11-20 18:56:19'),
(214, 1, 'Tajo, Río', 8, '', NULL, '2017-11-20 18:56:30', '2017-11-20 18:56:30'),
(215, 1, 'Tamarite', 5, '', NULL, '2017-11-20 18:56:40', '2017-11-20 18:56:40'),
(216, 1, 'Tejerías', 5, '', NULL, '2017-11-20 18:56:59', '2017-11-20 18:56:59'),
(217, 1, 'Templarios', 7, '', NULL, '2017-11-20 18:57:12', '2017-11-20 18:57:12'),
(218, 1, 'Teresa de Calcuta', 7, '', NULL, '2017-11-20 18:57:31', '2017-11-20 18:57:31'),
(219, 1, 'Teruel', 1, '', 'ciudad', '2017-11-20 18:57:39', '2018-03-13 11:26:36'),
(220, 1, 'Tibidabo', 6, '', NULL, '2017-11-20 18:57:53', '2017-11-20 18:57:53'),
(221, 1, 'Torrefuentes', 5, '', NULL, '2017-11-20 18:58:03', '2017-11-20 18:58:03'),
(222, 1, 'Tozales', 5, '', NULL, '2017-11-20 18:58:13', '2017-11-20 18:58:13'),
(223, 1, 'Transversal', 5, '', NULL, '2017-11-20 18:58:23', '2017-11-20 18:58:23'),
(224, 1, 'Transcolegial', 4, '', NULL, '2017-11-20 18:58:36', '2017-11-20 18:58:36'),
(225, 1, 'Trinidad', 4, '', NULL, '2017-11-20 18:58:43', '2017-11-20 18:58:43'),
(226, 1, 'Valencia', 2, '', 'ciudad', '2017-11-20 18:58:49', '2018-03-13 21:35:36'),
(227, 1, 'Valle Añisclo', 6, '', NULL, '2017-11-20 18:59:04', '2017-11-20 18:59:04'),
(228, 1, 'Valle Benasque', 6, '', NULL, '2017-11-20 18:59:18', '2017-11-20 18:59:18'),
(229, 1, 'Valle Gistain', 6, '', NULL, '2017-11-20 18:59:39', '2017-11-20 18:59:39'),
(230, 1, 'Valle de Ordesa', 6, '', NULL, '2017-11-20 19:00:05', '2017-11-20 19:00:05'),
(231, 1, 'Valle de Pineta', 6, '', NULL, '2017-11-20 19:00:14', '2017-11-20 19:00:14'),
(232, 1, 'Valle de Plan', 6, '', NULL, '2017-11-20 19:00:22', '2017-11-20 19:00:22'),
(233, 1, 'Valle de Tena', 6, '', NULL, '2017-11-20 19:00:37', '2017-11-20 19:00:37'),
(234, 1, 'Valle del Cinca', 6, '', NULL, '2017-11-20 19:00:50', '2017-11-20 19:00:50'),
(235, 1, 'Velazquez, Diego', 6, '', NULL, '2017-11-20 19:01:15', '2017-11-20 19:01:15'),
(236, 1, 'Veral, Río', 8, '', NULL, '2017-11-20 19:01:26', '2017-11-20 19:01:26'),
(237, 1, 'Vero, Río', 3, '', NULL, '2017-11-20 19:03:40', '2017-11-20 19:03:40'),
(238, 1, 'Vicente Pinzano', 1, '', NULL, '2017-11-20 19:04:02', '2017-11-20 19:04:02'),
(239, 1, 'Zaragoza, cl', 6, '1-15, 2-12', NULL, '2017-11-20 19:04:58', '2017-11-20 19:04:58'),
(240, 1, 'Zaragoza, cl', 1, '17-49, 14-48', 'ciudad', '2017-11-20 19:05:33', '2018-03-13 11:27:14'),
(241, 1, 'Zaragoza, Pza', 4, '', NULL, '2017-11-20 19:05:46', '2017-11-20 19:05:46'),
(242, 1, 'Zuloaga', 6, '', NULL, '2017-11-20 19:05:54', '2017-11-20 19:05:54'),
(243, 2, 'Murillo', 1, '', 'pintor', '2018-03-15 17:30:39', '2018-03-15 17:30:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2017_03_09_202730_create_users_table', 1),
('2017_03_22_210418_create_unidades_table', 1),
('2017_03_22_210429_create_secciones_table', 1),
('2017_03_22_210443_create_pueblos_table', 1),
('2017_03_22_210457_create_usuarios_table', 1),
('2017_11_18_074251_create_calles_table', 2),
('2017_11_18_075452_create_cuadro_de_clasificaciones_table', 3),
('2017_11_18_075453_create_cuadro_de_clasificaciones_table', 4),
('2017_11_18_075454_create_cuadro_de_clasificaciones_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pueblos`
--

CREATE TABLE `pueblos` (
  `id` int(10) UNSIGNED NOT NULL,
  `unidad_id` int(10) UNSIGNED NOT NULL,
  `seccion_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pueblos`
--

INSERT INTO `pueblos` (`id`, `unidad_id`, `seccion_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Santalecina', '2017-05-31 07:57:00', '2017-05-31 07:57:00'),
(2, 1, 1, 'Estiche de Cinca', '2017-05-31 07:57:06', '2017-05-31 07:57:06'),
(3, 1, 1, 'Pomar de Cinca', '2017-05-31 07:57:11', '2017-05-31 07:57:11'),
(4, 1, 1, 'Conchel', '2017-05-31 07:57:16', '2017-05-31 07:57:16'),
(5, 1, 1, 'Chalamera', '2017-06-26 16:14:07', '2017-06-26 16:14:07'),
(18, 1, 10, 'Ontiñena', '2017-10-04 17:38:56', '2017-10-04 17:38:56'),
(21, 7, 21, 'Carretera', '2018-05-23 16:22:09', '2018-05-23 16:22:09'),
(22, 7, 21, 'Lascellas', '2018-05-23 16:22:41', '2018-05-23 16:22:41'),
(23, 7, 21, 'Ponzano', '2018-05-23 16:22:57', '2018-05-23 16:22:57'),
(24, 7, 21, 'Peraltilla', '2018-05-23 16:23:17', '2018-05-23 16:23:17'),
(25, 7, 21, 'Azara', '2018-05-23 16:23:34', '2018-05-23 16:23:34'),
(26, 7, 21, 'Azlor', '2018-05-23 16:23:49', '2018-05-23 16:23:49'),
(27, 7, 21, 'Adahuesca', '2018-05-23 16:24:04', '2018-05-23 16:24:04'),
(28, 7, 21, 'Mensajeros Adahuesca', '2018-06-09 12:06:05', '2018-06-09 12:06:05'),
(29, 7, 22, 'Bierge', '2020-03-24 17:54:34', '2020-03-25 07:33:42'),
(30, 7, 22, 'Alberuela de la Liena', '2020-03-24 18:17:53', '2020-03-24 18:17:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `unidad_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `unidad_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Circular 3', '2017-05-31 07:56:46', '2017-05-31 07:56:46'),
(10, 1, 'Ontiñena', '2017-10-04 17:38:30', '2017-10-04 17:38:30'),
(21, 7, 'Circular 6', '2018-05-23 16:20:35', '2018-05-23 16:21:13'),
(22, 7, 'Circular 7', '2020-03-24 18:17:17', '2020-03-24 18:17:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code-post` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `title`, `city`, `code-post`, `created_at`, `updated_at`) VALUES
(1, '2240001', 'Monzón', 22400, '2017-05-31 07:56:34', '2017-05-31 07:56:34'),
(2, '2260001', '', 0, '2017-08-01 08:42:54', '2017-08-01 08:42:54'),
(7, '2230001', '', 0, '2018-05-23 16:20:12', '2018-05-23 16:20:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellidos`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'David', 'Sánchez Agüera', 'david@sanchez.es', '$2y$10$cWY/XVTcdumGvDZOR58.1.UaV52wjn5wMOQR2nwudGan3rb79LWdO', 'JWYfUCpQBcAnXIfxvU0A8aLst13To7xS7NoUAdkzvQwZLgiEc2YeTMl8DAtP', '2017-08-01 16:41:05', '2018-05-23 16:03:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `unidad_id` int(10) UNSIGNED NOT NULL,
  `seccion_id` int(10) UNSIGNED NOT NULL,
  `pueblo_id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surnames` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_street` int(10) UNSIGNED DEFAULT NULL,
  `observaciones` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` decimal(8,2) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(12, 1, 1, 4, 1, 'Maria Ángeles', 'Guillen Granados', 'Escuelas', 3, '', '0.00', '2017-05-31 11:15:09', '2017-05-31 12:37:22'),
(13, 1, 1, 4, 1, 'Juan José', 'Penella García', 'Escuelas?', 3, '', NULL, '2017-05-31 11:18:13', '2017-05-31 11:18:13'),
(14, 1, 1, 4, 2, 'Ángeles', 'Encuentra Callen', 'La Fuente', 8, '', NULL, '2017-05-31 11:21:28', '2017-05-31 11:21:28'),
(17, 1, 1, 4, 3, 'Máxima', 'Arroyos Ballabrigax', 'La Fuente', 10, '', '0.00', '2017-05-31 12:14:16', '2017-05-31 12:38:07'),
(18, 1, 1, 4, 4, 'Bienvenido', 'Peruga Almunia', 'La Fuente ', 16, 'Casa gris | Buzón Negro', '0.00', '2017-05-31 13:03:25', '2017-05-31 16:20:56'),
(21, 1, 1, 4, 4, 'Casemira', 'Puy Zarroca', 'La Fuente', 16, 'Casa gris | Buzón Negro', '0.00', '2017-05-31 13:05:46', '2017-05-31 16:22:31'),
(25, 1, 1, 4, 4, 'Mª Jesús y Sara', 'Peruga Puy', 'La Fuente ', 16, 'Casa gris | Buzón Negro', '0.00', '2017-05-31 13:10:06', '2017-06-03 09:29:30'),
(26, 1, 1, 4, 4, 'José', 'Allúe Español', 'La Fuente', 16, 'Casa gris | Buzón Negro', '0.00', '2017-05-31 13:11:28', '2017-05-31 16:03:44'),
(27, 1, 1, 4, 4, 'José Ramón', 'Satúe Olivan', 'La Fuente', 16, 'Casa gris | Buzón Negro', '0.00', '2017-05-31 13:12:14', '2017-05-31 16:23:43'),
(28, 1, 1, 4, 5, 'Sin nombres', 'Sin apellidos', 'La Fuente', 5, '', NULL, '2017-05-31 13:13:35', '2017-05-31 13:13:35'),
(29, 1, 1, 4, 7, 'Leonardo', 'Trems Alvira', 'Afueras', 2, '', '0.00', '2017-05-31 13:14:55', '2017-05-31 15:10:23'),
(30, 1, 1, 4, 6, 'Dimas', 'Aldehuelo Aparicio', 'La Fuente', 15, '', NULL, '2017-05-31 14:46:39', '2017-05-31 14:46:39'),
(31, 1, 1, 4, 6, 'Esmeralda', 'Alvira Solans', 'La Fuente', 15, '', NULL, '2017-05-31 14:47:18', '2017-05-31 14:47:18'),
(34, 1, 1, 4, 6, 'Dimas', 'Aldehuelo Alvira', 'La Fuente', 15, '', NULL, '2017-05-31 14:54:31', '2017-05-31 14:54:31'),
(35, 1, 1, 4, 7, 'Silvia', 'Languil Moreno', 'Afueras', 2, '', NULL, '2017-05-31 15:11:50', '2017-05-31 15:11:50'),
(36, 1, 1, 4, 7, 'Gisela y Pedro', 'Trems Languil', 'Afueras', 2, '', '0.00', '2017-05-31 15:19:40', '2017-06-03 09:32:35'),
(39, 1, 1, 4, 8, 'Alfonso', 'Asensio Pelegay', 'Afueras', 1, '', NULL, '2017-05-31 15:24:40', '2017-05-31 15:24:40'),
(40, 1, 1, 4, 8, 'Nati', 'Puyalto Peruga', 'Afueras', 1, '', NULL, '2017-05-31 15:26:22', '2017-05-31 15:26:22'),
(41, 1, 1, 4, 8, 'Alfonso, Olga y Mª Victoria', 'Asensio Puyalto', 'Afueras', 1, '', '0.00', '2017-05-31 15:26:53', '2017-06-03 08:44:28'),
(44, 1, 1, 4, 8, 'José', 'Lacambra Zarroca', 'Afueras', 1, '', NULL, '2017-05-31 15:29:40', '2017-05-31 15:29:40'),
(45, 1, 1, 4, 9, 'Emilia', 'Calderón Espuña', 'Afueras', 10, '', NULL, '2017-05-31 15:48:27', '2017-05-31 15:48:27'),
(46, 1, 1, 4, 9, 'Vicente', 'Puy Zarroca', 'Afueras ', 10, 'Zócalo de Piedra', '0.00', '2017-05-31 15:49:23', '2017-05-31 16:23:04'),
(47, 1, 1, 4, 10, 'José', 'Almunia Peruga', 'Afueras', 16, 'Fachada amarilla | Si no están dejar certificados en Monzón', '0.00', '2017-05-31 17:02:55', '2017-05-31 17:06:34'),
(48, 1, 1, 4, 10, 'Jaime', 'Almunia Fajarnes', 'Afueras', 16, 'Fachada amarilla | Si no están dejar certificados en Monzón', '0.00', '2017-05-31 17:03:22', '2017-05-31 17:06:11'),
(50, 1, 1, 4, 10, 'Mª Pilar y Montse', 'Peruga Puy', 'Afueras', 16, 'Fachada amarilla | Si no están dejar certificados en Monzón', '0.00', '2017-05-31 17:04:40', '2017-06-03 09:30:33'),
(51, 1, 1, 4, 11, 'Miguel', 'Diago Monter', 'Afueras', 18, '', NULL, '2017-05-31 17:08:00', '2017-05-31 17:08:00'),
(52, 1, 1, 4, 11, 'Rosa', 'Trems Alvira', 'Afueras', 18, '', NULL, '2017-05-31 17:08:31', '2017-05-31 17:08:31'),
(53, 1, 1, 4, 11, 'Joaquin', 'Trems Peruga', 'Afueras', 18, '', NULL, '2017-05-31 17:14:25', '2017-05-31 17:14:25'),
(54, 1, 1, 4, 11, 'Vicenta Mª', 'Alvira Solans', 'Afueras', 18, '', NULL, '2017-05-31 17:18:07', '2017-05-31 17:18:07'),
(56, 1, 1, 4, 11, 'Guadalupe y Miguel', 'Diago Trems', 'Afueras', 18, '', '0.00', '2017-05-31 17:19:45', '2017-06-03 08:49:25'),
(57, 1, 1, 4, 11, 'Diago', 'Diago Quipues S.C', 'Afueras', 18, 'Devolver', '0.00', '2017-05-31 17:21:04', '2017-05-31 17:21:38'),
(58, 1, 1, 4, 11, 'Construcciones', 'Construcciones Onticón', 'Afueras', 18, '', NULL, '2017-05-31 17:22:39', '2017-05-31 17:22:39'),
(59, 1, 1, 4, 12, 'Maria ', 'Peruga Bravo', 'Afueras', 22, '', NULL, '2017-05-31 17:23:16', '2017-05-31 17:23:16'),
(60, 1, 1, 4, 12, 'javier y Ana Mª', 'Bravo peruga', 'Afueras', 22, '', '0.00', '2017-05-31 17:24:26', '2017-06-03 08:43:02'),
(62, 1, 1, 4, 12, 'José', 'Castillo oliva', 'Afueras', 22, '', NULL, '2017-05-31 17:25:12', '2017-05-31 17:25:12'),
(63, 1, 1, 4, 13, 'Fco', 'Zorroca Buera', 'Afueras', 24, '', NULL, '2017-05-31 17:25:38', '2017-05-31 17:25:38'),
(64, 1, 1, 4, 13, 'aurora', 'larraz amoros', 'Afueras', 24, '', NULL, '2017-05-31 17:26:03', '2017-05-31 17:26:03'),
(65, 1, 1, 4, 13, 'Fco', 'Zorroca larraz', 'Afueras', 24, '', NULL, '2017-05-31 17:26:28', '2017-05-31 17:26:28'),
(66, 1, 1, 4, 14, 'rafael', 'ruiz palma', 'Afueras', 26, '', NULL, '2017-05-31 17:27:55', '2017-05-31 17:27:55'),
(67, 1, 1, 4, 15, 'eloina', 'Peruga Almunia', 'Afueras', 28, '', NULL, '2017-05-31 17:28:38', '2017-05-31 17:28:38'),
(68, 1, 1, 4, 15, 'Miguel', 'ortega pérez', 'Afueras', 28, '', NULL, '2017-05-31 17:29:11', '2017-05-31 17:29:11'),
(69, 1, 1, 4, 15, 'Raquel, Marta y Eloy', 'Carrera peruga', 'Afueras', 28, '', NULL, '2017-05-31 17:30:16', '2017-05-31 17:30:16'),
(70, 1, 1, 4, 15, 'jesus', 'carrera piñol', 'Afueras', 28, 'Devolver', NULL, '2017-05-31 17:30:57', '2017-05-31 17:30:57'),
(71, 1, 1, 4, 16, 'Sociedad de caza', 'Sociedad de caza', 'Afueras', 30, 'Peña la Herrería', NULL, '2017-05-31 17:31:45', '2017-05-31 17:31:45'),
(72, 1, 1, 4, 17, 'José narciso', 'peruga peruga', 'afueras', 32, 'Dejar en c/Medio s/n', NULL, '2017-05-31 17:34:33', '2017-05-31 17:34:33'),
(73, 1, 1, 4, 17, 'trinidad', 'Inglan torres', 'Afueras', 32, '', NULL, '2017-05-31 17:34:51', '2017-05-31 17:34:51'),
(74, 1, 1, 4, 17, 'cesar', 'Peruga inglan', 'Afueras', 32, '', NULL, '2017-05-31 17:35:12', '2017-05-31 17:35:12'),
(75, 1, 1, 4, 17, 'agroconchel', 'agroconchel', 'afueras', 32, '', NULL, '2017-05-31 17:35:52', '2017-05-31 17:35:52'),
(76, 1, 1, 4, 18, 'rafael', 'miranda torres', 'pz la iglesia', 1, '', NULL, '2017-05-31 17:36:44', '2017-05-31 17:36:44'),
(77, 1, 1, 4, 18, 'carmen', 'hidalgo pomet', 'pz la iglesia', 1, '', NULL, '2017-05-31 17:37:08', '2017-05-31 17:37:08'),
(78, 1, 1, 4, 18, 'Elena y maria', 'miranda hidalgo', 'pz la iglesia', 1, '', NULL, '2017-05-31 17:37:33', '2017-05-31 17:37:33'),
(79, 1, 1, 4, 18, 'José enrique', 'Lacambra peruga', 'pz la iglesia', 1, '', NULL, '2017-05-31 17:38:05', '2017-05-31 17:38:05'),
(80, 1, 1, 4, 18, 'trala s.l', 'trala s.l', 'pz la iglesia', 18, 'Buzón negro donde garaje', NULL, '2017-05-31 17:38:56', '2017-05-31 17:38:56'),
(81, 1, 1, 4, 19, 'faustino', 'gabas sahún', 'la parra', 30, 'Viene como c/mayor', NULL, '2017-05-31 17:39:57', '2017-05-31 17:39:57'),
(82, 1, 1, 4, 19, 'victoria', 'Zorroca zarroca', 'la parra', 30, 'Viene como c/mayor', NULL, '2017-05-31 17:40:32', '2017-05-31 17:40:32'),
(83, 1, 1, 4, 19, 'Mª Teresa, Victor y Victoria', 'Gabas zarroca', 'la parra', 30, 'Viene como c/mayor', NULL, '2017-05-31 17:41:33', '2017-05-31 17:41:33'),
(84, 1, 1, 4, 19, 'victoria y mariano', 'Zorroca ballabriga', 'la parra', 30, 'Viene como c/mayor', NULL, '2017-05-31 17:42:07', '2017-05-31 17:42:07'),
(85, 1, 1, 4, 20, 'rafael', 'tenez molina', 'la parra', 0, 'zócalo granate', '0.00', '2017-05-31 17:42:48', '2017-05-31 17:45:35'),
(86, 1, 1, 4, 20, 'manuel ', 'real bernal', 'la parra', 0, 'zócalo granate', '0.00', '2017-05-31 17:43:48', '2017-05-31 17:45:09'),
(87, 1, 1, 4, 21, 'alicia', 'romper mur', 'la parra', 20, '', NULL, '2017-05-31 17:46:23', '2017-05-31 17:46:23'),
(88, 1, 1, 4, 22, 'José', 'oliva amaró', 'la parra', 3, '', NULL, '2017-05-31 17:47:13', '2017-05-31 17:47:13'),
(89, 1, 1, 4, 22, 'carmen', 'tenez molina', 'la parra', 3, '', NULL, '2017-05-31 17:47:30', '2017-05-31 17:47:30'),
(90, 1, 1, 4, 22, 'Maria Ángeles', 'lópez cano', 'la parra', 3, '', NULL, '2017-05-31 17:48:02', '2017-05-31 17:48:02'),
(91, 1, 1, 4, 23, 'josé manuel', 'trujillo magan', 'la parra', 22, '', NULL, '2017-05-31 17:48:52', '2017-05-31 17:48:52'),
(92, 1, 1, 4, 24, 'mundo ', 'mundo agrícola', 'la parra', 25, '', NULL, '2017-05-31 17:49:36', '2017-05-31 17:49:36'),
(93, 1, 1, 4, 24, 'jorge', 'peret ---', 'la parra', 25, '', NULL, '2017-05-31 17:51:59', '2017-05-31 17:51:59'),
(94, 1, 1, 4, 24, 'patricia', 'ferreira', 'la parra', 25, '', NULL, '2017-05-31 17:52:29', '2017-05-31 17:52:29'),
(95, 1, 1, 4, 24, 'natura', 'natura conchel', 'la parra', 25, '', NULL, '2017-05-31 17:52:50', '2017-05-31 17:52:50'),
(96, 1, 1, 4, 25, 'Joaquin', 'castillon aran', 'c/mayor', 30, '', NULL, '2017-05-31 17:56:25', '2017-05-31 17:56:25'),
(97, 1, 1, 4, 25, 'pilar', 'miranda bajen', 'c/mayor', 30, '', NULL, '2017-05-31 17:57:01', '2017-05-31 17:57:01'),
(98, 1, 1, 4, 25, 'victor y sergio', 'castillon miranda', 'c/mayor', 30, '', NULL, '2017-05-31 17:57:28', '2017-05-31 17:57:28'),
(99, 1, 1, 4, 26, 'José alfonso', 'cregenzan zarroca', 'c/mayor', 33, '', NULL, '2017-05-31 17:58:32', '2017-05-31 17:58:32'),
(100, 1, 1, 4, 26, 'Ana Mª Trinidad', 'sanz ledesma', 'c/mayor', 33, '', NULL, '2017-05-31 17:59:03', '2017-05-31 17:59:03'),
(101, 1, 1, 4, 26, 'pilar, jorge y josé miguel', 'cregenzan sanz', 'c/mayor', 33, '', NULL, '2017-05-31 18:00:27', '2017-05-31 18:00:27'),
(102, 1, 1, 4, 26, 'candida', 'sancho amorós', 'c/mayor', 33, '', NULL, '2017-05-31 18:00:53', '2017-05-31 18:00:53'),
(103, 1, 1, 4, 27, 'purificación', 'comino ayala', 'c/mayor', 28, '', NULL, '2017-05-31 18:01:26', '2017-05-31 18:01:26'),
(104, 1, 1, 4, 27, 'José', 'Almunia castillón', 'c/mayor', 28, '', NULL, '2017-05-31 18:01:54', '2017-05-31 18:01:54'),
(105, 1, 1, 4, 28, 'electricidad', 'electricidad penella', 'c/mayor', 24, '', NULL, '2017-05-31 18:02:16', '2017-05-31 18:02:16'),
(106, 1, 1, 4, 28, 'lourdes y aurelio', 'Penella García', 'c/mayor', 24, '', NULL, '2017-05-31 18:02:43', '2017-05-31 18:02:43'),
(108, 1, 1, 4, 28, 'julian', 'Penella dieste', 'c/mayor', 24, '', NULL, '2017-05-31 18:03:26', '2017-05-31 18:03:26'),
(109, 1, 1, 4, 28, 'Mª Jesús y Conchita', 'garcia castillón', 'c/mayor', 24, '', '0.00', '2017-05-31 18:03:59', '2017-06-03 09:26:20'),
(110, 1, 1, 4, 28, 'david y raúl', 'gimeno penella', 'c/mayor', 24, '', NULL, '2017-05-31 18:04:24', '2017-05-31 18:04:24'),
(111, 1, 1, 4, 28, 'asociación', 'asociacion de mujeres veracruz', 'c/mayor', 24, '', NULL, '2017-05-31 18:05:09', '2017-05-31 18:05:09'),
(112, 1, 1, 4, 29, 'jesús', 'Blas gaspar', 'c/mayor', 25, 'Casa verde', NULL, '2017-06-01 16:28:00', '2017-06-01 16:28:00'),
(113, 1, 1, 4, 29, 'Felisa', 'Fdez Gil', 'c/mayor', 25, 'Casa verde', NULL, '2017-06-01 16:28:40', '2017-06-01 16:28:40'),
(114, 1, 1, 4, 29, 'victor', 'blas fdez', 'c/mayor', 25, 'Casa verde', NULL, '2017-06-01 16:29:12', '2017-06-01 16:29:12'),
(115, 1, 1, 4, 30, 'hotel', 'hotel concilium', 'c/medio', 20, 'Devolver', NULL, '2017-06-01 16:29:48', '2017-06-01 16:29:48'),
(116, 1, 1, 4, 30, 'antonio y laura', 'fajarnes monter', 'c/medio', 20, 'Devolver', NULL, '2017-06-01 16:31:03', '2017-06-01 16:31:03'),
(117, 1, 1, 4, 31, 'pilar y pascual', 'zarroca mur', 'c/medio', 0, 'Se deja por calle mayor', NULL, '2017-06-01 16:34:58', '2017-06-01 16:34:58'),
(118, 1, 1, 4, 31, 'marcial y rafael', 'mora diaz', 'c/medio', 0, 'Se deja por calle mayor', NULL, '2017-06-01 16:35:25', '2017-06-01 16:35:25'),
(119, 1, 1, 4, 31, 'cosme', 'Encuentra ballabriga', 'c/medio', 0, 'Se deja por calle mayor', NULL, '2017-06-01 16:35:58', '2017-06-01 16:35:58'),
(120, 1, 1, 4, 31, 'Mª Pilar y Rosario', 'Encuentra zarroca', 'c/medio', 0, 'Se deja por calle mayor', '0.00', '2017-06-01 16:36:38', '2017-06-01 16:37:34'),
(121, 1, 1, 4, 31, 'Desiderio y Vicente', 'Espierrez zarroca', 'c/medio', 0, 'Dejar en Escuelas 2', NULL, '2017-06-01 16:39:28', '2017-06-01 16:39:28'),
(122, 1, 1, 4, 32, 'Olga Mireia', 'Edo larriba', 'c/mayor', 29, 'Si no están dejar certificados en Monzón', NULL, '2017-06-01 16:41:06', '2017-06-01 16:41:06'),
(123, 1, 1, 4, 32, 'César', 'garcés romero', 'c/mayor', 29, 'Si no están dejar certificados en Monzón', NULL, '2017-06-01 16:41:40', '2017-06-01 16:41:40'),
(124, 1, 1, 4, 32, 'David', 'gonzalez edo', 'c/mayor', 29, 'Si no están dejar certificados en Monzón', NULL, '2017-06-01 16:42:41', '2017-06-01 16:42:41'),
(125, 1, 1, 4, 33, 'ramón', 'miranda arroyos', 'c/mayor', 16, 'Si no están dejar certificados en piscinas', NULL, '2017-06-01 16:43:34', '2017-06-01 16:43:34'),
(126, 1, 1, 4, 33, 'Mª Lucrecia', 'martínez clemente', 'c/mayor', 16, 'Si no están dejar certificados en piscinas', NULL, '2017-06-01 16:44:06', '2017-06-01 16:44:06'),
(127, 1, 1, 4, 33, 'sergio y esther', 'miranda martínez', 'c/mayor', 16, 'Si no están dejar certificados en piscinas', NULL, '2017-06-01 16:45:27', '2017-06-01 16:45:27'),
(128, 1, 1, 4, 33, 'asociación', 'asociaciones menos la caza', 'c/mayor', 16, '', NULL, '2017-06-01 16:45:52', '2017-06-01 16:45:52'),
(129, 1, 1, 4, 33, 'mercedes ', 'arroyos palacio', 'c/mayor', 16, 'Si no están dejar certificados en piscinas', NULL, '2017-06-01 16:46:34', '2017-06-01 16:46:34'),
(130, 1, 1, 4, 33, 'emilio', 'pasías corillas', 'c/mayor', 16, 'Si no están dejar certificados en piscinas', NULL, '2017-06-01 16:46:59', '2017-06-01 16:46:59'),
(131, 1, 1, 4, 33, 'Mª Dolores', 'nadal foradada', 'c/mayor', 16, '', NULL, '2017-06-01 16:47:33', '2017-06-01 16:47:33'),
(132, 1, 1, 4, 33, 'José', 'latre murillo', 'c/mayor', 16, 'Si no están dejar certificados en piscinas', NULL, '2017-06-01 16:48:41', '2017-06-01 16:48:41'),
(133, 1, 1, 4, 34, 'manuel', 'Encuentra roy', 'c/mayor', 19, '', NULL, '2017-06-01 16:49:25', '2017-06-01 16:49:25'),
(134, 1, 1, 4, 35, 'Ana Mª', 'roger bergua', 'c/mayor', 17, '', NULL, '2017-06-01 16:49:57', '2017-06-01 16:49:57'),
(135, 1, 1, 4, 36, 'ramón', 'pasías cortillas', 'c/medio', 8, '', NULL, '2017-06-01 16:50:42', '2017-06-01 16:50:42'),
(136, 1, 1, 4, 36, 'cadelaria', 'ferrer peruga', 'c/medio', 8, '', NULL, '2017-06-01 16:51:16', '2017-06-01 16:51:16'),
(137, 1, 1, 4, 36, 'rosa Mª', 'pasías ferrer', 'c/medio', 8, '', NULL, '2017-06-01 16:51:56', '2017-06-01 16:51:56'),
(138, 1, 1, 4, 36, 'noelia', 'roger pasoas', 'c/medio', 8, '', NULL, '2017-06-01 16:52:40', '2017-06-01 16:52:40'),
(139, 1, 1, 4, 36, 'Pedro', 'roger bergua', 'c/medio', 8, '', NULL, '2017-06-01 16:53:15', '2017-06-01 16:53:15'),
(140, 1, 1, 4, 36, 'marc', 'miranda martínez', 'c/medio', 8, '', NULL, '2017-06-01 16:53:38', '2017-06-01 16:53:38'),
(141, 1, 1, 4, 37, 'Joaquin', 'bergua ferrer', 'c/medio', 10, '', NULL, '2017-06-01 16:54:17', '2017-06-01 16:54:17'),
(142, 1, 1, 4, 37, 'antonio', 'bergua trems', 'c/medio', 10, '', NULL, '2017-06-01 16:54:44', '2017-06-01 16:54:44'),
(143, 1, 1, 4, 38, 'Mª Pilar', 'Inflan torres', 'c/medio', 3, 'buzón marrón iz', NULL, '2017-06-01 16:56:05', '2017-06-01 16:56:05'),
(144, 1, 1, 4, 38, 'valentín', 'arroyos palacio', 'c/medio', 3, 'buzón marrón iz', NULL, '2017-06-01 16:56:43', '2017-06-01 16:56:43'),
(145, 1, 1, 4, 39, 'manuel', 'villalba garcía', 'Oscura', 15, '', NULL, '2017-06-01 16:57:18', '2017-06-01 16:57:18'),
(146, 1, 1, 4, 39, 'rosario', 'bermudez castillo', 'Oscura', 15, '', NULL, '2017-06-01 16:57:47', '2017-06-01 16:57:47'),
(147, 1, 1, 4, 39, 'alicatados', 'alicatados pravi', 'Oscura', 15, '', NULL, '2017-06-01 16:58:10', '2017-06-01 16:58:10'),
(148, 1, 1, 4, 40, 'adriana', 'almunia roy', 'Oscura', 11, '', '0.00', '2017-06-01 16:58:34', '2017-06-01 16:59:33'),
(149, 1, 1, 4, 40, 'jesus', 'Peruga Almunia', 'Oscura', 11, '', NULL, '2017-06-01 17:00:17', '2017-06-01 17:00:17'),
(150, 1, 1, 4, 41, 'ramón', 'salvador linares', 'Oscura', 7, '', NULL, '2017-06-01 17:00:45', '2017-06-01 17:00:45'),
(151, 1, 1, 4, 42, 'felix', 'zarroca arán', 'Oscura', 4, '', NULL, '2017-06-01 17:01:45', '2017-06-01 17:01:45'),
(152, 1, 1, 4, 42, 'felicitas', 'alberola catalán', 'Oscura', 4, '', NULL, '2017-06-01 17:02:12', '2017-06-01 17:02:12'),
(153, 1, 1, 4, 42, 'José luis ', 'zarroca alberola', 'Oscura', 4, '', NULL, '2017-06-01 17:02:58', '2017-06-01 17:02:58'),
(154, 1, 1, 4, 42, 'teresita', 'zarroca', 'Oscura', 4, '', NULL, '2017-06-01 17:03:22', '2017-06-01 17:03:22'),
(155, 1, 1, 4, 42, 'ruben', 'mur arán', 'Oscura', 4, '', NULL, '2017-06-01 17:04:30', '2017-06-01 17:04:30'),
(156, 1, 1, 4, 42, 'felix', 'gonzalez llorente', 'Oscura', 4, '', NULL, '2017-06-01 17:04:58', '2017-06-01 17:04:58'),
(157, 1, 1, 4, 42, 'amadeo', 'lechoso', 'Oscura', 4, '', NULL, '2017-06-01 17:05:17', '2017-06-01 17:05:17'),
(158, 1, 1, 4, 42, 'parroqui', 'parroquia', 'Oscura', 4, '', NULL, '2017-06-01 17:05:54', '2017-06-01 17:05:54'),
(159, 1, 1, 4, 43, 'trujillo', 'trujillo', 'Oscura', 7, '', NULL, '2017-06-01 17:06:27', '2017-06-01 17:06:27'),
(160, 1, 1, 4, 44, 'josefa', 'torrens otín', 'Oscura', 5, '', NULL, '2017-06-01 17:06:55', '2017-06-01 17:06:55'),
(161, 1, 1, 4, 44, 'José', 'miranda bajen', 'Oscura', 5, '', NULL, '2017-06-01 17:07:18', '2017-06-01 17:07:18'),
(162, 1, 1, 4, 45, 'antonio', 'miranda romper', 'c/mayor', 1, '', NULL, '2017-06-01 17:07:58', '2017-06-01 17:07:58'),
(163, 1, 1, 4, 45, 'juana', 'magaña', 'c/mayor', 1, '', NULL, '2017-06-01 17:09:06', '2017-06-01 17:09:06'),
(164, 1, 1, 4, 45, 'juan antonio, almudena, susana', 'miranda magaña', 'c/mayor', 1, '', NULL, '2017-06-01 17:09:48', '2017-06-01 17:09:48'),
(165, 1, 1, 4, 45, 'ganadera', 'ganadera miranda', 'c/mayor', 1, '', NULL, '2017-06-01 17:10:12', '2017-06-01 17:10:12'),
(166, 1, 1, 4, 45, 'José', 'carrasco cabello', 'c/mayor', 1, '', NULL, '2017-06-01 17:10:36', '2017-06-01 17:10:36'),
(167, 1, 1, 4, 46, 'jesús', 'almunia pons', 'camino de monzón', 2, '', NULL, '2017-06-01 17:11:40', '2017-06-01 17:11:40'),
(168, 1, 1, 4, 46, 'Ana Mª', 'cregenzan pons', 'camino de monzón', 2, '', NULL, '2017-06-01 17:12:25', '2017-06-01 17:12:25'),
(169, 1, 1, 4, 46, 'julian', 'almunia cregenzan', 'camino de monzón', 2, '', NULL, '2017-06-01 17:13:05', '2017-06-01 17:13:05'),
(170, 1, 1, 4, 47, 'Fco', 'nerín marco', 'camino de monzón', 9, 'tejado rojo | buzón blanco', '0.00', '2017-06-01 17:13:32', '2017-06-03 09:40:37'),
(171, 1, 1, 4, 47, 'desire', 'fonz romero', 'camino de monzón', 9, 'tejado rojo | buzón blanco', '0.00', '2017-06-01 17:14:36', '2017-06-03 09:39:35'),
(172, 1, 1, 4, 47, 'francho', 'nerín fonz', 'camino de monzón', 9, 'tejado rojo | buzón blanco', NULL, '2017-06-01 17:16:56', '2017-06-01 17:16:56'),
(173, 1, 1, 4, 48, 'Maria Ángeles', 'Encuentra Lacambra', 'Escuelas', 2, '', NULL, '2017-06-03 09:42:30', '2017-06-03 09:42:30'),
(174, 1, 1, 4, 48, 'José Ángel y Oscar', 'Castro Encuentra', 'Escuelas', 2, '', NULL, '2017-06-03 09:43:24', '2017-06-03 09:43:24'),
(175, 1, 1, 4, 48, 'José', 'Castro Rodriguez', 'Escuelas', 2, '', NULL, '2017-06-03 09:43:50', '2017-06-03 09:43:50'),
(176, 1, 1, 4, 48, 'José', 'Nasarre Almunia', 'Escuelas', 2, '', NULL, '2017-06-03 09:44:20', '2017-06-03 09:44:20'),
(177, 1, 1, 4, 48, 'Ángela ', 'Lacambra Zarroca', 'Escuelas', 2, '', NULL, '2017-06-03 09:44:54', '2017-06-03 09:44:54'),
(178, 1, 1, 4, 48, 'Magdalena', 'Espierrez zarroca', 'Escuelas', 2, '', NULL, '2017-06-03 09:45:21', '2017-06-03 09:45:21'),
(179, 1, 1, 4, 48, 'antonio', 'Peirón Fuendevilla', 'Escuelas', 2, '', NULL, '2017-06-03 09:45:55', '2017-06-03 09:45:55'),
(180, 1, 1, 4, 48, 'Vicente', 'Espierrez zarroca', 'Escuelas', 2, '', NULL, '2017-06-03 09:46:57', '2017-06-03 09:46:57'),
(181, 1, 1, 4, 49, 'Gumersindo', 'Forníes Martinez', 'Escuelas', 3, '', NULL, '2017-06-03 09:47:55', '2017-06-03 09:47:55'),
(182, 1, 1, 4, 49, 'Isabel', 'Santiago Pintado', 'Escuelas', 3, '', NULL, '2017-06-03 09:48:22', '2017-06-03 09:48:22'),
(183, 1, 1, 4, 49, 'Joaquin', 'Forníes Martinez', 'Escuelas', 3, '', NULL, '2017-06-03 09:48:53', '2017-06-03 09:48:53'),
(184, 1, 1, 4, 50, 'Alfredo', 'Casanovas Radigales', 'c/Monzón', 0, '', NULL, '2017-06-03 09:49:37', '2017-06-03 09:49:37'),
(185, 1, 1, 4, 50, 'Maria', 'miranda bajen', 'c/Monzón', 0, '', NULL, '2017-06-03 09:50:37', '2017-06-03 09:50:37'),
(186, 1, 1, 4, 50, 'Montserrat', 'Casanovas Miranda', 'c/Monzón', 0, '', NULL, '2017-06-03 09:51:12', '2017-06-03 09:51:12'),
(187, 1, 1, 4, 51, 'Colegio', 'CRA Arco Iris', 'c/Monzón', 0, '', NULL, '2017-06-03 09:51:41', '2017-06-03 09:51:41'),
(188, 1, 1, 4, 52, 'José', 'Purroy', 'c/Monzón', 9, '', NULL, '2017-06-03 09:52:07', '2017-06-03 09:52:07'),
(189, 1, 1, 4, 51, 'javier', 'Purroy Larrull', 'c/Monzón ', 9, '', NULL, '2017-06-03 09:52:48', '2017-06-03 09:52:48'),
(190, 1, 1, 4, 52, 'José Luis', 'Salinas Cebollada', 'c/Monzón', 9, '', NULL, '2017-06-03 09:53:42', '2017-06-03 09:53:42'),
(191, 1, 1, 4, 52, 'Maria Ángeles', 'Reinoso Moreno', 'c/Monzón', 9, '', NULL, '2017-06-03 09:55:21', '2017-06-03 09:55:21'),
(192, 1, 1, 4, 52, 'Reinoso', 'Reinoso Salinas S.C', 'c/Monzón', 9, '', NULL, '2017-06-03 09:55:46', '2017-06-03 09:55:46'),
(193, 1, 1, 4, 53, 'Florencio', 'Arrieta Bandrés', 'Santa Ana', 3, '', NULL, '2017-06-03 09:59:14', '2017-06-03 09:59:14'),
(194, 1, 1, 4, 53, 'Amparo', 'Abad Lostal', 'Santa Ana', 3, '', NULL, '2017-06-03 10:01:48', '2017-06-03 10:01:48'),
(195, 1, 1, 4, 54, 'jesús', 'Lazaro Bosqued', 'Santa Ana', 5, '', NULL, '2017-06-03 10:02:20', '2017-06-03 10:02:20'),
(196, 1, 1, 4, 54, 'Josefina', 'Sánchez Ruiz', 'Santa Ana', 5, '', NULL, '2017-06-03 10:03:32', '2017-06-03 10:03:32'),
(197, 1, 1, 4, 54, 'jesús javier', 'Lazaro Sánchez', 'Santa Ana', 5, '', NULL, '2017-06-03 10:04:05', '2017-06-03 10:04:05'),
(198, 1, 1, 4, 55, 'Sebastian', 'Cabrero Vidal', 'San Jorge', 6, '', NULL, '2017-06-03 10:04:40', '2017-06-03 10:04:40'),
(199, 1, 1, 4, 55, 'Eva Socorro', 'Baro Riu', 'San Jorge', 6, '', NULL, '2017-06-03 10:05:16', '2017-06-03 10:05:16'),
(200, 1, 1, 4, 55, 'Hostal', 'Hostal Cinca', 'San Jorge', 6, '', NULL, '2017-06-03 10:05:31', '2017-06-03 10:05:31'),
(201, 1, 1, 4, 56, 'Guillermo', 'Penella García', 'San Jorge', 6, '', NULL, '2017-06-03 10:06:11', '2017-06-03 10:06:11'),
(202, 1, 1, 4, 56, 'mercedes', 'Peralta Gari', 'San Jorge', 6, '', NULL, '2017-06-03 10:06:37', '2017-06-03 10:06:37'),
(203, 1, 1, 4, 56, 'Gonzalo y Maria', 'Penella Peralta', 'San Jorge', 4, '', NULL, '2017-06-03 10:07:47', '2017-06-03 10:07:47'),
(204, 1, 1, 4, 57, 'Vicente', 'Laplaza Arjol', 'San Jorge', 3, '', NULL, '2017-06-03 10:08:21', '2017-06-03 10:08:21'),
(205, 1, 1, 4, 57, 'Alicia', 'Arjol Navarro', 'San Jorge', 3, '', NULL, '2017-06-03 10:09:03', '2017-06-03 10:09:03'),
(206, 1, 1, 4, 57, 'emilio', 'Laplaza Bernard', 'San Jorge', 3, '', NULL, '2017-06-03 10:09:34', '2017-06-03 10:09:34'),
(207, 1, 1, 4, 58, 'Angel', 'Carbonel Usan', 'San Jorge', 5, '', NULL, '2017-06-03 10:10:13', '2017-06-03 10:10:13'),
(208, 1, 1, 4, 58, 'Concepción', 'Les Barrena', 'San Jorge', 5, '', NULL, '2017-06-03 10:11:38', '2017-06-03 10:11:38'),
(209, 1, 1, 4, 58, 'Mª Elena, Marta, Genma y Conchi', 'Carbonell Les', 'San Jorge', 5, '', NULL, '2017-06-03 10:12:20', '2017-06-03 10:12:20'),
(210, 1, 1, 4, 59, 'Juan Carlos', 'Penella Guillen', 'Ntra Sra La Alegría', 4, '', NULL, '2017-06-03 10:44:16', '2017-06-03 10:44:16'),
(211, 1, 1, 4, 59, 'Isabel', 'Ayllón Belló', 'Ntra Sra La Alegría', 4, '', NULL, '2017-06-03 10:44:44', '2017-06-03 10:44:44'),
(212, 1, 1, 4, 59, 'Fca', 'Belló Gonzalez', 'Ntra Sra La Alegría', 4, '', NULL, '2017-06-03 10:45:30', '2017-06-03 10:45:30'),
(213, 1, 1, 4, 59, 'José', 'Ayllón', 'Ntra Sra La Alegría', 4, '', NULL, '2017-06-03 10:46:22', '2017-06-03 10:46:22'),
(214, 1, 1, 4, 60, 'Serafín', 'Carabaotes Gil', 'Ntra Sra La Alegría', 6, '', NULL, '2017-06-03 10:46:49', '2017-06-03 10:46:49'),
(215, 1, 1, 4, 60, 'Josefa', 'Martinez García', 'Ntra Sra La Alegría', 6, '', NULL, '2017-06-03 10:47:14', '2017-06-03 10:47:14'),
(216, 1, 1, 4, 60, 'Candido y Valentín', 'Muñoz Garcés', 'Ntra Sra La Alegría', 6, '', NULL, '2017-06-03 10:47:58', '2017-06-03 10:47:58'),
(217, 1, 1, 4, 61, 'José M', 'Zarralanga Alayeto', 'Ntra Sra La Alegría', 3, '', NULL, '2017-06-03 10:48:42', '2017-06-03 10:48:42'),
(218, 1, 1, 4, 62, 'José Luis y Rosa Mª', 'Moreno Almaú', 'Ntra Sra La Alegría', 5, 'Si no están dejar certificados en Monzón', NULL, '2017-06-03 10:49:49', '2017-06-03 10:49:49'),
(219, 1, 1, 4, 62, 'Mª Carmen', 'Almaú Salas', 'Ntra Sra La Alegría', 5, 'Si no están dejar certificados en Monzón', NULL, '2017-06-03 10:50:25', '2017-06-03 10:50:25'),
(220, 1, 1, 4, 63, 'Tomás', 'Muñio Sarraseca', 'Joaquín Costa', 24, '', NULL, '2017-06-03 10:51:04', '2017-06-03 10:51:04'),
(221, 1, 1, 4, 63, 'Teresa', 'Sarraseca', 'Joaquín Costa', 24, '', NULL, '2017-06-03 10:51:50', '2017-06-03 10:51:50'),
(222, 1, 1, 4, 64, 'Noelia', 'Gisbert Colomé', 'Joaquín Costa', 22, '', NULL, '2017-06-03 10:52:58', '2017-06-03 10:52:58'),
(223, 1, 1, 4, 64, 'Juan José', 'LLena Moragues', 'Joaquín Costa', 22, '', NULL, '2017-06-03 10:53:28', '2017-06-03 10:53:28'),
(224, 1, 1, 4, 64, 'Nadia e Izan ', 'Llena Gisbert', 'Joaquín Costa', 22, '', NULL, '2017-06-03 10:54:13', '2017-06-03 10:54:13'),
(225, 1, 1, 4, 65, 'Federico', 'Gisbert Rulló', 'Joaquín Costa', 20, '', NULL, '2017-06-03 10:55:12', '2017-06-03 10:55:12'),
(226, 1, 1, 4, 65, 'Mª Dolores', 'Colomé Rullo', 'Joaquín Costa', 20, '', NULL, '2017-06-03 10:55:46', '2017-06-03 10:55:46'),
(227, 1, 1, 4, 65, 'Mª José, Judit, y Federico', 'Gisbert Colomé', 'Joaquín Costa', 20, '', NULL, '2017-06-03 10:56:32', '2017-06-03 10:56:32'),
(228, 1, 1, 4, 66, 'José', 'Laleona', 'Joaquín Costa', 18, 'Dejar en c/mayor 18 de Estiche', NULL, '2017-06-03 10:57:58', '2017-06-03 10:57:58'),
(229, 1, 1, 4, 66, 'Natalia', 'Cunas    ...', 'Joaquín Costa', 18, 'Si no están dejar certificados en Monzón', NULL, '2017-06-03 11:02:34', '2017-06-03 11:02:34'),
(230, 1, 1, 4, 66, 'Barbar', 'Mur ...   ', 'Joaquín Costa', 18, '', NULL, '2017-06-03 11:03:07', '2017-06-03 11:03:07'),
(231, 1, 1, 4, 67, 'José Luis', 'Jimenez Laborda', 'Joaquín Costa', 16, '', NULL, '2017-06-03 11:03:59', '2017-06-03 11:03:59'),
(232, 1, 1, 4, 67, 'Margarita', 'Villanova Visa', 'Joaquín Costa', 16, '', NULL, '2017-06-03 11:04:28', '2017-06-03 11:04:28'),
(233, 1, 1, 4, 67, 'Agroser', 'Agroser ', 'Joaquín Costa', 16, '', NULL, '2017-06-03 11:04:45', '2017-06-03 11:04:45'),
(234, 1, 1, 4, 68, 'Virgilio ', 'Zuñiga Martin', 'Joaquín Costa', 14, '', NULL, '2017-06-03 11:05:08', '2017-06-03 11:05:08'),
(235, 1, 1, 4, 68, 'Enriqueta', 'Castellano', 'Joaquín Costa', 14, 'Devolver', NULL, '2017-06-03 11:05:36', '2017-06-03 11:05:36'),
(236, 1, 1, 4, 69, 'Carlos', 'Fraile Villanova', 'Joaquín Costa', 12, '', NULL, '2017-06-03 11:06:25', '2017-06-03 11:06:25'),
(237, 1, 1, 4, 69, 'Mª Carmen', 'Buetas Buetas', 'Joaquín Costa', 12, '', NULL, '2017-06-03 11:06:46', '2017-06-03 11:06:46'),
(238, 1, 1, 4, 70, 'Alfonso y Paula', 'Hernández Bueno', 'Joaquín Costa', 10, '', NULL, '2017-06-03 11:08:18', '2017-06-03 11:08:18'),
(239, 1, 1, 4, 70, 'Alfonso', 'Hernández González', 'Joaquín Costa', 10, '', NULL, '2017-06-03 11:08:59', '2017-06-03 11:08:59'),
(240, 1, 1, 4, 70, 'Fina   .', 'Bueno Liesa', 'Joaquín Costa', 10, '', NULL, '2017-06-03 11:09:57', '2017-06-03 11:09:57'),
(241, 1, 1, 4, 71, 'javier', 'Palacin Campodarve', 'Joaquín Costa', 8, '', NULL, '2017-06-03 11:10:38', '2017-06-03 11:10:38'),
(242, 1, 1, 4, 72, 'Pedro', 'Fdez Labadie', 'Joaquín Costa', 6, '', NULL, '2017-06-03 11:11:24', '2017-06-03 11:11:24'),
(243, 1, 1, 4, 72, 'Inmaculada', 'Carrasquer Clusa', 'Joaquín Costa', 6, '', NULL, '2017-06-03 11:31:58', '2017-06-03 11:31:58'),
(244, 1, 1, 4, 72, 'Carlos y José Miguel', 'Fdez Carrasquer', 'Joaquín Costa', 6, '', NULL, '2017-06-03 11:32:33', '2017-06-03 11:32:33'),
(245, 1, 1, 4, 73, 'José Mª', 'Peruga Puy', 'Joaquín Costa', 4, '', NULL, '2017-06-03 11:33:08', '2017-06-03 11:33:08'),
(246, 1, 1, 4, 73, 'Natividad', 'Vigo Fumanal', 'Joaquín Costa', 4, '', NULL, '2017-06-03 11:33:28', '2017-06-03 11:33:28'),
(247, 1, 1, 4, 73, 'José Mª y Silvia', 'Peruga Vigo', 'Joaquín Costa', 4, '', NULL, '2017-06-03 11:35:00', '2017-06-03 11:35:00'),
(248, 1, 1, 4, 73, 'PERVI', 'PERVI   .', 'Joaquín Costa', 4, '', NULL, '2017-06-03 11:35:24', '2017-06-03 11:35:24'),
(249, 1, 1, 4, 73, 'Comunidad', 'Comunidad de Regantes de Conchel', 'Joaquín Costa', 4, '', NULL, '2017-06-03 11:35:54', '2017-06-03 11:35:54'),
(250, 1, 1, 4, 74, 'Mª Paz', 'Duaso Duerto', '', 0, 'Devolver', NULL, '2017-06-03 11:36:37', '2017-06-03 11:36:37'),
(251, 1, 1, 4, 74, 'Mª Teresa', 'Duerto Hdez', '', 0, 'Devolver', NULL, '2017-06-03 11:37:18', '2017-06-03 11:37:18'),
(252, 1, 1, 4, 74, 'jalfi', 'jalfi     .', '', 0, 'Devolver', NULL, '2017-06-03 11:37:53', '2017-06-03 11:37:53'),
(253, 1, 1, 4, 74, 'Sixto', 'Sieso Elduque', '', 0, 'Devolver', NULL, '2017-06-03 11:38:55', '2017-06-03 11:38:55'),
(254, 1, 1, 2, 1, 'Enrique', 'Cortillas Pena', 'carretera Selgua', 3, 'Primer chalet de la carretera', NULL, '2017-06-06 17:34:46', '2018-02-25 11:08:20'),
(255, 1, 1, 2, 1, 'Fernanda', 'Moraño Alvarez', 'carretera Selgua', 3, 'Primer chalet de la carretera', NULL, '2017-06-06 17:35:38', '2018-02-25 11:11:12'),
(256, 1, 1, 2, 1, 'Carlos, Fernando, Enrique y Laura', 'Cortillas Moraño', 'carretera Selgua', 3, 'Primer chalet de la carretera', NULL, '2017-06-06 17:36:22', '2018-02-25 11:10:16'),
(257, 1, 1, 2, 2, 'José Agustin', 'Manau Sancho', 'c/Nueva', 22, '', NULL, '2017-06-06 17:37:13', '2017-06-06 17:37:13'),
(258, 1, 1, 2, 2, 'Rosa', 'Penella Lerín', 'c/Nueva', 22, '', NULL, '2017-06-06 17:37:48', '2017-06-06 17:37:48'),
(259, 1, 1, 2, 2, 'Reinaldo, Miguel y Ana', 'Manau Penella', 'c/Nueva', 22, '', NULL, '2017-06-06 17:38:24', '2017-06-06 17:38:24'),
(260, 1, 1, 2, 2, 'José', 'Penella Peruga', 'c/Nueva', 22, '', NULL, '2017-06-06 17:39:01', '2017-06-06 17:39:01'),
(261, 1, 1, 2, 3, 'Roberto', 'Girón Toro', 'c/Nueva', 17, '', NULL, '2017-06-06 17:42:52', '2017-06-06 17:42:52'),
(262, 1, 1, 2, 3, 'Beatriz', 'Barber Bellostas', 'c/Nueva', 17, '', NULL, '2017-06-06 17:44:21', '2017-06-06 17:44:21'),
(263, 1, 1, 2, 3, 'Ayto', 'AYUNTAMIENTO', 'c/Nueva', 17, '', NULL, '2017-06-06 17:45:05', '2017-06-06 17:45:05'),
(264, 1, 1, 2, 4, 'Fernando', 'Espier', 'c/Nueva', 15, '', NULL, '2017-06-06 17:46:43', '2017-06-06 17:46:43'),
(265, 1, 1, 2, 5, 'Felipe', 'Lorda  ..', 'c/Nueva', 13, '', NULL, '2017-06-06 17:47:26', '2017-06-06 17:47:26'),
(266, 1, 1, 2, 5, 'Natalia', 'Peralta Ruiz', 'c/Nueva', 13, '', NULL, '2017-06-06 17:48:09', '2017-06-06 17:48:09'),
(267, 1, 1, 2, 6, 'Maria Ángeles', 'Mellado', 'c/Nueva', 11, '', NULL, '2017-06-06 17:48:58', '2017-06-06 17:48:58'),
(268, 1, 1, 2, 7, 'Oscar', 'Penella Torres', 'c/Nueva', 9, '', NULL, '2017-06-06 17:49:28', '2017-06-06 17:49:28'),
(269, 1, 1, 2, 7, 'Isabel', 'Pena Salinas', 'c/Nueva', 9, '', NULL, '2017-06-06 17:49:55', '2017-06-06 17:49:55'),
(270, 1, 1, 2, 8, 'Fernando', 'Ródenas García', 'Pequeña', 4, 'ERZ', NULL, '2017-06-06 17:51:04', '2017-06-06 17:51:04'),
(271, 1, 1, 2, 9, 'jesús', 'Berroy Peruga', 'Pequeña', 5, '', NULL, '2017-06-06 17:51:48', '2017-06-06 17:51:48'),
(272, 1, 1, 2, 9, 'Aurora', 'Ramos Toyas', 'Pequeña', 5, '', NULL, '2017-06-06 17:53:02', '2017-06-06 17:53:02'),
(273, 1, 1, 2, 9, 'jesús, javier, jaime ', 'Berroy Ramos', 'Pequeña', 5, '', NULL, '2017-06-06 17:53:49', '2017-06-06 17:53:49'),
(274, 1, 1, 2, 9, 'Eva Mª', 'Vidal Lora', 'Pequeña', 5, '', NULL, '2017-06-06 17:54:12', '2017-06-06 17:54:12'),
(275, 1, 1, 2, 9, 'Eva', 'Arnal de Miguel', 'Pequeña', 5, '', NULL, '2017-06-06 17:54:31', '2017-06-06 17:54:31'),
(276, 1, 1, 2, 9, 'lasarda', 'La Sarda', 'Pequeña', 5, '', NULL, '2017-06-06 17:55:11', '2018-03-12 18:17:12'),
(277, 1, 1, 2, 9, 'J   ..', 'Berroy Lasaus', 'Pequeña', 5, 'ERZ', NULL, '2017-06-06 17:57:20', '2017-06-06 17:57:20'),
(278, 1, 1, 2, 9, 'Jaime', 'Ramos Gistau', 'Pequeña', 5, 'ERZ', NULL, '2017-06-06 17:57:56', '2017-06-06 17:57:56'),
(279, 1, 1, 2, 10, 'Fca', 'Abizanda Viñuales', 'Pequeña', 6, '', '0.00', '2017-06-06 17:59:05', '2017-06-06 17:59:46'),
(280, 1, 1, 2, 10, 'Fco', 'Abizanda Moreno', 'Pequeña', 6, '', NULL, '2017-06-06 17:59:27', '2017-06-06 17:59:27'),
(281, 1, 1, 2, 11, 'amadeo', 'Liesa Novel', 'Pz del Torno', 7, '', NULL, '2017-06-06 18:00:39', '2017-06-06 18:00:39'),
(282, 1, 1, 2, 11, 'Pilar', 'Ezquerra Peruga', 'Pz del Torno', 7, '', NULL, '2017-06-06 18:01:02', '2017-06-06 18:01:02'),
(283, 1, 1, 2, 12, 'Juan Antonio', 'Pena Portoles', 'Pz del Torno', 9, '', NULL, '2017-06-06 18:01:40', '2017-06-06 18:01:40'),
(284, 1, 1, 2, 12, 'Mª Pilar y Manuel', 'Peralta Trems', 'Pz del Torno', 9, '', '0.00', '2017-06-06 18:34:52', '2017-06-06 18:36:22'),
(285, 1, 1, 2, 12, 'javier y Nuria', 'Pena Peralta', 'Pz del Torno', 9, '', NULL, '2017-06-06 18:35:44', '2017-06-06 18:35:44'),
(286, 1, 1, 2, 13, 'José Miguel', 'Cortillas López', 'Pz del Torno', 11, '', NULL, '2017-06-06 18:37:29', '2017-06-06 18:37:29'),
(287, 1, 1, 2, 13, 'Cristina', 'Portoles Charlez', 'Pz del Torno', 11, '', NULL, '2017-06-06 18:38:04', '2017-06-06 18:38:04'),
(288, 1, 1, 2, 13, 'Marco', 'Cortillas Portoles', 'Pz del Torno', 11, '', NULL, '2017-06-06 18:38:35', '2017-06-06 18:38:35'),
(289, 1, 1, 2, 14, 'Club', 'Club Social', 'Pz del Torno', 8, '', NULL, '2017-06-06 18:38:59', '2017-06-06 18:38:59'),
(290, 1, 1, 2, 15, 'Roberto', 'Puyol Novel', 'Pequeña', 12, '', NULL, '2017-06-06 18:39:42', '2017-06-06 18:39:42'),
(291, 1, 1, 2, 15, 'Amalia', 'Peralta Laspalas', 'Pequeña', 12, '', NULL, '2017-06-06 18:40:20', '2017-06-06 18:40:20'),
(292, 1, 1, 2, 15, 'Mª Pilar', 'Puyol Peralta', 'Pequeña', 12, '', NULL, '2017-06-06 18:40:49', '2017-06-06 18:40:49'),
(293, 1, 1, 2, 16, 'Amado', 'Pena Portoles', 'Pequeña', 13, '', NULL, '2017-06-06 18:41:18', '2017-06-06 18:41:18'),
(294, 1, 1, 2, 16, 'Mª Pilar', 'Salinas Mur', 'Pequeña', 13, '', NULL, '2017-06-06 18:42:01', '2017-06-06 18:42:01'),
(295, 1, 1, 2, 16, 'Matilde', 'Portoles Trems', 'Pequeña', 13, '', NULL, '2017-06-06 18:42:38', '2017-06-06 18:42:38'),
(296, 1, 1, 2, 17, 'Fco', 'Cañadas Caballero', 'Pequeña', 14, '', NULL, '2017-06-06 18:43:02', '2017-06-06 18:43:02'),
(297, 1, 1, 2, 17, 'Manuela', 'Olmedo Melero', 'Pequeña', 14, '', NULL, '2017-06-06 18:43:37', '2017-06-06 18:43:37'),
(298, 1, 1, 2, 17, 'Enrique', 'Fortuny Olmedo', 'Pequeña', 14, '', NULL, '2017-06-06 18:44:23', '2017-06-06 18:44:23'),
(318, 1, 1, 2, 18, 'Teodoro Octavio', 'Liesa Novel', 'Pequeña', 15, '', NULL, '2017-06-07 17:35:36', '2017-06-07 17:35:36'),
(319, 1, 1, 2, 18, 'Ana', 'Beroy Beroy', 'Pequeña', 15, '', NULL, '2017-06-07 17:36:01', '2017-06-07 17:36:01'),
(320, 1, 1, 2, 18, 'Ana Mª', 'Liesa Beroy', 'Pequeña', 15, 'Dejar en Pequeña 26', NULL, '2017-06-07 17:36:29', '2017-06-07 17:36:29'),
(321, 1, 1, 2, 18, 'Miriam y Ana Mª', 'Serrano Liesa', 'Pequeña', 15, '', NULL, '2017-06-07 17:36:59', '2017-06-07 17:36:59'),
(322, 1, 1, 2, 19, 'Alfredo', 'gonzalez Peruga', 'Pequeña', 18, 'Dejar lo del 20, Todo a pequeña 26, está en residencia', NULL, '2017-06-07 17:37:47', '2018-02-26 18:57:40'),
(323, 1, 1, 2, 19, 'javier', 'gonzalez Azlor', 'Pequeña', 18, 'Dejar lo del 20', NULL, '2017-06-07 17:38:14', '2017-06-07 17:38:14'),
(324, 1, 1, 2, 19, 'Clara', 'Azlor Bergua', 'Pequeña', 18, 'Dejar lo del 20', NULL, '2017-06-07 17:38:42', '2017-06-07 17:38:42'),
(325, 1, 1, 2, 20, 'antonio', 'Beroy Beroy', 'Pequeña', 22, 'Dejar en Pequeña 26', NULL, '2017-06-07 17:39:22', '2017-06-07 17:39:22'),
(326, 1, 1, 2, 20, 'Victoria', 'Viles Heras', 'Pequeña', 22, '', NULL, '2017-06-07 17:39:56', '2017-06-07 17:39:56'),
(327, 1, 1, 2, 21, 'Ibrahima', 'Barry  ..', 'Pequeña', 24, '', NULL, '2017-06-07 17:41:41', '2017-06-07 17:41:41'),
(328, 1, 1, 2, 22, 'Teresa', 'Forníes Ballabriga', 'Pequeña', 24, 'Dejar en Pequeña 26', NULL, '2017-06-07 17:42:42', '2017-06-07 17:42:42'),
(329, 1, 1, 2, 22, 'José', 'Paniello Laspalas', 'Pequeña', 24, 'Dejar en Pequeña 26', NULL, '2017-06-07 17:43:05', '2017-06-07 17:43:05'),
(330, 1, 1, 2, 22, 'Anita', 'Forníes', 'Pequeña', 24, 'Dejar en Pequeña 26', NULL, '2017-06-07 17:43:27', '2017-06-07 17:43:27'),
(331, 1, 1, 2, 22, 'Alejandro', 'Mallen Fornies', 'Pequeña', 24, 'Dejar en Pequeña 26', NULL, '2017-06-07 17:43:52', '2017-06-07 17:43:52'),
(332, 1, 1, 2, 22, 'José Antonio', 'Forníes Llusia', 'Pequeña', 24, 'Dejar en Pequeña 26', NULL, '2017-06-07 17:44:23', '2017-06-07 17:44:23'),
(333, 1, 1, 2, 23, 'antonio', 'Barón Cosculluela', 'Pequeña', 26, '', NULL, '2017-06-07 17:45:03', '2017-06-07 17:45:03'),
(334, 1, 1, 2, 23, 'Mª Carmen', 'Ballabriga Buisan', 'Pequeña', 26, '', NULL, '2017-06-07 17:45:34', '2017-06-07 17:45:34'),
(335, 1, 1, 2, 23, 'iglesia', 'iglesia', 'Pequeña', 26, '', NULL, '2017-06-07 17:45:49', '2017-06-07 17:45:49'),
(336, 1, 1, 2, 23, 'Daniel', 'Barón Ballabriga', 'Pequeña', 26, '', NULL, '2017-06-07 17:46:10', '2017-06-07 17:46:10'),
(337, 1, 1, 2, 24, 'Montse', 'Peralta', 'Pequeña', 28, '', NULL, '2017-06-07 17:46:40', '2017-06-07 17:46:40'),
(338, 1, 1, 2, 24, 'Jorge José', 'Lorenzo', 'Pequeña', 28, '', NULL, '2017-06-07 17:46:59', '2017-06-07 17:46:59'),
(339, 1, 1, 2, 25, 'Gemma', 'Laspalas Urruchi', 'Pequeña', 30, '', NULL, '2017-06-07 17:47:37', '2017-06-07 17:47:37'),
(340, 1, 1, 2, 25, 'Ricardo', 'Manau Penella', 'Pequeña', 30, '', NULL, '2017-06-07 17:48:00', '2017-06-07 17:48:00'),
(341, 1, 1, 2, 26, 'Agueda', 'Peruga Subías', 'Pequeña', 32, '', NULL, '2017-06-07 17:48:29', '2017-06-07 17:48:29'),
(342, 1, 1, 2, 26, 'Montse', 'Peralta Subías', 'Pequeña', 32, '', NULL, '2017-06-07 17:48:56', '2017-06-07 17:48:56'),
(343, 1, 1, 2, 27, 'José Mª', 'Ezquerra Peruga', 'Pequeña', 34, '', NULL, '2017-06-07 17:49:38', '2017-06-07 17:49:38'),
(344, 1, 1, 2, 27, 'Montserrat', 'Beroy Beroy', 'Pequeña', 34, '', NULL, '2017-06-07 17:49:56', '2017-06-07 17:49:56'),
(345, 1, 1, 2, 27, 'José Mª', 'Ezquerra Beroy', 'Pequeña', 34, '', NULL, '2017-06-07 17:50:33', '2017-06-07 17:50:33'),
(346, 1, 1, 2, 28, 'José', 'Calvo Gonzalez', 'Pequeña', 36, '', NULL, '2017-06-07 17:51:06', '2017-06-07 17:51:06'),
(347, 1, 1, 2, 28, 'María', 'Barrios Marmelo', 'Pequeña', 36, '', NULL, '2017-06-07 17:51:44', '2017-06-07 17:51:44'),
(348, 1, 1, 2, 29, 'Paquita', 'Peruga Ayudan', 'Pequeña', 40, '', NULL, '2017-06-07 17:52:22', '2017-06-07 17:52:22'),
(349, 1, 1, 2, 29, 'José Ramón', 'Burgos Peruga', 'Pequeña', 40, '', NULL, '2017-06-07 17:52:51', '2017-06-07 17:52:51'),
(350, 1, 1, 2, 30, 'Juan', 'Nunez Velez', 'Pequeña', 42, 'Devolver', NULL, '2017-06-07 17:53:28', '2017-06-07 17:53:28'),
(351, 1, 1, 2, 31, 'Pilar', 'Zuriguel Pardo', 'Pequeña', 46, 'Dejar en Mayor 6', NULL, '2017-06-07 17:54:27', '2017-06-07 17:54:27'),
(352, 1, 1, 2, 31, 'Gabriel', 'Agullana', 'Pequeña', 46, '', NULL, '2017-06-07 17:54:54', '2017-06-07 17:54:54'),
(353, 1, 1, 2, 31, 'Ricardo', 'Alonso Zuriguel', 'Pequeña', 46, '', NULL, '2017-06-07 17:55:36', '2017-06-07 17:55:36'),
(354, 1, 1, 2, 31, 'Nati', 'Pardo Gistau', 'pz la iglesia', 46, 'ERZ', NULL, '2017-06-07 17:56:04', '2017-06-07 17:56:04'),
(355, 1, 1, 2, 32, 'Fernando', 'Peruga Gota', 'Pequeña', 48, '', NULL, '2017-06-07 17:56:44', '2017-06-07 17:56:44'),
(356, 1, 1, 2, 32, 'M  ..', 'Vispe Zuriguel', 'Pequeña', 48, '', NULL, '2017-06-07 17:57:31', '2017-06-07 17:57:31'),
(357, 1, 1, 2, 32, 'Esther', 'Peruga Vispe', 'Pequeña', 48, '', NULL, '2017-06-07 17:58:12', '2017-06-07 17:58:12'),
(358, 1, 1, 2, 32, 'Rafaela', 'Zuriguel Bara', 'Pequeña', 48, '', NULL, '2017-06-07 17:58:42', '2017-06-07 17:58:42'),
(359, 1, 1, 2, 32, 'Sociedad de caza', 'Sociedad de caza', 'Pequeña', 48, '', NULL, '2017-06-07 17:59:04', '2017-06-07 17:59:04'),
(360, 1, 1, 2, 33, 'jesús', 'Peruga puyal', 'Pequeña', 50, '', NULL, '2017-06-07 17:59:53', '2017-06-07 17:59:53'),
(361, 1, 1, 2, 33, 'Pilar', 'Barba Arroyos', 'Pequeña', 50, '', NULL, '2017-06-07 18:00:20', '2017-06-07 18:00:20'),
(362, 1, 1, 2, 33, 'Ganacho', 'Ganacho', 'Pequeña', 50, '', NULL, '2017-06-07 18:00:34', '2017-06-07 18:00:34'),
(363, 1, 1, 2, 34, 'José Mª', 'Peralta Zarroca', 'c/mayor', 2, '', NULL, '2017-06-07 18:03:04', '2017-06-07 18:03:04'),
(364, 1, 1, 2, 34, 'Asunción', 'Gracia Romero', 'c/mayor', 2, '', NULL, '2017-06-07 18:03:25', '2017-06-07 18:03:25'),
(365, 1, 1, 2, 35, 'Olegario', 'Lerín Laspalas', 'c/mayor', 10, '', NULL, '2017-06-07 18:03:54', '2017-06-07 18:03:54'),
(366, 1, 1, 2, 35, 'Cristina', 'Tutusaus Arderiu', 'c/mayor', 10, '', NULL, '2017-06-07 18:04:26', '2017-06-07 18:04:26'),
(367, 1, 1, 2, 35, 'Martín, Celia y Ruth', 'Lerín Tutusaus', 'c/mayor', 10, '', NULL, '2017-06-07 18:05:14', '2017-06-07 18:05:14'),
(368, 1, 1, 2, 35, 'lerintutu', 'lerintutu', 'c/mayor', 10, '', NULL, '2017-06-07 18:05:37', '2017-06-07 18:05:37'),
(369, 1, 1, 2, 35, 'Miguel', 'Pena Molina', 'c/mayor', 10, 'ERZ', NULL, '2017-06-07 18:06:08', '2017-06-07 18:06:08'),
(370, 1, 1, 2, 36, 'antonio', 'Casanovas casanovas', 'c/mayor', 5, 'Zócalo de Piedra iz', NULL, '2017-06-07 18:06:57', '2017-06-07 18:06:57'),
(371, 1, 1, 2, 37, 'Jorge José', 'Lorenzo', 'c/mayor', 12, 'Dejar en Pequeña 28 menos luz', NULL, '2017-06-07 18:08:10', '2017-06-07 18:08:10'),
(373, 1, 1, 2, 38, 'Ernesto', 'Liesa Saludas', 'c/mayor', 16, '', NULL, '2017-06-07 18:09:12', '2017-06-07 18:09:12'),
(374, 1, 1, 2, 38, 'Gemma', 'Burrel Souto', 'c/mayor', 16, '', NULL, '2017-06-07 18:09:32', '2017-06-07 18:09:32'),
(375, 1, 1, 2, 38, 'María', 'Saludas Palacín', 'c/mayor', 16, '', NULL, '2017-06-07 18:10:20', '2017-06-07 18:10:20'),
(376, 1, 1, 2, 38, 'Ernesto', 'Liesa Novel', 'c/mayor', 16, '', NULL, '2017-06-07 18:10:46', '2017-06-07 18:10:46'),
(377, 1, 1, 2, 39, 'José narciso', 'Laleona Esteban', 'c/mayor', 18, '', NULL, '2017-06-07 18:11:49', '2017-06-07 18:11:49'),
(378, 1, 1, 2, 39, 'Marisol', 'Lerín Laspalas', 'c/mayor', 18, 'Se ha ido de vacaciones', '0.00', '2017-06-07 18:12:40', '2017-07-19 06:27:34'),
(379, 1, 1, 2, 39, 'José', 'Laleona Blasco', 'c/mayor', 18, '', NULL, '2017-06-07 18:13:33', '2017-06-07 18:13:33'),
(380, 1, 1, 2, 39, 'Luis Gaspar', 'Alayeto Fdez', 'c/mayor', 18, '', NULL, '2017-06-07 18:13:57', '2017-06-07 18:13:57'),
(381, 1, 1, 2, 39, 'Daniel', 'Alayeto Bretones', 'c/mayor', 18, '', NULL, '2017-06-07 18:14:25', '2017-06-07 18:14:25'),
(382, 1, 1, 2, 40, 'Mª Luisa', 'Charlez Ralay', 'c/mayor', 7, 'Dejar en Pequeña 17', NULL, '2017-06-07 18:15:53', '2017-06-07 18:15:53'),
(383, 1, 1, 2, 40, 'Alberto', 'Portolés Charlez', 'c/mayor', 7, '', NULL, '2017-06-07 18:16:23', '2017-06-07 18:16:23'),
(384, 1, 1, 2, 40, 'Alberto', 'Portolés Peralta', 'c/mayor', 7, '', NULL, '2017-06-07 18:16:57', '2017-06-07 18:16:57'),
(385, 1, 1, 2, 40, 'Juan José', 'Cortillas Lasaus', 'c/mayor', 7, '', NULL, '2017-06-07 18:18:23', '2017-06-07 18:18:23'),
(386, 1, 1, 2, 40, 'Miguel', 'Cortillas Nadal', 'c/mayor', 7, '', NULL, '2017-06-07 18:18:49', '2017-06-07 18:18:49'),
(387, 1, 1, 2, 41, 'Antonio Luis', 'Peralta Laspalas', 'c/mayor', 9, '', NULL, '2017-06-10 11:18:32', '2017-06-10 11:18:32'),
(388, 1, 1, 2, 41, 'Manuela', 'Ruiz Plou', 'c/mayor', 9, '', NULL, '2017-06-10 11:18:57', '2017-06-10 11:18:57'),
(389, 1, 1, 2, 41, 'Daniel y Natalia', 'Peralta Ruiz', 'c/mayor', 9, '', NULL, '2017-06-10 11:19:45', '2017-06-10 11:19:45'),
(390, 1, 1, 2, 41, 'asociación', 'Asociación de Vecinos', 'Plaza Torno', 11, '', NULL, '2017-06-10 11:20:12', '2018-02-26 18:54:19'),
(391, 1, 1, 2, 42, 'Anita', 'Peirón ', 'c/mayor', 11, 'Buzón en la otra puerta', '0.00', '2017-06-10 11:20:41', '2017-06-10 11:23:27'),
(392, 1, 1, 2, 42, 'julian', 'Peropadre', 'c/mayor', 11, 'Buzón en la otra puerta', NULL, '2017-06-10 11:22:38', '2017-06-10 11:22:38'),
(393, 1, 1, 2, 42, 'Julian y Jesús', 'Peirón Peropadre', 'c/mayor', 11, 'Buzón en la otra puerta', NULL, '2017-06-10 11:24:33', '2017-06-10 11:24:33'),
(394, 1, 1, 2, 43, 'jesús', 'Calvete Garcés', 'c/mayor', 22, '', NULL, '2017-06-10 11:25:13', '2017-06-10 11:25:13'),
(395, 1, 1, 2, 43, 'Mª Pilar', 'Liesa Beroy', 'c/mayor', 22, '', NULL, '2017-06-10 11:25:40', '2017-06-10 11:25:40'),
(396, 1, 1, 2, 43, 'Carla y Jorge', 'Cortillas Liesa', 'c/mayor', 22, '', NULL, '2017-06-10 11:26:10', '2017-06-10 11:26:10'),
(397, 1, 1, 2, 43, 'Instalaciones', 'Instalaciones y Mantenimiento Liecal', 'c/mayor', 22, '', NULL, '2017-06-10 11:26:47', '2017-06-10 11:26:47'),
(398, 1, 1, 2, 44, 'José Mª', 'Beroy García', 'c/mayor', 13, '', NULL, '2017-06-10 11:41:04', '2017-06-10 11:41:04'),
(399, 1, 1, 2, 44, 'Belén', 'Bravo ..', 'c/mayor', 13, '', NULL, '2017-06-10 11:41:30', '2017-06-10 11:41:30'),
(400, 1, 1, 2, 44, 'Mª Josefa', 'Gracía Andreú', 'c/mayor', 13, '', NULL, '2017-06-10 11:41:58', '2017-06-10 11:41:58'),
(401, 1, 1, 2, 44, 'A ...', 'Beroy Cardona', 'c/mayor', 13, 'ERZ', NULL, '2017-06-10 11:43:10', '2017-06-10 11:43:10'),
(402, 1, 1, 2, 45, 'José', 'Fonoll Caradach', 'c/mayor', 24, 'Dejar en pz Torno7', NULL, '2017-06-10 11:44:12', '2017-06-10 11:44:12'),
(403, 1, 1, 2, 45, 'José', 'Fonoll Ramos', 'c/mayor', 24, 'Dejar en pz Torno7', NULL, '2017-06-10 11:44:54', '2017-06-10 11:44:54'),
(404, 1, 1, 2, 46, 'María', 'Pablo Coronas', 'c/mayor', 26, '', NULL, '2017-06-10 11:45:31', '2017-06-10 11:45:31'),
(405, 1, 1, 2, 46, 'Alfonso', 'Palacin Torres', 'c/mayor', 26, '', NULL, '2017-06-10 11:45:54', '2017-06-10 11:45:54'),
(406, 1, 1, 2, 47, 'Fco', 'Tutusaus Arderiu', 'c/mayor', 15, 'Dejar en mayor 10', NULL, '2017-06-10 11:47:07', '2017-06-10 11:47:07'),
(407, 1, 1, 2, 48, 'Fco', 'Paniello Laspalas', 'c/mayor', 30, '', NULL, '2017-06-10 11:47:36', '2017-06-10 11:47:36'),
(408, 1, 1, 2, 49, 'José Luis', 'Mallen Fornies', 'c/mayor', 32, '', NULL, '2017-06-10 11:48:05', '2017-06-10 11:48:05'),
(409, 1, 1, 2, 50, 'Encarnación', 'Martín Carmona', 'c/mayor', 21, '', NULL, '2017-06-10 11:48:29', '2017-06-10 11:48:29'),
(410, 1, 1, 2, 51, 'Miguel', 'Torres Penella', 'c/mayor', 23, 'Devolver', NULL, '2017-06-10 11:49:56', '2017-06-10 11:49:56'),
(411, 1, 1, 2, 52, 'Fco', 'Brota Peruga', 'c/mayor', 25, 'o 27', NULL, '2017-06-10 11:50:53', '2017-06-10 11:50:53'),
(412, 1, 1, 2, 52, 'Isabel', 'Lerín Lerin', 'c/mayor', 25, 'o 27', NULL, '2017-06-10 11:51:31', '2017-06-10 11:51:31'),
(413, 1, 1, 2, 53, 'jesús', 'Peruga Peña', 'c/mayor', 36, 'Periódico: dcha buzón grande', NULL, '2017-06-10 11:52:30', '2017-06-10 11:52:30'),
(414, 1, 1, 2, 53, 'Maria Ángeles', 'Puyal Martín', 'c/mayor', 36, '', NULL, '2017-06-10 11:52:55', '2017-06-10 11:52:55'),
(415, 1, 1, 2, 53, 'Margarita', 'Peruga puyal', 'c/mayor', 36, '', NULL, '2017-06-10 11:53:22', '2017-06-10 11:53:22'),
(416, 1, 1, 2, 53, 'GAPER', 'GAPER   ..', 'c/mayor', 36, '', NULL, '2017-06-10 11:53:43', '2017-06-10 11:53:43'),
(417, 1, 1, 2, 54, '.....', '.........', 'c/mayor', 38, 'Dejar en pequeña 5', NULL, '2017-06-10 11:54:54', '2017-06-10 11:54:54'),
(418, 1, 1, 2, 55, 'José Alejandro', 'Sánchez López', 'c/mayor', 40, '', NULL, '2017-06-10 11:55:29', '2017-06-10 11:55:29'),
(419, 1, 1, 2, 55, 'Laura', 'Barón Ballabriga', 'c/mayor', 40, '', NULL, '2017-06-10 11:55:56', '2017-06-10 11:55:56'),
(420, 1, 1, 2, 55, 'F   ..', 'Ballabriga Beroy', 'c/mayor', 40, '', NULL, '2017-06-10 11:56:28', '2017-06-10 11:56:28'),
(421, 1, 1, 2, 56, 'Ángeles', 'Lerín Lerin', 'Arrabal', 19, '', NULL, '2017-06-10 11:57:28', '2017-06-10 11:57:28'),
(422, 1, 1, 2, 57, 'Roberto', 'Girón Tolo', 'Arrabal', 17, '', NULL, '2017-06-10 11:57:59', '2017-06-10 11:57:59'),
(423, 1, 1, 2, 58, 'Ganados', 'Ganados Estiche', 'Arrabal', 15, '', NULL, '2017-06-11 09:09:09', '2017-06-11 09:09:09'),
(424, 1, 1, 2, 58, 'Fco', 'Zuriguel Velasco', 'Arrabal', 15, '', NULL, '2017-06-11 09:09:33', '2017-06-11 09:09:33'),
(425, 1, 1, 2, 58, 'Dolores', 'Velasco Linares', 'Arrabal', 15, '', NULL, '2017-06-11 09:09:53', '2017-06-11 09:09:53'),
(426, 1, 1, 2, 58, 'Fco', 'Zuriguel Paniello', 'Arrabal', 15, '', NULL, '2017-06-11 09:10:23', '2017-06-11 09:10:23'),
(427, 1, 1, 2, 58, 'Alejandro', 'Zuriguel ', 'Arrabal', 15, '', NULL, '2017-06-11 09:10:40', '2017-06-11 09:10:40'),
(428, 1, 1, 2, 59, 'Alfonso', 'Soler Palacin', 'Arrabal', 15, 'Dejar en Nueva 14', NULL, '2017-06-11 09:11:19', '2017-06-11 09:11:19'),
(429, 1, 1, 2, 59, 'ramón', 'Ferró Expósito', 'Arrabal', 12, 'ERZ', NULL, '2017-06-11 09:12:07', '2017-06-11 09:12:07'),
(430, 1, 1, 2, 60, 'Fco', 'Guerra Beroy', 'Arrabal', 10, '', NULL, '2017-06-11 09:16:26', '2017-06-11 09:16:26'),
(431, 1, 1, 2, 60, 'Ascensión', 'Beroy Peruga', 'Arrabal', 10, '', NULL, '2017-06-11 09:17:29', '2017-06-11 09:17:29'),
(432, 1, 1, 2, 60, 'Fco', 'Guerra Vega', 'Arrabal', 10, '', NULL, '2017-06-11 09:22:21', '2017-06-11 09:22:21'),
(433, 1, 1, 2, 60, 'Fco', 'Guerra Vega', 'Arrabal', 10, '', NULL, '2017-06-11 09:23:04', '2017-06-11 09:23:04'),
(434, 1, 1, 2, 60, 'Fco', 'Guerra Vega', 'Arrabal', 10, '', NULL, '2017-06-11 09:24:56', '2017-06-11 09:24:56'),
(435, 1, 1, 2, 60, 'Fco', 'Guerra Vega', 'Arrabal', 10, '', NULL, '2017-06-11 09:26:04', '2017-06-11 09:26:04'),
(436, 1, 1, 2, 60, 'Fco', 'Guerra Vega', 'Arrabal', 10, '', NULL, '2017-06-11 09:27:03', '2017-06-11 09:27:03'),
(437, 1, 1, 2, 61, 'Carlos', 'Samitier Salas', 'Arrabal', 11, '', NULL, '2017-06-11 09:36:00', '2017-06-11 09:36:00'),
(438, 1, 1, 2, 61, 'Lourdes', 'Laspalas Charlez', 'Arrabal', 11, '', NULL, '2017-06-11 09:37:50', '2017-06-11 09:37:50'),
(439, 1, 1, 2, 61, 'Carlos y Lourdes', 'Samitier Laspalas', 'Arrabal', 11, '', NULL, '2017-06-11 09:40:28', '2017-06-11 09:40:28'),
(440, 1, 1, 2, 61, 'José', 'Padilla', 'Arrabal', 11, '', NULL, '2017-06-11 09:42:38', '2017-06-11 09:42:38'),
(441, 1, 1, 2, 63, 'Fco', 'Raluy Peirón', 'Arrabal', 5, '', NULL, '2017-06-11 09:44:10', '2017-06-11 09:44:10'),
(442, 1, 1, 2, 64, 'Pedro', 'Moner Tomas', 'Arrabal', 3, '', NULL, '2017-06-11 09:49:56', '2017-06-11 09:49:56'),
(443, 1, 1, 2, 63, 'Lina', 'Lasheras Pirla', 'Arrabal', 3, '', NULL, '2017-06-11 09:53:14', '2017-06-11 09:53:14'),
(444, 1, 1, 2, 63, 'Pablo, Baldesca, Oriol, Olmo, Urbez, Roque', 'Moner Lasheras', 'Arrabal', 3, '', NULL, '2017-06-11 09:56:05', '2017-06-11 09:56:05'),
(445, 1, 1, 2, 64, 'Aurelio ', 'Pena Beroy', 'c/Nueva', 20, '', NULL, '2017-06-11 09:58:00', '2017-06-11 09:58:00'),
(446, 1, 1, 2, 64, 'Teresa', 'Sánchez López', 'c/Nueva', 20, 'Dejar en Arrabal 7', NULL, '2017-06-11 10:01:04', '2017-06-11 10:01:04'),
(447, 1, 1, 2, 64, 'Amada y Amaya', 'Pena Sánchez', 'c/Nueva', 20, 'Dejar en Arrabal 7', NULL, '2017-06-11 10:02:37', '2017-06-11 10:02:37'),
(448, 1, 1, 2, 64, 'Escolástica', 'López Lacorte', 'c/Nueva', 20, 'Dejar en Arrabal 7', NULL, '2017-06-11 10:04:08', '2017-06-11 10:04:08');
INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(449, 1, 1, 2, 64, 'Alejandro', 'Sánchez Revuelto', 'c/Nueva', 20, 'Dejar en Arrabal 7', NULL, '2017-06-11 10:05:42', '2017-06-11 10:05:42'),
(450, 1, 1, 2, 65, 'José Antonio', 'Sanicoalas López', 'c/Nueva', 5, '', NULL, '2017-06-11 10:06:54', '2017-06-11 10:06:54'),
(451, 1, 1, 2, 66, 'Radigales', 'Radigales', 'c/Nueva', 3, '', NULL, '2017-06-11 10:45:56', '2017-06-11 10:45:56'),
(452, 1, 1, 2, 67, 'Alba', 'Urdeitz Sanjuan', 'c/Nueva', 18, '', NULL, '2017-06-11 10:47:06', '2017-06-11 10:47:06'),
(453, 1, 1, 2, 67, 'Javier', 'Escar Muro', 'c/Nueva', 18, '', NULL, '2017-06-11 10:47:42', '2017-06-11 10:47:42'),
(454, 1, 1, 2, 67, 'Simón', 'Diaz Urdeitz', 'c/Nueva', 18, '', NULL, '2017-06-11 10:48:32', '2017-06-11 10:48:32'),
(455, 1, 1, 2, 68, 'José y Joaquina', 'Penella Penella', 'c/Nueva', 18, '', NULL, '2017-06-11 10:49:49', '2017-06-11 10:49:49'),
(456, 1, 1, 2, 68, 'Ana', 'Berinde', 'c/Nueva', 18, '', NULL, '2017-06-11 10:51:08', '2017-06-11 10:51:08'),
(457, 1, 1, 2, 69, 'Miguel ', 'Soler Giner', 'c/Nueva', 14, '', NULL, '2017-06-11 10:51:38', '2017-06-11 10:51:38'),
(458, 1, 1, 2, 69, 'Mercedes', 'Palacin Torres', 'c/Nueva', 14, '', NULL, '2017-06-11 10:52:18', '2017-06-11 10:52:18'),
(459, 1, 1, 2, 69, 'Adolfo', 'Martinez Montaner', 'c/Nueva', 14, '', NULL, '2017-06-11 10:52:39', '2017-06-11 10:52:39'),
(460, 1, 1, 2, 70, 'Margarita', 'Margarita', 'c/Nueva', 12, 'Dejar en Pequeña 16', NULL, '2017-06-11 10:53:24', '2017-06-11 10:53:24'),
(461, 1, 1, 2, 71, 'Manuel', 'Pena Novel', 'c/Nueva', 8, '', NULL, '2017-06-11 10:53:58', '2017-06-11 10:53:58'),
(462, 1, 1, 2, 71, 'Alicia', 'Ezquerra Peruga', 'c/Nueva', 8, '', NULL, '2017-06-11 10:54:16', '2017-06-11 10:54:16'),
(463, 1, 1, 2, 71, 'José Manuel y Asunción', 'Pena Ezquerra', 'c/Nueva', 8, '', NULL, '2017-06-11 10:54:59', '2017-06-11 10:54:59'),
(464, 1, 1, 2, 72, 'Sebastian', 'Abizanda Torres', 'c/Nueva', 6, '', NULL, '2017-06-11 10:55:54', '2017-06-11 10:55:54'),
(465, 1, 1, 2, 73, 'Domingo', 'Calvo Gomariz', 'c/Nueva', 4, '', '0.00', '2017-06-11 10:57:04', '2017-06-11 14:01:56'),
(466, 1, 1, 2, 74, 'Serafín', 'Penella Peruga', 'c/Nueva', 2, '', NULL, '2017-06-11 10:57:29', '2017-06-11 10:57:29'),
(467, 1, 1, 2, 75, 'Cinca', 'Cinca San Julian S.L', '', 0, '', NULL, '2017-06-11 10:58:06', '2017-06-11 10:58:06'),
(468, 1, 1, 2, 76, 'Alejandrina', 'Azlor Bergua', '', 0, 'Dejar en Pomared 2 Bar (Pomar)', NULL, '2017-06-11 10:59:01', '2017-06-11 10:59:01'),
(469, 1, 1, 2, 77, 'Juan Carlos', 'Montero Moreno', '', 0, 'Devolver', NULL, '2017-06-11 10:59:28', '2017-06-11 10:59:28'),
(470, 1, 1, 2, 77, 'Estación', 'Estación de Servicio de Estiche', '', 0, 'Devolver', NULL, '2017-06-11 10:59:57', '2017-06-11 10:59:57'),
(471, 1, 1, 2, 77, 'Juan José', 'Diaz Hidalgo', '', 0, 'Devolver', NULL, '2017-06-11 11:00:18', '2017-06-11 11:00:18'),
(472, 1, 1, 2, 77, 'Fco', 'Brota Lerín', '', 0, 'Devolver', NULL, '2017-06-11 11:00:40', '2017-06-11 11:00:40'),
(473, 1, 1, 2, 77, 'Fernando', 'Ródenas García', '', 0, 'Devolver, excepto luz', NULL, '2017-06-11 11:01:19', '2017-06-11 11:01:19'),
(474, 1, 1, 2, 77, 'Montse', 'Villalba', '', 0, 'Devolver', NULL, '2017-06-11 11:01:38', '2017-06-11 11:01:38'),
(475, 1, 1, 1, 1, 'antonio', 'Penella Pecondón', 'El Pilar', 7, 'Buzón iz', NULL, '2017-06-13 17:04:51', '2017-06-13 17:04:51'),
(476, 1, 1, 1, 1, 'Isabel', 'Garcés Vicent', 'El Pilar', 7, 'Buzón iz', NULL, '2017-06-13 17:21:52', '2017-06-13 17:21:52'),
(477, 1, 1, 1, 1, 'Nicolás', 'Peruga Charlez', 'El Pilar', 7, 'Buzón iz', NULL, '2017-06-13 17:23:06', '2017-06-13 17:23:06'),
(478, 1, 1, 1, 2, 'Nicolás', 'Peruga Pecondón', 'El Pilar', 9, 'Buzón dcha', NULL, '2017-06-13 17:25:21', '2017-06-13 17:25:21'),
(479, 1, 1, 1, 2, 'Mª Pilar', 'Ramón Serrate', 'El Pilar', 9, 'Buzón dcha', NULL, '2017-06-13 17:26:21', '2017-06-13 17:26:21'),
(480, 1, 1, 1, 2, 'Laura y Daniel', 'Peruga Ramón', 'El Pilar', 9, 'Buzón dcha', NULL, '2017-06-13 17:26:59', '2017-06-13 17:26:59'),
(481, 1, 1, 1, 2, 'Rosalia ', 'Sarrate Morer', 'El Pilar', 9, 'Buzón dcha', NULL, '2017-06-13 17:27:47', '2017-06-13 17:27:47'),
(482, 1, 1, 1, 3, 'Emigdio', 'Albert Pecondón', 'El Pilar', 4, '', NULL, '2017-06-17 08:53:10', '2017-06-17 08:53:10'),
(483, 1, 1, 1, 3, 'Marisol', 'García Jover', 'El Pilar', 4, '', NULL, '2017-06-17 08:53:52', '2017-06-17 08:53:52'),
(484, 1, 1, 1, 3, 'Mª Mar', 'Albert García', 'El Pilar', 4, '', NULL, '2017-06-17 08:54:26', '2017-06-17 08:54:26'),
(485, 1, 1, 1, 4, 'Manuel', 'Rivera Martínez', 'El Pilar', 2, '', NULL, '2017-06-17 08:55:19', '2017-06-17 08:55:19'),
(486, 1, 1, 1, 4, 'Isabel', 'Anello Otero', 'El Pilar', 2, '', NULL, '2017-06-17 08:55:52', '2017-06-17 08:55:52'),
(487, 1, 1, 1, 5, 'Antonio', 'Buil Navasa', 'El Pilar', 3, 'Devolver, preguntar a Carmen de la Sección 4', NULL, '2017-06-17 08:56:18', '2018-02-28 11:37:09'),
(488, 1, 1, 1, 6, 'Fernando', 'Abenoza Escudero', 'El Pilar', 1, '', NULL, '2017-06-17 08:57:05', '2017-06-17 08:57:05'),
(489, 1, 1, 1, 6, 'Cristina', 'Belver Guerra', 'El Pilar', 1, '', NULL, '2017-06-17 08:57:28', '2017-06-17 08:57:28'),
(490, 1, 1, 1, 6, 'Cintía y Anaís', 'Abenoza Bellver', 'El Pilar', 1, '', NULL, '2017-06-17 08:58:01', '2017-06-17 08:58:01'),
(491, 1, 1, 1, 7, 'Pilar', 'Castán Huguet', 'Soltador', 4, '', NULL, '2017-06-17 08:58:42', '2017-06-17 08:58:42'),
(492, 1, 1, 1, 7, 'Emilio y Marta', 'Peruga Castán', 'Soltador', 4, '', NULL, '2017-06-17 08:59:08', '2017-06-17 08:59:08'),
(493, 1, 1, 1, 7, 'emilio y Mª Teresa', 'Peruga Albano', 'Soltador', 4, '', NULL, '2017-06-17 08:59:46', '2017-06-17 08:59:46'),
(494, 1, 1, 1, 7, 'Lazaro y Carmen', 'Mallen Fornies', 'Soltador', 7, 'Iglesia 7', NULL, '2017-06-17 09:01:04', '2017-06-17 09:01:04'),
(495, 1, 1, 1, 8, 'Agustina', 'Gil Ollés', 'Soltador', 0, 'Devolver', NULL, '2017-06-17 09:01:46', '2017-06-17 09:01:46'),
(497, 1, 1, 1, 9, 'Ignacio', 'Tardío Escudero', 'General Prim', 1, 'Dejar en Aranela', NULL, '2017-06-17 09:26:10', '2017-06-17 09:26:10'),
(498, 1, 1, 1, 9, 'Enriqueta', 'Abizanda Bometón', 'General Prim', 1, 'Dejar en Aranela', NULL, '2017-06-17 09:26:45', '2017-06-17 09:26:45'),
(499, 1, 1, 1, 9, 'Ricardo', 'Villas ..', 'General Prim', 1, 'Dejar en Aranela', NULL, '2017-06-17 09:27:15', '2017-06-17 09:27:15'),
(500, 1, 1, 1, 10, 'Mariano', 'Agel Gracia', 'General Prim', 4, '', NULL, '2017-06-17 09:27:40', '2017-06-17 09:27:40'),
(501, 1, 1, 1, 10, 'E.   ..', 'Gracia Peruga', 'General Prim', 4, '', NULL, '2017-06-17 09:28:00', '2017-06-17 09:28:00'),
(502, 1, 1, 1, 10, 'Josefina', 'Pecondón Ollés', 'General Prim', 4, 'Aunque venga al 13 dejar en el 4.', NULL, '2017-06-17 09:28:35', '2017-11-14 17:41:01'),
(503, 1, 1, 1, 11, 'Mª Pilar', 'Abizanda Pecondón', 'General Prim', 13, '', NULL, '2017-06-17 09:29:07', '2017-06-17 09:29:07'),
(504, 1, 1, 1, 12, 'Alberto', 'Charlez Garcés', 'c/Nueva', 2, '', NULL, '2017-06-17 09:30:27', '2017-06-17 09:30:27'),
(505, 1, 1, 1, 12, 'Sofía', 'Sánchez Novel', 'c/Nueva', 2, '', NULL, '2017-06-17 09:30:49', '2017-06-17 09:30:49'),
(506, 1, 1, 1, 12, 'Julio José', 'Charlez Sánchez', 'c/Nueva', 2, '', NULL, '2017-06-17 09:31:16', '2017-06-17 09:31:16'),
(507, 1, 1, 1, 12, 'Charlez', 'Charlez Sánchez Explotaciones Agropecuarias', 'c/Nueva', 2, '', NULL, '2017-06-17 09:31:53', '2017-06-17 09:31:53'),
(508, 1, 1, 1, 12, 'Cedria', 'Cedria S.L.', 'c/Nueva', 2, 'Devolver', NULL, '2017-06-17 09:32:26', '2017-06-17 09:32:26'),
(509, 1, 1, 1, 12, 'Andrés', 'Cuesta Lázaro', 'c/Nueva', 2, '', NULL, '2017-06-17 09:32:59', '2017-06-17 09:32:59'),
(510, 1, 1, 1, 12, 'Carlos', 'Cuesta Charlez', 'c/Nueva', 2, '', NULL, '2017-06-17 09:33:38', '2017-06-17 09:33:38'),
(511, 1, 1, 1, 12, 'Juan', 'Lorente', 'c/Nueva', 2, '', NULL, '2017-06-17 09:33:57', '2017-06-17 09:33:57'),
(512, 1, 1, 1, 13, 'Vicente', 'Peruga Rufas', 'c/Nueva', 4, 'Dejar en Av Aragón 15', NULL, '2017-06-17 09:35:43', '2017-06-17 09:35:43'),
(513, 1, 1, 1, 13, 'Josefa', 'Peruga Peruga', 'c/Nueva', 4, 'Dejar en Av Aragón 15', NULL, '2017-06-17 09:36:25', '2017-06-17 09:36:25'),
(514, 1, 1, 1, 13, 'José', 'Betés ..', 'c/Nueva', 4, 'Dejar en Av Aragón 15, viene como zgz 2', NULL, '2017-06-17 09:37:23', '2017-06-17 09:37:23'),
(515, 1, 1, 1, 14, 'Victoria', 'Peruga Escalona', 'c/Nueva', 7, 'Devolver', NULL, '2017-06-17 09:38:12', '2017-06-17 09:38:12'),
(518, 1, 1, 1, 15, 'Carpintería', 'Carpintería', 'c/Nueva', 9, 'Dejar en Aranela', NULL, '2017-06-17 09:39:52', '2017-06-17 09:39:52'),
(519, 1, 1, 1, 16, 'Marcial', 'Alvira Fumanal', 'c/Nueva', 8, '', NULL, '2017-06-17 09:42:18', '2017-06-17 09:42:18'),
(520, 1, 1, 1, 16, 'Rodrigo', 'Lucena', 'c/Nueva', 8, '', NULL, '2017-06-17 09:42:37', '2017-06-17 09:42:37'),
(521, 1, 1, 1, 16, 'Maite', 'Marugan', 'c/Nueva', 8, '', NULL, '2017-06-17 09:42:59', '2017-06-17 09:42:59'),
(522, 1, 1, 1, 16, 'Emilia', 'Diaz Patiño', 'c/Nueva', 8, '', NULL, '2017-06-17 09:43:28', '2018-02-28 11:28:52'),
(523, 1, 1, 1, 17, 'Antonio', 'Picó Pecondón', 'c/Nueva', 10, '', NULL, '2017-06-17 09:43:53', '2017-06-17 09:43:53'),
(524, 1, 1, 1, 17, 'Cristina', 'Puyal Giral', 'c/Nueva', 10, '', NULL, '2017-06-17 09:44:38', '2017-06-17 09:44:38'),
(525, 1, 1, 1, 17, 'Paola y Berta', 'Picó Puyal', 'c/Nueva', 10, '', NULL, '2017-06-17 09:45:20', '2017-11-14 17:43:51'),
(526, 1, 1, 1, 17, 'Maria', 'Pecondón Santaliestra', 'c/Nueva', 10, '', NULL, '2017-06-17 09:46:06', '2017-06-17 09:46:06'),
(527, 1, 1, 1, 18, 'Luis', 'Alcoberro Peruga', 'c/Nueva', 12, '', NULL, '2017-06-17 09:47:01', '2017-06-17 09:47:01'),
(528, 1, 1, 1, 18, 'Carmen', 'Peruga Pecondón', 'c/Nueva', 12, '', NULL, '2017-06-17 09:47:43', '2017-06-17 09:47:43'),
(529, 1, 1, 1, 19, 'Agustín y Fco', 'Cano Fondevilla', 'c/Nueva', 11, '', NULL, '2017-06-17 09:48:19', '2018-02-28 11:38:50'),
(530, 1, 1, 1, 19, 'Montse', 'Fondevilla', 'c/Nueva', 11, '', NULL, '2017-06-17 09:48:51', '2017-06-17 09:48:51'),
(532, 1, 1, 1, 19, 'Agustín', 'Fondevilla Ollés', 'c/Nueva', 11, '', NULL, '2017-06-17 09:49:45', '2017-06-17 09:49:45'),
(533, 1, 1, 1, 19, 'antonio', 'Mirasol', 'c/Nueva', 11, '', NULL, '2017-06-17 09:50:01', '2017-06-17 09:50:01'),
(534, 1, 1, 1, 20, 'Alberto', 'Grasa García', 'c/Nueva', 16, '', NULL, '2017-06-17 09:50:48', '2017-06-17 09:50:48'),
(535, 1, 1, 1, 20, 'Nieves', 'Navarra Ezquerra', 'c/Nueva', 16, '', NULL, '2017-06-17 09:51:13', '2017-06-17 09:51:13'),
(536, 1, 1, 1, 20, 'Rebeca y Belén', 'Grasa Navarra', 'c/Nueva', 16, '', NULL, '2017-06-17 09:52:31', '2017-06-17 09:52:31'),
(537, 1, 1, 1, 20, 'María', 'Gracia Peruga', 'c/Nueva', 16, '', NULL, '2017-06-17 09:52:58', '2017-06-17 09:52:58'),
(538, 1, 1, 1, 20, 'antonio', 'Grasa García', 'c/Nueva', 16, 'ERZ', NULL, '2017-06-17 09:53:41', '2017-06-17 09:53:41'),
(539, 1, 1, 1, 20, 'asociación', 'Asociación de Pensionistas', 'c/Nueva', 16, '', NULL, '2017-06-17 09:54:12', '2017-06-17 09:54:12'),
(540, 1, 1, 1, 21, 'Isabel', 'Escudero Casado', 'c/Nueva', 18, 'Se puede dejar en Gran Pico', NULL, '2017-06-17 09:55:37', '2018-02-28 11:42:44'),
(541, 1, 1, 1, 21, 'David', 'Gran Pico', 'c/Nueva', 18, 'Se puede dejar en Gran Pico', NULL, '2017-06-17 09:56:02', '2018-02-28 11:47:32'),
(543, 1, 1, 1, 23, 'Domingo', 'Torres Solans', 'c/Nueva', 22, '', NULL, '2017-06-17 09:58:36', '2017-06-17 09:58:36'),
(544, 1, 1, 1, 23, 'Fca', 'Peruga Santaliestra', 'c/Nueva', 22, '', NULL, '2017-06-17 09:59:01', '2017-06-17 09:59:01'),
(545, 1, 1, 1, 23, 'José Mª', 'Torres Peruga', 'c/Nueva', 22, '', NULL, '2017-06-17 09:59:24', '2017-06-17 09:59:24'),
(546, 1, 1, 1, 23, 'Próspero', 'Sarrato', 'c/Nueva', 22, '', NULL, '2017-06-17 09:59:45', '2017-06-17 09:59:45'),
(547, 1, 1, 1, 23, 'Andrés', 'Peruga', 'c/Nueva', 22, '', NULL, '2017-06-17 10:00:19', '2017-11-14 17:44:43'),
(548, 1, 1, 1, 24, 'José', 'Sender Charlez', 'c/Nueva', 17, '', NULL, '2017-06-17 10:00:51', '2017-06-17 10:00:51'),
(549, 1, 1, 1, 24, 'Pilar', 'Campo Mur', 'c/Nueva', 17, '', NULL, '2017-06-17 10:01:05', '2017-06-17 10:01:05'),
(550, 1, 1, 1, 24, 'José Mª', 'Sender Campó', 'c/Nueva', 17, '', NULL, '2017-06-17 10:01:33', '2017-06-17 10:01:33'),
(551, 1, 1, 1, 24, 'Fco Javier', 'Sender Campó', 'c/Nueva', 17, '', NULL, '2017-06-17 10:02:00', '2017-06-17 10:02:00'),
(552, 1, 1, 1, 24, 'Agrodos', 'Agrodos', 'c/Nueva', 17, '', NULL, '2017-06-17 10:02:38', '2017-06-17 10:02:38'),
(554, 1, 1, 1, 26, 'Antonio', 'Terrero Castillo', 'c/Nueva', 30, 'ERZ', NULL, '2017-06-17 10:04:03', '2017-06-17 10:04:03'),
(555, 1, 1, 1, 27, 'Clemente', 'Peruga Pecondón', 'c/Monzón', 32, '', NULL, '2017-06-17 10:04:27', '2017-06-17 10:04:27'),
(556, 1, 1, 1, 27, 'Nieves', 'Consola Alvira', 'c/nueva', 30, '', NULL, '2017-06-17 10:04:44', '2018-05-14 18:28:30'),
(557, 1, 1, 1, 27, 'Mª Nieves y Diego', 'Peruga Consola', 'c/Nueva', 32, '', NULL, '2017-06-17 10:05:19', '2017-06-17 10:05:19'),
(558, 1, 1, 1, 27, 'Eduardo', 'Gran Pico', 'c/Nueva', 32, '', NULL, '2017-06-17 10:06:11', '2017-06-17 10:06:11'),
(559, 1, 1, 1, 27, 'Doris ', 'Londoño Montero', 'c/Nueva', 32, '', NULL, '2017-06-17 10:06:49', '2017-06-17 10:06:49'),
(560, 1, 1, 1, 27, 'Club', 'Club Motero Santalecina', 'c/Nueva', 32, '', NULL, '2017-06-17 10:08:58', '2017-06-17 10:08:58'),
(561, 1, 1, 1, 28, 'José Antonio', 'Sánchez Loscertales', 'c/Nueva', 32, '', NULL, '2017-06-17 10:11:43', '2017-06-17 10:11:43'),
(562, 1, 1, 1, 28, 'Mª Jesús', 'Mansilla Sender', 'c/Nueva', 32, '', NULL, '2017-06-17 10:12:17', '2017-06-17 10:12:17'),
(563, 1, 1, 1, 28, 'José Antonio y Aitor', 'Sánchez Mansilla', 'c/Nueva', 32, '', NULL, '2017-06-17 10:13:15', '2017-06-17 10:13:15'),
(564, 1, 1, 1, 28, 'Teresa', 'Loscertales Ferrer', 'c/Nueva', 32, '', NULL, '2017-06-17 10:13:37', '2017-06-17 10:13:37'),
(565, 1, 1, 1, 28, 'Fruto', 'Sánchez Novel', 'c/Nueva', 32, '', NULL, '2017-06-17 10:14:06', '2017-06-17 10:14:06'),
(566, 1, 1, 1, 28, 'monte', 'Monte Layola', 'c/Nueva', 32, '', NULL, '2017-06-17 10:14:26', '2017-06-17 10:14:26'),
(567, 1, 1, 1, 28, 'asociación', 'Asociación de Caza', 'c/Nueva', 32, '', NULL, '2017-06-17 10:14:58', '2017-06-17 10:14:58'),
(568, 1, 1, 1, 29, 'José', 'Novel Peruga', 'c/Nueva', 27, '', NULL, '2017-06-17 10:15:35', '2017-06-17 10:15:35'),
(569, 1, 1, 1, 29, 'rosa Mª', 'Garcés Beroy', 'c/Nueva', 27, '', NULL, '2017-06-17 10:16:25', '2017-06-17 10:16:25'),
(570, 1, 1, 1, 29, 'José Antonio y Rosa Mª', 'Novel Garcés', 'c/Nueva', 27, '', NULL, '2017-06-17 10:17:16', '2017-06-17 10:17:16'),
(571, 1, 1, 1, 29, 'José', 'Garcés Beroy', 'c/Nueva', 27, '', NULL, '2017-06-17 10:17:43', '2017-06-17 10:17:43'),
(572, 1, 1, 1, 29, 'Crescencia', 'Beroy Beroy', 'c/Nueva', 27, '', NULL, '2017-06-17 10:18:08', '2017-06-17 10:18:08'),
(573, 1, 1, 1, 29, 'Silvia', 'Granado López', 'c/Nueva', 27, '', NULL, '2017-06-17 10:18:33', '2017-06-17 10:18:33'),
(574, 1, 1, 1, 30, 'Juan José', 'Peruga Peruga', 'c/Nueva', 36, '', NULL, '2017-06-17 10:19:04', '2017-06-17 10:19:04'),
(575, 1, 1, 1, 30, 'Ana', 'Bardají', 'c/Nueva', 36, '', NULL, '2017-06-17 10:19:32', '2017-06-17 10:19:32'),
(576, 1, 1, 1, 31, 'Concepción', 'Fortuna Moliner', 'c/Nueva', 40, 'Llevar a frente escuelas Fdo Abizanda', NULL, '2017-06-17 10:20:29', '2017-06-17 10:20:29'),
(577, 1, 1, 1, 32, 'Daniel', 'Garcés Paniello', 'Zaragoza', 24, '', NULL, '2017-06-17 10:22:10', '2017-06-17 10:22:10'),
(578, 1, 1, 1, 32, 'Nati', 'Paniello Alvira', 'Zaragoza', 24, '', NULL, '2017-06-17 10:22:49', '2017-06-17 10:22:49'),
(579, 1, 1, 1, 32, 'Justino Angel', 'Garcés Escudero', 'Zaragoza', 24, '', NULL, '2017-06-17 10:23:43', '2017-06-17 10:23:43'),
(580, 1, 1, 1, 33, 'José Vicente', 'Peruga Peruga', 'Zaragoza', 33, '', NULL, '2017-06-17 10:24:23', '2017-06-17 10:24:23'),
(581, 1, 1, 1, 33, 'Esther', 'castellar Millán', 'Zaragoza', 33, '', NULL, '2017-06-17 10:24:57', '2017-06-17 10:24:57'),
(582, 1, 1, 1, 33, 'Eva e Isaac', 'Peruga Castellar', 'Zaragoza', 33, '', NULL, '2017-06-17 10:25:27', '2017-06-17 10:25:27'),
(583, 1, 1, 1, 33, 'Plácida', 'Peruga Toyas', 'Zaragoza', 33, '', NULL, '2017-06-17 10:25:57', '2017-06-17 10:25:57'),
(584, 1, 1, 1, 33, 'Josefa', 'Peruga Puy', 'Zaragoza', 33, '', NULL, '2017-06-17 10:26:21', '2017-06-17 10:26:21'),
(585, 1, 1, 1, 34, 'Fernando', 'Escudero Tardío', 'Zaragoza', 22, 'Casa ', NULL, '2017-06-17 10:27:38', '2017-06-17 10:27:38'),
(586, 1, 1, 1, 34, 'carmen', 'Gran Agel', 'Zaragoza', 22, 'Casa blanca', NULL, '2017-06-17 10:28:08', '2017-06-17 10:28:08'),
(587, 1, 1, 1, 34, 'R..', 'Gran Agel', 'Zaragoza', 22, 'Casa blanca', NULL, '2017-06-17 10:28:23', '2017-06-17 10:28:23'),
(588, 1, 1, 1, 35, 'Santiago', 'Carrera Guerrero', 'Zaragoza', 31, 'Dejar con Aurelio Sender', NULL, '2017-06-17 10:29:04', '2018-05-14 18:24:45'),
(589, 1, 1, 1, 37, 'Luciano', 'Gran Charlez', 'Zaragoza', 29, '', NULL, '2017-06-18 08:43:48', '2017-06-18 08:43:48'),
(590, 1, 1, 1, 37, 'Luciano y David', 'Gran Pico', 'Zaragoza', 29, 'Buzón en la otra puerta', NULL, '2017-06-18 08:44:33', '2017-06-18 08:44:33'),
(591, 1, 1, 1, 37, 'Eduardo', 'Gran Peruga', 'Zaragoza', 29, 'Buzón en la otra puerta', NULL, '2017-06-18 08:45:02', '2017-06-18 08:45:02'),
(592, 1, 1, 1, 37, 'Construcciones', 'Construcciones Gran Pico', 'Zaragoza', 29, 'Buzón en la otra puerta', NULL, '2017-06-18 08:45:33', '2017-06-18 08:45:33'),
(593, 1, 1, 1, 37, 'Pilar', 'Pico Pecondón', 'Zaragoza', 29, 'Buzón en la otra puerta', NULL, '2017-06-18 08:45:56', '2017-06-18 08:45:56'),
(594, 1, 1, 1, 37, 'Araceli Matilde', 'Albero Puyuelo', 'Zaragoza', 29, 'Buzón en la otra puerta', NULL, '2017-06-18 08:46:40', '2017-06-18 08:46:40'),
(595, 1, 1, 1, 38, 'Pilar y Jesús', 'Pecondón Lacosta', 'Zaragoza', 27, 'Dejar aquí Fco Lacosta?', NULL, '2017-06-18 08:47:44', '2017-06-18 08:47:44'),
(597, 1, 1, 1, 39, 'Teresa', 'Abenoza Moliner', 'Zaragoza', 25, '', NULL, '2017-06-18 08:48:37', '2017-06-18 08:48:37'),
(598, 1, 1, 1, 39, 'Antonio', 'Brota Abenoza', 'Zaragoza', 25, '', NULL, '2017-06-18 08:49:02', '2017-06-18 08:49:02'),
(600, 1, 1, 1, 40, 'Aurelio', 'Sánchez Novel', 'Zaragoza', 14, '', NULL, '2017-06-18 08:52:13', '2017-06-18 08:52:13'),
(601, 1, 1, 1, 40, 'Mª Piedad', 'Escudero Peruga', 'Zaragoza', 14, '', NULL, '2017-06-18 08:52:38', '2017-06-18 08:52:38'),
(602, 1, 1, 1, 40, 'Joaquina', 'Peruga Ollés', 'Zaragoza', 14, '', NULL, '2017-06-18 08:53:01', '2017-06-18 08:53:01'),
(603, 1, 1, 1, 41, 'Ricardo', 'Peruga Ollés', 'Zaragoza', 21, 'Dejar cartas de médicos y Certis en c/Iglesia5', NULL, '2017-06-18 08:55:00', '2017-06-18 08:55:00'),
(604, 1, 1, 1, 41, 'José', 'Peruga Ara', 'Zaragoza', 21, '', NULL, '2017-06-18 08:55:35', '2017-06-18 08:55:35'),
(605, 1, 1, 1, 42, 'Mercedes', 'Peruga Peralta', 'Zaragoza', 19, '', NULL, '2017-06-18 08:57:34', '2017-06-18 08:57:34'),
(606, 1, 1, 1, 42, 'Mercedes', 'Pecondón Peruga', 'Zaragoza', 19, '', NULL, '2017-06-18 08:58:21', '2017-06-18 08:58:21'),
(607, 1, 1, 1, 43, 'Mª Rosa', 'Périz Torres', 'Zaragoza', 12, '', NULL, '2017-06-18 08:59:58', '2017-06-18 08:59:58'),
(608, 1, 1, 1, 43, 'Domingo', 'Peruga Belloc', 'Zaragoza', 12, '', NULL, '2017-06-18 09:00:16', '2017-06-18 09:00:16'),
(609, 1, 1, 1, 44, 'Magdalena', 'Guerra Min', 'Zaragoza', 10, 'ERZ dejar en zgz 19', NULL, '2017-06-18 09:01:02', '2017-06-18 09:01:02'),
(610, 1, 1, 1, 45, 'Isidro ', 'Ayudan Agel', 'Zaragoza', 15, 'ERZ', NULL, '2017-06-18 09:01:49', '2017-06-18 09:01:49'),
(611, 1, 1, 1, 46, 'Pilar', 'Lastanosa Ascaso', 'Zaragoza', 13, '', NULL, '2017-06-18 09:02:22', '2017-06-18 09:02:22'),
(612, 1, 1, 1, 46, 'victor y Lourdes', 'Pascau Lastanosa', 'Zaragoza', 13, '', NULL, '2017-06-18 09:02:54', '2017-06-18 09:02:54'),
(613, 1, 1, 1, 46, 'Baltasar', 'Lastanosa Expósito', 'Zaragoza', 13, '', NULL, '2017-06-18 09:03:25', '2017-06-18 09:03:25'),
(614, 1, 1, 1, 46, 'Eulalia', 'Ascaso', 'Zaragoza', 13, '', NULL, '2017-06-18 09:03:42', '2017-06-18 09:03:42'),
(615, 1, 1, 1, 47, 'Alfredo', 'Peruga Abenoza', 'Zaragoza', 9, '', NULL, '2017-06-18 09:04:17', '2017-06-18 09:04:17'),
(616, 1, 1, 1, 47, 'rosa Mª', 'Martínez Clemente', 'Zaragoza', 9, '', NULL, '2017-06-18 09:04:45', '2017-06-18 09:04:45'),
(617, 1, 1, 1, 47, 'Raúl', 'Peruga Martínez', 'Zaragoza', 9, '', NULL, '2017-06-18 09:05:16', '2017-06-18 09:05:16'),
(618, 1, 1, 1, 47, 'Las', 'Las fajas Ganaderas', 'Zaragoza', 9, '', NULL, '2017-06-18 09:08:53', '2017-06-18 09:08:53'),
(619, 1, 1, 1, 47, 'Joaquin', 'Ollés Pecondón', 'Zaragoza', 9, '', NULL, '2017-06-18 09:09:25', '2017-06-18 09:09:25'),
(621, 1, 1, 1, 48, 'Juan Carlos', 'Abenoza Escudero', 'Zaragoza', 7, '', NULL, '2017-06-18 09:11:02', '2017-06-18 09:11:02'),
(622, 1, 1, 1, 49, 'Alicia', 'Peruga Charlez', 'Zaragoza', 5, '', NULL, '2017-06-18 09:11:43', '2017-06-18 09:11:43'),
(623, 1, 1, 1, 49, 'Juan', 'Cutillas Cubillas', 'Zaragoza', 5, '', NULL, '2017-06-18 09:12:01', '2017-06-18 09:12:01'),
(624, 1, 1, 1, 49, 'Pilar', 'Charlez Peruga', 'Zaragoza', 5, '', NULL, '2017-06-18 09:12:26', '2017-06-18 09:12:26'),
(625, 1, 1, 1, 5, 'Eva', 'Cardona', 'El Pilar', 5, '', NULL, '2017-06-18 09:12:40', '2017-11-14 17:38:55'),
(626, 1, 1, 1, 50, 'Asunción', 'Peruga Sánchez', 'Zaragoza', 6, '', NULL, '2017-06-18 09:13:05', '2017-06-18 09:13:05'),
(627, 1, 1, 1, 50, 'José Luis', 'Cerezuela Belloc', 'Zaragoza', 6, '', NULL, '2017-06-18 09:13:35', '2017-06-18 09:13:35'),
(628, 1, 1, 1, 51, 'Matilde', 'Alvira Pico', 'Zaragoza', 4, '', NULL, '2017-06-18 09:32:59', '2017-06-18 09:32:59'),
(629, 1, 1, 1, 51, 'Gregorio', 'Consola Abenoza', 'Zaragoza', 4, '', NULL, '2017-06-18 09:33:37', '2017-06-18 09:33:37'),
(630, 1, 1, 1, 52, 'Sat', 'Sat Charlesa nº 839', 'Zaragoza', 1, '', NULL, '2017-06-18 09:34:26', '2017-06-18 09:34:26'),
(631, 1, 1, 1, 52, 'Celchar', 'Celchar', 'Zaragoza', 1, 'Devolver', NULL, '2017-06-18 09:36:58', '2017-06-18 09:36:58'),
(632, 1, 1, 1, 52, 'Mª Teresa, Lorenzo, Luis y Antonio', 'Charlez Azlor', 'Zaragoza', 1, 'Certificados a mayor 14', NULL, '2017-06-18 09:38:20', '2017-06-18 09:38:20'),
(633, 1, 1, 1, 52, 'Ramona', 'Azlor Buil', 'Zaragoza', 1, '', NULL, '2017-06-18 09:39:13', '2017-06-18 09:39:13'),
(634, 1, 1, 1, 52, 'Fermin', 'Gimeno Clavería', 'Zaragoza', 1, '', NULL, '2017-06-18 09:39:29', '2017-06-18 09:39:29'),
(635, 1, 1, 1, 52, 'Carlos', 'Arroyos', 'Zaragoza', 1, '', NULL, '2017-06-18 09:39:46', '2017-06-18 09:39:46'),
(636, 1, 1, 1, 53, 'Emiliano, Rosalía, Antonio y Mª Isabel', 'Abizanda Latre', 'c/mayor', 2, '', NULL, '2017-06-18 09:40:47', '2017-06-18 09:40:47'),
(637, 1, 1, 1, 53, 'Emiliano', 'Abizanda Loscertales', 'c/mayor', 2, '', NULL, '2017-06-18 09:41:24', '2017-06-18 09:41:24'),
(638, 1, 1, 1, 53, 'Celia', 'Borruel Plana', 'c/mayor', 2, '', NULL, '2017-06-18 09:41:48', '2017-06-18 09:41:48'),
(639, 1, 1, 1, 53, 'Rosalia', 'Latre ..', 'c/mayor', 2, '', NULL, '2017-06-18 09:42:01', '2017-06-18 09:42:01'),
(640, 1, 1, 1, 53, 'Ana', 'Abizanda Borruel', 'c/mayor', 2, '', NULL, '2017-06-18 09:42:25', '2017-06-18 09:42:25'),
(641, 1, 1, 1, 54, 'Pilar', 'Sánchez Novel', 'La Iglesia', 2, '', NULL, '2017-06-18 09:43:05', '2017-06-18 09:43:05'),
(642, 1, 1, 1, 54, 'Juan Ramón ', 'Peruga Sánchez', 'La Iglesia', 2, '', NULL, '2017-06-18 09:43:51', '2017-06-18 09:43:51'),
(643, 1, 1, 1, 54, 'Marta', 'Peruga Millera', 'La Iglesia', 2, '', NULL, '2017-06-18 09:44:20', '2017-06-18 09:44:20'),
(644, 1, 1, 1, 54, 'Agro', 'Agropecuaria Peruga', 'La Iglesia', 2, '', NULL, '2017-06-18 09:44:51', '2017-06-18 09:44:51'),
(645, 1, 1, 1, 54, 'Leandro', 'Peruga Rufas', 'La Iglesia', 2, '', NULL, '2017-06-18 09:45:20', '2017-06-18 09:45:20'),
(646, 1, 1, 1, 55, 'Faustino', 'Peruga Rufas', 'La Iglesia', 4, '', NULL, '2017-06-18 09:47:00', '2017-06-18 09:47:00'),
(647, 1, 1, 1, 55, 'Teresa', 'Lacosta Arroyos', 'La Iglesia', 4, '', NULL, '2017-06-18 09:47:24', '2017-06-18 09:47:24'),
(648, 1, 1, 1, 56, 'Andrés', 'Chavanel', 'La Iglesia', 1, '', NULL, '2017-06-18 09:47:45', '2017-06-18 09:47:45'),
(649, 1, 1, 1, 57, 'Pilar6', 'Sanroman Sampietro', 'La Iglesia', 6, '', NULL, '2017-06-18 09:48:31', '2017-06-18 09:48:31'),
(650, 1, 1, 1, 57, 'Ana Mª', 'Abizanda Sanroman', 'La Iglesia', 6, '', NULL, '2017-06-18 09:49:06', '2017-06-18 09:49:06'),
(651, 1, 1, 1, 57, 'Guillermo y Pilar', 'Abizanda Bometón', 'La Iglesia', 6, '', NULL, '2017-06-18 09:49:49', '2017-06-18 09:49:49'),
(653, 1, 1, 1, 59, 'José', 'Peruga Ollés', 'La Iglesia', 5, '', NULL, '2017-06-18 09:52:37', '2017-06-18 09:52:37'),
(654, 1, 1, 1, 59, 'Mª Carmen', 'Peruga Carrera', 'La Iglesia', 5, '', NULL, '2017-06-18 09:53:47', '2017-06-18 09:53:47'),
(655, 1, 1, 1, 60, 'Ignacio', 'Latorre Ollés', 'La Iglesia', 9, 'Dejar en el 11', NULL, '2017-06-18 09:54:36', '2017-06-18 09:54:36'),
(656, 1, 1, 1, 60, 'María', 'Viñola Puyuelo', 'La Iglesia', 9, 'Dejar en el 11', NULL, '2017-06-18 09:55:20', '2017-06-18 09:55:20'),
(657, 1, 1, 1, 61, 'Antonio Luis', 'Sánchez Ralauy', 'La Iglesia', 11, '', NULL, '2017-06-18 09:55:59', '2017-06-18 09:55:59'),
(658, 1, 1, 1, 61, 'Yolanda', 'Latorre Viñola', 'La Iglesia', 11, '', NULL, '2017-06-18 09:56:24', '2017-06-18 09:56:24'),
(659, 1, 1, 1, 61, 'Marin y Roberto', 'Sánchez Latorre', 'La Iglesia', 11, '', NULL, '2017-06-18 09:57:03', '2017-06-18 09:57:03'),
(660, 1, 1, 1, 62, 'José Mª', 'Lacosta Avilla', 'La Iglesia', 10, '', NULL, '2017-06-18 09:57:26', '2017-06-18 09:57:26'),
(661, 1, 1, 1, 62, 'Carmen', 'Avilla Guayar', 'La Iglesia', 10, '', NULL, '2017-06-18 09:58:07', '2017-06-18 09:58:07'),
(662, 1, 1, 1, 62, 'Miguel Angel', 'Lacosta Arroyos', 'La Iglesia', 10, '', NULL, '2017-06-18 09:58:52', '2017-06-18 09:58:52'),
(663, 1, 1, 1, 62, 'iglesia', 'iglesia', 'La Iglesia', 10, '', NULL, '2017-06-18 09:59:20', '2017-06-18 09:59:20'),
(664, 1, 1, 1, 63, 'Miguel', 'Abenoza Moliner', 'La Iglesia', 13, 'Si no están, dejar certificados en c/pilar 16', NULL, '2017-06-18 10:00:54', '2018-02-28 11:30:12'),
(665, 1, 1, 1, 63, 'Julia', 'Peñalver Martínez', 'La Iglesia', 13, 'Si no están dejar certificados en c/pilar 16', NULL, '2017-06-18 10:01:24', '2017-06-18 10:01:24'),
(666, 1, 1, 1, 64, 'Andrés', 'Peruga Peruga', 'La Iglesia', 15, 'ERZ', NULL, '2017-06-18 10:02:08', '2017-06-18 10:02:08'),
(667, 1, 1, 1, 65, 'Pilar', 'Pintiel Gilabert', 'El Pilar', 11, '', NULL, '2017-06-18 10:02:53', '2017-06-18 10:02:53'),
(668, 1, 1, 1, 65, 'Enrique', 'Lacosta Ibarz', 'El Pilar', 11, '', NULL, '2017-06-18 10:03:20', '2017-06-18 10:03:20'),
(669, 1, 1, 1, 66, 'L. ..', 'Porta Castan', 'El Pilar', 14, 'dejar en 16', NULL, '2017-06-18 10:04:02', '2017-06-18 10:04:02'),
(670, 1, 1, 1, 67, 'Daniel', 'Abenoza González', 'El Pilar', 16, '', NULL, '2017-06-18 10:08:10', '2017-06-18 10:08:10'),
(671, 1, 1, 1, 67, 'rosa Mª', 'Peruga Bernard', 'El Pilar', 16, '', NULL, '2017-06-18 10:08:40', '2017-06-18 10:08:40'),
(672, 1, 1, 1, 67, 'Alejandro y Alvaro', 'Abenoza Peruga', 'El Pilar', 16, '', NULL, '2017-06-18 10:09:29', '2017-06-18 10:09:29'),
(673, 1, 1, 1, 67, 'jesús', 'Abenoza Moliner', 'El Pilar', 16, '', NULL, '2017-06-18 10:26:29', '2017-06-18 10:26:29'),
(674, 1, 1, 1, 67, 'La Roya', 'La Roya SC', 'El Pilar', 16, '', NULL, '2017-06-18 10:26:49', '2018-02-28 11:48:40'),
(675, 1, 1, 1, 68, 'Isidro', 'Abenoza González', 'El Pilar', 20, '', NULL, '2017-06-18 10:28:12', '2017-06-18 10:28:12'),
(676, 1, 1, 1, 68, 'Margarita', 'Alos Salas', 'El Pilar', 20, '', NULL, '2017-06-18 10:28:34', '2017-06-18 10:28:34'),
(677, 1, 1, 1, 69, 'Manuel', 'Marzal Guerrero', 'El Pilar', 24, '', NULL, '2017-06-18 10:29:05', '2017-06-18 10:29:05'),
(678, 1, 1, 1, 70, 'José', 'Mallen Fornies', 'El Pilar', 26, '', NULL, '2017-06-18 10:29:29', '2017-06-18 10:29:29'),
(679, 1, 1, 1, 70, 'Maria', 'Carpi ...', 'El Pilar', 26, '', NULL, '2017-06-18 10:29:56', '2017-06-18 10:29:56'),
(680, 1, 1, 1, 70, 'ramón', 'Quesada', 'El Pilar', 26, 'Devolver', NULL, '2017-06-18 10:30:25', '2017-06-18 10:30:25'),
(681, 1, 1, 1, 71, 'felix', 'Solans Mallén', 'El Pilar', 28, '', NULL, '2017-06-18 10:31:09', '2017-06-18 10:31:09'),
(682, 1, 1, 1, 71, 'Gloria', 'Gayan Santías', 'El Pilar', 28, '', NULL, '2017-06-18 10:31:36', '2017-06-18 10:31:36'),
(683, 1, 1, 1, 71, 'Borja, Carlos y Javier', 'Solans Gayán', 'El Pilar', 28, '', NULL, '2017-06-18 10:32:08', '2017-06-18 10:32:08'),
(684, 1, 1, 1, 71, 'Pilar y María', 'Mallén Peralta', 'El Pilar', 28, '', NULL, '2017-06-18 10:34:07', '2017-06-18 10:34:07'),
(685, 1, 1, 1, 71, 'Lorenzo', 'Solans Agraz', 'El Pilar', 28, '', NULL, '2017-06-18 10:34:29', '2017-06-18 10:34:29'),
(686, 1, 1, 1, 71, 'Adoración', 'Puyal Ezquerra', 'El Pilar', 28, '', NULL, '2017-06-18 10:34:54', '2017-06-18 10:34:54'),
(687, 1, 1, 1, 72, 'Joaquin', 'Peruga Lacambra', 'El Pilar', 17, '', NULL, '2017-06-18 10:35:46', '2017-06-18 10:35:46'),
(688, 1, 1, 1, 72, 'María', 'Pascau Abenoza', 'El Pilar', 17, '', NULL, '2017-06-18 10:36:07', '2017-06-18 10:36:07'),
(689, 1, 1, 1, 72, 'César y Sonia', 'Peruga Pascau', 'El Pilar', 17, '', NULL, '2017-06-18 10:36:52', '2017-06-18 10:36:52'),
(690, 1, 1, 1, 72, 'Carmen', 'Pascau Abenoza', 'El Pilar', 17, 'ERZ', NULL, '2017-06-18 10:37:21', '2017-06-18 10:37:21'),
(691, 1, 1, 1, 73, 'Mª Luisa', 'Solans Mallén', 'El Pilar', 30, '', NULL, '2017-06-18 10:38:00', '2017-06-18 10:38:00'),
(692, 1, 1, 1, 73, 'Manuel', 'Salazar Salort', 'El Pilar', 30, '', NULL, '2017-06-18 10:38:29', '2017-06-18 10:38:29'),
(693, 1, 1, 1, 74, 'Máxima ', 'Agraz Mallen', 'El Pilar', 32, 'dejar en nueva 22', NULL, '2017-06-18 10:39:23', '2017-06-18 10:39:23'),
(694, 1, 1, 1, 75, 'Benjamín', 'Casanovas Radigales', 'El Pilar', 34, '', NULL, '2017-06-18 10:39:57', '2017-06-18 10:39:57'),
(695, 1, 1, 1, 75, 'Josefa', 'Peruga Clavero', 'El Pilar', 34, '', NULL, '2017-06-18 10:40:15', '2017-06-18 10:40:15'),
(696, 1, 1, 1, 75, 'Pilar', 'Gimeno Clavería', 'El Pilar', 34, '', NULL, '2017-06-18 10:40:51', '2017-06-18 10:40:51'),
(697, 1, 1, 1, 76, 'Angel', 'Soto Peruga', 'El Pilar', 36, '', NULL, '2017-06-18 10:41:20', '2017-06-18 10:41:20'),
(698, 1, 1, 1, 76, 'Carmen', 'Pico Charlez', 'El Pilar', 36, '', NULL, '2017-06-18 10:41:41', '2017-06-18 10:41:41'),
(699, 1, 1, 1, 77, 'Mónica', 'Peruga Ochoa', 'El Pilar', 38, '', NULL, '2017-06-19 16:21:49', '2017-06-19 16:21:49'),
(700, 1, 1, 1, 77, 'Andrea', 'Cerezuela Peruga', 'El Pilar', 38, '', NULL, '2017-06-19 16:22:20', '2017-06-19 16:22:20'),
(701, 1, 1, 1, 78, 'Felix', 'Abenoza Escalona', 'El Pilar', 19, '', NULL, '2017-06-19 16:23:28', '2017-06-19 16:23:28'),
(702, 1, 1, 1, 78, 'Josefa', 'Paniello Alvira', 'El Pilar', 19, '', NULL, '2017-06-19 16:24:52', '2017-06-19 16:24:52'),
(703, 1, 1, 1, 78, 'Melchor', 'Abenoza Paniello', 'El Pilar', 19, '', NULL, '2017-06-19 16:25:22', '2017-06-19 16:25:22'),
(704, 1, 1, 1, 78, 'rosa Mª', 'Mur Lope', 'El Pilar', 19, '', NULL, '2017-06-19 16:25:51', '2017-06-19 16:25:51'),
(706, 1, 1, 1, 80, 'Ricardo', 'Lacosta Arroyos', 'El Pilar', 25, '', NULL, '2017-06-19 16:27:25', '2017-06-19 16:27:25'),
(707, 1, 1, 1, 80, 'Elisa', 'Agel Peralta', 'El Pilar', 25, '', NULL, '2017-06-19 16:27:45', '2017-06-19 16:27:45'),
(708, 1, 1, 1, 81, 'José', 'Paniello Peruga', 'El Pilar', 27, '', NULL, '2017-06-19 16:28:18', '2017-06-19 16:28:18'),
(709, 1, 1, 1, 81, 'Pilar', 'Alvira Sagarra', 'El Pilar', 27, '', NULL, '2017-06-19 16:28:47', '2017-06-19 16:28:47'),
(710, 1, 1, 1, 82, 'Antonio', 'Mur Lacambra', 'El Pilar', 48, '', NULL, '2017-06-19 16:29:12', '2017-06-19 16:29:12'),
(711, 1, 1, 1, 82, 'Concepción', 'Abenoza Albert', 'El Pilar', 48, '', NULL, '2017-06-19 16:29:43', '2017-06-19 16:29:43'),
(712, 1, 1, 1, 82, 'j. ..', 'Abenoza Peruga', 'El Pilar', 48, 'ERZ', NULL, '2017-06-19 16:30:17', '2017-06-19 16:30:17'),
(713, 1, 1, 1, 83, 'Fermin Bonifacio', 'Peruga Charlez', 'El Pilar', 50, 'Dejar en nueva 2', NULL, '2017-06-19 16:31:47', '2017-06-19 16:31:47'),
(714, 1, 1, 1, 84, 'rafael', 'Naya Navarra', 'Pz Antonio Periz', 25, '', NULL, '2017-06-19 16:32:34', '2017-06-19 16:32:34'),
(715, 1, 1, 1, 84, 'Carmen', 'Soto Picó', 'Pz Antonio Periz', 25, '', NULL, '2017-06-19 16:33:13', '2017-06-19 16:33:13'),
(716, 1, 1, 1, 84, 'Yolanda y Rafael', 'Naya Soto', 'Pz Antonio Periz', 25, '', NULL, '2017-06-19 16:33:42', '2017-06-19 16:33:42'),
(717, 1, 1, 1, 84, 'Petra', 'Navarra Ezquerra', 'Pz Antonio Periz', 25, '', NULL, '2017-06-19 16:34:07', '2017-06-19 16:34:07'),
(718, 1, 1, 1, 84, 'Eusebio', 'Naya Puedo', 'Pz Antonio Periz', 25, '', NULL, '2017-06-19 16:34:29', '2017-06-19 16:34:29'),
(719, 1, 1, 1, 84, 'Fco', 'Paniello Peruga', 'Pz Antonio Periz', 25, '', NULL, '2017-06-19 16:34:57', '2017-06-19 16:34:57'),
(720, 1, 1, 1, 84, 'Antonio', 'Picó Charlez', 'Pz Antonio Periz', 25, 'ERZ', NULL, '2017-06-19 16:35:55', '2017-06-19 16:35:55'),
(721, 1, 1, 1, 84, 'Isabel', 'Paniello Sanjuan', 'Pz Antonio Periz', 25, '', NULL, '2017-06-19 16:36:20', '2017-06-19 16:36:20'),
(722, 1, 1, 1, 85, 'Miguel', 'Peruga Bernard', 'Pz Antonio Periz', 23, '', NULL, '2017-06-19 16:36:44', '2017-06-19 16:36:44'),
(723, 1, 1, 1, 85, 'Agapita', 'Bernard Novel', 'Pz Antonio Periz', 23, '', NULL, '2017-06-19 16:37:11', '2017-06-19 16:37:11'),
(724, 1, 1, 1, 86, 'Victor', 'Novel Peruga', 'Pz Antonio Periz', 17, '', NULL, '2017-06-19 16:37:38', '2017-06-19 16:37:38'),
(725, 1, 1, 1, 86, 'Asunción', 'Marcial Correas', 'Pz Antonio Periz', 17, '', NULL, '2017-06-19 16:38:20', '2017-06-19 16:38:20'),
(726, 1, 1, 1, 86, 'Alicia, Mª Pilar y Victor', 'Novel Marzal', 'Pz Antonio Periz', 17, '', NULL, '2017-06-19 16:39:09', '2017-06-19 16:39:09'),
(727, 1, 1, 1, 86, 'M..', 'Marcial Correas', 'Pz Antonio Periz', 17, 'ERZ', NULL, '2017-06-19 16:39:52', '2017-06-19 16:39:52'),
(728, 1, 1, 1, 87, 'José y Julio', 'Abizanda Charlez', 'c/mayor', 20, '', NULL, '2017-06-19 16:41:42', '2017-06-19 16:41:42'),
(729, 1, 1, 1, 87, 'Ramiro', 'Abizanda Loscertales', 'c/mayor', 20, '', NULL, '2017-06-19 16:42:14', '2017-06-19 16:42:14'),
(730, 1, 1, 1, 87, 'Felisa', 'Charlez Garcés', 'c/mayor', 20, '', NULL, '2017-06-19 16:42:38', '2017-06-19 16:42:38'),
(732, 1, 1, 1, 87, '....', 'Aranela, Bindu, Citus', 'c/mayor', 20, '', NULL, '2017-06-19 16:44:24', '2017-06-19 16:44:24'),
(733, 1, 1, 1, 88, 'Manuel', 'Escudero Tardío', 'c/mayor', 15, '', NULL, '2017-06-19 16:45:00', '2017-06-19 16:45:00'),
(734, 1, 1, 1, 88, 'Pilar', 'Casado Pons', 'c/mayor', 15, '', NULL, '2017-06-19 16:45:25', '2017-06-19 16:45:25'),
(735, 1, 1, 1, 88, 'Manuel, Jorge José', 'Escudero Casado', 'c/mayor', 15, '', NULL, '2017-06-19 16:46:06', '2017-06-19 16:46:06'),
(736, 1, 1, 1, 89, 'José Mª', 'Puyuelo Charlez', 'c/mayor', 16, '', NULL, '2017-06-19 16:46:39', '2017-06-19 16:46:39'),
(737, 1, 1, 1, 89, 'Isabel', 'Charlez Azlor', 'c/mayor', 16, '', NULL, '2017-06-19 16:46:56', '2017-06-19 16:46:56'),
(738, 1, 1, 1, 89, 'Isabel', 'Puyuelo Charlez', 'c/mayor', 16, '', NULL, '2017-06-19 16:47:17', '2017-06-19 16:47:17'),
(739, 1, 1, 1, 90, 'José', 'Charlez Abenoza', 'c/mayor', 11, 'dejar en nueva 22', NULL, '2017-06-19 16:48:46', '2017-06-19 16:48:46'),
(740, 1, 1, 1, 91, 'Araceli ', 'Marzal Peruga', 'c/mayor', 14, '', NULL, '2017-06-19 16:49:31', '2017-06-19 16:49:31'),
(741, 1, 1, 1, 91, 'Raquel', 'Fdez Marzal', 'c/mayor', 14, '', NULL, '2017-06-19 16:50:08', '2017-06-19 16:50:08'),
(742, 1, 1, 1, 91, 'jesús', 'Fdez Ariso', 'c/mayor', 14, 'ERZ', NULL, '2017-06-19 16:51:52', '2017-06-19 16:51:52'),
(743, 1, 1, 1, 92, 'Felix', 'Peruga Charlez', 'c/mayor', 9, 'Dejar en c/Iglesia 5', NULL, '2017-06-19 16:52:39', '2017-06-19 16:52:39'),
(744, 1, 1, 1, 92, 'Carmen', 'Carrera Latre', 'c/mayor', 9, 'Dejar en c/Iglesia 5', NULL, '2017-06-19 16:54:21', '2017-06-19 16:54:21'),
(745, 1, 1, 1, 93, 'Antonio', 'Arner Pueyo', 'c/mayor', 10, 'Dejar en Barrio Nuevo 18', NULL, '2017-06-19 16:55:18', '2018-02-28 11:34:35'),
(746, 1, 1, 1, 94, 'rafael, Rosario y Miguel y J', 'Charlez Peruga', 'c/mayor', 7, '', NULL, '2017-06-19 16:56:23', '2017-06-19 16:56:23'),
(747, 1, 1, 1, 94, 'Pilar', 'Peruga Toyas', 'c/mayor', 7, '', NULL, '2017-06-19 16:57:27', '2017-06-19 16:57:27'),
(749, 1, 1, 1, 96, 'Juan Carlos', 'Tardío Abizanda', 'c/mayor', 6, 'Dejar en Aranela', NULL, '2017-06-19 16:58:50', '2017-06-19 16:58:50'),
(750, 1, 1, 1, 96, 'Josefa', 'Peruga Latorre', 'c/mayor', 6, 'Dejar en Aranela', NULL, '2017-06-19 16:59:18', '2017-06-19 16:59:18'),
(751, 1, 1, 1, 96, 'Pilar y Patricia', 'Tardío Peruga', 'c/mayor', 6, 'Dejar en Aranela', NULL, '2017-06-19 16:59:59', '2017-06-19 16:59:59'),
(752, 1, 1, 1, 96, 'Generosa y Mariano', 'Peruga Almunia', 'c/mayor', 6, 'Dejar en Aranela', NULL, '2017-06-19 17:00:40', '2017-06-19 17:00:40'),
(753, 1, 1, 1, 97, 'Faustino', 'Peruga Lacosta', 'c/mayor', 4, '', NULL, '2017-06-19 17:01:59', '2017-06-19 17:01:59'),
(754, 1, 1, 1, 97, 'Isabel', 'Bertry', 'c/mayor', 4, '', NULL, '2017-06-19 17:02:29', '2017-06-19 17:02:29'),
(755, 1, 1, 1, 97, 'Carmen', 'Bayona', 'c/mayor', 4, '', NULL, '2017-06-19 17:02:48', '2017-06-19 17:02:48'),
(756, 1, 1, 1, 98, 'jesús', 'Sanagustín Aniés', 'Zaragoza', 26, '', NULL, '2017-06-19 17:06:33', '2017-06-19 17:06:33'),
(757, 1, 1, 1, 98, 'Teodora', 'Sánchez Novel', 'Zaragoza', 26, '', NULL, '2017-06-19 17:06:49', '2017-06-19 17:06:49'),
(758, 1, 1, 1, 99, 'José Mª', 'Sanagustín Sánchez', 'Zaragoza', 35, '', NULL, '2017-06-19 17:07:37', '2017-06-19 17:07:37'),
(759, 1, 1, 1, 99, 'Silvia', 'Peruga Bernard', 'Zaragoza', 35, '', NULL, '2017-06-19 17:08:09', '2017-06-19 17:08:09'),
(760, 1, 1, 1, 99, 'Sara', 'Sanagustín Peruga', 'Zaragoza', 35, '', NULL, '2017-06-19 17:08:35', '2017-06-19 17:08:35'),
(761, 1, 1, 1, 99, 'Comunidad', 'Comunidad de Regantes de Santalecina, Pomar y Estiche', 'Zaragoza', 35, '', NULL, '2017-06-19 17:09:09', '2017-06-19 17:09:09'),
(762, 1, 1, 1, 100, 'Miguel Angel', 'Monter Ballabriga', 'Zaragoza', 37, '', NULL, '2017-06-19 17:09:42', '2017-06-19 17:09:42'),
(763, 1, 1, 1, 100, 'Teresa', 'Lacosta Agel', 'Zaragoza', 37, '', NULL, '2017-06-19 17:10:04', '2017-06-19 17:10:04'),
(764, 1, 1, 1, 100, 'Sofia', 'Monter Lacosta', 'Zaragoza', 37, '', NULL, '2017-06-19 17:10:24', '2017-06-19 17:10:24'),
(765, 1, 1, 1, 100, 'Sociedad', 'Sociedad civil privada Lacosta Ibarz', 'Zaragoza', 37, '', NULL, '2017-06-19 17:11:17', '2017-06-19 17:11:17'),
(766, 1, 1, 1, 101, 'Guillermo', 'Abizanda Sanroman', 'Zaragoza', 28, '', NULL, '2017-06-19 17:11:39', '2017-06-19 17:11:39'),
(767, 1, 1, 1, 101, 'Concepción', 'Sánchez Ralauy', 'Zaragoza', 28, '', NULL, '2017-06-19 17:12:25', '2017-06-19 17:12:25'),
(768, 1, 1, 1, 101, 'José y Javier', 'Abizanda Sanchez', 'Zaragoza', 28, '', NULL, '2017-06-19 17:13:10', '2017-06-19 17:13:10'),
(769, 1, 1, 1, 101, 'Concepción', 'Raluy Pinzado', 'Zaragoza', 28, 'ERZ', NULL, '2017-06-19 17:13:46', '2017-06-19 17:13:46'),
(770, 1, 1, 1, 101, 'Pilar', 'Sanroman Sampietro', 'Zaragoza', 28, '', NULL, '2017-06-19 17:14:13', '2017-06-19 17:14:13'),
(771, 1, 1, 1, 101, 'Ana y Eliseo', 'Abizanda Sanroman', 'Zaragoza', 28, '?', NULL, '2017-06-19 17:15:32', '2017-06-19 17:15:32'),
(773, 1, 1, 1, 102, 'Aurelio', 'Sender Charlez', 'Afueras', 12, '', NULL, '2017-06-19 17:17:07', '2017-06-19 17:17:07'),
(774, 1, 1, 1, 102, 'Candelaria', 'Pena Guerrero', 'Afueras', 12, '', NULL, '2017-06-19 17:18:47', '2017-06-19 17:18:47'),
(775, 1, 1, 1, 102, 'Juan', 'Peruga Ara', 'Afueras', 12, '', NULL, '2017-06-19 17:19:33', '2017-06-19 17:19:33'),
(776, 1, 1, 1, 103, 'Talleres', 'Talleres Sender', 'Afueras', 0, 'Buzón blanco', NULL, '2017-06-19 17:20:37', '2017-06-19 17:20:37'),
(777, 1, 1, 1, 103, 'Alfonso', 'Sender Pena', 'Afueras', 0, 'Buzón blanco', NULL, '2017-06-19 17:20:55', '2017-06-19 17:20:55'),
(778, 1, 1, 1, 103, 'Mª José', 'Sanjuan Bello', 'Afueras', 0, 'Buzón blanco', NULL, '2017-06-19 17:21:45', '2017-06-19 17:21:45'),
(779, 1, 1, 1, 103, 'Mª Carmen', 'Sanjuan Huergo', 'Afueras', 0, 'Buzón blanco', NULL, '2017-06-19 17:22:27', '2017-06-19 17:22:27'),
(780, 1, 1, 1, 104, 'César', 'Peruga Pescan', 'Av Aragön', 1, '', NULL, '2017-06-19 17:23:03', '2017-06-19 17:23:03'),
(781, 1, 1, 1, 104, 'Laura', 'Peruga Ramón', 'Av Aragón', 1, '', NULL, '2017-06-19 17:23:39', '2017-06-19 17:23:39'),
(782, 1, 1, 1, 106, 'Jose Ramón', 'Peruga Pillera', 'Av Aragón', 5, '', NULL, '2017-06-19 17:24:35', '2017-06-19 17:24:35'),
(783, 1, 1, 1, 107, 'Jorge', 'Escudero Casado', 'Av Aragón', 7, '', NULL, '2017-06-19 17:25:02', '2017-06-19 17:25:02'),
(784, 1, 1, 1, 107, 'Laura', 'Escobar', 'Av Aragón', 7, '', NULL, '2017-06-19 17:27:14', '2017-06-19 17:27:14'),
(785, 1, 1, 1, 108, 'Victor', 'Pascau Lastanosa', 'Av Aragón', 9, '', NULL, '2017-06-19 17:27:40', '2017-06-19 17:27:40'),
(786, 1, 1, 1, 108, 'Nuria', 'Pena Peralta', 'Av Aragón', 9, '', NULL, '2017-06-19 17:27:59', '2017-06-19 17:27:59'),
(787, 1, 1, 1, 109, 'Sergio J', 'Fdez Marzal', 'Av Aragón', 11, 'A veces vienen a c/Mayor 14', NULL, '2017-06-19 17:28:25', '2018-02-28 11:45:03'),
(788, 1, 1, 1, 109, 'Raquel', 'Salazar Solans', 'Av Aragón', 11, '', NULL, '2017-06-19 17:28:55', '2017-06-19 17:28:55'),
(789, 1, 1, 1, 109, 'Mario', 'Fdez Salazar', 'Av Aragón', 11, '', NULL, '2017-06-19 17:29:27', '2017-06-19 17:29:27'),
(790, 1, 1, 1, 110, 'Eugenia', 'Salazar Solans', 'Av Aragón', 13, '', NULL, '2017-06-19 17:30:51', '2017-06-19 17:30:51'),
(791, 1, 1, 1, 111, 'Eva', 'Peruga Castellar', 'Av Aragón', 15, '', NULL, '2017-06-19 17:31:15', '2017-06-19 17:31:15'),
(792, 1, 1, 1, 112, 'Fernando', 'Abizanda Pecondón', 'Frente Escuelas o Parque', 6, 'Buzón negro', NULL, '2017-06-19 17:32:00', '2018-02-28 11:31:43'),
(793, 1, 1, 1, 112, 'Mónica', 'Calavera Insanta', 'Frente Escuelas o Parque', 6, 'Buzón negro', NULL, '2017-06-19 17:32:29', '2018-02-28 11:37:41'),
(794, 1, 1, 1, 112, 'Pilar', 'Insanta Pomar', 'Frente Escuelas', 0, 'Buzón negro', NULL, '2017-06-19 17:32:52', '2017-06-19 17:32:52'),
(795, 1, 1, 1, 113, 'Leandro', 'Peruga Sánchez', 'Frente Escuelas', 0, 'Buzón verde', NULL, '2017-06-19 17:33:43', '2017-06-19 17:33:43'),
(796, 1, 1, 1, 113, 'Dolores', 'Nasarre Sagarra', 'Frente Escuelas o Parque', 4, 'Buzón verde', NULL, '2017-06-19 17:34:14', '2018-02-28 11:52:53'),
(797, 1, 1, 1, 114, 'Fco', 'Pecondón Peruga', 'Barrio Nuevo', 1, '', NULL, '2017-06-19 17:34:40', '2017-06-19 17:34:40'),
(798, 1, 1, 1, 114, 'Ángela', 'Pecondón Español', 'Barrio Nuevo', 1, '', NULL, '2017-06-19 17:35:12', '2017-06-19 17:35:12'),
(799, 1, 1, 1, 115, 'Antonio', 'Abenoza Escalona', 'Barrio Nuevo', 3, '', NULL, '2017-06-19 17:35:46', '2017-06-19 17:35:46'),
(800, 1, 1, 1, 115, 'Carmen', 'Santiago Sánchez', 'Barrio Nuevo', 3, '', NULL, '2017-06-19 17:36:39', '2017-06-19 17:36:39'),
(801, 1, 1, 1, 116, 'Construcciones', 'Construcciones Agel-Avilla', 'Cabañera', 0, '', NULL, '2017-06-19 17:37:58', '2017-06-19 17:37:58'),
(802, 1, 1, 1, 117, 'Miguel Angel', 'Lacosta Avilla', 'Cabañera', 2, '', NULL, '2017-06-19 17:38:18', '2017-06-19 17:38:18'),
(803, 1, 1, 1, 117, 'Lucia', 'Dobón Garcés', 'Cabañera', 2, '', NULL, '2017-06-19 17:38:50', '2017-06-19 17:38:50'),
(804, 1, 1, 1, 117, 'Adela, Nicolás y Angelita', 'Lacosta Dobón', 'Cabañera', 2, '', NULL, '2017-06-19 17:39:27', '2017-06-19 17:39:27'),
(805, 1, 1, 1, 118, 'Fco', 'Salas Rodriguez', 'Barrio Nuevo', 7, '', NULL, '2017-06-19 17:41:25', '2017-06-19 17:41:25'),
(806, 1, 1, 1, 118, 'Vicenta', 'Peruga Zuriguel', 'Barrio Nuevo', 7, '', NULL, '2017-06-19 17:41:50', '2017-06-19 17:41:50'),
(807, 1, 1, 1, 118, 'Araceli y Mª José', 'Salas Peruga', 'Barrio Nuevo', 7, '', NULL, '2017-06-19 17:42:28', '2017-06-19 17:42:28'),
(808, 1, 1, 1, 119, 'Fco', 'Martinez Bravo', 'Barrio Nuevo', 8, 'Dejar en Nueva 30', NULL, '2017-06-19 17:43:16', '2017-06-19 17:43:16'),
(809, 1, 1, 1, 119, 'Pilar', 'Alvira Fumanal', 'Barrio Nuevo', 8, 'Dejar en Nueva 30', NULL, '2017-06-19 17:43:57', '2017-06-19 17:43:57'),
(810, 1, 1, 1, 119, 'Pilar', 'Fumanal', 'Barrio Nuevo', 8, 'Dejar en Nueva 30', NULL, '2017-06-19 17:44:20', '2017-06-19 17:44:20'),
(811, 1, 1, 1, 120, 'Ricardo', 'Lacosta Agel', 'Barrio Nuevo', 10, 'alcalde', NULL, '2017-06-19 17:44:51', '2017-06-19 17:44:51'),
(812, 1, 1, 1, 120, 'Mª Pilar', 'Ibarz Gonzalez', 'Barrio Nuevo', 10, '', NULL, '2017-06-19 17:45:18', '2017-06-19 17:45:18'),
(813, 1, 1, 1, 120, 'María', 'Lacosta Ibarz', 'Barrio Nuevo', 10, '', NULL, '2017-06-19 17:46:02', '2018-02-28 11:49:53'),
(814, 1, 1, 1, 120, 'asociación', 'Asociación Carracinca', 'Barrio Nuevo', 10, '', NULL, '2017-06-19 17:46:24', '2017-06-19 17:46:24'),
(815, 1, 1, 1, 121, 'Antonio', 'Arner Pueyo', 'Barrio Nuevo', 18, '', NULL, '2017-06-19 17:47:15', '2017-06-19 17:47:15'),
(816, 1, 1, 1, 121, 'Emilia', 'Consola Alvira', 'Barrio Nuevo', 18, '', NULL, '2017-06-19 17:47:42', '2017-06-19 17:47:42'),
(817, 1, 1, 1, 121, 'Ruben, Sergio y Soroya', 'Arner Consola', 'Barrio Nuevo', 18, '', NULL, '2017-06-19 17:48:15', '2017-06-19 17:48:15'),
(818, 1, 1, 1, 121, 'Comunidad', 'Comunidad de Regantes SanPedro', 'Barrio Nuevo', 18, 'Buzón verde enfrente de Barrio Nuevo 18', NULL, '2017-06-19 17:48:55', '2018-05-14 18:27:49'),
(819, 1, 1, 1, 122, 'jesús Pablo', 'Porte Agel', 'Barrio Nuevo', 9, '', NULL, '2017-06-19 17:49:46', '2017-06-19 17:49:46'),
(820, 1, 1, 1, 122, 'Ana', 'Alcoberro Peruga', 'Barrio Nuevo', 9, '', NULL, '2017-06-19 17:50:14', '2017-06-19 17:50:14'),
(821, 1, 1, 1, 122, 'Pablo y Ana', 'Porte Agel', 'Barrio Nuevo', 9, '', NULL, '2017-06-19 17:50:52', '2017-06-19 17:50:52'),
(822, 1, 1, 1, 123, 'Ambrosio', 'Lacosta Arroyos', 'Barrio Nuevo', 12, '', NULL, '2017-06-19 17:51:11', '2017-06-19 17:51:11'),
(823, 1, 1, 1, 123, 'Loreto', 'Lerín Lerin', 'Barrio Nuevo', 12, '', NULL, '2017-06-19 17:51:33', '2017-06-19 17:51:33'),
(824, 1, 1, 1, 123, 'Isabel', 'Lacosta Lerin', 'Barrio Nuevo', 12, '', NULL, '2017-06-19 17:51:47', '2017-06-19 17:51:47'),
(825, 1, 1, 1, 124, 'jesús', 'Porte Ariño', 'Barrio Nuevo', 14, '', NULL, '2017-06-19 17:52:29', '2017-06-19 17:52:29'),
(826, 1, 1, 1, 124, 'Mª Jesús', 'Agel Latorre', 'Barrio Nuevo', 14, '', NULL, '2017-06-19 17:52:55', '2017-06-19 17:52:55'),
(827, 1, 1, 1, 124, 'Fernando', 'Porte Agel', 'Barrio Nuevo', 14, '', NULL, '2017-06-19 17:53:15', '2017-06-19 17:53:15'),
(828, 1, 1, 1, 125, 'Jerónimo', 'Marzal Gran', 'Barrio Nuevo', 0, '', NULL, '2017-06-19 17:53:40', '2017-06-19 17:53:40'),
(829, 1, 1, 1, 125, 'Miguel', 'Marzal Gran', 'Barrio Nuevo', 0, '', NULL, '2017-06-19 17:54:01', '2017-06-19 17:54:01'),
(830, 1, 1, 1, 125, 'Antonia', 'Marzal Fumanal', 'Barrio Nuevo', 0, 'ERZ', NULL, '2017-06-19 17:54:37', '2017-06-19 17:54:37'),
(831, 1, 1, 1, 126, 'Santalecina', 'Santalecina Ganadera', 'Barrio Nuevo', 0, '', NULL, '2017-06-19 17:55:29', '2017-06-19 17:55:29'),
(832, 1, 1, 1, 126, 'Fernando', 'Escudero Gran', '', 0, 'Santalecina Ganadera', NULL, '2017-06-19 17:56:19', '2017-06-19 17:56:19'),
(833, 1, 1, 1, 126, 'Blanca', 'Delpuy Ballarin', '', 0, 'Santalecina Ganadera', NULL, '2017-06-19 17:56:48', '2017-06-19 17:56:48'),
(834, 1, 1, 1, 126, 'Azahara y Fernando', 'Escudero Delpuy', '', 0, 'Santalecina Ganadera', NULL, '2017-06-19 17:57:21', '2017-06-19 17:57:21'),
(835, 1, 1, 1, 127, 'ramón', 'Pomar Val', '', 0, 'Traex.S.L', NULL, '2017-06-19 17:58:36', '2017-06-19 17:58:36'),
(836, 1, 1, 1, 127, 'Esteban ', 'Val   ..', '', 0, 'Traex.S.L', NULL, '2017-06-19 17:58:53', '2017-06-19 17:58:53'),
(837, 1, 1, 5, 1, 'Jorge', 'Castillón Bayona', 'Camino Ontiñena', 0, '', NULL, '2017-06-26 16:16:01', '2017-06-26 16:16:01'),
(838, 1, 1, 5, 1, 'Mª Carmen', 'Loncan', 'Camino Ontiñena', 0, '', NULL, '2017-06-26 16:30:48', '2017-06-26 16:30:48'),
(839, 1, 1, 5, 1, 'Miguel y Daniel', 'Castillón Loncan', 'Camino Ontiñena', 0, '', NULL, '2017-06-26 16:32:29', '2017-06-26 16:32:29'),
(840, 1, 1, 5, 2, 'Alberto', 'Villas Bayona', 'Casa Carretera', 0, '', NULL, '2017-06-26 16:55:30', '2017-06-26 16:55:30'),
(841, 1, 1, 5, 2, 'Palmira ', 'Zapater Vidal', 'Casa Carretera', 0, '', '0.00', '2017-06-26 16:55:54', '2017-06-26 16:57:10'),
(842, 1, 1, 5, 2, 'Fco y Elena', 'Villas Zapater', 'Casa Carretera', 0, '', NULL, '2017-06-26 16:56:37', '2017-06-26 16:56:37'),
(843, 1, 1, 5, 2, 'Carmen', 'Bayona Villas', 'Casa Carretera', 0, '', NULL, '2017-06-26 16:59:56', '2017-06-26 16:59:56'),
(844, 1, 1, 5, 2, 'Explotaciones', 'Explotaciones Villas Zapater', 'Casa Carretera', 0, '', NULL, '2017-06-26 17:00:36', '2017-06-26 17:00:36'),
(845, 1, 1, 5, 2, 'Agro', 'Agrobovino', 'Casa Carretera', 0, '', NULL, '2017-06-26 17:00:59', '2017-06-26 17:00:59'),
(846, 1, 1, 5, 2, 'Agro', 'Agropecuaria Bayona', 'Casa Carretera', 0, '', NULL, '2017-06-26 17:01:46', '2017-06-26 17:01:46'),
(847, 1, 1, 5, 3, 'Arse', 'Arse 400', '', 0, '', NULL, '2017-06-26 17:02:29', '2017-06-26 17:02:29'),
(848, 1, 1, 5, 3, 'Protegel', 'Protegel', 'Arse 400', 0, '', NULL, '2017-06-26 17:03:03', '2017-06-26 17:03:03'),
(849, 1, 1, 5, 3, 'Maquinarias', 'Maquinarias 94', 'Arse 400', 0, '', NULL, '2017-06-26 17:03:29', '2017-06-26 17:03:29'),
(850, 1, 1, 5, 3, 'Felix', 'Serrano Serrate', 'Arse 400', 0, '', NULL, '2017-06-26 17:03:59', '2017-06-26 17:03:59'),
(851, 1, 1, 5, 3, 'jesús', 'Serrano Saba', 'Arse 400', 0, '', NULL, '2017-06-26 17:04:49', '2017-06-26 17:04:49'),
(852, 1, 1, 5, 3, 'jesús', 'Serrano Arrazola', 'Arse 400', 0, '', NULL, '2017-06-26 17:05:22', '2017-06-26 17:05:22'),
(853, 1, 1, 5, 3, 'Jorge', 'Serrano', 'Arse 400', 0, '', NULL, '2017-06-26 17:06:22', '2017-06-26 17:06:22'),
(854, 1, 1, 5, 5, 'Pilar', 'Pomar Sanz', 'Extramuros', 9, '', NULL, '2017-06-26 17:06:51', '2017-06-26 17:06:51'),
(855, 1, 1, 5, 5, 'Ángel', 'Pomar Serrano', 'Extramuros', 9, '', NULL, '2017-06-26 17:07:20', '2017-06-26 17:07:20'),
(856, 1, 1, 5, 6, 'Manuel', 'Boix Cervantes', 'Extramuros', 1, '', NULL, '2017-06-26 17:08:05', '2017-06-26 17:08:05'),
(857, 1, 1, 5, 6, 'Nieves', 'Roca ...', 'Extramuros', 1, '', NULL, '2017-06-26 17:08:28', '2017-06-26 17:08:28'),
(858, 1, 1, 5, 7, 'Antonio Carlos', 'López Escalona', 'Extramuros', 2, '', NULL, '2017-06-26 17:22:39', '2017-06-26 17:22:39'),
(859, 1, 1, 5, 7, 'Verónica', 'Sánchez Cortés', 'Extramuros', 2, '', NULL, '2017-06-26 17:23:18', '2017-06-26 17:23:18'),
(860, 1, 1, 5, 8, 'Sebastian', 'Muñoz ..', 'Extramuros', 4, '', NULL, '2017-06-26 17:23:42', '2017-06-26 17:23:42'),
(861, 1, 1, 5, 8, 'Manoli', 'Lendinez', 'Extramuros', 4, '', NULL, '2017-06-26 17:24:03', '2017-06-26 17:24:03'),
(862, 1, 1, 5, 9, 'José', 'Villas Estradera', 'Extramuros', 6, '', NULL, '2017-06-26 17:24:50', '2017-06-26 17:24:50'),
(863, 1, 1, 5, 10, 'Benjamín y Manuel', 'Lapuente Bayona', 'El Pilar', 5, '', NULL, '2017-06-26 17:25:53', '2017-06-26 17:25:53'),
(864, 1, 1, 5, 10, 'Gloria', 'castillon Villas', 'El Pilar', 5, '', NULL, '2017-06-26 17:26:15', '2017-06-26 17:26:15'),
(865, 1, 1, 5, 10, 'Manuel', 'Lapuente Castillón', 'El Pilar', 5, '', NULL, '2017-06-26 17:26:45', '2017-06-26 17:26:45');
INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(866, 1, 1, 5, 10, 'Elisabeth', 'Gine Bosch', 'El Pilar', 5, '', NULL, '2017-06-26 17:27:23', '2017-06-26 17:27:23'),
(867, 1, 1, 5, 10, 'Juan', 'Prim Zamora', 'El Pilar', 5, '', NULL, '2017-06-26 17:27:45', '2017-06-26 17:27:45'),
(868, 1, 1, 5, 10, 'Felisa', 'Estradera Villas', 'El Pilar', 5, '', NULL, '2017-06-26 17:28:10', '2017-06-26 17:28:10'),
(869, 1, 1, 5, 10, 'asociación', 'Asociación de Amas de Casa', 'El Pilar', 5, '', NULL, '2017-06-26 17:29:06', '2017-06-26 17:29:06'),
(870, 1, 1, 5, 10, 'Biblio', 'Biblioteca', 'El Pilar', 5, '', NULL, '2017-06-26 17:29:24', '2017-06-26 17:29:24'),
(871, 1, 1, 5, 11, 'Fco', 'Salar Alzuria', 'Travesía del Pilar', 14, '', NULL, '2017-06-26 17:30:08', '2017-06-26 17:30:08'),
(872, 1, 1, 5, 11, 'José', 'Salar Alzuria', 'Travesía del Pilar', 14, '', NULL, '2017-06-26 17:30:35', '2017-06-26 17:30:35'),
(873, 1, 1, 5, 11, 'Elisa', 'Escanilla Roda', 'Travesía del Pilar', 14, '', NULL, '2017-06-26 17:31:03', '2017-06-26 17:31:03'),
(874, 1, 1, 5, 12, 'Aurelio', 'Cebollero Ibarz', 'El Pilar', 2, '', NULL, '2017-06-26 17:31:27', '2017-06-26 17:31:27'),
(875, 1, 1, 5, 12, 'Concepción', 'Peropadre Soldevilla', 'El Pilar', 2, '', NULL, '2017-06-26 17:32:01', '2017-06-26 17:32:01'),
(876, 1, 1, 5, 12, 'Araceli', 'Cebollero Peropadre', 'El Pilar', 2, '', NULL, '2017-06-26 17:32:24', '2017-06-26 17:32:24'),
(877, 1, 1, 5, 13, 'Manuel', 'Giral Jova', 'El Pilar', 3, 'Dejar en casa del alcalde', NULL, '2017-06-26 17:33:00', '2017-06-26 17:33:00'),
(878, 1, 1, 5, 14, 'Rosario', 'Sasot ..', 'Alcolea', 0, '', '0.00', '2017-06-26 17:33:18', '2017-06-26 17:40:00'),
(879, 1, 1, 5, 15, 'José', 'Sanz Estradera', 'Alcolea', 10, '', NULL, '2017-06-26 17:33:50', '2017-06-26 17:33:50'),
(880, 1, 1, 5, 15, 'Rosa', 'Tarrago Navarro', 'Alcolea', 10, '', NULL, '2017-06-26 17:34:22', '2017-06-26 17:34:22'),
(881, 1, 1, 5, 15, 'Marcos Antonio', 'Sanz Tarrago', 'Alcolea', 10, '', NULL, '2017-06-26 17:34:51', '2017-06-26 17:34:51'),
(882, 1, 1, 5, 16, 'Juan José', 'Estudillo Gracia', 'Alcolea', 12, '', NULL, '2017-06-26 17:35:24', '2017-06-26 17:35:24'),
(883, 1, 1, 5, 17, 'Amado', 'Cebollero Estradera', 'Alcolea', 14, '', NULL, '2017-06-26 17:36:03', '2017-06-26 17:36:03'),
(884, 1, 1, 5, 18, 'Juan Carlos', 'Teixido Ferrer', 'Alcolea', 7, '', NULL, '2017-06-26 17:36:37', '2017-06-26 17:36:37'),
(885, 1, 1, 5, 18, 'Mª Carmen', 'Carrasquer Alegre', 'Alcolea', 7, '', NULL, '2017-06-26 17:37:21', '2017-06-26 17:37:21'),
(886, 1, 1, 5, 18, 'Miriam', 'Teixido Carrasquer', 'Alcolea', 7, '', NULL, '2017-06-26 17:37:46', '2017-06-26 17:37:46'),
(887, 1, 1, 5, 18, 'Pilar', 'Ferrer Puy', 'Alcolea', 7, '', NULL, '2017-06-26 17:38:15', '2017-06-26 17:38:15'),
(888, 1, 1, 5, 18, 'Benito', 'Caro Martínez', 'Alcolea', 7, '', NULL, '2017-06-26 17:38:33', '2017-06-26 17:38:33'),
(889, 1, 1, 5, 18, 'Joaquin', 'Teixido Burón', 'Alcolea', 7, '', NULL, '2017-06-26 17:39:01', '2017-06-26 17:39:01'),
(890, 1, 1, 5, 19, 'José Antonio', 'Castillón Ferrer', 'La Iglesia', 12, '', NULL, '2017-06-26 17:41:25', '2017-06-26 17:41:25'),
(891, 1, 1, 5, 19, 'Mª Pilar', 'Castellón Marzola', 'La Iglesia', 12, '', NULL, '2017-06-26 17:42:10', '2017-06-26 17:42:10'),
(892, 1, 1, 5, 19, 'Rosa', 'Ferrer Puy', 'La Iglesia', 12, '', NULL, '2017-06-26 17:42:40', '2017-06-26 17:42:40'),
(893, 1, 1, 5, 19, 'Fco y Juan José', 'Castellón Lapuente', 'La Iglesia', 12, '', NULL, '2017-06-26 17:43:13', '2017-06-26 17:43:13'),
(894, 1, 1, 5, 19, 'Alimentación', 'Alimentación y Carnes Castillón', 'La Iglesia', 12, 'ERZ', NULL, '2017-06-26 17:43:49', '2017-06-26 17:43:49'),
(895, 1, 1, 5, 19, 'Sindicato', 'Sindicato de Riegos', 'La Iglesia', 12, '', NULL, '2017-06-26 17:44:09', '2017-06-26 17:44:09'),
(896, 1, 1, 5, 20, 'Fco', 'Modinos', 'La Iglesia', 11, '', NULL, '2017-06-26 17:44:27', '2017-06-26 17:44:27'),
(897, 1, 1, 5, 20, 'Raúl', 'Modinos Sanz', 'La Iglesia', 11, '', NULL, '2017-06-26 17:44:46', '2017-06-26 17:44:46'),
(898, 1, 1, 5, 21, 'Pedro', 'Carrera Escalona', 'c/mayor', 2, '', NULL, '2017-06-26 17:45:42', '2017-06-26 17:45:42'),
(899, 1, 1, 5, 21, 'Dolores', 'Serrano Alzuria', 'c/mayor', 2, '', NULL, '2017-06-26 17:46:11', '2017-06-26 17:46:11'),
(900, 1, 1, 5, 21, 'Vanesa y Alicia', 'Carrera Serrano', 'c/mayor', 2, '', NULL, '2017-06-26 17:46:34', '2017-06-26 17:46:34'),
(901, 1, 1, 5, 22, 'Pilar y Carmen ', 'Vidal ..', 'c/mayor', 4, 'Guardar', NULL, '2017-06-26 17:47:09', '2017-06-26 17:47:09'),
(902, 1, 1, 5, 23, 'Aurelia', 'Bayona Peropadre', 'c/mayor', 6, '', NULL, '2017-06-26 17:47:37', '2017-06-26 17:47:37'),
(903, 1, 1, 5, 24, 'José Luis y Trinidad', 'Estradera Aineto', 'c/mayor', 10, '', NULL, '2017-06-26 17:48:31', '2017-06-26 17:48:31'),
(904, 1, 1, 5, 24, 'trinidad', 'Aineto Bayona', 'c/mayor', 10, '', NULL, '2017-06-26 17:48:56', '2017-06-26 17:48:56'),
(905, 1, 1, 5, 25, 'Joaquin', 'castillon Bayona', 'c/mayor', 1, '', NULL, '2017-06-26 17:49:33', '2017-06-26 17:49:33'),
(906, 1, 1, 5, 27, 'Chanita', 'Sambun', 'c/mayor', 1, '', NULL, '2017-06-26 17:50:02', '2017-06-26 17:50:02'),
(907, 1, 1, 5, 27, 'local', 'Local Social', 'c/mayor', 1, '', NULL, '2017-06-26 17:50:22', '2017-06-26 17:50:22'),
(908, 1, 1, 5, 28, 'Pilar', 'Serrano Alzuria', 'c/mayor', 5, '', NULL, '2017-06-26 17:52:19', '2017-06-26 17:52:19'),
(909, 1, 1, 5, 28, 'Carmen', 'Alzuria Censalis', 'c/mayor', 5, '', NULL, '2017-06-26 17:52:54', '2017-06-26 17:52:54'),
(910, 1, 1, 5, 29, 'Luis', 'Aineto Bayona', 'c/mayor', 7, '', NULL, '2017-06-26 17:53:37', '2017-06-26 17:53:37'),
(911, 1, 1, 5, 29, 'Josefa', 'Cebollero Estradera', 'c/mayor', 7, '', NULL, '2017-06-26 17:54:21', '2017-06-26 17:54:21'),
(912, 1, 1, 5, 29, 'Carlos Isidro y Pablo', 'Aineto Cebollero', 'c/mayor', 7, '', NULL, '2017-06-26 17:55:01', '2017-06-26 17:55:01'),
(913, 1, 1, 5, 29, 'Belén', 'Mateo Pérez', 'c/mayor', 7, '', NULL, '2017-06-26 17:55:21', '2017-06-26 17:55:21'),
(914, 1, 1, 5, 29, 'Irene', 'Aineto Mateo', 'c/mayor', 7, '', NULL, '2017-06-26 17:55:44', '2017-06-26 17:55:44'),
(915, 1, 1, 5, 29, 'Produ', 'Produciones Artísticas Ayneto', 'c/mayor', 7, '', NULL, '2017-06-26 17:56:06', '2017-06-26 17:56:06'),
(916, 1, 1, 5, 30, 'Manolita', 'Cebollero Bayona', 'c/mayor', 16, '', NULL, '2017-06-26 17:56:39', '2017-06-26 17:56:39'),
(917, 1, 1, 5, 30, 'Victoria', 'Bayona Peropadre', 'c/mayor', 16, '', NULL, '2017-06-26 17:57:05', '2017-06-26 17:57:05'),
(918, 1, 1, 5, 30, 'Miguel', 'cregenzan Ferrer', 'c/mayor', 16, '', NULL, '2017-06-26 17:57:32', '2017-06-26 17:57:32'),
(919, 1, 1, 5, 30, 'Pablo', 'cregenzan Cebollero', 'c/mayor', 16, '', NULL, '2017-06-26 17:57:56', '2017-06-26 17:57:56'),
(920, 1, 1, 5, 31, 'javier', 'Bayona Ayneto', 'c/mayor', 11, '', NULL, '2017-06-26 17:58:31', '2017-06-26 17:58:31'),
(921, 1, 1, 5, 31, 'Araceli', 'Urrea Alegre', 'c/mayor', 11, '', NULL, '2017-06-26 17:59:00', '2017-06-26 17:59:00'),
(922, 1, 1, 5, 31, 'Cristian', 'Bayona Urrea', 'c/mayor', 11, '', NULL, '2017-06-26 17:59:20', '2017-06-26 17:59:20'),
(923, 1, 1, 5, 31, 'María', 'Alegre Vinos', 'c/mayor', 11, '', NULL, '2017-06-26 17:59:41', '2017-06-26 17:59:41'),
(924, 1, 1, 5, 32, 'Agustín', 'Bayona Ayneto', 'c/mayor', 11, '11A', NULL, '2017-06-26 18:04:24', '2017-06-26 18:04:24'),
(925, 1, 1, 5, 32, 'Elena', 'Ayneto Bayona', 'c/mayor', 11, '11A', NULL, '2017-06-26 18:04:45', '2017-06-26 18:04:45'),
(926, 1, 1, 5, 33, 'Enrique y Mercedes', 'Isabal Serrano', 'c/mayor', 18, '', NULL, '2017-06-26 18:05:13', '2017-06-26 18:05:13'),
(927, 1, 1, 5, 33, 'Mercedes', 'Serrano Bistuer', 'c/mayor', 18, '', NULL, '2017-06-26 18:05:54', '2017-06-26 18:05:54'),
(928, 1, 1, 5, 33, 'Mercedes', 'Bistuer Noguero', 'c/mayor', 18, '', NULL, '2017-06-26 18:06:21', '2017-06-26 18:06:21'),
(929, 1, 1, 5, 34, 'Ramón', 'Aragón Lapuerta', 'c/mayor', 20, '', NULL, '2017-06-26 18:07:05', '2017-06-26 18:07:05'),
(930, 1, 1, 5, 34, 'Adelaida', 'Serrano Bayona', 'c/mayor', 20, '', NULL, '2017-06-26 18:07:50', '2017-06-26 18:07:50'),
(931, 1, 1, 5, 34, 'ramón y Carlos', 'Aragón Serrano', 'c/mayor', 20, '', NULL, '2017-06-26 18:08:28', '2017-06-26 18:08:28'),
(932, 1, 1, 5, 35, 'José', 'Serrano Maestro', 'c/mayor', 26, '', NULL, '2017-06-26 18:08:56', '2017-06-26 18:08:56'),
(933, 1, 1, 5, 35, 'Gemma', 'Castellar Lapuente', 'c/mayor', 26, '', NULL, '2017-06-26 18:09:16', '2017-06-26 18:09:16'),
(934, 1, 1, 5, 36, 'Amparo', 'Peropadre Enrech', 'c/mayor', 28, '', NULL, '2017-06-26 18:10:01', '2017-06-26 18:10:01'),
(935, 1, 1, 5, 37, 'Josefina', 'Bayona Peropadre', 'c/Alta', 7, '', NULL, '2017-06-26 18:10:36', '2017-06-26 18:10:36'),
(936, 1, 1, 5, 38, 'Fco J', 'Forcada Serrano', 'c/Alta', 9, '', NULL, '2017-06-26 18:11:23', '2017-06-26 18:11:23'),
(937, 1, 1, 5, 38, 'Ana I', 'Uriol Blecua', 'c/Alta', 9, '', NULL, '2017-06-26 18:11:53', '2017-06-26 18:11:53'),
(938, 1, 1, 5, 39, 'Isabel', 'Ferrer Enrech', 'c/Alta', 11, '', NULL, '2017-06-26 18:12:47', '2017-06-26 18:12:47'),
(939, 1, 1, 5, 40, 'Pedro Antonio', 'Padilla García', 'c/Alta', 2, '', NULL, '2017-06-26 18:14:08', '2017-06-26 18:14:08'),
(940, 1, 1, 5, 40, 'Dolores', 'Prat Bayona', 'c/Alta', 2, '', NULL, '2017-06-26 18:14:33', '2017-06-26 18:14:33'),
(941, 1, 1, 5, 41, 'Miguel', 'Regales', 'c/Alta', 15, '', NULL, '2017-06-26 18:15:00', '2017-06-26 18:15:00'),
(942, 1, 1, 5, 42, 'Fco', 'Bayona Villas', 'c/mayor', 30, '', NULL, '2017-06-26 18:15:54', '2017-06-26 18:15:54'),
(943, 1, 1, 5, 42, 'Antonio, Felipe y Antonia', 'Begue Bayona', 'c/mayor', 30, '', '0.00', '2017-06-26 18:16:13', '2017-06-26 18:18:28'),
(944, 1, 1, 5, 42, 'José Antonio, Blas y Fca', 'Bayona Begue', 'c/mayor', 30, '', '0.00', '2017-06-26 18:16:52', '2017-06-26 18:17:49'),
(945, 1, 1, 5, 43, 'Fco', 'Forcada Lapuente', 'c/mayor', 32, '', NULL, '2017-06-26 18:19:24', '2017-06-26 18:19:24'),
(946, 1, 1, 5, 43, 'Fco', 'Forcada Bayona', 'c/mayor', 32, '', NULL, '2017-06-26 18:20:35', '2017-06-26 18:20:35'),
(947, 1, 1, 5, 43, 'Mª Jesús', 'Serrano Bayona', 'c/mayor', 32, '', NULL, '2017-06-26 18:22:06', '2017-06-26 18:22:06'),
(948, 1, 1, 5, 43, 'Oscar', 'Forcada Serrano', 'c/mayor', 32, '', NULL, '2017-06-26 18:26:44', '2017-06-26 18:26:44'),
(949, 1, 1, 5, 43, 'Ganados', 'Ganados Baforen', 'c/mayor', 32, '', NULL, '2017-06-26 18:27:12', '2017-06-26 18:27:12'),
(950, 1, 1, 5, 43, 'Ganados', 'Ganados Forcada', 'c/mayor', 32, '', NULL, '2017-06-26 18:27:44', '2017-06-26 18:27:44'),
(951, 1, 1, 5, 44, 'Antonio', 'Enrech Rodriguez', 'c/mayor', 15, '', NULL, '2017-06-26 18:28:12', '2017-06-26 18:28:12'),
(952, 1, 1, 5, 44, 'Asunción', 'Cerezuela Bayona', 'c/mayor', 15, '', NULL, '2017-06-26 18:28:37', '2017-06-26 18:28:37'),
(953, 1, 1, 5, 45, 'Gregorio', 'Prat ..', 'c/mayor', 17, 'Dejar en calle Alta 2', NULL, '2017-06-26 18:29:12', '2017-06-26 18:29:12'),
(954, 1, 1, 5, 45, 'Dolores', 'Bayona Serrano', 'c/mayor', 17, 'Dejar en calle Alta 2', NULL, '2017-06-26 18:29:53', '2017-06-26 18:29:53'),
(955, 1, 1, 5, 46, 'Santiago', 'Villas Lardiés', 'c/mayor', 23, '', NULL, '2017-06-26 18:30:26', '2017-06-26 18:30:26'),
(956, 1, 1, 5, 46, 'Mª Asunción', 'Cerezuela Rodriguez', 'c/mayor', 23, '', NULL, '2017-06-26 18:31:21', '2017-06-26 18:31:21'),
(957, 1, 1, 5, 46, 'Antonio', 'Enrech Rodriguez', 'c/mayor', 23, '', NULL, '2017-06-26 18:31:48', '2017-06-26 18:31:48'),
(958, 1, 1, 5, 46, 'Asunción', 'Enrech Cerezuela', 'c/mayor', 23, '', NULL, '2017-06-26 18:32:14', '2017-06-26 18:32:14'),
(959, 1, 1, 5, 46, 'Parroquia', 'Parroquia', 'c/mayor', 23, '', NULL, '2017-06-26 18:32:36', '2017-06-26 18:32:36'),
(960, 1, 1, 5, 47, 'José', 'Bayona Villas', 'c/mayor', 42, '', NULL, '2017-06-26 18:32:57', '2017-06-26 18:32:57'),
(961, 1, 1, 5, 47, 'Ángeles', 'Cebollero Estradera', 'c/mayor', 42, '', NULL, '2017-06-26 18:33:26', '2017-06-26 18:33:26'),
(962, 1, 1, 5, 47, 'Inmaculada', 'Bayona Cebollero', 'c/mayor', 42, '', NULL, '2017-06-26 18:34:11', '2017-06-26 18:34:11'),
(963, 1, 1, 5, 48, 'Fdo', 'Bayona Villas', 'c/mayor', 44, '', NULL, '2017-06-26 18:35:17', '2017-06-26 18:35:17'),
(964, 1, 1, 5, 48, 'Elisa I y José M', 'Reyes Lambis', 'c/mayor', 44, '', NULL, '2017-06-26 18:35:59', '2017-06-26 18:35:59'),
(965, 1, 1, 5, 48, 'Brian ', 'Bayona Reyes', 'c/mayor', 44, '', NULL, '2017-06-26 18:36:19', '2017-06-26 18:36:19'),
(966, 1, 1, 5, 48, 'Ganados', 'Ganados Ángela', 'c/mayor', 44, '', NULL, '2017-06-26 18:36:41', '2017-06-26 18:36:41'),
(967, 1, 1, 5, 49, 'Joaquin', 'Cerezuela Bayona', 'c/mayor', 46, '', NULL, '2017-06-26 18:37:08', '2017-06-26 18:37:08'),
(968, 1, 1, 5, 49, 'Teresa', 'Gracia Teres', 'c/mayor', 46, '', NULL, '2017-06-26 18:37:32', '2017-06-26 18:37:32'),
(969, 1, 1, 5, 49, 'Miguel Angel', 'Cerezuela Gracia', 'c/mayor', 46, '', NULL, '2017-06-26 18:37:58', '2017-06-26 18:37:58'),
(970, 1, 1, 5, 50, 'Fco', 'castillon castillón', 'c/mayor', 52, '', NULL, '2017-06-26 18:38:55', '2017-06-26 18:38:55'),
(971, 1, 1, 5, 50, 'Susaporn', 'Intachinda Tripa', 'c/mayor', 52, '', NULL, '2017-06-26 18:39:44', '2017-06-26 18:39:44'),
(972, 1, 1, 5, 50, 'Mesón', 'Mesón El Tozal', 'c/mayor', 52, '', NULL, '2017-06-26 18:40:03', '2017-06-26 18:40:03'),
(973, 1, 1, 5, 51, 'Martin', 'Bayona Cebollero', 'La Iglesia', 4, '', NULL, '2017-06-26 18:40:34', '2017-06-26 18:40:34'),
(974, 1, 1, 5, 51, 'José Mª', 'Bayona Cebollero', 'La Iglesia', 4, '', NULL, '2017-06-26 18:41:10', '2017-06-26 18:41:10'),
(975, 1, 1, 5, 51, 'patricia M', 'Ferreira', 'La Iglesia', 4, '', NULL, '2017-06-26 18:41:40', '2017-06-26 18:41:40'),
(976, 1, 1, 5, 51, 'Hermano', 'Hermanos Bayona Cebollero', 'La Iglesia', 4, '', NULL, '2017-06-26 18:42:05', '2017-06-26 18:42:05'),
(977, 1, 1, 5, 52, 'Fco', 'Serrano Alzuria', 'La Iglesia', 8, '', NULL, '2017-06-26 18:42:43', '2017-06-26 18:42:43'),
(978, 1, 1, 5, 52, 'Mª Dolores', 'Cebollero Lapuente', 'La Iglesia', 8, '', NULL, '2017-06-26 18:43:17', '2017-06-26 18:43:17'),
(979, 1, 1, 5, 52, 'Amalia, Fco y Sandra', 'Serrano Cebollero', 'La Iglesia', 8, '', NULL, '2017-06-26 18:43:49', '2017-06-26 18:43:49'),
(980, 1, 1, 5, 54, 'Carmen', 'Millera Bayona', 'c/Nueva', 20, '', NULL, '2017-06-26 18:44:36', '2017-06-26 18:44:36'),
(981, 1, 1, 5, 55, 'rosa Mª', 'Cebollero Pomar', 'c/Nueva', 23, '', NULL, '2017-06-26 18:45:09', '2017-06-26 18:45:09'),
(982, 1, 1, 5, 56, 'ramón Antonio', 'Ferrer Puy', 'c/Nueva', 14, '', NULL, '2017-06-26 18:45:40', '2017-06-26 18:45:40'),
(983, 1, 1, 5, 56, 'Ramona', 'Blesa Duran', 'c/Nueva', 14, '', NULL, '2017-06-26 18:45:59', '2017-06-26 18:45:59'),
(984, 1, 1, 5, 57, 'ramón', 'Lapuente Bayona', 'c/Nueva', 12, '', NULL, '2017-06-26 18:46:20', '2017-06-26 18:46:20'),
(985, 1, 1, 5, 57, 'Pilar', 'Pueyo Olona', 'c/Nueva', 12, '', NULL, '2017-06-26 18:46:57', '2017-06-26 18:46:57'),
(986, 1, 1, 5, 58, 'Carmen', 'Urrea Jimenez', 'c/Nueva', 19, '', NULL, '2017-06-26 18:47:18', '2017-06-26 18:47:18'),
(987, 1, 1, 5, 59, 'Mercedes', 'castillon Villas', 'c/Nueva', 17, '', NULL, '2017-06-26 18:48:34', '2017-06-26 18:48:34'),
(988, 1, 1, 5, 60, 'José', 'Bayona Lapuente', 'c/Nueva', 13, '', NULL, '2017-06-26 18:49:02', '2017-06-26 18:49:02'),
(989, 1, 1, 5, 60, 'Narcisa', 'Casado Delarrocha', 'c/Nueva', 13, '', NULL, '2017-06-26 18:49:35', '2017-06-26 18:49:35'),
(990, 1, 1, 5, 61, 'Ascensión', 'Alzuria Bayona', 'c/Nueva', 8, '', NULL, '2017-06-26 18:50:09', '2017-06-26 18:50:09'),
(991, 1, 1, 5, 62, 'José M', 'Enrech Ayneto', 'c/Nueva', 6, '', NULL, '2017-06-26 18:50:54', '2017-06-26 18:50:54'),
(992, 1, 1, 5, 62, 'Manuel', 'Enrech Castellar', 'c/Nueva', 6, '', NULL, '2017-06-26 18:51:28', '2017-06-26 18:51:28'),
(993, 1, 1, 5, 63, 'Antonio', 'Alzuria Villas', 'c/Nueva', 7, '', NULL, '2017-06-26 18:51:58', '2017-06-26 18:51:58'),
(994, 1, 1, 5, 63, 'Pilar', 'Bayona Villas', 'c/Nueva', 7, '', NULL, '2017-06-26 18:52:13', '2017-06-26 18:52:13'),
(995, 1, 1, 5, 64, 'Fco', 'Villas Estradera', 'c/Nueva', 4, '', NULL, '2017-06-26 18:52:36', '2017-06-26 18:52:36'),
(996, 1, 1, 5, 64, 'Fca', 'Delgado Parise', 'c/Nueva', 4, '', NULL, '2017-06-26 18:52:59', '2017-06-26 18:52:59'),
(997, 1, 1, 5, 65, 'Nieves', 'Pasaban', 'c/Nueva', 2, '', NULL, '2017-06-26 18:53:15', '2017-06-26 18:53:15'),
(998, 1, 1, 5, 66, 'Alejandra', 'Alagón Lahuerta', 'c/Nueva', 3, '', NULL, '2017-06-26 18:53:44', '2017-06-26 18:53:44'),
(999, 1, 1, 5, 67, 'Fco', 'Villas Lapuente', 'c/Nueva', 1, 'Cdos a Alberto Villas', NULL, '2017-06-26 18:54:32', '2017-06-26 18:54:32'),
(1000, 1, 1, 5, 68, 'Santiago', 'Modinos Castillón', 'Extramuros', 3, '', NULL, '2017-06-26 18:55:41', '2017-06-26 18:55:41'),
(1001, 1, 1, 5, 68, 'Pilar', 'castillon Peropadre', 'Extramuros', 3, '', NULL, '2017-06-26 18:56:07', '2017-06-26 18:56:07'),
(1002, 1, 1, 5, 68, 'Mª José y Ángeles', 'Ramos Pelay', 'Extramuros', 3, '', NULL, '2017-06-26 18:56:46', '2017-06-26 18:56:46'),
(1003, 1, 1, 5, 68, 'Ana y David ', 'Modinos Ramos', 'Extramuros', 3, '', NULL, '2017-06-26 18:57:16', '2017-06-26 18:57:16'),
(1004, 1, 1, 5, 68, 'Amparo y Ángeles', 'Pelay Bayona', 'Extramuros', 3, '', NULL, '2017-06-26 18:57:46', '2017-06-26 18:57:46'),
(1005, 1, 1, 5, 68, 'Concepción', 'Castillón Peropadre', 'Extramuros', 3, '', NULL, '2017-06-26 18:58:19', '2017-06-26 18:58:19'),
(1006, 1, 1, 5, 68, 'asociación', 'Asociación de Caza', 'Extramuros', 3, '', NULL, '2017-06-26 18:58:50', '2017-06-26 18:58:50'),
(1007, 1, 1, 5, 69, 'Joaquin', 'Bayona Villas', 'Afueras s/n', 0, '', NULL, '2017-06-26 18:59:40', '2017-06-26 18:59:40'),
(1008, 1, 1, 5, 69, 'Apolonia', 'Soñen Olivan', 'Afueras s/n', 0, '', NULL, '2017-06-26 19:00:03', '2017-06-26 19:00:03'),
(1009, 1, 1, 5, 69, 'Alicia', 'Bayona Soñen', 'Afueras s/n', 0, '', NULL, '2017-06-26 19:00:27', '2017-06-26 19:00:27'),
(1010, 1, 1, 5, 69, 'Joaquin', 'Bayona Bayona', 'Afueras s/n', 0, '', NULL, '2017-06-26 19:00:51', '2017-06-26 19:00:51'),
(1011, 1, 1, 5, 69, 'Manuel', 'Giral Joval', 'Afueras s/n', 0, '', NULL, '2017-06-26 19:01:14', '2017-06-26 19:01:14'),
(1012, 1, 1, 5, 69, 'Ayto', 'AYUNTAMIENTO', 'Afueras s/n', 0, '', NULL, '2017-06-26 19:02:00', '2017-06-26 19:02:00'),
(1013, 1, 1, 5, 69, 'Escuelas', 'Escuelas', 'Afueras s/n', 0, '', NULL, '2017-06-26 19:02:14', '2017-06-26 19:02:14'),
(1014, 1, 1, 3, 1, 'Ayto', 'Ayto, Biblioteca, Casa Cultural', 'Pz Mayor', 10, '', NULL, '2017-07-02 09:42:09', '2017-07-02 09:42:09'),
(1015, 1, 1, 3, 2, 'MªJosefa', 'Armengol Chiron', 'Pz Mayor', 8, '', NULL, '2017-07-02 09:42:51', '2017-07-02 09:42:51'),
(1016, 1, 1, 3, 2, 'Guillermo y Mª Jesús', 'Alegre Armengol', 'Pz Mayor', 8, '', NULL, '2017-07-02 09:43:33', '2017-07-02 09:43:33'),
(1017, 1, 1, 3, 3, 'Ángeles', 'Zuriguel Charlez', 'Pz Mayor', 6, '', NULL, '2017-07-02 09:44:36', '2017-07-02 09:44:36'),
(1018, 1, 1, 3, 3, 'David y José Ángel', 'Arroyos Zuriguel', 'Pz Mayor', 6, '', NULL, '2017-07-02 09:45:57', '2017-07-02 09:45:57'),
(1019, 1, 1, 3, 3, 'MariPaz', 'Bobi Juvillar', 'Pz Mayor', 6, '', NULL, '2017-07-02 09:46:35', '2017-07-02 09:46:35'),
(1020, 1, 1, 3, 3, 'Miguel y Oscar', 'Arroyos Bobi', 'Pz Mayor', 6, '', NULL, '2017-07-02 09:46:53', '2017-07-02 09:46:53'),
(1021, 1, 1, 3, 4, 'Multicaja', 'Multicaja', 'Pz Mayor', 4, '', NULL, '2017-07-02 09:47:18', '2017-07-02 09:47:18'),
(1022, 1, 1, 3, 4, 'Florencio', 'Almunia Ribera', 'Pz Mayor', 4, 'Casa', NULL, '2017-07-02 09:47:54', '2017-07-02 09:47:54'),
(1023, 1, 1, 3, 5, 'Extrangeros', 'Extrangeros', 'pz la iglesia', 2, '', NULL, '2017-07-02 09:48:28', '2017-07-02 09:48:28'),
(1024, 1, 1, 3, 6, 'Panaderia', 'Panaderia', 'Pz Mayor', 1, '', NULL, '2017-07-02 09:49:00', '2017-07-02 09:49:00'),
(1025, 1, 1, 3, 6, 'Santiago', 'Sancho Lajara', 'Pz Mayor', 1, '', NULL, '2017-07-02 09:50:02', '2017-07-02 09:50:02'),
(1026, 1, 1, 3, 6, 'Lidia', 'Rodellar Ezquerra', 'Pz Mayor', 1, '', NULL, '2017-07-02 09:51:56', '2017-07-02 09:51:56'),
(1027, 1, 1, 3, 6, 'Elisa', 'Sancho Rodellar', 'Pz Mayor', 1, '', NULL, '2017-07-02 09:52:50', '2017-07-02 09:52:50'),
(1028, 1, 1, 3, 6, 'Miguel Angel', 'Sancho Rodellar', 'Pz Mayor', 1, 'Cinca 6', NULL, '2017-07-02 09:53:35', '2017-07-02 09:53:35'),
(1029, 1, 1, 3, 6, 'Juan José', 'Rodriguez', 'Pz Mayor', 1, '', NULL, '2017-07-02 09:54:14', '2017-07-02 09:54:14'),
(1030, 1, 1, 3, 7, 'Jean', 'Salsas Rigol', 'Pz Mayor', 3, 'Dejar en San Ramón 1', NULL, '2017-07-02 09:54:43', '2017-07-02 09:54:43'),
(1031, 1, 1, 3, 7, 'Boj', 'Boj Arroyos', 'Pz Mayor', 3, 'Dejar en San Ramón 1', NULL, '2017-07-02 09:55:10', '2017-07-02 09:55:10'),
(1032, 1, 1, 3, 7, 'Ignacio', 'Carreras Bruni', 'Pz Mayor', 3, 'Dejar en San Ramón 1', '0.00', '2017-07-02 09:55:48', '2017-07-02 09:57:28'),
(1033, 1, 1, 3, 7, 'Helix', 'Bomarium', 'Pz Mayor', 3, 'Dejar en San Ramón 1', '0.00', '2017-07-02 09:56:23', '2017-07-02 09:57:47'),
(1034, 1, 1, 3, 8, 'José Mª', 'Arroyos Plana', 'Pz Mayor', 5, '', NULL, '2017-07-02 09:56:53', '2017-07-02 09:56:53'),
(1035, 1, 1, 3, 8, 'Mª Teresa', 'Plana Viñao', 'Pz Mayor', 5, '', NULL, '2017-07-02 09:58:54', '2017-07-02 09:58:54'),
(1036, 1, 1, 3, 8, 'Carmen', 'Arroyos Plana', 'Pz Mayor', 5, '', NULL, '2017-07-02 09:59:27', '2017-07-02 09:59:27'),
(1037, 1, 1, 3, 9, 'Lorenzo', 'Trillas Abizanda', 'La Peña', 1, 'Cura Párroco', NULL, '2017-07-02 10:01:12', '2017-07-02 10:01:12'),
(1038, 1, 1, 3, 9, 'José A', 'Ribera Larraz', 'La Peña', 1, '', NULL, '2017-07-02 10:01:56', '2017-07-02 10:01:56'),
(1039, 1, 1, 3, 9, 'Anabel', 'Jimenez Laborda', 'La Peña', 1, '', NULL, '2017-07-02 10:02:17', '2017-07-02 10:02:17'),
(1040, 1, 1, 3, 9, 'Mario y Ana', 'Ribera Jimenez', 'La Peña', 1, '', NULL, '2017-07-02 10:03:01', '2017-07-02 10:03:01'),
(1041, 1, 1, 3, 9, 'Mariano, FDaniel, Joaquin y Josefina', 'Ferrer Ferral', 'La Peña', 1, '', NULL, '2017-07-02 10:05:19', '2017-07-02 10:05:19'),
(1042, 1, 1, 3, 9, 'Natalia', 'Zarroca Ferrer', 'La Peña', 1, '', NULL, '2017-07-02 10:05:55', '2017-07-02 10:05:55'),
(1043, 1, 1, 3, 9, 'Miguel', 'Aso Orús', 'La Peña', 1, '', NULL, '2017-07-02 10:06:19', '2017-07-02 10:06:19'),
(1044, 1, 1, 3, 9, 'Silvia', 'Solans Peruga', 'La Peña', 1, '', NULL, '2017-07-02 10:06:41', '2017-07-02 10:06:41'),
(1045, 1, 1, 3, 9, 'Miguel y Silvia', 'Aso Solanx', 'La Peña', 1, '', NULL, '2017-07-02 10:07:14', '2017-07-02 10:07:14'),
(1046, 1, 1, 3, 9, 'jesús', 'Zueras Ribera', 'La Peña', 1, '', NULL, '2017-07-02 10:07:47', '2017-07-02 10:07:47'),
(1047, 1, 1, 3, 9, 'Natalia ', 'Villagrasa Soler', 'La Peña', 1, '', NULL, '2017-07-02 10:08:58', '2017-07-02 10:08:58'),
(1048, 1, 1, 3, 9, 'Ana', 'Zueras Villagrasa', 'La Peña', 1, '', NULL, '2017-07-02 10:09:50', '2017-07-02 10:09:50'),
(1049, 1, 1, 3, 9, 'José Antonio', 'Ribera Jimenez', 'La Peña', 1, '', NULL, '2017-07-02 10:10:20', '2017-07-02 10:10:20'),
(1050, 1, 1, 3, 10, 'Comunidad', 'Comunidad de Regantes Las Almácidas', 'La Peña', 1, 'o La Peña 3', NULL, '2017-07-02 10:11:15', '2017-07-02 10:11:15'),
(1051, 1, 1, 3, 11, 'Ángel', 'Arroyos Armengol', 'La Peña', 3, '', NULL, '2017-07-02 10:12:45', '2017-07-02 10:12:45'),
(1052, 1, 1, 3, 112, 'Mª Isabel', 'Peruga Almunia', 'La Peña', 3, '', NULL, '2017-07-02 10:13:19', '2017-07-02 10:13:19'),
(1053, 1, 1, 3, 11, 'José Ángel, Virginia e Isabel', 'Arroyos Peruga', 'La Peña', 3, '', NULL, '2017-07-02 10:14:00', '2017-07-02 10:14:00'),
(1054, 1, 1, 3, 12, 'Fco', 'Barba Diez', 'La Peña', 5, '', NULL, '2017-07-02 10:14:37', '2017-07-02 10:14:37'),
(1055, 1, 1, 3, 12, 'Ángeles', 'Arroyos Armengol', 'La Peña', 5, '', NULL, '2017-07-02 10:15:43', '2017-07-02 10:15:43'),
(1056, 1, 1, 3, 13, 'Cesarea', 'Montalvo', 'La Peña', 10, 'Dejar en la Peña 3', NULL, '2017-07-02 10:18:33', '2017-07-02 10:18:33'),
(1057, 1, 1, 3, 13, 'Jesualdo ', 'Medina', 'La Peña', 10, 'Dejar en la Peña 3', NULL, '2017-07-02 10:19:05', '2017-07-02 10:19:05'),
(1058, 1, 1, 3, 13, 'Pilar', 'Arduan Montalvo', 'La Peña', 10, 'Dejar en la Peña 3', NULL, '2017-07-02 10:19:53', '2017-07-02 10:19:53'),
(1059, 1, 1, 3, 14, 'José Mª', 'Urgeles Zuriguel', 'La Peña', 7, '', NULL, '2017-07-02 10:21:01', '2017-07-02 10:21:01'),
(1060, 1, 1, 3, 14, 'Mª Carmen', 'Martin Zuriguel', 'La Peña', 7, '', NULL, '2017-07-02 10:21:55', '2017-07-02 10:21:55'),
(1061, 1, 1, 3, 14, 'Consuelo', 'Zuriguel Bara', 'La Peña', 7, '', NULL, '2017-07-02 10:22:16', '2017-07-02 10:22:16'),
(1062, 1, 1, 3, 14, 'José Eduardo y Belén', 'Urgeles Martin?', 'La Peña', 7, '', NULL, '2017-07-02 10:22:54', '2017-07-02 10:22:54'),
(1063, 1, 1, 3, 15, 'Antonio', 'Barber Gallinat', 'La Peña', 8, '', NULL, '2017-07-02 10:23:44', '2017-07-02 10:23:44'),
(1064, 1, 1, 3, 15, 'Conchita', 'Bellostas Escobar', 'La Peña', 7, '', NULL, '2017-07-02 10:24:21', '2017-07-02 10:24:21'),
(1065, 1, 1, 3, 15, 'Lidia, Beatriz y Conchita', 'Barber Bellostas', 'La Peña', 6, '', NULL, '2017-07-02 10:25:00', '2017-07-02 10:25:00'),
(1066, 1, 1, 3, 16, 'Eusebio', 'Charlez', 'La Peña', 6, '', NULL, '2017-07-02 10:26:01', '2017-07-02 10:26:01'),
(1067, 1, 1, 3, 16, 'Isabel', 'Arroyos Latre', 'La Peña', 6, '', NULL, '2017-07-02 10:26:25', '2017-07-02 10:26:25'),
(1068, 1, 1, 3, 18, 'Ángel y Manuela', 'Peirón Fondebilla', 'La Peña', 2, 'Dejar en Pz Mayor 9', NULL, '2017-07-02 10:27:56', '2017-07-02 10:27:56'),
(1069, 1, 1, 3, 18, 'Antonia', 'Barba Peruga', 'La Peña', 2, 'Dejar en Pz Mayor 9', NULL, '2017-07-02 10:28:22', '2017-07-02 10:28:22'),
(1070, 1, 1, 3, 19, 'Carlos ', 'Trullenque Vidal', 'Pz Mayor', 9, '', NULL, '2017-07-02 10:46:42', '2017-07-02 10:46:42'),
(1071, 1, 1, 3, 19, 'Gemma y Ángel', 'Peirón Barber', 'Pz Mayor', 9, '', NULL, '2017-07-02 10:47:26', '2017-07-02 10:47:26'),
(1072, 1, 1, 3, 19, 'Elena', 'Cancer Roger', 'Pz Mayor', 9, '', NULL, '2017-07-02 10:47:59', '2017-07-02 10:47:59'),
(1073, 1, 1, 3, 19, 'Agropecuaria', 'Agropecuaria La Sabina', 'Pz Mayor', 9, '', NULL, '2017-07-02 10:48:21', '2017-07-02 10:48:21'),
(1074, 1, 1, 3, 19, 'Agropecuaria', 'Agropecuaria La Almendrera', 'Pz Mayor', 9, '', NULL, '2017-07-02 10:48:45', '2017-07-02 10:48:45'),
(1075, 1, 1, 3, 20, 'jesús', 'Agundel', 'Pz Mayor', 11, '', NULL, '2017-07-02 10:49:51', '2017-07-02 10:49:51'),
(1076, 1, 1, 3, 21, 'José A', 'Lallana Borodio?', 'Pz Mayor', 15, '', NULL, '2017-07-02 10:50:37', '2017-07-02 10:50:37'),
(1077, 1, 1, 3, 22, 'Eusebio', 'Fondevilla Vidaller', 'Pz Mayor', 12, '', NULL, '2017-07-02 10:51:32', '2017-07-02 10:51:32'),
(1078, 1, 1, 3, 22, 'Ascensión', 'Vidaller', 'Pz Mayor', 12, '', NULL, '2017-07-02 10:51:59', '2017-07-02 10:51:59'),
(1079, 1, 1, 3, 22, 'Mª Jesús', 'Fondevilla Vidaller', 'Pz Mayor', 12, '', NULL, '2017-07-02 10:52:45', '2017-07-02 10:52:45'),
(1080, 1, 1, 3, 22, 'Modesto Jesús', 'Pérez Toda', 'Pz Mayor', 12, '', NULL, '2017-07-02 10:53:10', '2017-07-02 10:53:10'),
(1081, 1, 1, 3, 23, 'Benito', 'Ribera Ezquerra', 'Pz Mayor', 17, '', NULL, '2017-07-02 10:53:44', '2017-07-02 10:53:44'),
(1082, 1, 1, 3, 24, 'José Antonio', 'Peruga Peirón', 'El Portal', 4, '', NULL, '2017-07-02 10:54:45', '2017-07-02 10:54:45'),
(1083, 1, 1, 3, 24, 'Carmen', 'Peirón Fondevilla', 'El Portal', 4, '', NULL, '2017-07-02 10:55:29', '2017-07-02 10:55:29'),
(1084, 1, 1, 3, 24, 'Justo', 'Peruga', 'El Portal', 4, '', NULL, '2017-07-02 10:55:58', '2017-07-02 10:55:58'),
(1085, 1, 1, 3, 25, 'Araceli, Ángel y Fco', 'Castán Nasarre', 'El Portal', 6, '', NULL, '2017-07-02 10:57:36', '2017-07-02 10:57:36'),
(1086, 1, 1, 3, 26, 'Juan Ramón', 'Ferrer Peruga', 'El Portal', 8, 'Dejar en Cabañera 5', NULL, '2017-07-02 10:58:29', '2017-07-02 10:58:29'),
(1087, 1, 1, 3, 26, 'Antonia', 'Castán Laplana', 'El Portal', 8, '', NULL, '2017-07-02 10:59:13', '2017-07-02 10:59:13'),
(1088, 1, 1, 3, 26, 'Cristina y Juan Fco', 'Ferrer Castán', 'El Portal', 8, '', NULL, '2017-07-02 10:59:50', '2017-07-02 10:59:50'),
(1089, 1, 1, 3, 26, 'Manuela y Fco', 'Laplana Abizanda', 'El Portal', 8, '', NULL, '2017-07-02 11:00:26', '2017-07-02 11:00:26'),
(1090, 1, 1, 3, 27, 'Jesús', 'Peirón Fondevilla', 'El Portal', 10, 'Dejar en Pz Mayor 9', NULL, '2017-07-02 11:02:08', '2017-07-02 11:02:08'),
(1091, 1, 1, 3, 27, 'Mercedes', 'Arqués Torres', 'El Portal', 10, 'Dejar en Pz Mayor 9', NULL, '2017-07-02 11:02:43', '2017-07-02 11:02:43'),
(1092, 1, 1, 3, 28, 'Josefina', 'Zueras Barber', 'El Portal', 1, 'o 3', NULL, '2017-07-02 11:03:11', '2017-07-02 11:03:11'),
(1093, 1, 1, 3, 28, 'Fco', 'Alvira Zuriguel', 'El Portal', 1, 'o 3', NULL, '2017-07-02 11:03:57', '2017-07-02 11:03:57'),
(1094, 1, 1, 3, 28, 'Sara y Ana', 'Zueras Zuriguel', 'El Portal', 1, 'o 3', NULL, '2017-07-02 11:04:26', '2017-07-02 11:04:26'),
(1095, 1, 1, 3, 29, 'jesús', 'Charlez Salas', 'San Antonio', 2, 'o 1, buzón verde', NULL, '2017-07-02 11:05:25', '2017-07-02 11:05:25'),
(1096, 1, 1, 3, 29, 'Mª José', 'Peirón Barber', 'San Antonio', 2, 'o 1, buzón verde', NULL, '2017-07-02 11:06:05', '2017-07-02 11:06:05'),
(1097, 1, 1, 3, 29, 'Pablo, Jesús y José Antonio', 'Charlez Peirón', 'San Antonio', 2, 'o 1, buzón verde', NULL, '2017-07-02 11:06:46', '2017-07-02 11:06:46'),
(1098, 1, 1, 3, 30, 'Manuel ', 'Bara Amorós', 'San Antonio', 4, '', NULL, '2017-07-02 11:08:16', '2017-07-02 11:08:16'),
(1099, 1, 1, 3, 30, 'Mª Ángeles', 'Peruga Vidaller', 'San Antonio', 4, '', NULL, '2017-07-02 11:08:40', '2017-07-02 11:08:40'),
(1100, 1, 1, 3, 31, 'Emiliano', 'Gracia Puente', 'San Antonio', 6, '', NULL, '2017-07-02 11:09:45', '2017-07-02 11:09:45'),
(1101, 1, 1, 3, 31, 'Guadalupe', 'Rodriguez', 'San Antonio', 6, '', NULL, '2017-07-02 11:10:07', '2017-07-02 11:10:07'),
(1102, 1, 1, 3, 32, 'Juan Antonio', 'Puy Zueras', 'San Antonio', 8, '', NULL, '2017-07-02 11:10:36', '2017-07-02 11:10:36'),
(1103, 1, 1, 3, 33, 'Leonor', 'Navarra', 'San José', 1, '', NULL, '2017-07-03 18:14:29', '2017-07-03 18:14:29'),
(1104, 1, 1, 3, 33, 'jesús', 'Rodellar Navarra', 'San José', 1, '', NULL, '2017-07-03 18:14:57', '2017-07-03 18:14:57'),
(1105, 1, 1, 3, 34, 'Jesús', 'Zuriguel Amorós', 'San José', 2, '', NULL, '2017-07-03 18:15:24', '2017-07-03 18:15:24'),
(1106, 1, 1, 3, 35, 'rosa Mª', 'Santaliestra Charlez', 'La Peña', 11, '', NULL, '2017-07-03 18:16:14', '2017-07-03 18:16:14'),
(1107, 1, 1, 3, 35, 'Ángel y Manuela', 'Jurado Jimenez', 'La Peña', 11, '', NULL, '2017-07-03 18:18:17', '2017-07-03 18:18:17'),
(1108, 1, 1, 3, 36, 'Eugenio', 'Nadal Reimat', 'La Peña', 12, '', NULL, '2017-07-03 18:18:44', '2017-07-03 18:18:44'),
(1109, 1, 1, 3, 36, 'Mª Carmen', 'Gasco Mantero', 'La Peña', 12, '', NULL, '2017-07-03 18:19:20', '2017-07-03 18:19:20'),
(1110, 1, 1, 3, 37, 'Andrea y Carmen', 'Puy ...', 'La Peña', 14, '', NULL, '2017-07-03 18:19:49', '2017-07-03 18:19:49'),
(1111, 1, 1, 3, 37, 'Mariano', 'Castán Eras', 'La Peña', 14, '', NULL, '2017-07-03 18:20:09', '2017-07-03 18:20:09'),
(1112, 1, 1, 3, 38, 'Manuela', 'Navarra Dueso', 'San Ramón', 4, '', NULL, '2017-07-03 18:20:39', '2017-07-03 18:20:39'),
(1113, 1, 1, 3, 39, 'José y Antonio', 'Puy Bernard', 'Del Río', 1, '', NULL, '2017-07-03 18:21:37', '2017-07-03 18:21:37'),
(1114, 1, 1, 3, 40, 'Daniela ', 'Ileana Gligor', 'Del Río', 3, 'Viven en Pomared 4', NULL, '2017-07-03 18:22:21', '2017-07-03 18:22:21'),
(1115, 1, 1, 3, 40, 'Victor y MªPaz', 'Franco .', 'Del Río', 3, 'Viven en Pomared 4', NULL, '2017-07-03 18:23:10', '2017-07-03 18:23:10'),
(1116, 1, 1, 3, 42, 'Miguel', 'Rodriguez Moreno', 'Del Río', 7, '', '0.00', '2017-07-03 18:23:34', '2017-07-03 18:30:55'),
(1117, 1, 1, 3, 41, 'Oscar', 'Dominguez Redondo', 'Del Río', 5, '', NULL, '2017-07-03 18:23:57', '2017-07-03 18:23:57'),
(1118, 1, 1, 3, 41, 'Fdo', 'Millá Gómez', 'Del Río', 5, '', NULL, '2017-07-03 18:24:31', '2017-07-03 18:24:31'),
(1119, 1, 1, 3, 41, 'Nieves', 'Solans .', 'Del Río', 5, '', NULL, '2017-07-03 18:24:49', '2017-07-03 18:24:49'),
(1120, 1, 1, 3, 42, 'Nieves', 'Casado Illan', 'Del Río', 7, '', NULL, '2017-07-03 18:31:59', '2017-07-03 18:31:59'),
(1121, 1, 1, 3, 42, 'José Miguel y Tomás', 'Rodriguez Illan', 'Del Río', 7, '', NULL, '2017-07-03 18:32:37', '2017-07-03 18:32:37'),
(1122, 1, 1, 3, 42, 'Catalina', 'Illan Sánchez', 'Del Río', 7, '', NULL, '2017-07-03 18:33:22', '2017-07-03 18:33:22'),
(1123, 1, 1, 3, 43, 'Pedro', 'Fumanal', 'Del Río', 9, '', NULL, '2017-07-03 18:33:40', '2017-07-03 18:33:40'),
(1124, 1, 1, 3, 44, 'José Antonio', 'Zueras Santaliestra', 'San Ramón', 27, '', NULL, '2017-07-03 18:34:31', '2017-07-03 18:34:31'),
(1125, 1, 1, 3, 44, 'Isabel', 'Santaliestra ', 'San Ramón', 27, '', NULL, '2017-07-03 18:34:47', '2017-07-03 18:34:47'),
(1126, 1, 1, 3, 45, 'José Mª', 'Sancerni Agel', 'Castillo', 5, '', NULL, '2017-07-03 18:35:36', '2017-07-03 18:35:36'),
(1127, 1, 1, 3, 45, 'Pilar', 'Penella Olivera', 'Castillo', 5, '', NULL, '2017-07-03 18:36:02', '2017-07-03 18:36:02'),
(1128, 1, 1, 3, 46, 'María', 'Puy Bernard', 'San Ramón', 19, '', NULL, '2017-07-03 18:36:32', '2017-07-03 18:36:32'),
(1129, 1, 1, 3, 46, 'José', 'Manau Amorós', 'San Ramón', 19, 'ERZ', NULL, '2017-07-03 18:37:09', '2017-07-03 18:37:09'),
(1130, 1, 1, 3, 47, 'Claudio', 'Minerva', 'San Ramón', 17, '', NULL, '2017-07-03 18:37:28', '2017-07-03 18:37:28'),
(1131, 1, 1, 3, 47, 'María', 'Da Conceicao', 'San Ramón', 17, '', NULL, '2017-07-03 18:38:37', '2017-07-03 18:38:37'),
(1132, 1, 1, 3, 48, 'Antonia ', 'Torres', 'San Ramón', 15, 'Dejar en San Jorge 4', NULL, '2017-07-03 18:39:20', '2017-07-03 18:39:20'),
(1133, 1, 1, 3, 49, 'Eduardo', 'Puy Zueras', 'San Ramón', 13, '', NULL, '2017-07-03 18:39:58', '2017-07-03 18:39:58'),
(1134, 1, 1, 3, 49, 'Elvira', 'Mallada Franco', 'San Ramón', 13, '', NULL, '2017-07-03 18:40:28', '2017-07-03 18:40:28'),
(1135, 1, 1, 3, 50, 'Extrangeros', 'Extrangeros', 'San Ramón', 11, '', NULL, '2017-07-03 18:40:55', '2017-07-03 18:40:55'),
(1136, 1, 1, 3, 51, 'Enrique', 'Zueras Santaliestra', 'San Ramón', 5, '', NULL, '2017-07-03 18:41:29', '2017-07-03 18:41:29'),
(1137, 1, 1, 3, 51, 'Amparo', 'Agustín Sancho', 'San Ramón', 5, '', NULL, '2017-07-03 18:41:54', '2017-07-03 18:41:54'),
(1138, 1, 1, 3, 52, 'Juan Manuel', 'Puy Bara', 'San Ramón', 3, '', NULL, '2017-07-03 18:42:25', '2017-07-03 18:42:25'),
(1139, 1, 1, 3, 52, 'Sara ', 'Peirón Gallego', 'San Ramón', 3, '', NULL, '2017-07-03 18:43:29', '2017-07-03 18:43:29'),
(1140, 1, 1, 3, 53, 'Victoria', 'Charlez Alvira', 'San Ramón', 2, '', NULL, '2017-07-03 18:45:00', '2017-07-03 18:45:00'),
(1141, 1, 1, 3, 53, 'Roberto', 'Fondevilla Charlez', 'San Ramón', 2, '', NULL, '2017-07-03 18:45:22', '2017-07-03 18:45:22'),
(1142, 1, 1, 3, 54, 'Miguel Angel', 'Zueras Abizanda', 'San Ramón', 1, '', NULL, '2017-07-03 18:46:26', '2017-07-03 18:46:26'),
(1143, 1, 1, 3, 54, 'Susana ', 'Bellostas', 'San Ramón', 1, '', NULL, '2017-07-03 18:46:52', '2017-07-03 18:46:52'),
(1144, 1, 1, 3, 55, 'jesús Pascual', 'Barber Gallinat', 'San Ramón', 1, '1 Bis', NULL, '2017-07-03 18:47:34', '2017-07-03 18:47:34'),
(1145, 1, 1, 3, 55, 'Teresa', 'Antolin Abizanda', 'San Ramón', 1, '1 Bis', NULL, '2017-07-03 18:48:16', '2017-07-03 18:48:16'),
(1146, 1, 1, 3, 56, 'purificación', 'Lallana Borodio', 'San Roque', 5, 'o 7', NULL, '2017-07-03 18:49:23', '2017-07-03 18:49:23'),
(1147, 1, 1, 3, 56, 'javier', 'Charlez', 'San Roque', 5, '', NULL, '2017-07-03 18:50:33', '2017-07-03 18:50:33'),
(1148, 1, 1, 3, 57, 'Montse', 'Grau ..', 'San Roque', 7, '', NULL, '2017-07-03 18:51:31', '2017-07-03 18:51:31'),
(1149, 1, 1, 3, 58, 'Fco y Manuel', 'Fondevilla Penella', 'San Roque', 9, 'Dejar en Canal Terreu 9 ?', NULL, '2017-07-03 18:53:00', '2017-07-03 18:53:00'),
(1150, 1, 1, 3, 59, 'Ciprian y Anka', 'Gligor .', 'San Roque', 1, '', NULL, '2017-07-03 18:53:59', '2017-07-03 18:53:59'),
(1151, 1, 1, 3, 59, 'Manuel', 'Antequera Montes', 'San Roque', 1, '', NULL, '2017-07-03 18:54:19', '2017-07-03 18:54:19'),
(1152, 1, 1, 3, 59, 'Pilar', 'Manau Sancho', 'San Roque', 1, '', NULL, '2017-07-03 18:54:45', '2017-07-03 18:54:45'),
(1153, 1, 1, 3, 59, 'Rocio y Raquel', 'Antequera Manau', 'San Roque', 1, '', NULL, '2017-07-03 18:55:10', '2017-07-03 18:55:10'),
(1154, 1, 1, 3, 60, 'Ana Mª', 'Aldecoa Velasco', 'c/mayor', 11, 'Farmacia', NULL, '2017-07-09 08:12:50', '2017-07-09 08:12:50'),
(1155, 1, 1, 3, 60, 'Marcos', 'Suarez Porrón', 'c/mayor', 11, 'Farmacia', NULL, '2017-07-09 08:13:16', '2017-07-09 08:13:16'),
(1156, 1, 1, 3, 61, 'Julio Antonio', 'Alegre Laplana', 'c/mayor', 11, 'Dejar en Cabañera 13', NULL, '2017-07-09 08:14:08', '2017-07-09 08:14:08'),
(1157, 1, 1, 3, 61, 'Teresa', 'Laplana Ara', 'c/mayor', 11, 'Dejar en Cabañera 13', NULL, '2017-07-09 08:14:40', '2017-07-09 08:14:40'),
(1158, 1, 1, 3, 62, 'Fco', 'Sancho Lajara', 'c/mayor', 13, '', NULL, '2017-07-09 08:15:29', '2017-07-09 08:15:29'),
(1159, 1, 1, 3, 62, 'Ángela', 'cregenzan Castán', 'c/mayor', 13, '', NULL, '2017-07-09 08:15:59', '2017-07-09 08:15:59'),
(1160, 1, 1, 3, 62, 'Joaquina', 'Castán Navarra', 'c/mayor', 13, '', NULL, '2017-07-09 08:16:25', '2017-07-09 08:16:25'),
(1161, 1, 1, 3, 64, 'José', 'Sarvisen Ferrer', 'c/mayor', 19, '', NULL, '2017-07-09 08:17:53', '2017-07-09 08:17:53'),
(1162, 1, 1, 3, 64, 'Manuela', 'Piquero Fondevilla', 'c/mayor', 19, '', NULL, '2017-07-09 08:18:24', '2017-07-09 08:18:24'),
(1163, 1, 1, 3, 64, 'José', 'Piquero Lajara', 'c/mayor', 19, '', NULL, '2017-07-09 08:18:45', '2017-07-09 08:18:45'),
(1164, 1, 1, 3, 65, 'José y Fco', 'Urgeles Arroyos', 'Hugarte', 1, '', NULL, '2017-07-09 08:19:21', '2017-07-09 08:19:21'),
(1165, 1, 1, 3, 65, 'Conchita', 'Ríos Puyal', 'Hugarte', 1, '', NULL, '2017-07-09 08:19:49', '2017-07-09 08:19:49'),
(1166, 1, 1, 3, 65, 'José y Fco', 'Urgeles Ríos', 'Hugarte', 1, '', NULL, '2017-07-09 08:20:16', '2017-07-09 08:20:16'),
(1167, 1, 1, 3, 66, 'Alselmo', 'Rodellar Navarra', 'Hugarte', 7, '', NULL, '2017-07-09 08:20:39', '2017-07-09 08:20:39'),
(1168, 1, 1, 3, 66, 'Mª Jesús', 'Peirón Barber', 'Hugarte', 7, '', NULL, '2017-07-09 08:21:00', '2017-07-09 08:21:00'),
(1169, 1, 1, 3, 66, 'patricia', 'Rodellar Peirón', 'Hugarte', 7, '', NULL, '2017-07-09 08:21:27', '2017-07-09 08:21:27'),
(1170, 1, 1, 3, 66, 'Agueda', 'Barber Rivero', 'Hugarte', 7, '', NULL, '2017-07-09 08:21:54', '2017-07-09 08:21:54'),
(1171, 1, 1, 3, 67, 'Joaquin', 'Alegre Laplana', 'Hugarte', 2, '', NULL, '2017-07-09 08:22:22', '2017-07-09 08:22:22'),
(1172, 1, 1, 3, 67, 'Marina', 'Rufas Olacia', 'Hugarte', 2, '', NULL, '2017-07-09 08:22:51', '2017-07-09 08:22:51'),
(1173, 1, 1, 3, 68, 'Bar', 'Bar el Rubio', 'Pomared', 2, '', NULL, '2017-07-09 08:23:38', '2017-07-09 08:23:38'),
(1174, 1, 1, 3, 68, 'José Antonio', 'Fondevilla Azlor', 'Pomared', 2, '', NULL, '2017-07-09 08:24:10', '2017-07-09 08:24:10'),
(1175, 1, 1, 3, 68, 'Pilar', 'Barber Gallinat', 'Pomared', 2, '', NULL, '2017-07-09 08:24:27', '2017-07-09 08:24:27'),
(1176, 1, 1, 3, 68, 'José Antonio y Mireya ', 'Fondevilla Barber', 'Pomared', 2, '', NULL, '2017-07-09 08:25:23', '2017-07-09 08:25:23'),
(1177, 1, 1, 3, 68, 'Alejandrina', 'Azlor ..', 'Pomared', 2, 'Viene en c/mayor 1 en Estiche', NULL, '2017-07-09 08:26:04', '2017-07-09 08:26:04'),
(1178, 1, 1, 3, 69, 'Juan José', 'Zueras Guillen', 'Pomared', 1, '', NULL, '2017-07-09 08:26:26', '2017-07-09 08:26:26'),
(1179, 1, 1, 3, 70, 'Pedro José', 'Navarro Moya', 'Pomared', 3, '', NULL, '2017-07-09 08:26:55', '2017-07-09 08:26:55'),
(1180, 1, 1, 3, 70, 'Dorin', 'Plana Losll?', 'Pomared', 3, '', NULL, '2017-07-09 08:27:50', '2017-07-09 08:27:50'),
(1181, 1, 1, 3, 71, 'Josefina', 'Solans Viñuales', 'Pomared', 4, '1ª Puerta', NULL, '2017-07-09 08:29:08', '2017-07-09 08:29:08'),
(1182, 1, 1, 3, 72, 'Enrique', 'Solans Viñuales', 'Pomared', 4, '2ª Puerta, almacen', NULL, '2017-07-09 08:29:44', '2017-07-09 08:29:44'),
(1183, 1, 1, 3, 72, 'Nuri', 'Augusto Peirón', 'Pomared', 4, '2ª Puerta, almacen', '0.00', '2017-07-09 08:30:14', '2017-07-09 08:30:38'),
(1184, 1, 1, 3, 72, 'José Ricardo', 'Peirón Millan', 'Pomared', 4, '2ª Puerta, almacen', NULL, '2017-07-09 08:32:22', '2017-07-09 08:32:22'),
(1185, 1, 1, 3, 73, 'Mª Isabel', 'Extremeiro Trallero', 'Pomared', 6, '', NULL, '2017-07-09 08:32:53', '2017-07-09 08:32:53'),
(1186, 1, 1, 3, 73, 'Conchita', 'Millan Peirón', 'Pomared', 6, '', NULL, '2017-07-09 08:33:18', '2017-07-09 08:33:18'),
(1187, 1, 1, 3, 73, 'Pilar', 'Peirón Peirón', 'Pomared', 6, '', NULL, '2017-07-09 08:34:38', '2017-07-09 08:34:38'),
(1188, 1, 1, 3, 73, 'José', 'Peirón Bayona', 'Pomared', 6, '', NULL, '2017-07-09 08:35:34', '2017-07-09 08:35:34'),
(1189, 1, 1, 3, 74, 'José', 'Rivera Ferrer', 'Pomared', 10, 'o 12', NULL, '2017-07-09 08:36:16', '2017-07-09 08:36:16'),
(1190, 1, 1, 3, 74, 'Gloria', 'Rodellar Ezquerra', 'Pomared', 10, 'o 12', NULL, '2017-07-09 08:41:12', '2017-07-09 08:41:12'),
(1191, 1, 1, 3, 74, 'Juan Luis y José', 'Rivera Rodellar', 'Pomared', 10, 'o 12', NULL, '2017-07-09 08:42:28', '2017-07-09 08:42:28'),
(1192, 1, 1, 3, 74, 'Marta', 'Alegre Armengol', 'Pomared', 10, 'o 12', NULL, '2017-07-09 08:42:46', '2017-07-09 08:42:46'),
(1193, 1, 1, 3, 75, 'Pedro', 'Zueras Pasías', 'Pomared', 14, 'o 16, puede venir como 19', NULL, '2017-07-09 08:43:30', '2017-07-09 08:43:30'),
(1194, 1, 1, 3, 75, 'Mª Jesús', 'Rivera Ferrer', 'Pomared', 14, 'o 16, puede venir como 19', NULL, '2017-07-09 08:44:13', '2017-07-09 08:44:13'),
(1195, 1, 1, 3, 76, '.....', 'Ripeneau', 'Pomared', 17, '', NULL, '2017-07-09 08:44:55', '2017-07-09 08:44:55'),
(1196, 1, 1, 3, 77, 'José Eduardo', 'Urgeles', 'Pomared', 15, '', NULL, '2017-07-09 08:45:45', '2017-07-09 08:45:45'),
(1197, 1, 1, 3, 78, 'Beatriz', 'Escartin Sola', 'Pomared', 15, '', NULL, '2017-07-09 08:46:07', '2017-07-09 08:46:07'),
(1198, 1, 1, 3, 79, 'Carla', 'Acero ..', 'Pomared', 13, '', NULL, '2017-07-09 08:46:59', '2017-07-09 08:46:59'),
(1199, 1, 1, 3, 79, 'Raúl', 'Ara Bara', 'Pomared', 13, '', NULL, '2017-07-09 08:47:33', '2017-07-09 08:47:33'),
(1200, 1, 1, 3, 80, 'David', 'Arroyos Zuriguel', 'Pomared', 11, '', NULL, '2017-07-09 08:47:55', '2017-07-09 08:47:55'),
(1201, 1, 1, 3, 81, 'Vanesa ', 'Barba ..', 'Pomared', 9, '', NULL, '2017-07-09 08:48:34', '2017-07-09 08:48:34'),
(1202, 1, 1, 3, 81, 'Sergio', 'Ara bara', 'Pomared', 9, '', NULL, '2017-07-09 08:49:32', '2017-07-09 08:49:32'),
(1203, 1, 1, 3, 82, 'Sergio', 'Mallada', 'Pomared', 7, '', NULL, '2017-07-09 08:50:17', '2017-07-09 08:50:17'),
(1204, 1, 1, 3, 82, 'Ana Mª', 'Gallinat', 'Pomared', 7, '', NULL, '2017-07-09 08:50:42', '2017-07-09 08:50:42'),
(1205, 1, 1, 3, 83, 'Antolin', 'Barber ..', 'Río Cinca', 2, '', NULL, '2017-07-09 08:51:11', '2017-07-09 08:51:11'),
(1206, 1, 1, 3, 84, 'jesús', 'Zuriguel Arroyos', 'Río Cinca', 4, '', NULL, '2017-07-09 08:51:40', '2017-07-09 08:51:40'),
(1207, 1, 1, 3, 84, 'Pilar', 'Martinez', 'Río Cinca', 4, '', NULL, '2017-07-09 08:52:18', '2017-07-09 08:52:18'),
(1208, 1, 1, 3, 87, 'Macicica', 'Macicica', 'Río Cinca', 10, '', NULL, '2017-07-09 08:53:38', '2017-07-09 08:53:38'),
(1209, 1, 1, 3, 88, 'Sara', 'Fierro ..', 'Río Cinca', 12, '', NULL, '2017-07-09 08:54:00', '2017-07-09 08:54:00'),
(1210, 1, 1, 3, 88, 'Alberto', 'Val   ..', 'Río Cinca', 12, '', NULL, '2017-07-09 08:54:25', '2017-07-09 08:54:25'),
(1211, 1, 1, 3, 89, 'Mariano', 'Charlez Alvira', 'Barbastro', 1, '', NULL, '2017-07-09 08:54:58', '2017-07-09 08:54:58'),
(1212, 1, 1, 3, 89, 'Josefa', 'Ponte Peralta', 'Barbastro', 1, '', NULL, '2017-07-09 08:55:23', '2017-07-09 08:55:23'),
(1213, 1, 1, 3, 90, 'Juan', 'Peirón Nanceta', 'Barbastro', 6, 'Dejar en San Ramón 3', NULL, '2017-07-09 08:56:14', '2017-07-09 08:56:14'),
(1214, 1, 1, 3, 91, 'Josefina', 'Foradada Arroyos', 'Barbastro', 8, '', NULL, '2017-07-09 08:58:14', '2017-07-09 08:58:14'),
(1215, 1, 1, 3, 91, 'Hijas', 'Segarra Foradada', 'Barbastro', 8, '', NULL, '2017-07-09 08:58:54', '2017-07-09 08:58:54'),
(1216, 1, 1, 3, 91, 'Mónica', 'Lacambra Bara', 'Barbastro', 8, '', NULL, '2017-07-09 08:59:21', '2017-07-09 08:59:21'),
(1217, 1, 1, 3, 92, 'Antonio', 'Peirón ..', 'Barbastro', 10, '', NULL, '2017-07-09 08:59:43', '2017-07-09 08:59:43'),
(1218, 1, 1, 3, 93, 'felicitas', 'Puy Castán', 'Hospital', 5, 'No deja claro que sea el 5', NULL, '2017-07-09 09:00:28', '2017-07-09 09:00:28'),
(1219, 1, 1, 3, 94, 'José', 'Navarra', 'Hospital', 7, '', NULL, '2017-07-09 09:01:00', '2017-07-09 09:01:00'),
(1220, 1, 1, 3, 95, '.........', 'Mangudo Aguilera', 'Hospital', 15, '', NULL, '2017-07-09 09:01:57', '2017-07-09 09:01:57'),
(1221, 1, 1, 3, 95, 'Santiago y Joaquin', 'Almunia Sánchez', 'Barbastro', 3, '', NULL, '2017-07-09 09:03:09', '2017-07-09 09:03:09'),
(1222, 1, 1, 3, 95, 'Pepita', 'Portoles', 'Barbastro', 3, '', NULL, '2017-07-09 09:03:26', '2017-07-09 09:03:26'),
(1223, 1, 1, 3, 96, 'Fco', 'Claramon? Samperiz', 'Barbastro', 12, '', NULL, '2017-07-15 10:36:10', '2017-07-15 10:36:10'),
(1224, 1, 1, 3, 96, 'Mª Pilar', 'Peruga Vidaller', 'Barbastro', 12, '', NULL, '2017-07-15 10:36:47', '2017-07-15 10:36:47'),
(1225, 1, 1, 3, 96, 'Jesús', 'Peruga Vidaller', 'Barbastro', 12, '', NULL, '2017-07-15 10:37:17', '2017-07-15 10:37:17'),
(1226, 1, 1, 3, 96, 'Marta y Alejandro', 'Claramon? Peruga', 'Barbastro', 12, '', NULL, '2017-07-15 10:37:46', '2017-07-15 10:37:46'),
(1227, 1, 1, 3, 96, 'Jesús', 'Peruga Torres', 'Barbastro', 12, '', NULL, '2017-07-15 10:38:13', '2017-07-15 10:38:13'),
(1228, 1, 1, 3, 97, 'Benjamín', 'Abizanda Pecondón', 'Barbastro', 14, '', NULL, '2017-07-15 10:38:54', '2017-07-15 10:38:54'),
(1229, 1, 1, 3, 97, 'Manolita', 'Ferrer Almunia', 'Barbastro', 14, '', NULL, '2017-07-15 10:39:31', '2017-07-15 10:39:31'),
(1230, 1, 1, 3, 97, 'Clara y Pilar', 'Abizanda Ferrer', 'Barbastro', 14, '', NULL, '2017-07-15 10:40:00', '2017-07-15 10:40:00'),
(1231, 1, 1, 3, 97, 'pilar', 'Almunia Alvira', 'Barbastro', 14, '', NULL, '2017-07-15 10:40:36', '2017-07-15 10:40:36'),
(1232, 1, 1, 3, 97, 'asociación', 'Asociación de mujeres Pomareda', 'Barbastro', 14, '', NULL, '2017-07-15 10:41:09', '2017-07-15 10:41:09'),
(1233, 1, 1, 3, 98, 'Antonio', 'Ferrer Guillen', 'Barbastro', 7, '', NULL, '2017-07-15 10:42:22', '2017-07-15 10:42:22'),
(1234, 1, 1, 3, 98, 'Manuela', 'Puy Peruga', 'Barbastro', 7, '', NULL, '2017-07-15 10:42:47', '2017-07-15 10:42:47'),
(1235, 1, 1, 3, 99, 'Mª Luisa', 'Peruga Ara', 'Barbastro', 18, '', NULL, '2017-07-15 10:43:15', '2017-07-15 10:43:15'),
(1236, 1, 1, 3, 100, 'Fco', 'Fondevilla Vispe', 'Barbastro', 20, '', NULL, '2017-07-15 10:43:43', '2017-07-15 10:43:43'),
(1237, 1, 1, 3, 100, 'Ana', 'Peruga Guerrero', 'Barbastro', 20, '', NULL, '2017-07-15 10:44:00', '2017-07-15 10:44:00'),
(1238, 1, 1, 3, 101, 'Ángel', 'Zueras Subias', 'Barbastro', 22, '', NULL, '2017-07-15 10:44:28', '2017-07-15 10:44:28'),
(1239, 1, 1, 3, 101, 'Ángeles', 'Subías ..', 'Barbastro', 22, '', NULL, '2017-07-15 10:45:11', '2017-07-15 10:45:11'),
(1240, 1, 1, 3, 102, 'Sebastian', 'Foradada Conte', 'Barbastro', 30, '', NULL, '2017-07-15 10:45:41', '2017-07-15 10:45:41'),
(1241, 1, 1, 3, 102, 'Pilar', 'Conte ..', 'Barbastro', 30, '', NULL, '2017-07-15 10:46:49', '2017-07-15 10:46:49'),
(1242, 1, 1, 3, 103, 'Miguel', 'Plana Silles', 'Barbastro', 32, '', NULL, '2017-07-15 10:47:24', '2017-07-15 10:47:24'),
(1243, 1, 1, 3, 104, 'Antonio', 'Buil Brualla', 'Barbastro', 13, '', NULL, '2017-07-15 10:47:57', '2017-07-15 10:47:57'),
(1244, 1, 1, 3, 104, 'Salomé', 'Zuriguel Gistau', 'Barbastro', 13, '', NULL, '2017-07-15 10:48:23', '2017-07-15 10:48:23'),
(1245, 1, 1, 3, 104, 'Antonio', 'Buil Zuriguel', 'Barbastro', 13, '', NULL, '2017-07-15 10:48:44', '2017-07-15 10:48:44'),
(1246, 1, 1, 3, 105, 'Explotaciones', 'Explotaciones Agrícolas Zueras Barber', 'Barbastro', 11, '', NULL, '2017-07-15 10:49:27', '2017-07-15 10:49:27'),
(1247, 1, 1, 3, 105, 'Jesús', 'Zueras Barber', 'Barbastro', 11, '', NULL, '2017-07-15 10:49:53', '2017-07-15 10:49:53'),
(1248, 1, 1, 3, 105, 'Pilar', 'Gómez Mombiela', 'Barbastro', 11, '', NULL, '2017-07-15 10:50:14', '2017-07-15 10:50:14'),
(1249, 1, 1, 3, 105, 'Finca', 'Finca Omprio', 'Barbastro', 11, '', NULL, '2017-07-15 10:51:02', '2017-07-15 10:51:02'),
(1250, 1, 1, 3, 106, 'Victoriano ', 'Guillen Roda', 'Hospital', 30, '', NULL, '2017-07-15 10:51:44', '2017-07-15 10:51:44'),
(1251, 1, 1, 3, 106, 'Manuela', 'Pages Ferrer', 'Hospital', 30, '', NULL, '2017-07-15 10:52:06', '2017-07-15 10:52:06'),
(1252, 1, 1, 3, 106, 'Alberto', 'Guillen Pages', 'Hospital', 30, '', NULL, '2017-07-15 10:52:35', '2017-07-15 10:52:35'),
(1253, 1, 1, 3, 106, 'Mª Carmen', 'Moran Viscasillas', 'Hospital', 30, '', NULL, '2017-07-15 10:53:12', '2017-07-15 10:53:12'),
(1254, 1, 1, 3, 107, 'José', 'Ponte Siso?', 'Hospital', 45, 'o 43', NULL, '2017-07-15 10:55:05', '2017-07-15 10:55:05'),
(1255, 1, 1, 3, 107, 'Carmen', 'Amorós Santaliestra', 'Hospital', 45, 'o 43', NULL, '2017-07-15 10:55:35', '2017-07-15 10:55:35'),
(1256, 1, 1, 3, 107, 'Anabel', 'Ponte Amorós', 'Hospital', 45, 'o 43', NULL, '2017-07-15 10:56:00', '2017-07-15 10:56:00'),
(1257, 1, 1, 3, 107, 'Comunidad', 'Comunidad de Regantes Huerta Alta', 'Hospital', 45, 'o 43', NULL, '2017-07-15 10:56:44', '2017-07-15 10:56:44'),
(1258, 1, 1, 3, 108, 'José Antonio', 'Puy Amorós', 'Hospital', 26, '', NULL, '2017-07-15 10:58:21', '2017-07-15 10:58:21'),
(1259, 1, 1, 3, 108, 'Mª Isabel', 'Rodellar Navarra', 'Hospital', 26, '', NULL, '2017-07-15 10:58:49', '2017-07-15 10:58:49'),
(1260, 1, 1, 3, 108, 'María y Clara', 'Puy Rodellar', 'Hospital', 26, '', NULL, '2017-07-15 10:59:16', '2017-07-15 10:59:16'),
(1261, 1, 1, 3, 109, 'Santiago', 'Peirón Gracia', 'Hospital', 24, '', NULL, '2017-07-15 10:59:41', '2017-07-15 10:59:41'),
(1262, 1, 1, 3, 109, 'Pilar', 'Delatorre Castan', 'Hospital', 24, '', NULL, '2017-07-15 11:00:37', '2017-07-15 11:00:37'),
(1263, 1, 1, 3, 110, 'Santiago', 'Manau Sancho', 'Hospital', 22, '', NULL, '2017-07-15 11:04:17', '2017-07-15 11:04:17'),
(1264, 1, 1, 3, 110, 'Carmen', 'Peruga Peirón', 'Hospital', 22, '', NULL, '2017-07-15 11:05:39', '2017-07-15 11:05:39'),
(1265, 1, 1, 3, 110, 'Jacob y Alonso', 'Manau Peruga', 'Hospital', 22, '', NULL, '2017-07-15 11:06:44', '2017-07-15 11:06:44'),
(1266, 1, 1, 3, 111, 'Fco Javier', 'Rivera Larraz', 'Hospital', 20, '', NULL, '2017-07-15 11:26:37', '2017-07-15 11:26:37'),
(1267, 1, 1, 3, 111, 'Conchita', 'Ara Ascaso', 'Hospital', 20, '', NULL, '2017-07-15 11:27:26', '2017-07-15 11:27:26'),
(1268, 1, 1, 3, 111, 'Pilar', 'Larraz Foradada', 'Hospital', 20, '', NULL, '2017-07-15 11:28:09', '2017-07-15 11:28:09'),
(1269, 1, 1, 3, 111, 'Noelia', 'Rivera Ara', 'Hospital', 20, 'también en las Eras 10', NULL, '2017-07-15 11:28:57', '2017-07-15 11:28:57'),
(1270, 1, 1, 3, 112, 'Construcciones', 'Construcciones Armanos? Larral', 'Hospital', 39, 'Dejar en Aragón 2', NULL, '2017-07-15 11:30:24', '2017-07-15 11:30:24'),
(1271, 1, 1, 3, 112, 'Carmen', 'Peirón ..', 'Hospital', 39, 'Dejar en Aragón 2', NULL, '2017-07-15 11:31:00', '2017-07-15 11:31:00'),
(1272, 1, 1, 3, 113, 'Sebastian', 'Vidaller Ferrer', 'Hospital', 18, 'y 16', NULL, '2017-07-15 11:31:41', '2017-07-15 11:31:41');
INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(1273, 1, 1, 3, 113, 'Carmen', 'Castillo Puy', 'Hospital', 18, 'y 16', NULL, '2017-07-15 11:33:34', '2017-07-15 11:33:34'),
(1274, 1, 1, 3, 113, 'Sebastian', 'Vidaller Castillo', 'Hospital', 18, 'y 16', NULL, '2017-07-15 11:35:28', '2017-07-15 11:35:28'),
(1275, 1, 1, 3, 113, 'Laura', 'Foradada Conte', 'Hospital', 18, 'y 16', NULL, '2017-07-15 11:35:55', '2017-07-15 11:35:55'),
(1276, 1, 1, 3, 113, 'Explotaciones', 'Explotaciones Charlez Vidaller', 'Hospital', 18, 'y 16', NULL, '2017-07-15 11:36:49', '2017-07-15 11:36:49'),
(1277, 1, 1, 3, 114, 'Pilar', 'Gonzalez Gil', 'Hospital', 27, 'A', NULL, '2017-07-15 11:37:29', '2017-07-15 11:37:29'),
(1278, 1, 1, 3, 115, 'Manuel', 'Puy Vispe', 'Hospital', 27, '', NULL, '2017-07-15 11:38:27', '2017-07-15 11:38:27'),
(1279, 1, 1, 3, 115, 'Manuela', 'Peruga Chavanel', 'Hospital', 27, '', NULL, '2017-07-15 11:38:56', '2017-07-15 11:38:56'),
(1280, 1, 1, 3, 116, 'Antonio', 'Serrano Puyalto', 'Hospital', 14, '', NULL, '2017-07-15 11:39:26', '2017-07-15 11:39:26'),
(1281, 1, 1, 3, 116, 'Ángeles ', 'Arroyos Latre', 'Hospital', 14, '', NULL, '2017-07-15 11:40:01', '2017-07-15 11:40:01'),
(1282, 1, 1, 3, 117, 'Eduardo', 'Zuriguel Urgeles', 'Hospital', 12, '', NULL, '2017-07-15 11:40:33', '2017-07-15 11:40:33'),
(1283, 1, 1, 3, 117, 'purificación', 'Castillo Campo', 'Hospital', 12, '', NULL, '2017-07-15 11:41:17', '2017-07-15 11:41:17'),
(1284, 1, 1, 3, 117, 'Natividad', 'Urgeles Puy', 'Hospital', 12, '', NULL, '2017-07-15 11:41:35', '2017-07-15 11:41:35'),
(1285, 1, 1, 3, 117, 'Diego y Gonzalo', 'Zuriguel Castillo', 'Hospital', 12, '', NULL, '2017-07-15 11:41:58', '2017-07-15 11:41:58'),
(1286, 1, 1, 3, 118, 'José', 'Fondevilla Español', 'Hospital', 8, 'Pendiente de actualizar?', NULL, '2017-07-15 11:44:02', '2017-07-15 11:44:02'),
(1287, 1, 1, 3, 118, 'Presentación', 'Santaliestra', 'Hospital', 8, 'Pendiente de actualizar?', NULL, '2017-07-15 11:44:36', '2017-07-15 11:44:36'),
(1288, 1, 1, 3, 119, 'Pedro', 'Urgeles Amorós', 'Hospital', 21, 'o 23', NULL, '2017-07-15 11:45:11', '2017-07-15 11:45:11'),
(1289, 1, 1, 3, 119, 'Mercedes', 'Gallinat Fondevilla', 'Hospital', 21, 'o 23', NULL, '2017-07-15 11:45:47', '2017-07-15 11:45:47'),
(1290, 1, 1, 3, 119, 'Javier', 'Urgeles Gallinat', 'Hospital', 21, 'o 23', NULL, '2017-07-15 11:46:17', '2017-07-15 11:46:17'),
(1291, 1, 1, 3, 120, 'Hermanos', 'Hermanos Ascaso', 'Hospital', 1, '', NULL, '2017-07-15 11:46:34', '2017-07-15 11:46:34'),
(1292, 1, 1, 3, 120, 'Carmen', 'Canudas', 'Hospital', 1, '', NULL, '2017-07-15 11:46:51', '2017-07-15 11:46:51'),
(1293, 1, 1, 3, 121, 'Humer', 'Wolfman ..', 'Hospital', 2, '', NULL, '2017-07-15 11:47:26', '2017-07-15 11:47:26'),
(1294, 1, 1, 3, 121, 'Mª Carmen', 'Penella Viaña', 'Hospital', 2, '', NULL, '2017-07-15 11:47:46', '2017-07-15 11:47:46'),
(1295, 1, 1, 3, 122, 'Antonio y José', 'Castillo Serrano', 'Cabañera', 19, '', NULL, '2017-07-15 11:48:34', '2017-07-15 11:48:34'),
(1296, 1, 1, 3, 122, 'Balbina ', 'Bareda', 'Cabañera', 19, '', NULL, '2017-07-15 11:49:02', '2017-07-15 11:49:02'),
(1297, 1, 1, 3, 122, 'Isabel', 'Correas Gonzalez', 'Cabañera', 19, '', NULL, '2017-07-15 11:49:25', '2017-07-15 11:49:25'),
(1298, 1, 1, 3, 123, 'jesús y José Mª', 'Español Ara', 'Cabañera', 30, '', NULL, '2017-07-15 11:50:47', '2017-07-15 11:50:47'),
(1299, 1, 1, 3, 124, 'Agustín', 'Ara Bastida', 'Cabañera', 24, 'Dejar en Menglanera 13?', NULL, '2017-07-15 11:51:32', '2017-07-15 11:51:32'),
(1300, 1, 1, 3, 124, 'Oscar ', 'Ara LLera', 'Cabañera', 24, 'Dejar en Menglanera 13?', NULL, '2017-07-15 11:52:06', '2017-07-15 11:52:06'),
(1301, 1, 1, 3, 125, 'Jesús', 'Ezquerra Castán', 'Cabañera', 22, '', NULL, '2017-07-15 11:52:35', '2017-07-15 11:52:35'),
(1302, 1, 1, 3, 126, 'María', 'Peruga Domper', 'Cabañera', 20, '', NULL, '2017-07-15 11:54:17', '2017-07-15 11:54:17'),
(1303, 1, 1, 3, 126, 'Mariano', 'Castillo Urgeles', 'Cabañera', 20, '', NULL, '2017-07-15 11:56:47', '2017-07-15 11:56:47'),
(1304, 1, 1, 3, 126, 'Pilar', 'Peruga Ara', 'Cabañera', 20, '', NULL, '2017-07-15 11:57:17', '2017-07-15 11:57:17'),
(1305, 1, 1, 3, 126, 'José Luis', 'Castillo Peruga', 'Cabañera', 20, '', NULL, '2017-07-15 11:58:50', '2017-07-15 11:58:50'),
(1306, 1, 1, 3, 126, 'Pilar', 'Urgeles Escartín', 'Cabañera', 20, '', NULL, '2017-07-15 11:59:23', '2017-07-15 11:59:23'),
(1307, 1, 1, 3, 127, 'Pedro', 'Castillo Barrera', 'Cabañera', 8, '', NULL, '2017-07-15 11:59:48', '2017-07-15 11:59:48'),
(1308, 1, 1, 3, 127, 'Isabel', 'Correa ..', 'Cabañera', 8, '', NULL, '2017-07-15 12:00:05', '2017-07-15 12:00:05'),
(1309, 1, 1, 3, 128, 'Joaquin', 'Arroyos Lerin', 'Cabañera', 14, '', NULL, '2017-07-15 15:19:13', '2017-07-15 15:19:13'),
(1310, 1, 1, 3, 128, 'Conchita y José', 'Castejón Marzal', 'Cabañera', 14, '', NULL, '2017-07-15 15:19:58', '2017-07-15 15:19:58'),
(1311, 1, 1, 3, 129, 'Tomás', 'Serna Pages', 'Cabañera', 16, '', NULL, '2017-07-15 15:22:55', '2017-07-15 15:22:55'),
(1312, 1, 1, 3, 129, 'Montse', 'Pages Puy', 'Cabañera', 16, '', NULL, '2017-07-15 15:23:36', '2017-07-15 15:23:36'),
(1313, 1, 1, 3, 129, 'José', 'Pages ..', 'Cabañera', 16, '', NULL, '2017-07-15 15:23:50', '2017-07-15 15:23:50'),
(1314, 1, 1, 3, 129, 'Montse', 'Puy Bernard', 'Cabañera', 16, '', NULL, '2017-07-15 15:24:21', '2017-07-15 15:24:21'),
(1315, 1, 1, 3, 130, 'Sergio', 'Mallada Gallinat', 'Cabañera', 18, 'Dejar en Pomared 7', NULL, '2017-07-15 15:24:55', '2017-07-15 15:24:55'),
(1316, 1, 1, 3, 131, 'Maudilio', 'Fernandez', 'Cabañera', 15, '', NULL, '2017-07-15 15:25:20', '2017-07-15 15:25:20'),
(1317, 1, 1, 3, 132, 'Agustín', 'Ara Dueso', 'Cabañera', 13, '', NULL, '2017-07-15 15:25:49', '2017-07-15 15:25:49'),
(1318, 1, 1, 3, 132, 'Elvira', 'Alegre Laplana', 'Cabañera', 13, '', NULL, '2017-07-15 15:26:06', '2017-07-15 15:26:06'),
(1319, 1, 1, 3, 132, 'José Antonio', 'Peirón Gracia', 'Cabañera', 13, '', NULL, '2017-07-15 15:26:32', '2017-07-15 15:26:32'),
(1320, 1, 1, 3, 132, 'Elvira', 'Ara Alegre', 'Cabañera', 13, '', NULL, '2017-07-15 15:27:11', '2017-07-15 15:27:11'),
(1321, 1, 1, 3, 132, 'Hijos', 'Peirón Ara', 'Cabañera', 13, '', NULL, '2017-07-15 15:27:59', '2017-07-15 15:27:59'),
(1322, 1, 1, 3, 133, 'Fco', 'Puy Bernard', 'Cabañera', 11, '', NULL, '2017-07-15 15:28:22', '2017-07-15 15:28:22'),
(1323, 1, 1, 3, 133, 'Divina ', 'Amorós Charlez', 'Cabañera', 11, '', NULL, '2017-07-15 15:28:54', '2017-07-15 15:28:54'),
(1324, 1, 1, 3, 133, 'Mª Pilar', 'Puy Amorós', 'Cabañera', 11, '', NULL, '2017-07-15 15:29:39', '2017-07-15 15:29:39'),
(1325, 1, 1, 3, 134, 'Antonio', 'Guillen Roda', 'Cabañera', 9, 'Pendiente de actualizar?', NULL, '2017-07-15 15:31:31', '2017-07-15 15:31:31'),
(1326, 1, 1, 3, 134, 'María', 'Fondevilla Español', 'Cabañera', 9, 'Pendiente de actualizar?', NULL, '2017-07-15 15:32:00', '2017-07-15 15:32:00'),
(1327, 1, 1, 3, 134, 'José Antonio', 'Guillen Fondevilla', 'Cabañera', 9, 'Pendiente de actualizar?', NULL, '2017-07-15 15:32:30', '2017-07-15 15:32:30'),
(1328, 1, 1, 3, 135, 'Fco', 'Navarra Dueso', 'Cabañera', 10, '', NULL, '2017-07-15 15:33:03', '2017-07-15 15:33:03'),
(1329, 1, 1, 3, 135, 'Josefina', 'Ezquerra ', 'Cabañera', 10, '', NULL, '2017-07-15 15:33:22', '2017-07-15 15:33:22'),
(1330, 1, 1, 3, 136, 'Aurelio', 'Delatorre Rodriguez', 'Cabañera', 6, '', NULL, '2017-07-15 15:34:06', '2017-07-15 15:34:06'),
(1331, 1, 1, 3, 136, 'Agueda', 'Castán Laplana', 'Cabañera', 6, '', NULL, '2017-07-15 15:34:27', '2017-07-15 15:34:27'),
(1332, 1, 1, 3, 136, 'jesús', 'Delatorre Castan', 'Cabañera', 6, '', NULL, '2017-07-15 15:34:51', '2017-07-15 15:34:51'),
(1333, 1, 1, 3, 137, 'Bernardo', 'Martin Zuriguel', 'Cabañera', 4, '', NULL, '2017-07-15 15:35:15', '2017-07-15 15:35:15'),
(1334, 1, 1, 3, 137, 'Mª Jesús', 'Vidaller Castillo', 'Cabañera', 4, '', NULL, '2017-07-15 15:35:44', '2017-07-15 15:35:44'),
(1335, 1, 1, 3, 137, 'Carmen y Carlos', 'Martín Vidaller', 'Cabañera', 4, '', NULL, '2017-07-15 15:36:11', '2017-07-15 15:36:11'),
(1336, 1, 1, 3, 138, 'Pilar', 'Vidaller Cota', 'Cabañera', 3, 'Pendiente de actualizar?', NULL, '2017-07-15 15:36:38', '2017-07-15 15:36:38'),
(1337, 1, 1, 3, 139, 'José', 'Martín Martín', 'Cabañera', 1, '', NULL, '2017-07-15 15:36:58', '2017-07-15 15:36:58'),
(1338, 1, 1, 3, 139, 'Matilde', 'Martín Ibañez', 'Cabañera', 1, '', NULL, '2017-07-15 15:37:20', '2017-07-15 15:37:20'),
(1339, 1, 1, 3, 140, 'Sebastian y Agustín', 'Vidaller Charlez', 'Cabañera', 2, '', NULL, '2017-07-15 15:38:41', '2017-07-15 15:38:41'),
(1340, 1, 1, 3, 140, 'Conchita', 'Charlez ..', 'Cabañera', 2, '', NULL, '2017-07-15 15:39:01', '2017-07-15 15:39:01'),
(1341, 1, 1, 3, 141, 'Ángel', 'Martín Zuriguel', 'Menglanera', 10, '', NULL, '2017-07-15 15:39:28', '2017-07-15 15:39:28'),
(1342, 1, 1, 3, 141, 'Victoria', 'Carreras', 'Menglanera', 10, '', NULL, '2017-07-15 15:39:59', '2017-07-15 15:39:59'),
(1343, 1, 1, 3, 141, 'Andrés', 'Martín Carreras', 'Menglanera', 10, '', NULL, '2017-07-15 15:40:21', '2017-07-15 15:40:21'),
(1344, 1, 1, 3, 141, 'Carmen', 'Zuriguel Charlez', 'Menglanera', 10, '', NULL, '2017-07-15 15:40:41', '2017-07-15 15:40:41'),
(1345, 1, 1, 3, 142, 'Antonio', 'Ara Bastida', 'Menglanera', 13, '', NULL, '2017-07-15 15:41:12', '2017-07-15 15:41:12'),
(1346, 1, 1, 3, 142, 'Ana Mª', 'Bara Ara', 'Menglanera', 13, '', NULL, '2017-07-15 15:41:37', '2017-07-15 15:41:37'),
(1347, 1, 1, 3, 142, 'Raúl', 'Ara Bara', 'Menglanera', 13, '?', NULL, '2017-07-15 15:42:13', '2017-07-15 15:42:13'),
(1348, 1, 1, 3, 143, 'Manuel', 'Ponte Peralta', 'Menglanera', 11, '', NULL, '2017-07-15 15:42:34', '2017-07-15 15:42:34'),
(1349, 1, 1, 3, 143, 'Dolores', 'Pedraza Garrido', 'Menglanera', 11, '', NULL, '2017-07-15 15:43:10', '2017-07-15 15:43:10'),
(1350, 1, 1, 3, 143, 'Dolores', 'Peralta Bastida', 'Menglanera', 11, '', NULL, '2017-07-15 15:43:39', '2017-07-15 15:43:39'),
(1351, 1, 1, 3, 143, 'Mónica', 'Ponte Pedraza', 'Menglanera', 11, '', NULL, '2017-07-15 15:44:09', '2017-07-15 15:44:09'),
(1352, 1, 1, 3, 144, 'Amado', 'Charlez Charlez', 'Menglanera', 6, 'o 8', NULL, '2017-07-15 15:45:03', '2017-07-15 15:45:03'),
(1353, 1, 1, 3, 144, 'Teresa', 'Millán Peirón', 'Menglanera', 6, 'o 8', NULL, '2017-07-15 15:45:33', '2017-07-15 15:45:33'),
(1354, 1, 1, 3, 144, 'Arturo y Carmen', 'Charlez Millán', 'Menglanera', 6, '', NULL, '2017-07-15 15:46:15', '2017-07-15 15:46:15'),
(1355, 1, 1, 3, 145, 'Extrangeros', 'Extrangeros', 'Menglanera', 7, '', NULL, '2017-07-15 15:46:47', '2017-07-15 15:46:47'),
(1356, 1, 1, 3, 146, 'José', 'Rodellar Ezquerra', 'Menglanera', 4, '', NULL, '2017-07-15 15:47:03', '2017-07-15 15:47:03'),
(1357, 1, 1, 3, 146, 'Pilar', 'Peruga Marzal', 'Menglanera', 4, '', NULL, '2017-07-15 15:47:29', '2017-07-15 15:47:29'),
(1358, 1, 1, 3, 146, 'Yolanda', 'Rodellar Peruga', 'Menglanera', 4, '', NULL, '2017-07-15 15:47:50', '2017-07-15 15:47:50'),
(1359, 1, 1, 3, 146, 'Miguel', 'Buisan Lanau', 'Menglanera', 4, '', NULL, '2017-07-15 15:48:14', '2017-07-15 15:48:14'),
(1360, 1, 1, 3, 146, 'Alba', 'Buisan Rodellar', 'Menglanera', 4, '', NULL, '2017-07-15 15:48:48', '2017-07-15 15:48:48'),
(1361, 1, 1, 3, 147, 'Aurelia y Miguel', 'Abizanda Torres', 'Menglanera', 2, '', NULL, '2017-07-15 15:49:30', '2017-07-15 15:49:30'),
(1362, 1, 1, 3, 147, 'José Luis, Alvaro y Joaquin', 'Zueras Abizanda', 'Menglanera', 2, '', NULL, '2017-07-15 15:50:06', '2017-07-15 15:50:06'),
(1363, 1, 1, 3, 147, 'Pilar', 'Castillo', 'Menglanera', 2, '', NULL, '2017-07-15 15:50:20', '2017-07-15 15:50:20'),
(1364, 1, 1, 3, 148, 'Tienda', 'Tienda .', 'Menglanera', 5, '', NULL, '2017-07-15 15:50:50', '2017-07-15 15:50:50'),
(1365, 1, 1, 3, 149, 'Pilar', 'Arroyos Ferrer', 'c/mayor', 1, '', NULL, '2017-07-15 15:51:27', '2017-07-15 15:51:27'),
(1366, 1, 1, 3, 149, 'Jesús', 'Zuriguel Gracia', 'c/mayor', 1, '', NULL, '2017-07-15 15:51:49', '2017-07-15 15:51:49'),
(1367, 1, 1, 3, 149, 'Pilar', 'Zuriguel Arroyos', 'c/mayor', 1, '', NULL, '2017-07-15 15:52:14', '2017-07-15 15:52:14'),
(1368, 1, 1, 3, 150, 'Antonio', 'Palacin Piquero', 'c/mayor', 1, 'Si no están dejar certificados en Monzón', NULL, '2017-07-15 15:53:04', '2017-07-15 15:53:04'),
(1369, 1, 1, 3, 150, 'Herminia y Josefina', 'Piquero Lajara', 'c/mayor', 1, 'Si no están dejar certificados en Monzón', NULL, '2017-07-15 15:53:43', '2017-07-15 15:53:43'),
(1370, 1, 1, 3, 151, 'Rte', 'Restaurante', 'c/mayor', 3, '', NULL, '2017-07-15 15:54:13', '2017-07-15 15:54:13'),
(1371, 1, 1, 3, 152, 'Extrangeros', 'Extrangeros', 'c/mayor', 6, '', NULL, '2017-07-15 15:54:54', '2017-07-15 15:54:54'),
(1372, 1, 1, 3, 153, 'Sebastian', 'Alvira Vidaller', 'c/mayor', 5, '', NULL, '2017-07-15 16:00:41', '2017-07-15 16:00:41'),
(1373, 1, 1, 3, 153, 'Mª Pilar', 'Peruga Latre', 'c/mayor', 5, '', NULL, '2017-07-15 16:01:02', '2017-07-15 16:01:02'),
(1374, 1, 1, 3, 153, 'Marcos y José Antonio', 'Alvira Peruga', 'c/mayor', 5, '', NULL, '2017-07-15 16:01:30', '2017-07-15 16:01:30'),
(1375, 1, 1, 3, 154, 'Nuria', 'Encuentra Barri', 'c/mayor', 8, 'Peluquería', NULL, '2017-07-15 16:02:07', '2017-07-15 16:02:07'),
(1376, 1, 1, 3, 154, 'Victor', 'Martín Artac', 'c/mayor', 8, 'Peluquería', NULL, '2017-07-15 16:02:40', '2017-07-15 16:02:40'),
(1377, 1, 1, 3, 155, 'Josefina', 'Peruga Latre', 'c/mayor', 9, 'Dejar en el 5', NULL, '2017-07-15 16:03:12', '2017-07-15 16:03:12'),
(1378, 1, 1, 3, 156, 'Fco', 'Sancho Cregenzan', 'c/mayor', 7, '', NULL, '2017-07-15 16:03:46', '2017-07-15 16:03:46'),
(1379, 1, 1, 3, 156, 'Aurora', 'Del Pilar', 'c/mayor', 9, '', NULL, '2017-07-15 16:04:04', '2017-07-15 16:04:04'),
(1380, 1, 1, 3, 157, 'Mariano', 'Gruas Abizanda', 'c/mayor', 9, '', NULL, '2017-07-15 16:04:35', '2017-07-15 16:04:35'),
(1381, 1, 1, 3, 158, 'Faustino', 'Urgeles Serrano', 'Canal de Terreu', 2, '', NULL, '2017-07-15 16:05:41', '2017-07-15 16:05:41'),
(1382, 1, 1, 3, 158, 'Margarita', 'Serrano Puyalto', 'Canal de Terreu', 2, '', NULL, '2017-07-15 16:06:10', '2017-07-15 16:06:10'),
(1383, 1, 1, 3, 158, 'ramón', 'Tomás Culleres', 'Canal de Terreu', 2, '', NULL, '2017-07-15 16:06:42', '2017-07-15 16:06:42'),
(1384, 1, 1, 3, 158, 'Angelines', 'Urgeles Ezquerra', 'Canal de Terreu', 2, '', NULL, '2017-07-15 16:07:10', '2017-07-15 16:07:10'),
(1385, 1, 1, 3, 158, 'Monte', 'Monte Pallarols', 'Canal de Terreu', 2, '', NULL, '2017-07-15 16:07:37', '2017-07-15 16:07:37'),
(1386, 1, 1, 3, 159, 'Riegos', 'Riegos Peña', 'Canal de Terreu', 4, '', NULL, '2017-07-15 16:08:00', '2017-07-15 16:08:00'),
(1387, 1, 1, 3, 159, 'Las', 'Las Almacidas', 'Canal de Terreu', 4, '', NULL, '2017-07-15 16:08:23', '2017-07-15 16:08:23'),
(1388, 1, 1, 3, 159, 'José Luis', 'Palacin Piquero', 'Canal de Terreu', 4, '', NULL, '2017-07-15 16:08:49', '2017-07-15 16:08:49'),
(1389, 1, 1, 3, 159, 'Maria Luisa', 'Pena Navarra', 'Canal de Terreu', 4, '', NULL, '2017-07-15 16:09:20', '2017-07-15 16:09:20'),
(1390, 1, 1, 3, 160, 'Mª Teresa', 'Sorinas Fondevillas', 'Canal de Terreu', 9, '', NULL, '2017-07-15 16:11:11', '2017-07-15 16:11:11'),
(1391, 1, 1, 3, 160, 'Joaquin', 'García Muñoz', 'Canal de Terreu', 9, '', NULL, '2017-07-15 16:11:37', '2017-07-15 16:11:37'),
(1392, 1, 1, 3, 160, 'San', 'San Roque', 'San Roque', 9, 'Dejar en Canal Terreu 9 ', NULL, '2017-07-15 16:12:42', '2017-07-15 16:12:42'),
(1393, 1, 1, 3, 161, 'Carlos', 'Penella Viaña', 'San Jorge', 4, '', NULL, '2017-07-15 16:13:27', '2017-07-15 16:13:27'),
(1394, 1, 1, 3, 161, 'Antonia', 'Torres Zuriguel', 'San Jorge', 4, '', NULL, '2017-07-15 16:13:56', '2017-07-15 16:13:56'),
(1395, 1, 1, 3, 161, 'Oscar', 'Penella Torres', 'San Jorge', 4, '', NULL, '2017-07-15 16:14:36', '2017-07-15 16:14:36'),
(1396, 1, 1, 3, 161, 'Unión', 'Unión Deportiva Pomar', 'San Jorge', 4, '', NULL, '2017-07-15 16:14:59', '2017-07-15 16:14:59'),
(1397, 1, 1, 3, 162, 'Carlos', 'Penella Torres', 'San Jorge', 6, '', NULL, '2017-07-15 16:16:18', '2017-07-15 16:16:18'),
(1398, 1, 1, 3, 162, 'Mª Jesús', 'Barba Arroyos', 'San Jorge', 6, '', NULL, '2017-07-15 16:16:57', '2017-07-15 16:16:57'),
(1399, 1, 1, 3, 163, 'José', 'Urgeles Arroyos', 'Aragón', 1, '', NULL, '2017-07-15 16:17:32', '2017-07-15 16:17:32'),
(1400, 1, 1, 3, 163, 'Conchita', 'Ríos Puyal', 'Aragón', 1, '', NULL, '2017-07-15 16:17:59', '2017-07-15 16:17:59'),
(1401, 1, 1, 3, 163, 'Joaquin', 'Gallinat Fondevilla', 'Aragón', 1, '', NULL, '2017-07-15 16:18:35', '2017-07-15 16:18:35'),
(1402, 1, 1, 3, 163, 'Paquita', 'Pages Ferrer', 'Aragón', 1, '', NULL, '2017-07-15 16:18:56', '2017-07-15 16:18:56'),
(1403, 1, 1, 3, 164, 'javier', 'Español Ara', 'Aragón', 3, '', NULL, '2017-07-15 16:19:19', '2017-07-15 16:19:19'),
(1404, 1, 1, 3, 164, 'Cristina', 'Martín Martín', 'Aragón', 3, '', NULL, '2017-07-15 16:19:36', '2017-07-15 16:19:36'),
(1405, 1, 1, 3, 165, 'Joaquin', 'Arroyos Zuriguel', 'Aragón', 2, '', NULL, '2017-07-15 16:20:05', '2017-07-15 16:20:05'),
(1406, 1, 1, 3, 165, 'Mª Carmen', 'Larraz Peirón', 'Aragón', 2, '', NULL, '2017-07-15 16:20:35', '2017-07-15 16:20:35'),
(1407, 1, 1, 3, 166, 'Enrique', 'Zueras Pasías', 'Las Eras', 3, '', NULL, '2017-07-15 16:21:12', '2017-07-15 16:21:12'),
(1408, 1, 1, 3, 166, 'Fca', 'Mendoza Escartín', 'Las Eras', 3, '', NULL, '2017-07-15 16:21:37', '2017-07-15 16:21:37'),
(1409, 1, 1, 3, 167, 'Manuel ..', 'Pico Huerva', 'Las Eras', 5, '', NULL, '2017-07-15 16:22:19', '2017-07-15 16:22:19'),
(1410, 1, 1, 3, 167, 'Maribel', 'Charlez Arroyo', 'Las Eras', 5, '', NULL, '2017-07-15 16:22:36', '2017-07-15 16:22:36'),
(1411, 1, 1, 3, 167, 'Javier', 'Charlez ..', 'Las Eras', 5, '', NULL, '2017-07-15 16:24:23', '2017-07-15 16:24:23'),
(1412, 1, 1, 3, 167, 'Susana', 'Baldellou', 'Las Eras', 5, '', NULL, '2017-07-15 16:24:48', '2017-07-15 16:24:48'),
(1413, 1, 1, 3, 170, 'Pedro', 'Villa Morales', 'Las Eras', 2, '', NULL, '2017-07-15 16:25:18', '2017-07-15 16:25:18'),
(1414, 1, 1, 3, 170, 'Gloria', 'Navarra Dueso', 'Las Eras', 2, '', NULL, '2017-07-15 16:25:35', '2017-07-15 16:25:35'),
(1415, 1, 1, 3, 171, 'Felix', 'Charlez Altemir', 'Las Eras', 1, '', NULL, '2017-07-15 16:26:00', '2017-07-15 16:26:00'),
(1416, 1, 1, 3, 171, 'Rosa', 'Charlez Eras', 'Las Eras', 1, '', NULL, '2017-07-15 16:26:16', '2017-07-15 16:26:16'),
(1417, 1, 1, 3, 171, 'ramón', 'López Olivan', 'Las Eras', 1, '', NULL, '2017-07-15 16:27:24', '2017-07-15 16:27:24'),
(1418, 1, 1, 3, 171, 'Hijos', 'Lopez Charlez', 'Las Eras', 1, '', NULL, '2017-07-15 16:27:53', '2017-07-15 16:27:53'),
(1419, 1, 1, 3, 172, 'Riegos', 'Riegos Chami', 'Barbastro', 38, '', NULL, '2017-07-15 16:28:10', '2017-07-15 16:28:10'),
(1420, 1, 1, 3, 172, 'Arturo', 'Charlez Millán', 'Barbastro', 38, '', NULL, '2017-07-15 16:28:44', '2017-07-15 16:28:44'),
(1421, 1, 1, 3, 173, 'José Mª', 'Pelegrí Velilla', 'Deseminados', 0, '', NULL, '2017-07-15 16:29:25', '2017-07-15 16:29:25'),
(1422, 1, 1, 3, 173, 'Susana', 'magaña', 'Deseminados', 0, '', NULL, '2017-07-15 16:29:44', '2017-07-15 16:29:44'),
(1423, 1, 1, 3, 173, 'Juan Antonio', 'Pelegrí Catalan', 'Deseminados', 0, '', NULL, '2017-07-15 16:30:13', '2017-07-15 16:30:13'),
(1425, 1, 1, 1, 2, 'rosa Mª', 'Sánchez Novel', 'El Pilar', 9, '?', NULL, '2017-07-19 07:23:32', '2017-11-14 17:37:07'),
(1431, 1, 10, 18, 1, 'Félix', 'Almunia Ontiveros', 'c/Nueva', 3, '', NULL, '2017-10-04 17:40:54', '2017-10-04 17:40:54'),
(1432, 1, 10, 18, 1, 'Elisa', 'Plaza Villas	', 'c/Nueva', 3, '', NULL, '2017-10-04 17:41:24', '2017-10-04 17:41:24'),
(1433, 1, 10, 18, 1, 'Anibal', 'Ramos-Luz', 'c/Nueva', 3, '', NULL, '2017-10-04 17:41:53', '2017-10-04 17:41:53'),
(1434, 1, 10, 18, 2, 'Ángel', 'Tomas', 'c/Nueva', 1, 'a Monegros 10', NULL, '2017-10-04 17:45:20', '2017-10-04 17:45:20'),
(1435, 1, 10, 18, 3, 'Eliseo', 'Sanz Pueyo', 'c/Nueva', 4, '', NULL, '2017-10-04 17:47:24', '2017-10-04 17:47:24'),
(1436, 1, 10, 18, 3, 'Rosa', 'Casabón ', 'c/Nueva', 4, '', NULL, '2017-10-04 17:50:27', '2017-10-04 17:50:27'),
(1437, 1, 10, 18, 3, '......', 'Roda Novellon', 'c/Nueva', 4, '', NULL, '2017-10-04 17:51:54', '2017-10-04 17:51:54'),
(1438, 1, 10, 18, 4, 'Ana Mª ', 'Catalan Calvo', 'c/Nueva', 6, '', NULL, '2017-10-04 17:55:01', '2017-10-04 17:55:01'),
(1439, 1, 10, 18, 4, 'Carlos', 'Casabón Catalán', 'c/Nueva', 6, '', NULL, '2017-10-04 17:55:54', '2017-10-04 17:55:54'),
(1440, 1, 10, 18, 4, '......', 'Cregenzan Setan', 'c/Nueva', 6, '', NULL, '2017-10-04 17:56:50', '2017-10-04 17:56:50'),
(1441, 1, 10, 18, 4, '......', 'Por Mollo', 'c/Nueva', 6, '', NULL, '2017-10-04 17:57:25', '2017-10-04 17:57:25'),
(1442, 1, 10, 18, 5, 'M Teresa', 'Catalan Calvo', 'c/Nueva', 8, 'a Bar Aragonia', NULL, '2017-10-04 17:58:29', '2017-10-04 17:58:29'),
(1443, 1, 10, 18, 5, 'Amadeo', 'Reig Julia', 'c/Nueva', 8, '', NULL, '2017-10-04 17:59:43', '2017-10-04 17:59:43'),
(1444, 1, 10, 18, 5, 'Mª Luisa', 'Elsuso Ostal', 'c/Nueva', 17, '', NULL, '2017-10-04 18:00:43', '2017-10-04 18:00:43'),
(1445, 1, 10, 18, 5, 'Ángel', 'Duaso Lafita', 'c/Nueva', 17, '', NULL, '2017-10-04 18:01:53', '2017-10-04 18:01:53'),
(1446, 1, 10, 18, 6, 'José', 'Mulero Laporta', 'c/Nueva', 14, '', NULL, '2017-10-04 18:02:28', '2017-10-04 18:02:28'),
(1447, 1, 10, 18, 7, 'Alicia', 'Torres Mur', 'c/Nueva', 18, '', NULL, '2017-10-04 18:03:26', '2017-10-04 18:03:26'),
(1448, 1, 10, 18, 7, 'Roberto', 'Cregenzan Elcacho', 'c/Nueva', 18, '', NULL, '2017-10-04 18:04:11', '2017-10-04 18:04:11'),
(1449, 1, 10, 18, 7, 'David y Jorge', 'Mur Cregenzan', 'c/Nueva', 18, '', NULL, '2017-10-04 18:04:44', '2017-10-07 08:56:31'),
(1450, 1, 10, 18, 7, 'Carmen', 'Mur Casabon', 'c/Nueva', 18, '', NULL, '2017-10-04 18:05:48', '2017-10-04 18:05:48'),
(1451, 1, 10, 18, 7, 'José', 'Torres Mur', 'c/Nueva', 18, '', NULL, '2017-10-04 18:06:06', '2017-10-04 18:06:06'),
(1452, 1, 10, 18, 8, 'Luís', 'Soler Ostal', 'El Portal', 9, '', NULL, '2017-10-04 18:07:35', '2017-10-04 18:07:35'),
(1453, 1, 10, 18, 8, 'Nazaret', 'Pereira', 'El Portal', 9, '', NULL, '2017-10-04 18:07:55', '2017-10-04 18:07:55'),
(1454, 1, 10, 18, 9, 'Alberto', 'Novellon', 'El Portal', 12, '', NULL, '2017-10-04 18:08:30', '2017-10-04 18:08:30'),
(1455, 1, 10, 18, 9, 'María', 'Fauquet', 'El Portal', 12, '', NULL, '2017-10-04 18:09:01', '2017-10-04 18:09:01'),
(1456, 1, 10, 18, 10, 'Luís', 'Antón', 'El Portal', 8, '', NULL, '2017-10-04 18:09:37', '2017-10-04 18:09:37'),
(1457, 1, 10, 18, 10, 'Mª Carmen', 'Canalis', 'El Portal', 8, '', NULL, '2017-10-04 18:10:06', '2017-10-04 18:10:06'),
(1458, 1, 10, 18, 11, 'Cooperativa', 'Cooperativa Las Ontinas', 'El Portal', 1, '', NULL, '2017-10-04 18:10:44', '2017-10-04 18:10:44'),
(1459, 1, 10, 18, 11, 'José', 'Novellon Novellon', 'El Portal', 1, '', NULL, '2017-10-04 18:12:03', '2017-10-04 18:12:03'),
(1460, 1, 10, 18, 11, 'Manolo', 'Sanuy', 'El Portal', 1, '', NULL, '2017-10-04 18:12:35', '2017-10-08 10:56:36'),
(1461, 1, 10, 18, 12, 'Máximo', 'Cregenzan Latre', 'El Portal', 11, '', NULL, '2017-10-04 18:13:08', '2017-10-04 18:13:08'),
(1462, 1, 10, 18, 12, 'Ascención', 'Setan', 'El Portal', 11, '', NULL, '2017-10-04 18:13:33', '2017-10-04 18:13:33'),
(1463, 1, 10, 18, 13, 'José', 'Gonzalez Cepeda', 'El Portal', 2, '', NULL, '2017-10-04 18:14:14', '2017-10-04 18:14:14'),
(1464, 1, 10, 18, 13, 'Mª Luz', 'Bastarras Serrate', 'El Portal', 2, '', NULL, '2017-10-04 18:14:43', '2017-10-04 18:14:43'),
(1465, 1, 10, 18, 14, 'Luís', 'Soler Mur', 'El Pilar', 0, 'S/N', NULL, '2017-10-04 18:15:32', '2017-10-04 18:15:32'),
(1466, 1, 10, 18, 14, 'Angela', 'Ramos', 'El Pilar', 0, 'S/N', NULL, '2017-10-04 18:15:55', '2017-10-04 18:15:55'),
(1467, 1, 10, 18, 15, 'Antonio', 'Acaraz García', 'La Huerta', 3, '', NULL, '2017-10-06 16:49:56', '2017-10-06 16:49:56'),
(1468, 1, 10, 18, 15, 'Josefina', 'Cambra Horno', 'La Huerta', 3, '', NULL, '2017-10-06 16:50:28', '2017-10-06 16:50:28'),
(1469, 1, 10, 18, 15, 'Abel', 'Casabón ', 'La Huerta', 3, '', NULL, '2017-10-06 16:50:46', '2017-10-06 16:50:46'),
(1470, 1, 10, 18, 16, 'Félix', 'Soler Catalan', 'La Huerta', 4, '', NULL, '2017-10-06 16:51:16', '2017-10-06 16:51:16'),
(1471, 1, 10, 18, 16, 'Sergio', 'Soler', 'La Huerta', 4, '', NULL, '2017-10-06 16:51:30', '2017-10-06 16:51:30'),
(1472, 1, 10, 18, 17, 'Emerita', 'Oliveros Canalis', 'La Huerta', 1, '', NULL, '2017-10-06 16:51:59', '2017-10-06 16:51:59'),
(1473, 1, 10, 18, 17, 'Enrique', 'Figueras Godas', 'La Huerta', 1, 'luz', NULL, '2017-10-06 16:52:30', '2017-10-06 16:52:30'),
(1474, 1, 10, 18, 18, 'Árido', 'Áridos Quibus', 'La Huerta', 1, '', NULL, '2017-10-06 16:54:05', '2017-10-06 16:54:05'),
(1475, 1, 10, 18, 19, 'Ana Belen', 'Madurga', 'El Pilar', 5, '', NULL, '2017-10-06 16:54:42', '2017-10-06 16:54:42'),
(1476, 1, 10, 18, 19, 'José', 'Aquilué Jordan', 'El Pilar', 5, '', NULL, '2017-10-06 16:55:27', '2017-10-06 16:55:27'),
(1477, 1, 10, 18, 19, 'Pilar', 'Cambra Canalis', 'El Pilar', 5, '', NULL, '2017-10-06 16:56:09', '2017-10-06 16:56:09'),
(1478, 1, 10, 18, 20, 'Benito', 'Aquilué Jordan', 'El Pilar', 9, '', NULL, '2017-10-06 16:56:31', '2017-10-06 16:56:31'),
(1479, 1, 10, 18, 20, 'Cándida', 'Oliveros Mur', 'El Pilar', 9, '', NULL, '2017-10-06 16:56:56', '2017-10-06 16:56:56'),
(1480, 1, 10, 18, 21, 'Luís', 'Ostal Cregenzan', 'Alcanadre', 0, '', NULL, '2017-10-06 16:57:59', '2017-10-06 16:57:59'),
(1481, 1, 10, 18, 21, 'Fca', 'Roda Mur', 'Alcanadre', 0, '', NULL, '2017-10-06 16:58:15', '2017-10-06 16:58:15'),
(1482, 1, 10, 18, 21, 'Talleres', 'Talleres Buisan', 'Alcanadre', 0, '', NULL, '2017-10-06 16:58:27', '2017-10-06 16:58:27'),
(1483, 1, 10, 18, 21, 'Javier', 'Fabregat Rodriguez', 'Alcanadre', 0, '', NULL, '2017-10-06 16:59:04', '2017-10-06 16:59:04'),
(1484, 1, 10, 18, 22, 'José', 'Soler Ostal', 'El Pilar', 9, '', NULL, '2017-10-06 16:59:59', '2017-10-06 16:59:59'),
(1485, 1, 10, 18, 22, 'Pilar', 'Mur Estacho', 'El Pilar', 9, '', NULL, '2017-10-06 17:00:19', '2017-10-06 17:00:19'),
(1486, 1, 10, 18, 23, 'Manolita', 'Mur Casabon', 'El Pilar', 15, '', NULL, '2017-10-06 17:01:06', '2017-10-06 17:01:06'),
(1487, 1, 10, 18, 23, 'Luís y Eduardo', 'Torres Mur', 'El Pilar', 15, '', NULL, '2017-10-06 17:01:45', '2017-10-06 17:01:45'),
(1488, 1, 10, 18, 23, 'Rosa', 'Mur Chela', 'El Pilar', 15, '', NULL, '2017-10-06 17:02:08', '2017-10-06 17:02:08'),
(1489, 1, 10, 18, 24, 'Celia ', 'Calvo Gonzalez', 'El Pilar', 21, '', NULL, '2017-10-06 17:02:29', '2017-10-06 17:02:29'),
(1490, 1, 10, 18, 24, 'Carlos', 'Nieves', 'El Pilar', 8, '', NULL, '2017-10-06 17:02:59', '2017-10-06 17:02:59'),
(1491, 1, 10, 18, 25, 'Alicia', 'Riverola Val', 'El Pilar', 10, '', NULL, '2017-10-06 17:03:27', '2017-10-06 17:03:27'),
(1492, 1, 10, 18, 25, 'José Luís', 'Puyelo', 'El Pilar', 10, '', NULL, '2017-10-06 17:03:46', '2017-10-06 17:03:46'),
(1493, 1, 10, 18, 26, 'Roberto', 'Mur', 'El Pilar', 12, '', NULL, '2017-10-06 17:04:17', '2017-10-06 17:04:17'),
(1494, 1, 10, 18, 26, 'Teresa', 'Novellon Folch', 'El Pilar', 12, '', NULL, '2017-10-06 17:04:58', '2017-10-06 17:04:58'),
(1495, 1, 10, 18, 27, 'David', 'Torres Martin', 'El Pilar', 14, '', NULL, '2017-10-06 17:05:17', '2017-10-06 17:05:17'),
(1496, 1, 10, 18, 27, 'Nerea', 'Raya Gonzalez', 'El Pilar', 14, '', NULL, '2017-10-06 17:05:34', '2017-10-06 17:05:34'),
(1497, 1, 10, 18, 28, 'Sara', 'Sánchez García', 'El Pilar', 29, '', NULL, '2017-10-06 17:06:30', '2017-10-06 17:06:30'),
(1498, 1, 10, 18, 29, 'Fco', 'Rodriguez', 'El Pilar', 33, '', NULL, '2017-10-06 17:06:54', '2017-10-06 17:06:54'),
(1499, 1, 10, 18, 29, 'Ana', 'Reig', 'El Pilar', 33, '', NULL, '2017-10-06 17:07:15', '2017-10-06 17:07:15'),
(1500, 1, 10, 18, 30, 'Nuria', 'Almunia Duaso', 'El Pilar', 22, '', NULL, '2017-10-06 17:08:26', '2017-10-06 17:08:26'),
(1501, 1, 10, 18, 30, 'Ivan y Abel Lazaro', 'Almunia Oliveros', 'El Pilar', 22, '', NULL, '2017-10-06 17:09:24', '2017-10-06 17:09:24'),
(1502, 1, 10, 18, 31, 'Manuel y José Mª', 'Novellon Arbellon', 'El Pilar', 39, '', NULL, '2017-10-06 17:10:20', '2017-10-06 17:10:20'),
(1503, 1, 10, 18, 32, 'Gemma', 'Marzola', 'El Pilar', 41, 'Carnicería', NULL, '2017-10-06 17:10:47', '2017-10-06 17:10:47'),
(1504, 1, 10, 18, 33, 'Luís', 'Saba Calvete', 'El Pilar', 43, '', NULL, '2017-10-06 17:11:05', '2017-10-06 17:11:05'),
(1505, 1, 10, 18, 34, 'Ángel', 'Pueyo Riverola', 'El Pilar', 49, '', NULL, '2017-10-06 17:12:09', '2017-10-06 17:12:09'),
(1506, 1, 10, 18, 34, 'Esther', 'Garcés Gracia', 'El Pilar', 49, '', NULL, '2017-10-06 17:12:26', '2017-10-06 17:12:26'),
(1507, 1, 10, 18, 35, 'Emilio Jorge', 'Sánchez', 'El Pilar', 30, '', NULL, '2017-10-06 17:13:12', '2017-10-06 17:13:12'),
(1508, 1, 10, 18, 35, 'Dolores', 'Prat Villagrasa', 'El Pilar', 30, '', NULL, '2017-10-06 17:13:38', '2017-10-06 17:13:38'),
(1509, 1, 10, 18, 36, 'Montse', 'Puyol', 'El Pilar', 34, '', NULL, '2017-10-06 17:14:09', '2017-10-06 17:14:09'),
(1510, 1, 10, 18, 37, 'Fulgencio', 'Igual', 'El Pilar', 36, '', NULL, '2017-10-06 17:14:26', '2017-10-06 17:14:26'),
(1511, 1, 10, 18, 38, 'Manolo', 'Costa Canalis', 'El Pilar', 42, '', NULL, '2017-10-06 17:14:53', '2017-10-06 17:14:53'),
(1512, 1, 10, 18, 38, 'Leonor', 'Soler Roda', 'El Pilar', 42, '', NULL, '2017-10-06 17:15:23', '2017-10-06 17:15:23'),
(1513, 1, 10, 18, 38, '......', 'Borrego', 'El Pilar', 42, '?', NULL, '2017-10-06 17:15:50', '2017-10-06 17:15:50'),
(1514, 1, 10, 18, 39, 'José Enrique', 'Pueyo Urrea', 'Santa Reliquia', 2, '', NULL, '2017-10-06 17:16:21', '2017-10-06 17:16:21'),
(1515, 1, 10, 18, 40, 'Joaquín', 'Catalan', 'Santa Reliquia', 4, '', NULL, '2017-10-06 17:16:42', '2017-10-06 17:16:42'),
(1516, 1, 10, 18, 41, 'Fca', 'Perez Gutierrez', 'Santa Reliquia', 8, '', NULL, '2017-10-06 17:17:19', '2017-10-06 17:17:19'),
(1517, 1, 10, 18, 42, 'Ángel', 'Almunia ', 'Santa Reliquia', 12, '', NULL, '2017-10-06 17:17:40', '2017-10-06 17:17:40'),
(1518, 1, 10, 18, 42, 'Benedicta', 'Duaso Casabón', 'Santa Reliquia', 12, '', NULL, '2017-10-06 17:18:06', '2017-10-06 17:18:06'),
(1519, 1, 10, 18, 43, 'José', 'Puxen', 'Santa Reliquia', 14, '', NULL, '2017-10-06 17:18:35', '2017-10-06 17:18:35'),
(1520, 1, 10, 18, 43, 'Pilar', 'Duaso Sanz', 'Santa Reliquia', 14, '', NULL, '2017-10-06 17:19:01', '2017-10-06 17:19:01'),
(1521, 1, 10, 18, 44, 'Julio', 'Aquilué Torres', 'Jaime I', 21, '', NULL, '2017-10-06 17:19:49', '2017-10-06 17:19:49'),
(1522, 1, 10, 18, 45, 'José', 'Costa Canalis', 'Jaime I', 19, '', NULL, '2017-10-06 17:20:08', '2017-10-06 17:20:08'),
(1523, 1, 10, 18, 45, 'Julia', 'Escanilla Tomás', 'Jaime I', 19, '', NULL, '2017-10-06 17:20:29', '2017-10-06 17:20:29'),
(1524, 1, 10, 18, 46, 'Alfredo', 'Gaudioso', 'Jaime I', 17, '', NULL, '2017-10-06 17:20:55', '2017-10-06 17:20:55'),
(1525, 1, 10, 18, 46, 'Isabel', 'Canalis', 'Jaime I', 17, '', NULL, '2017-10-06 17:21:21', '2017-10-06 17:21:21'),
(1526, 1, 10, 18, 46, 'Andrés', 'Elcacho Canalis', 'Jaime I', 17, '', NULL, '2017-10-06 17:21:43', '2017-10-06 17:21:43'),
(1527, 1, 10, 18, 47, 'Ángel', 'Borrell Casabon', 'Jaime I', 13, '', NULL, '2017-10-06 17:22:11', '2017-10-06 17:22:11'),
(1528, 1, 10, 18, 47, 'Pilar', 'Roda Ferrer', 'Jaime I', 13, '', NULL, '2017-10-06 17:22:30', '2017-10-06 17:22:30'),
(1529, 1, 10, 18, 48, 'Noelia', 'Roda Tomás', 'Jaime I', 9, '', NULL, '2017-10-06 17:23:11', '2017-10-06 17:23:11'),
(1530, 1, 10, 18, 48, 'Santiago ', 'Ferrer', 'Jaime I', 9, '', NULL, '2017-10-06 17:23:50', '2017-10-06 17:23:50'),
(1531, 1, 10, 18, 48, 'Joaquina', 'Borrego', 'Jaime I', 9, '', NULL, '2017-10-06 17:24:11', '2017-10-06 17:24:11'),
(1532, 1, 10, 18, 49, 'José', 'Buisan Ferrer', 'Jaime I', 8, '', NULL, '2017-10-06 17:24:32', '2017-10-06 17:24:32'),
(1533, 1, 10, 18, 49, 'Juana', 'Ponce', 'Jaime I', 8, '', NULL, '2017-10-06 17:24:44', '2017-10-06 17:24:44'),
(1534, 1, 10, 18, 49, 'Marcos y Juan Carlos', 'Catalan Fonfreda', 'Jaime I', 8, '', NULL, '2017-10-06 17:25:46', '2017-10-06 17:25:46'),
(1535, 1, 10, 18, 50, 'Ángel', 'Canalis Villagrasa', 'Jaime I', 6, '', NULL, '2017-10-06 17:26:20', '2017-10-06 17:26:20'),
(1536, 1, 10, 18, 50, 'Elena', 'Permayer', 'Jaime I', 6, '', NULL, '2017-10-06 17:26:36', '2017-10-06 17:27:22'),
(1537, 1, 10, 18, 50, 'Pedro', 'Canalis', 'Jaime I', 6, '', NULL, '2017-10-06 17:28:09', '2017-10-06 17:28:09'),
(1538, 1, 10, 18, 50, 'Edelvina', 'Villagrasa', 'Jaime I', 6, '', NULL, '2017-10-06 17:28:47', '2017-10-06 17:28:47'),
(1539, 1, 10, 18, 51, 'Vicente', 'Buisan Gallinat', 'Jaime I', 2, '', NULL, '2017-10-06 17:29:37', '2017-10-06 17:29:37'),
(1540, 1, 10, 18, 51, 'Agueda', 'Soler Solans', 'Jaime I', 2, '', NULL, '2017-10-06 17:30:05', '2017-10-06 17:30:05'),
(1541, 1, 10, 18, 51, 'Jorge', 'Galan', 'Jaime I', 2, '', NULL, '2017-10-06 17:30:29', '2017-10-06 17:30:29'),
(1542, 1, 10, 18, 51, 'Manuel', 'Solans Bonet', 'Jaime I', 2, '', NULL, '2017-10-06 17:30:45', '2017-10-06 17:30:45'),
(1543, 1, 10, 18, 52, 'Aurora', 'Ortiga Villagrasa', 'Jaime I', 1, '', NULL, '2017-10-06 17:31:10', '2017-10-06 17:31:10'),
(1544, 1, 10, 18, 52, '......', 'Castellon', 'Jaime I', 1, '', NULL, '2017-10-06 17:31:44', '2017-10-06 17:31:44'),
(1545, 1, 10, 18, 52, 'Fco', 'Ros Ortiga', 'Jaime I', 1, 'luz', NULL, '2017-10-06 17:32:10', '2017-10-06 17:32:10'),
(1546, 1, 10, 18, 53, 'Segundo', 'Florencia Roda', 'Joaquin Costa', 2, '', NULL, '2017-10-06 17:32:52', '2017-10-06 17:32:52'),
(1547, 1, 10, 18, 53, 'Carmen', 'Chela Almunia', 'Joaquin Costa', 2, '', NULL, '2017-10-06 17:33:20', '2017-10-06 17:33:20'),
(1548, 1, 10, 18, 53, 'Fernando', 'Florencia Chela', 'Joaquin Costa', 2, '', NULL, '2017-10-06 17:34:00', '2017-10-06 17:34:00'),
(1549, 1, 10, 18, 54, 'Ramón', 'Royo Roda', 'Joaquin Costa', 5, '', NULL, '2017-10-06 17:34:21', '2017-10-06 17:34:21'),
(1550, 1, 10, 18, 54, 'Mª Teresa', 'Ferrer Solano', 'Joaquin Costa', 5, '', NULL, '2017-10-06 17:34:51', '2017-10-06 17:34:51'),
(1551, 1, 10, 18, 55, 'José Luís', 'Pueyo Riverola', 'Joaquin Costa', 0, 'S/N', NULL, '2017-10-06 17:35:35', '2017-10-06 17:35:35'),
(1552, 1, 10, 18, 55, 'Isabel', 'Pirla Montul', 'Joaquin Costa', 0, 'S/N', NULL, '2017-10-06 17:36:12', '2017-10-06 17:36:12'),
(1553, 1, 10, 18, 55, 'Isama', 'Isama', 'Joaquin Costa', 0, 'S/N', NULL, '2017-10-06 17:36:28', '2017-10-06 17:36:28'),
(1554, 1, 10, 18, 56, 'Arcadio', 'Quibus', 'Calvario', 1, '', NULL, '2017-10-06 17:36:50', '2017-10-06 17:36:50'),
(1555, 1, 10, 18, 57, 'Gloria', 'Galan', 'Calvario', 5, '', NULL, '2017-10-06 17:37:20', '2017-10-06 17:37:20'),
(1556, 1, 10, 18, 57, 'Fco', 'Gomez Cortés', 'Calvario', 5, '', NULL, '2017-10-06 17:37:44', '2017-10-06 17:37:44'),
(1557, 1, 10, 18, 58, 'Alvaro ', 'Mor Serrano', 'Calvario', 2, '', NULL, '2017-10-06 17:38:09', '2017-10-06 17:38:09'),
(1558, 1, 10, 18, 58, 'Aurora', 'Raso', 'Calvario', 2, '', NULL, '2017-10-06 17:38:24', '2017-10-06 17:38:24'),
(1559, 1, 10, 18, 59, 'Asunción', 'Cregenzan ', 'Calvario', 4, '', NULL, '2017-10-06 17:38:52', '2017-10-06 17:38:52'),
(1560, 1, 10, 18, 59, 'Fernando', 'Gomez', 'Calvario', 4, '', NULL, '2017-10-06 17:39:09', '2017-10-06 17:39:09'),
(1561, 1, 10, 18, 59, 'Carmen', 'Ferrer Navarro', 'Calvario', 4, '', NULL, '2017-10-06 17:39:28', '2017-10-06 17:39:28'),
(1562, 1, 10, 18, 60, 'Bar', 'Bar Juvilados Fco', 'Calvario', 8, '', NULL, '2017-10-06 17:40:24', '2017-10-06 17:40:24'),
(1563, 1, 10, 18, 61, 'Julia', 'Oliveros Sanz', 'El Portal', 15, '', NULL, '2017-10-06 17:41:05', '2017-10-06 17:41:05'),
(1564, 1, 10, 18, 62, 'Pedro', 'Alberti Casanovas', 'El Portal', 17, '', NULL, '2017-10-06 17:41:21', '2017-10-06 17:42:37'),
(1567, 1, 10, 18, 64, 'Luís', 'Catalan Fonfreda', 'El Portal', 21, '', NULL, '2017-10-06 17:43:37', '2017-10-06 17:43:37'),
(1568, 1, 10, 18, 65, 'Roberto', 'Martínez', 'El Portal', 24, '', NULL, '2017-10-06 17:44:01', '2017-10-06 17:44:01'),
(1569, 1, 10, 18, 66, 'Esperanza', 'Latre Lax', 'El Portal', 20, '', NULL, '2017-10-06 17:50:31', '2017-10-06 17:50:31'),
(1570, 1, 10, 18, 67, 'Máximo', 'Catalan Tomás', 'El Portal', 18, '', NULL, '2017-10-06 17:51:18', '2017-10-06 17:51:18'),
(1571, 1, 10, 18, 17, 'Carmen', 'Cambra', 'El Portal', 18, '', NULL, '2017-10-06 17:51:39', '2017-10-06 17:51:39'),
(1572, 1, 10, 18, 67, 'Julia', 'Bernad Roda', 'El Portal', 18, '', NULL, '2017-10-07 07:17:37', '2017-10-07 07:17:37'),
(1573, 1, 10, 18, 68, 'M..', 'Margalef Gallinad', 'Calvario', 15, '', NULL, '2017-10-07 07:18:20', '2017-10-07 07:18:20'),
(1574, 1, 10, 18, 68, 'Pedro', 'Dobón', 'Calvario', 15, '', NULL, '2017-10-07 07:18:39', '2017-10-07 07:20:03'),
(1575, 1, 10, 18, 68, 'Ana Mª y Javier', 'Canalis Margalef', 'Calvario', 15, '', NULL, '2017-10-07 07:19:34', '2017-10-07 07:19:34'),
(1576, 1, 10, 18, 69, 'Reyes', 'Rezusta', 'Calvario', 10, '', NULL, '2017-10-07 07:21:03', '2017-10-07 07:21:03'),
(1577, 1, 10, 18, 69, '......', 'Latre Pallares', 'Calvario', 10, '', NULL, '2017-10-07 07:21:32', '2017-10-07 07:21:32'),
(1578, 1, 10, 18, 69, 'Ramón', 'Angas Ferrer', 'Calvario', 10, '', NULL, '2017-10-07 07:22:29', '2017-10-07 07:22:29'),
(1579, 1, 10, 18, 71, 'Zhana', 'Pikuleva', 'Calvario', 15, '', NULL, '2017-10-07 07:23:10', '2017-10-07 07:23:10'),
(1580, 1, 10, 18, 70, 'Ramón', 'Oliveros Mur', 'Calvario', 12, '', NULL, '2017-10-07 07:23:45', '2017-10-07 07:23:45'),
(1581, 1, 10, 18, 70, 'Margarita', 'Oliveros', 'Calvario', 12, '', NULL, '2017-10-07 07:24:04', '2017-10-07 07:24:04'),
(1582, 1, 10, 18, 72, 'Teresa', 'Almunia Escanilla', 'Calvario', 14, '', NULL, '2017-10-07 07:24:47', '2017-10-07 07:24:47'),
(1583, 1, 10, 18, 72, 'Javier', 'Roda Tomás', 'Calvario', 14, '', NULL, '2017-10-07 07:25:15', '2017-10-07 07:25:15'),
(1584, 1, 10, 18, 72, 'Teresa', 'Escanilla Novellón', 'Calvario', 14, '', NULL, '2017-10-07 07:25:49', '2017-10-07 07:25:49'),
(1585, 1, 10, 18, 72, 'Santiago ', 'Almunia ', 'Calvario', 14, '', NULL, '2017-10-07 07:26:24', '2017-10-07 07:26:24'),
(1586, 1, 10, 18, 73, 'José Luís', 'Elcacho ', 'Calvario', 18, '', NULL, '2017-10-07 07:26:59', '2017-10-07 07:26:59'),
(1587, 1, 10, 18, 73, 'Maruja', 'Cambra Escanilla', 'Calvario', 18, '', NULL, '2017-10-07 07:27:19', '2017-10-07 07:27:19'),
(1588, 1, 10, 18, 73, 'Diana y Rebeca', 'Elcacho Cambra', 'Calvario', 18, '', NULL, '2017-10-07 07:27:45', '2017-10-07 07:27:45'),
(1589, 1, 10, 18, 73, 'Fco', 'Bordes Alvarez', 'Calvario', 18, '', NULL, '2017-10-07 07:28:23', '2017-10-07 07:28:23'),
(1590, 1, 10, 18, 73, 'Ander', 'Navarro Elcacho', 'Calvario', 18, '', NULL, '2017-10-07 07:28:50', '2017-10-07 07:28:50'),
(1591, 1, 10, 18, 74, 'María', 'Santamaria', 'Calvario', 26, '', NULL, '2017-10-07 07:29:12', '2017-10-07 07:29:12'),
(1592, 1, 10, 18, 75, 'Mª Carmen', 'Castillo', 'Castillo', 1, '', NULL, '2017-10-07 07:29:57', '2017-10-07 07:29:57'),
(1593, 1, 10, 18, 76, 'Antonio', 'Sanz Ostal', 'Castillo', 2, '', NULL, '2017-10-07 07:30:19', '2017-10-07 07:30:19'),
(1594, 1, 10, 18, 76, 'Lidia ', 'Duaso Lafita', 'Castillo', 2, '', NULL, '2017-10-07 07:30:58', '2017-10-07 07:30:58'),
(1595, 1, 10, 18, 77, 'José y Juan', 'Miguel', 'Castillo', 4, '', NULL, '2017-10-07 07:31:21', '2017-10-07 07:31:21'),
(1596, 1, 10, 18, 78, 'Enrique', 'Soler Urrea', 'Castillo', 6, '', NULL, '2017-10-07 07:31:48', '2017-10-07 07:31:48'),
(1597, 1, 10, 18, 78, 'T..', 'Soler Cambra', 'Castillo', 6, 'luz', NULL, '2017-10-07 07:32:26', '2017-10-07 07:32:26'),
(1598, 1, 10, 18, 79, 'Pilar', 'Urrea Sesé', 'Castillo', 5, '', NULL, '2017-10-07 07:33:07', '2017-10-07 07:33:07'),
(1599, 1, 10, 18, 80, 'Anita', 'Ferrer Soler', 'Castillo', 7, '', NULL, '2017-10-07 07:34:22', '2017-10-07 07:34:22'),
(1600, 1, 10, 18, 81, 'José', 'Gavin Ortiga', 'Castillo', 20, '', NULL, '2017-10-07 07:35:15', '2017-10-07 07:35:15'),
(1601, 1, 10, 18, 81, 'José y Pilar', 'Gavin', 'Castillo', 20, '', NULL, '2017-10-07 07:35:35', '2017-10-07 07:35:35'),
(1602, 1, 10, 18, 81, 'Ascención', 'Ortiga', 'Castillo', 20, '', NULL, '2017-10-07 07:35:57', '2017-10-07 07:35:57'),
(1603, 1, 10, 18, 81, 'Juana', 'López Iturbez', 'Castillo', 20, '', NULL, '2017-10-07 07:36:19', '2017-10-07 07:36:19'),
(1604, 1, 10, 18, 82, 'Alejandro ', 'Barcos', 'Castillo', 11, '', NULL, '2017-10-07 07:36:49', '2017-10-07 07:36:49'),
(1605, 1, 10, 18, 82, 'Magdalena ', 'Gallinad', 'Castillo', 11, '', NULL, '2017-10-07 07:37:20', '2017-10-07 07:37:20'),
(1606, 1, 10, 18, 82, 'Ignacio', 'Barcos Pérez', 'Castillo', 11, '', NULL, '2017-10-07 07:37:52', '2017-10-07 07:37:52'),
(1607, 1, 10, 18, 83, 'Luís', 'Tabueña Cale gna', 'Castillo', 24, '', NULL, '2017-10-07 07:38:30', '2017-10-07 07:38:30'),
(1608, 1, 10, 18, 83, 'Lidia ', 'Martín Santamaría', 'Castillo', 24, '', NULL, '2017-10-07 07:39:38', '2017-10-07 07:39:38'),
(1609, 1, 10, 18, 84, 'Fernando', 'Barcos Loscertales', 'Castillo', 15, '', NULL, '2017-10-07 07:40:12', '2017-10-07 07:40:12'),
(1610, 1, 10, 18, 84, 'Ana', 'Puxen Duaso', 'Castillo', 15, '', NULL, '2017-10-07 07:52:53', '2017-10-07 07:52:53'),
(1611, 1, 10, 18, 85, 'Ángel', 'Consola Navarro', 'Castillo', 40, '', NULL, '2017-10-07 07:53:38', '2017-10-07 07:53:38'),
(1612, 1, 10, 18, 85, 'Silvia', 'Gutierrez', 'Castillo', 40, '', NULL, '2017-10-07 07:53:57', '2017-10-07 07:53:57'),
(1613, 1, 10, 18, 86, 'Jesús', 'Ferrer Cregenzan', 'Castillo', 21, '', NULL, '2017-10-07 07:54:40', '2017-10-07 07:54:40'),
(1614, 1, 10, 18, 86, 'Felisa ', 'Costa Bernada', 'Castillo', 21, '', NULL, '2017-10-07 07:55:10', '2017-10-07 07:55:10'),
(1615, 1, 10, 18, 87, 'Gregorio', 'Escanilla Latre', 'Castillo', 34, '', NULL, '2017-10-07 07:55:32', '2017-10-07 07:55:32'),
(1616, 1, 10, 18, 88, 'Rosa', 'Mur', 'Castillo', 23, '', NULL, '2017-10-07 07:56:30', '2017-10-07 07:56:30'),
(1617, 1, 10, 18, 88, '......', 'Cregenzan ', 'Castillo', 23, 'Falta nombre', NULL, '2017-10-07 07:57:08', '2017-10-07 07:57:08'),
(1618, 1, 10, 18, 89, 'Agustín', 'Mijas', 'Castillo', 25, '', NULL, '2017-10-07 07:57:24', '2017-10-07 07:57:24'),
(1619, 1, 10, 18, 89, 'Manolita', 'Villagrasa', 'Castillo', 25, '', NULL, '2017-10-07 07:57:55', '2017-10-07 07:57:55'),
(1620, 1, 10, 18, 90, 'Tomás', 'Castillo Mur', 'Castillo', 27, '', NULL, '2017-10-07 08:00:23', '2017-10-07 08:00:23'),
(1621, 1, 10, 18, 91, 'José', 'Villanova Agramun', 'Castillo', 83, 'posible nº erróneo, podría ser 28 o 29', NULL, '2017-10-07 08:01:01', '2017-10-07 08:01:01'),
(1622, 1, 10, 18, 91, 'Conchita', 'Agramun', 'Castillo', 83, 'posible nº erróneo, podría ser 28 o 29', NULL, '2017-10-07 08:01:20', '2017-10-07 08:01:20'),
(1623, 1, 10, 18, 92, 'Amalia', 'Ballarin', 'Castillo', 30, '', NULL, '2017-10-07 08:02:05', '2017-10-07 08:02:05'),
(1624, 1, 10, 18, 92, 'Fco', 'Villalba Ballarin', 'Castillo', 30, '', NULL, '2017-10-07 08:02:25', '2017-10-07 08:02:25'),
(1625, 1, 10, 18, 92, 'Inmaculada', 'Ferrer', 'Castillo', 30, '', NULL, '2017-10-07 08:02:48', '2017-10-07 08:02:48'),
(1626, 1, 10, 18, 93, 'Joaquín', 'Blazquez', 'Castillo', 4, '', NULL, '2017-10-07 08:04:39', '2017-10-07 08:04:39'),
(1627, 1, 10, 18, 93, 'Magdalena ', 'Buisan', 'Castillo', 4, '', NULL, '2017-10-07 08:05:18', '2017-10-07 08:05:18'),
(1628, 1, 10, 18, 93, '......', 'El Cierzo', 'Castillo', 4, 'Dejar en Jaime', NULL, '2017-10-07 08:05:46', '2017-10-07 08:05:46'),
(1629, 1, 10, 18, 94, 'Carlos', 'Zapater Buson', 'Castillo', 6, '', NULL, '2017-10-07 08:06:09', '2017-10-07 08:06:09'),
(1630, 1, 10, 18, 94, 'Angelina', 'Elcacho Mur', 'Castillo', 6, '', NULL, '2017-10-07 08:06:40', '2017-10-07 08:06:40'),
(1631, 1, 10, 18, 94, 'Carmen', 'Busón', 'Castillo', 6, '', NULL, '2017-10-07 08:07:02', '2017-10-07 08:07:02'),
(1632, 1, 10, 18, 94, '......', 'Sociedad de cazadores', 'Castillo', 6, '', NULL, '2017-10-07 08:07:19', '2017-10-07 08:07:19'),
(1633, 1, 10, 18, 95, 'Julio', 'Canalis', '', 0, 'Bantierra', NULL, '2017-10-07 08:08:11', '2017-10-07 08:08:11'),
(1634, 1, 10, 18, 95, 'Basilisa', 'Novellon', '', 0, 'Bantierra', NULL, '2017-10-07 08:08:26', '2017-10-07 08:08:26'),
(1635, 1, 10, 18, 96, 'Fco Javier', 'Villagrasa Pelay', 'Cuatro Esquinas', 0, '', NULL, '2017-10-07 08:09:12', '2017-10-07 08:09:12'),
(1636, 1, 10, 18, 96, 'Inmaculada', 'Cáceres', 'Cuatro Esquinas', 0, '', NULL, '2017-10-07 08:13:55', '2017-10-07 08:13:55'),
(1637, 1, 10, 18, 97, 'Vicente A.', 'Mir Gallinad', 'Santa Agueda', 1, '', NULL, '2017-10-07 08:14:21', '2017-10-07 08:14:21'),
(1638, 1, 10, 18, 97, 'Josefina', 'Canales', 'Santa Agueda', 1, '', NULL, '2017-10-07 08:14:38', '2017-10-07 08:14:38'),
(1639, 1, 10, 18, 98, 'Alicia', 'Jordán', 'Santa Agueda', 3, '', NULL, '2017-10-07 08:14:53', '2017-10-07 08:14:53'),
(1640, 1, 10, 18, 98, 'Sandra', 'Pueyo Montul', 'Santa Agueda', 3, '', NULL, '2017-10-07 08:16:28', '2017-10-07 08:16:28'),
(1641, 1, 10, 18, 98, 'Javier', 'Ferrer Jordán', 'Santa Agueda', 3, '', NULL, '2017-10-07 08:16:47', '2017-10-07 08:16:47'),
(1642, 1, 10, 18, 99, '......', 'Ayuntamiento', 'Pza Mayor', 1, '', NULL, '2017-10-07 08:17:54', '2017-10-07 08:17:54'),
(1643, 1, 10, 18, 100, 'Jesús', 'Pueyo Escanilla', 'Pza Mayor', 2, 'Bar', NULL, '2017-10-07 08:18:39', '2017-10-07 08:18:39'),
(1644, 1, 10, 18, 101, 'Oscar', 'Ballarin Urrea', 'Pza Mayor', 7, '', NULL, '2017-10-07 08:19:01', '2017-10-07 08:19:01'),
(1645, 1, 10, 18, 101, '......', 'Gallinad', 'Pza Mayor', 7, 'Falta nombre', NULL, '2017-10-07 08:19:44', '2017-10-07 08:19:44'),
(1646, 1, 10, 18, 102, 'Mercedes Tomás', 'Rocabet Canalis', 'Pza Mayor', 10, '', NULL, '2017-10-07 08:20:47', '2017-10-07 08:20:47'),
(1647, 1, 10, 18, 102, 'Gregorio', 'Roda Anadón', 'Pza Mayor', 10, '', NULL, '2017-10-07 08:21:13', '2017-10-07 08:21:13'),
(1648, 1, 10, 18, 102, 'Carlos', 'Roda Tomás', 'Pza Mayor', 10, '', NULL, '2017-10-07 08:21:33', '2017-10-07 08:21:33'),
(1649, 1, 10, 18, 103, 'Conchita', 'Aquilué Roda', 'Pza Mayor', 15, '', NULL, '2017-10-07 08:22:12', '2017-10-07 08:22:12'),
(1650, 1, 10, 18, 103, 'Sebastian', 'Ferrer Setan', 'Pza Mayor', 15, '', NULL, '2017-10-07 08:22:37', '2017-10-07 08:22:37'),
(1651, 1, 10, 18, 104, 'María', 'Jordán Setan', 'Pza Mayor', 20, '', NULL, '2017-10-07 08:26:05', '2017-10-07 08:26:05'),
(1652, 1, 10, 18, 104, 'José', 'Millera Roda', 'Pza Mayor', 20, 'Dejar en el bar de la plaza', NULL, '2017-10-07 08:26:49', '2017-10-07 08:26:49'),
(1653, 1, 10, 18, 105, 'Rosa', 'Mur Elcacho', 'Pza Mayor', 22, '', NULL, '2017-10-07 08:27:09', '2017-10-07 08:27:09'),
(1654, 1, 10, 18, 105, 'Alvaro', 'Barcos Loscertales', 'Pza Mayor', 22, '', NULL, '2017-10-07 08:27:31', '2017-10-07 08:27:31'),
(1655, 1, 10, 18, 105, 'David', 'Barcos Mur', 'Pza Mayor', 22, '', NULL, '2017-10-07 08:28:08', '2017-10-07 08:28:08'),
(1656, 1, 10, 18, 106, 'Blas', 'Mur Casabon', 'Pza Mayor', 19, '', NULL, '2017-10-07 08:29:17', '2017-10-07 08:29:17'),
(1657, 1, 10, 18, 106, 'Fca', 'Elcacho Chela', 'Pza Mayor', 19, '', NULL, '2017-10-07 08:29:41', '2017-10-07 08:29:41'),
(1658, 1, 10, 18, 107, 'María', 'Cregenzan Serrano', 'Pza Mayor', 21, '', NULL, '2017-10-07 08:30:18', '2017-10-07 08:30:18'),
(1659, 1, 10, 18, 107, 'Angelina', 'Torres Cregenzan', 'Pza Mayor', 21, '', NULL, '2017-10-07 08:30:42', '2017-10-07 08:30:42'),
(1660, 1, 10, 18, 107, 'Julio', 'Aquilué Roda', 'Pza Mayor', 21, '', NULL, '2017-10-07 08:31:08', '2017-10-07 08:31:08'),
(1661, 1, 10, 18, 107, '......', 'Agroganaderos Aquilué', 'Pza Mayor', 21, '', NULL, '2017-10-07 08:31:42', '2017-10-07 08:31:42'),
(1662, 1, 10, 18, 108, 'Hermanos', 'Barcos Loscertales', 'Pza Mayor', 23, '', NULL, '2017-10-07 08:32:01', '2017-10-07 08:32:01'),
(1663, 1, 10, 18, 109, 'Jovita', 'Villacampa Latre', 'Pza Mayor', 5, '', NULL, '2017-10-07 08:32:37', '2017-10-07 08:32:37'),
(1664, 1, 10, 18, 109, 'Joaquina', 'Alegre', 'Pza Mayor', 5, '', NULL, '2017-10-07 08:32:55', '2017-10-07 08:32:55'),
(1665, 1, 10, 18, 110, 'Consuelo', 'Buisan', 'Pza Mayor', 25, '', NULL, '2017-10-07 08:33:12', '2017-10-07 08:33:12'),
(1666, 1, 10, 18, 111, 'Javier', 'Casabón ', 'Pza Mayor', 27, '', NULL, '2017-10-07 08:33:36', '2017-10-07 08:33:36'),
(1667, 1, 10, 18, 111, 'Nuria', 'Soler Ferrer', 'Pza Mayor', 27, '', NULL, '2017-10-07 08:34:04', '2017-10-07 08:34:04'),
(1668, 1, 10, 18, 111, 'Miguel', 'Casabón Soler', 'Pza Mayor', 27, '', NULL, '2017-10-07 08:34:46', '2017-10-07 08:34:46'),
(1669, 1, 10, 18, 112, '......', 'Panadería', 'Pza Mayor', 36, '', NULL, '2017-10-07 08:35:08', '2017-10-07 08:35:08'),
(1670, 1, 10, 18, 112, 'Jacinto', 'Salomo Ferrer', 'Pza Mayor', 36, '', NULL, '2017-10-07 08:35:28', '2017-10-07 08:35:28'),
(1671, 1, 10, 18, 112, 'Teresa', 'Castellón Marzola', 'Pza Mayor', 36, '', NULL, '2017-10-07 08:36:11', '2017-10-07 08:36:11'),
(1672, 1, 10, 18, 112, 'María', 'Ibarz', 'Pza Mayor', 36, '', NULL, '2017-10-07 08:36:32', '2017-10-07 08:36:32'),
(1673, 1, 10, 18, 113, 'Fco', 'Forcada Mur', 'Pza Mayor', 38, '', NULL, '2017-10-07 08:36:59', '2017-10-07 08:36:59'),
(1674, 1, 10, 18, 114, 'José', 'Ferrer Roda', 'Pza Mayor', 40, '', NULL, '2017-10-07 08:37:31', '2017-10-07 08:37:31'),
(1675, 1, 10, 18, 114, 'Pilar', 'Cregenzan Costa', 'Pza Mayor', 40, '', NULL, '2017-10-07 08:38:06', '2017-10-07 08:38:06'),
(1676, 1, 10, 18, 114, 'Oscar', 'Ferrer Cregenzan', 'Pza Mayor', 40, '', NULL, '2017-10-07 08:38:27', '2017-10-07 08:38:27'),
(1677, 1, 10, 18, 115, 'Leonardo', 'Elcacho Torres', 'Arrabal', 0, 'Tienda, falta nº', NULL, '2017-10-07 08:39:46', '2017-10-07 08:39:46'),
(1678, 1, 10, 18, 115, 'Emeri', 'Mur Ballarin', 'Arrabal', 0, 'Falta nº', NULL, '2017-10-07 08:40:30', '2017-10-07 08:40:30'),
(1679, 1, 10, 18, 115, 'Eduardo', 'Bernat Ballarin', 'Arrabal', 0, 'Falta nº', NULL, '2017-10-07 08:40:58', '2017-10-07 08:40:58'),
(1680, 1, 10, 18, 116, 'Remigio ', 'Humber', 'Arrabal', 7, '', NULL, '2017-10-07 08:41:34', '2017-10-07 08:41:34'),
(1681, 1, 10, 18, 116, 'Carmen', 'Duaso', 'Arrabal', 7, '', NULL, '2017-10-07 08:41:51', '2017-10-07 08:41:51'),
(1682, 1, 10, 18, 117, 'Ismael', 'Ferrer', 'Arrabal', 28, '', NULL, '2017-10-07 08:42:39', '2017-10-07 08:42:39'),
(1683, 1, 10, 18, 118, 'Fernando', 'Giral Escanilla', 'Arrabal', 30, '', NULL, '2017-10-07 08:43:05', '2017-10-07 08:43:05'),
(1684, 1, 10, 18, 119, 'Marcelino ', 'Mur Duaso', 'Arrabal', 5, '', NULL, '2017-10-07 08:43:34', '2017-10-07 08:43:34'),
(1685, 1, 10, 18, 119, 'Victoriana', 'Chela', 'Arrabal', 5, '', NULL, '2017-10-07 08:43:55', '2017-10-07 08:43:55'),
(1686, 1, 10, 18, 119, 'Tomás', 'Castillo', 'Arrabal', 5, '', NULL, '2017-10-07 08:44:50', '2017-10-07 08:44:50'),
(1687, 1, 10, 18, 120, 'Oscar', 'Abenoza', 'Arrabal', 1, '', NULL, '2017-10-07 08:45:10', '2017-10-07 08:45:10'),
(1688, 1, 10, 18, 120, 'Raquel', 'Novellon', 'Arrabal', 1, '', NULL, '2017-10-07 08:45:44', '2017-10-07 08:45:44'),
(1689, 1, 10, 18, 121, 'Amalia', 'Ballarin', 'Castillo', 30, '', NULL, '2017-10-07 08:46:42', '2017-10-07 08:46:42'),
(1690, 1, 10, 18, 121, 'Fco', 'Villalba Ballarin', 'Castillo', 30, '', NULL, '2017-10-07 08:47:11', '2017-10-07 08:47:11'),
(1691, 1, 10, 18, 121, 'Inmaculada', 'Ferrer', 'Castillo', 30, '', NULL, '2017-10-07 08:47:32', '2017-10-07 08:47:32');
INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(1692, 1, 10, 18, 121, 'Elena y Diego', 'Cambra', 'Castillo', 30, '', NULL, '2017-10-07 08:48:02', '2017-10-07 08:48:02'),
(1693, 1, 10, 18, 121, 'José', 'Villanova Agramun', 'Castillo', 83, '', NULL, '2017-10-07 08:49:21', '2017-10-07 08:49:21'),
(1694, 1, 10, 18, 121, '......', 'Almunia ', 'Castillo', 83, 'Falta nombre', NULL, '2017-10-07 08:49:57', '2017-10-07 08:49:57'),
(1695, 1, 10, 18, 121, 'Conchita', 'Agramun', 'Castillo', 83, '', NULL, '2017-10-07 08:50:20', '2017-10-07 08:50:20'),
(1696, 1, 10, 18, 122, 'Josefa', 'Sanz Ferrer', 'Arrabal', 73, '', NULL, '2017-10-07 08:50:52', '2017-10-07 08:50:52'),
(1697, 1, 10, 18, 123, 'Raimundo', 'Abizanda', 'Arrabal', 71, '', NULL, '2017-10-07 08:51:12', '2017-10-07 08:51:12'),
(1698, 1, 10, 18, 123, 'Alegría', 'Elcacho Chela', 'Arrabal', 71, '', NULL, '2017-10-07 08:51:34', '2017-10-07 08:51:34'),
(1699, 1, 10, 18, 123, 'Fco', 'Felices Casabon', 'Arrabal', 71, '', NULL, '2017-10-07 08:52:00', '2017-10-07 08:52:00'),
(1700, 1, 10, 18, 124, 'Luciano', 'Canalis Martín', 'Arrabal', 6, '', NULL, '2017-10-07 13:44:42', '2017-10-07 13:44:42'),
(1701, 1, 10, 18, 124, 'Pilar', 'Cregenzan Aineto', 'Arrabal', 6, '', NULL, '2017-10-07 13:45:12', '2017-10-07 13:45:12'),
(1702, 1, 10, 18, 124, 'Amparo', 'Mor', 'Arrabal', 6, '', NULL, '2017-10-07 13:45:33', '2017-10-07 13:45:33'),
(1703, 1, 10, 18, 124, 'Alfredo', 'Paniello', 'Arrabal', 6, '', NULL, '2017-10-07 13:45:48', '2017-10-07 13:45:48'),
(1704, 1, 10, 18, 125, 'Ramón', 'Montaner Sanz', 'Arrabal', 26, '', NULL, '2017-10-07 13:46:54', '2017-10-07 13:46:54'),
(1705, 1, 10, 18, 125, 'Pilar', 'Abenoza Escanilla', 'Arrabal', 26, '', NULL, '2017-10-07 13:47:14', '2017-10-07 13:47:14'),
(1706, 1, 10, 18, 125, 'Elisabeth, Goreti e Ismael', 'Montaner', 'Arrabal', 26, '', NULL, '2017-10-07 13:48:31', '2017-10-07 13:50:16'),
(1707, 1, 10, 18, 126, 'Pascual', 'Sanz Naya', 'Arrabal', 24, '', NULL, '2017-10-07 13:51:27', '2017-10-07 13:51:27'),
(1708, 1, 10, 18, 125, 'Ana ', 'Cambra Torres', 'Arrabal', 24, '', NULL, '2017-10-07 13:52:04', '2017-10-07 13:52:04'),
(1709, 1, 10, 18, 126, 'Miguel Ángel', 'Lacota', 'Arrabal', 65, '', NULL, '2017-10-07 13:53:11', '2017-10-07 13:53:11'),
(1710, 1, 10, 18, 126, 'Carmen', 'Cambra', 'Arrabal', 65, '', NULL, '2017-10-07 13:53:26', '2017-10-07 13:53:26'),
(1711, 1, 10, 18, 126, 'Ana', 'Lacota Cambra', 'Arrabal', 65, '', NULL, '2017-10-07 13:53:49', '2017-10-07 13:53:49'),
(1712, 1, 10, 18, 127, 'Adrian', 'Palacio', 'Arrabal', 63, '', NULL, '2017-10-07 13:54:04', '2017-10-07 13:54:04'),
(1713, 1, 10, 18, 128, 'Julio', 'Florencia Roda', 'Arrabal', 59, '', NULL, '2017-10-07 13:54:35', '2017-10-07 13:54:35'),
(1714, 1, 10, 18, 128, 'Mª Cruz', 'Lax Duaso', 'Arrabal', 59, '', NULL, '2017-10-07 13:55:08', '2017-10-07 13:55:08'),
(1715, 1, 10, 18, 128, 'Hugo', 'Lax', 'Arrabal', 59, '', NULL, '2017-10-07 13:55:32', '2017-10-07 13:55:32'),
(1716, 1, 10, 18, 129, 'Ismael', 'Montaner', 'Arrabal', 0, 'S/N', NULL, '2017-10-07 13:57:15', '2017-10-07 13:57:15'),
(1717, 1, 10, 18, 129, 'Carol', 'Zapater Elcacho', 'Arrabal', 0, 'S/N', NULL, '2017-10-07 13:57:37', '2017-10-07 13:57:37'),
(1718, 1, 10, 18, 130, 'Luís', 'Cregenzan Aineto', 'Arrabal', 28, '', NULL, '2017-10-07 13:59:02', '2017-10-07 13:59:02'),
(1719, 1, 10, 18, 130, 'Teresa', 'Buisan', 'Arrabal', 28, '', NULL, '2017-10-07 13:59:22', '2017-10-07 13:59:22'),
(1720, 1, 10, 18, 130, 'Sonia y Candela', 'Cregenzan ', 'Arrabal', 28, '', NULL, '2017-10-07 14:00:05', '2017-10-07 14:00:05'),
(1721, 1, 10, 18, 131, 'Julia', 'Sanz Escuain', 'Arrabal', 35, '', NULL, '2017-10-07 14:00:30', '2017-10-07 14:00:30'),
(1722, 1, 10, 18, 131, 'Josefa', 'Lazaro Sanz', 'Arrabal', 35, '', NULL, '2017-10-07 14:01:41', '2017-10-07 14:01:41'),
(1723, 1, 10, 18, 131, 'Sandra y Cristina', 'Callen', 'Arrabal', 35, '', NULL, '2017-10-07 14:02:06', '2017-10-07 14:02:06'),
(1724, 1, 10, 18, 132, '......', 'Escanilla', 'Travesia Arrabal', 0, 'Falta nombre', NULL, '2017-10-07 14:03:57', '2017-10-07 14:03:57'),
(1725, 1, 10, 18, 132, 'Fco', 'Carrera Poy', 'Travesia Arrabal', 0, 'Falta nº', NULL, '2017-10-07 14:04:46', '2017-10-07 14:04:46'),
(1726, 1, 10, 18, 132, 'Victoria', 'Ferrer Cregenzan', 'Travesia Arrabal', 0, 'Falta nº', NULL, '2017-10-07 14:05:05', '2017-10-07 14:05:05'),
(1727, 1, 10, 18, 132, 'Claudia y Marco', 'Carrera', 'Travesia Arrabal', 0, 'Falta nº', NULL, '2017-10-07 14:05:32', '2017-10-07 14:05:32'),
(1728, 1, 10, 18, 132, 'José', 'Ferrer Cregenzan', 'Travesia Arrabal', 0, 'Falta nº', NULL, '2017-10-07 14:06:01', '2017-10-07 14:06:01'),
(1729, 1, 10, 18, 132, 'Elisa', 'Nasarre', 'Travesia Arrabal', 0, 'Falta nº', NULL, '2017-10-07 14:06:47', '2017-10-07 14:06:47'),
(1730, 1, 10, 18, 133, 'Artur F.', 'Dosantos', 'Arrabal', 22, '', NULL, '2017-10-07 14:07:11', '2017-10-07 14:07:11'),
(1731, 1, 10, 18, 133, 'Jessica', 'lazaro', 'Arrabal', 22, '', NULL, '2017-10-07 14:07:30', '2017-10-07 14:07:30'),
(1732, 1, 10, 18, 134, 'Miguel', 'Abizanda', 'Arrabal', 20, '', NULL, '2017-10-07 14:07:52', '2017-10-07 14:07:52'),
(1733, 1, 10, 18, 134, 'Benedicta', 'Ostal', 'Arrabal', 20, '', NULL, '2017-10-07 14:08:10', '2017-10-07 14:08:10'),
(1734, 1, 10, 18, 135, 'Mariano', 'Ortiga Villagrasa', 'Arrabal', 18, '', NULL, '2017-10-07 14:08:38', '2017-10-07 14:08:38'),
(1735, 1, 10, 18, 135, 'Ramona', 'Sanz Sanz', 'Arrabal', 18, '', NULL, '2017-10-07 14:08:57', '2017-10-07 14:08:57'),
(1736, 1, 10, 18, 136, 'Carlos', 'Tomás', 'Arrabal', 53, '', NULL, '2017-10-07 14:10:08', '2017-10-07 14:10:08'),
(1737, 1, 10, 18, 136, 'Rosa', 'Canalis Martín', 'Arrabal', 53, '', NULL, '2017-10-07 14:10:37', '2017-10-07 14:10:37'),
(1738, 1, 10, 18, 137, 'A..', 'Sanz', 'Arrabal', 39, 'luz', NULL, '2017-10-07 14:10:57', '2017-10-07 14:10:57'),
(1739, 1, 10, 18, 138, 'Gabriel', 'Royo Labara', 'Arrabal', 9, '', NULL, '2017-10-07 14:39:29', '2017-10-07 14:39:29'),
(1740, 1, 10, 18, 138, 'Gemma', 'Elcacho', 'Arrabal', 9, '', NULL, '2017-10-07 14:39:50', '2017-10-07 14:39:50'),
(1741, 1, 10, 18, 138, 'Gerardo', 'Royo Elcacho', 'Arrabal', 9, '', NULL, '2017-10-07 14:40:28', '2017-10-07 14:40:28'),
(1742, 1, 10, 18, 139, 'José Mª ', 'Foj Lazaro', 'Arrabal', 23, '', NULL, '2017-10-07 14:41:35', '2017-10-07 14:41:35'),
(1743, 1, 10, 18, 139, 'Begoña', 'Pueyo', 'Arrabal', 23, '', NULL, '2017-10-07 14:41:55', '2017-10-07 14:41:55'),
(1744, 1, 10, 18, 140, 'Fernando', 'Barcos Mur', 'Arrabal', 0, 'S/N', NULL, '2017-10-07 14:42:20', '2017-10-07 14:42:20'),
(1745, 1, 10, 18, 140, 'Noemi', 'Serar Carrasquer', 'Arrabal', 0, 'S/N', NULL, '2017-10-07 14:42:48', '2017-10-07 14:42:48'),
(1746, 1, 10, 18, 141, 'José Luís, Andrea y Pilar', 'Aineto', 'Arrabal', 21, '', NULL, '2017-10-07 14:43:37', '2017-10-07 14:43:37'),
(1747, 1, 10, 18, 141, 'Teresa', 'lazaro Oliveros', 'Arrabal', 21, '', NULL, '2017-10-07 14:44:07', '2017-10-07 14:44:07'),
(1748, 1, 10, 18, 142, 'José', 'Cregenzan Costa', 'San Gregorio', 22, '', NULL, '2017-10-07 14:44:43', '2017-10-07 14:44:43'),
(1749, 1, 10, 18, 142, 'Mª Pilar', 'Lapuyade', 'San Gregorio', 22, '', NULL, '2017-10-07 14:45:26', '2017-10-07 14:45:26'),
(1750, 1, 10, 18, 143, 'Ángel ', 'Rozas Sanz', 'San Gregorio', 12, '', NULL, '2017-10-07 14:46:24', '2017-10-07 14:46:24'),
(1751, 1, 10, 18, 143, 'Pilar', 'Sanz Pueyo', 'San Gregorio', 12, '', NULL, '2017-10-07 14:46:50', '2017-10-07 14:46:50'),
(1752, 1, 10, 18, 144, 'Concha', 'Ortiga Martín', 'San Gregorio', 14, '', NULL, '2017-10-07 14:47:29', '2017-10-07 14:47:29'),
(1753, 1, 10, 18, 145, 'Jaime', 'Lázaro', 'San Gregorio', 12, '', NULL, '2017-10-07 14:48:00', '2017-10-07 14:48:00'),
(1754, 1, 10, 18, 145, 'Enrique y Jesús', 'Lázaro Oliveros', 'San Gregorio', 12, '', NULL, '2017-10-07 14:48:48', '2017-10-07 14:48:48'),
(1755, 1, 10, 18, 146, 'Rosa', 'Abizanda', 'San Gregorio', 15, '', NULL, '2017-10-07 14:49:19', '2017-10-07 14:49:19'),
(1756, 1, 10, 18, 147, 'Jesús', 'Pueyo Escanilla', 'San Gregorio', 17, '', NULL, '2017-10-07 14:49:49', '2017-10-07 14:49:49'),
(1757, 1, 10, 18, 147, 'Rosa Mª', 'Elcacho Torres', 'San Gregorio', 17, '', NULL, '2017-10-07 14:50:22', '2017-10-07 14:50:22'),
(1758, 1, 10, 18, 147, 'Javier', 'Pueyo', 'San Gregorio', 17, '', NULL, '2017-10-07 14:50:40', '2017-10-07 14:50:40'),
(1759, 1, 10, 18, 148, 'Miguel', 'Martínez Fernández', 'San Gregorio', 8, '', NULL, '2017-10-07 14:53:37', '2017-10-07 14:53:37'),
(1760, 1, 10, 18, 148, 'Esther', 'Martín Calvo', 'San Gregorio', 8, '', NULL, '2017-10-07 14:54:14', '2017-10-07 14:54:14'),
(1761, 1, 10, 18, 148, 'Paula', 'Martínez', 'San Gregorio', 8, '', NULL, '2017-10-07 14:54:33', '2017-10-07 14:54:33'),
(1762, 1, 10, 18, 148, 'Juan', 'Hellin', 'San Gregorio', 8, 'Luz a Pilar37', NULL, '2017-10-07 14:55:09', '2017-10-07 14:55:09'),
(1763, 1, 10, 18, 149, 'José Carlos', 'Goded Buson', 'San Gregorio', 7, '', NULL, '2017-10-07 14:56:01', '2017-10-07 14:56:01'),
(1764, 1, 10, 18, 150, 'Julio', 'Elcacho Casabon', 'San Gregorio', 6, '', NULL, '2017-10-07 14:56:53', '2017-10-07 14:56:53'),
(1765, 1, 10, 18, 151, 'Carmen', 'Canalis Mur', 'San Gregorio', 4, '', NULL, '2017-10-07 14:58:19', '2017-10-07 14:58:19'),
(1766, 1, 10, 18, 150, 'Mª Teresa', 'Pueyo Pena', 'San Gregorio', 6, '', NULL, '2017-10-07 14:58:50', '2017-10-07 14:58:50'),
(1767, 1, 10, 18, 151, 'José', 'Casabón Roda', '', 0, '', NULL, '2017-10-07 14:59:11', '2017-10-07 14:59:11'),
(1768, 1, 10, 18, 152, 'Mª Teresa', 'Charlez Tomás', 'Mayor', 2, '', NULL, '2017-10-07 15:00:06', '2017-10-07 15:00:06'),
(1769, 1, 10, 18, 152, 'Antonio', 'Buil', 'Mayor', 2, '', NULL, '2017-10-07 15:00:23', '2017-10-07 15:00:23'),
(1770, 1, 10, 18, 153, 'José', 'Sanz Ostal', 'Mayor', 21, '', NULL, '2017-10-07 15:01:15', '2017-10-07 15:01:15'),
(1771, 1, 10, 18, 153, 'José', 'Canalis Sanz', 'Mayor', 9, '', NULL, '2017-10-07 15:01:50', '2017-10-07 15:01:50'),
(1772, 1, 10, 18, 159, 'Consuelo', 'Gallinad', 'Mayor', 9, '', NULL, '2017-10-07 15:02:16', '2017-10-07 15:02:16'),
(1773, 1, 10, 18, 160, 'Enrique', 'Elcacho Casabon', 'Mayor', 11, '', NULL, '2017-10-07 15:02:53', '2017-10-07 15:02:53'),
(1774, 1, 10, 18, 160, 'Angelina', 'Torres Bernad', 'Mayor', 11, '', NULL, '2017-10-07 15:03:24', '2017-10-07 15:03:24'),
(1775, 1, 10, 18, 161, 'Felipe', 'Soler Ferrer', 'Aragón', 1, '', NULL, '2017-10-07 15:04:00', '2017-10-07 15:04:00'),
(1776, 1, 10, 18, 161, 'Pilar', 'Ostal Lázaro', 'Aragón', 1, '', NULL, '2017-10-07 15:04:28', '2017-10-07 15:04:28'),
(1777, 1, 10, 18, 161, 'Luís', 'Soler Ostal', 'Aragón', 1, '', NULL, '2017-10-07 15:04:59', '2017-10-07 15:04:59'),
(1778, 1, 10, 18, 162, 'Rafael', 'Soler Ostal', 'Aragón', 3, '', NULL, '2017-10-07 15:05:27', '2017-10-07 15:05:27'),
(1779, 1, 10, 18, 162, 'Consuelo', 'Gallinad', 'Aragón', 3, '', NULL, '2017-10-07 15:06:25', '2017-10-07 15:06:25'),
(1780, 1, 10, 18, 162, 'Raquel y Ana', 'Soler Gallinad?', 'Aragón', 3, '', NULL, '2017-10-07 15:06:58', '2017-10-07 15:06:58'),
(1781, 1, 10, 18, 162, 'Pascual', 'Florencia', 'Aragón', 3, '', NULL, '2017-10-07 15:07:20', '2017-10-07 15:07:20'),
(1782, 1, 10, 18, 163, 'Manuel', 'Aquilué Torres', 'Aragón', 5, '', NULL, '2017-10-07 15:08:04', '2017-10-07 15:08:04'),
(1783, 1, 10, 18, 163, 'Elena', 'Bergua Aran', 'Aragón', 5, '', NULL, '2017-10-07 15:08:26', '2017-10-07 15:08:26'),
(1784, 1, 10, 18, 164, 'Teresa', 'Costa Florencia', 'Aragón', 2, '', NULL, '2017-10-07 15:09:35', '2017-10-07 15:09:35'),
(1785, 1, 10, 18, 164, 'Fco', 'Berucal Casbon', 'Aragón', 2, '', NULL, '2017-10-07 15:10:01', '2017-10-07 15:10:01'),
(1786, 1, 10, 18, 164, 'Adrian y Mirian ', 'Costa Casbon?', 'Aragón', 2, '', NULL, '2017-10-07 15:15:53', '2017-10-07 15:15:53'),
(1787, 1, 10, 18, 164, 'Jesús', 'Bernad Casbon', 'Aragón', 2, '', NULL, '2017-10-07 15:16:29', '2017-10-07 15:16:29'),
(1788, 1, 10, 18, 164, '......', 'Construcciones Jeser', 'Aragón', 2, '', NULL, '2017-10-07 15:17:25', '2017-10-07 15:17:25'),
(1789, 1, 10, 18, 165, 'José', 'Millera Roda', 'Mayor', 12, '', NULL, '2017-10-07 15:17:47', '2017-10-07 15:17:47'),
(1790, 1, 10, 18, 166, 'Victoriano', 'Delamo', 'Mayor', 4, '', NULL, '2017-10-08 08:38:22', '2017-10-08 08:38:22'),
(1791, 1, 10, 18, 167, 'Mª Reyes ', 'Ferrer Gonzalez', 'Mayor', 6, 'Dejar en Agueda 40', NULL, '2017-10-08 08:39:14', '2017-10-08 08:39:14'),
(1792, 1, 10, 18, 168, 'José', 'Cambra Chela', 'Mayor', 18, '', NULL, '2017-10-08 08:39:41', '2017-10-08 08:39:41'),
(1793, 1, 10, 18, 168, 'Josefa', 'Torres Bernad', 'Mayor', 18, '', NULL, '2017-10-08 08:40:21', '2017-10-08 08:40:21'),
(1794, 1, 10, 18, 169, 'Arsenio', 'Cregenzan Buisan', 'Mayor', 22, '', NULL, '2017-10-08 08:41:01', '2017-10-08 08:41:01'),
(1795, 1, 10, 18, 169, 'Luís', 'Cregenzan Escanilla', 'Mayor', 22, '', NULL, '2017-10-08 08:41:25', '2017-10-08 08:41:25'),
(1796, 1, 10, 18, 169, 'Pascual', 'Costa Canalis', 'Mayor', 3, '', NULL, '2017-10-08 08:42:07', '2017-10-08 08:42:07'),
(1797, 1, 10, 18, 169, 'Dolores', 'Florencia Roda', 'Mayor', 3, '', NULL, '2017-10-08 08:42:27', '2017-10-08 08:42:27'),
(1798, 1, 10, 18, 170, 'María', 'Escanilla Novellón', 'Mayor', 5, '', NULL, '2017-10-08 08:42:47', '2017-10-08 08:42:47'),
(1799, 1, 10, 18, 170, 'Eleuterio', 'Pueyo', 'Mayor', 5, '', NULL, '2017-10-08 08:43:08', '2017-10-08 08:43:08'),
(1800, 1, 10, 18, 171, 'Pedro', 'Escanilla Latre', 'Mayor', 24, '', NULL, '2017-10-08 08:43:34', '2017-10-08 08:43:34'),
(1801, 1, 10, 18, 171, 'Pepita', 'Martín Moreno', 'Mayor', 24, '', NULL, '2017-10-08 08:44:03', '2017-10-08 08:44:03'),
(1802, 1, 10, 18, 172, 'Luís', 'Mur Elcacho', 'Monegros', 4, '', NULL, '2017-10-08 08:44:37', '2017-10-08 08:44:37'),
(1803, 1, 10, 18, 172, 'Carmen', 'Margalef Villalba', 'Monegros', 4, '', NULL, '2017-10-08 08:45:16', '2017-10-08 08:45:16'),
(1804, 1, 10, 18, 172, 'Javier', 'Mur Margalef', 'Monegros', 4, '', NULL, '2017-10-08 08:45:56', '2017-10-08 08:45:56'),
(1805, 1, 10, 18, 172, '......', 'Escanilla', 'Monegros', 4, '?', NULL, '2017-10-08 08:46:25', '2017-10-08 08:46:25'),
(1806, 1, 10, 18, 173, 'Juan Jesús', 'Zapater Pena', 'Monegros', 10, '', NULL, '2017-10-08 08:48:52', '2017-10-08 08:48:52'),
(1807, 1, 10, 18, 174, 'Mª Pilar', 'Anadón Roda', 'Monegros', 14, '', NULL, '2017-10-08 08:49:59', '2017-10-08 08:49:59'),
(1808, 1, 10, 18, 174, 'Pilar', 'Periz Margalef', 'Monegros', 14, '', NULL, '2017-10-08 08:50:20', '2017-10-08 08:50:20'),
(1809, 1, 10, 18, 175, 'Jesús', 'Fontana Antoni', 'Monegros', 16, '', NULL, '2017-10-08 08:51:07', '2017-10-08 08:51:07'),
(1810, 1, 10, 18, 175, 'Conchita', 'Royo Alegre', 'Monegros', 16, '', NULL, '2017-10-08 08:51:25', '2017-10-08 08:51:25'),
(1811, 1, 10, 18, 175, 'Hermenegilda', 'Alegre', 'Monegros', 16, '', NULL, '2017-10-08 08:51:47', '2017-10-08 08:51:47'),
(1812, 1, 10, 18, 175, 'Ignacio, Roberto y Abraham', 'Fontana Royo?', 'Monegros', 16, '', NULL, '2017-10-08 08:52:32', '2017-10-08 08:52:32'),
(1813, 1, 10, 18, 176, 'Antonio', 'Forcada', 'Monegros', 18, '', NULL, '2017-10-08 08:54:12', '2017-10-08 08:54:12'),
(1814, 1, 10, 18, 173, 'Mª Carmen', 'Ferrer', 'Monegros', 18, '', NULL, '2017-10-08 08:54:46', '2017-10-08 08:54:46'),
(1815, 1, 10, 18, 173, 'Julia', 'Mur', 'Monegros', 18, 'luz', NULL, '2017-10-08 08:55:12', '2017-10-08 08:55:12'),
(1816, 1, 10, 18, 174, 'Manuel ', 'Lázaro Costa', 'Monegros', 18, '', NULL, '2017-10-08 08:55:45', '2017-10-08 08:55:45'),
(1817, 1, 10, 18, 174, 'Teresa', 'Forcada Soler', 'Monegros', 18, '', NULL, '2017-10-08 08:56:18', '2017-10-08 08:56:18'),
(1818, 1, 10, 18, 174, 'Santiago ', 'Forcada', 'Monegros', 18, '', NULL, '2017-10-08 08:57:29', '2017-10-08 08:57:29'),
(1819, 1, 10, 18, 174, 'Nuria, Santi y Jose Mª', 'Lázaro Forcada?', 'Monegros', 18, '', NULL, '2017-10-08 08:58:10', '2017-10-08 08:58:10'),
(1820, 1, 10, 18, 174, 'Ángel', 'Sanz', 'Monegros', 18, 'luz', NULL, '2017-10-08 08:58:37', '2017-10-08 08:58:37'),
(1821, 1, 10, 18, 175, 'Mª Paz', 'Forcada Ferrer', 'Monegros', 20, '', NULL, '2017-10-08 08:59:18', '2017-10-08 08:59:18'),
(1822, 1, 10, 18, 175, 'José Luís', 'Puisac Aragüas', 'Monegros', 20, '', NULL, '2017-10-08 09:00:05', '2017-10-08 09:00:05'),
(1823, 1, 10, 18, 175, 'David y Raúl', 'Puisac Forcada?', 'Monegros', 20, '', NULL, '2017-10-08 09:00:49', '2017-10-08 09:00:49'),
(1824, 1, 10, 18, 176, 'Pedro', 'Forcada Agram', 'Mayor', 26, '', NULL, '2017-10-08 09:01:24', '2017-10-08 09:01:24'),
(1825, 1, 10, 18, 176, 'Laura', 'Mur Casabon', 'Mayor', 26, '', NULL, '2017-10-08 09:01:46', '2017-10-08 09:01:46'),
(1826, 1, 10, 18, 176, 'Mª Carmen', 'Pueyo', 'Mayor', 26, '', NULL, '2017-10-08 09:02:21', '2017-10-08 09:02:21'),
(1827, 1, 10, 18, 176, 'Pedro e Ignacio', 'Forcada Mur', 'Mayor', 26, '', NULL, '2017-10-08 09:02:50', '2017-10-08 09:02:50'),
(1828, 1, 10, 18, 177, 'Juan Jesús', 'Zapater Pena', 'Mayor', 10, '', NULL, '2017-10-08 09:03:22', '2017-10-08 09:03:22'),
(1829, 1, 10, 18, 177, 'Mª Luisa', 'Tomás Palau', 'Mayor', 10, '', NULL, '2017-10-08 09:03:55', '2017-10-08 09:03:55'),
(1830, 1, 10, 18, 177, 'Agueda y Lorenzo', 'Zapater Tomás', 'Mayor', 10, '', NULL, '2017-10-08 09:04:54', '2017-10-08 09:04:54'),
(1831, 1, 10, 18, 177, 'Juan', 'Duaso Ferrer', 'Mayor', 12, '', NULL, '2017-10-08 09:05:19', '2017-10-08 09:05:19'),
(1832, 1, 10, 18, 178, 'Antonio', 'Ferrer', 'Mayor', 14, '', NULL, '2017-10-08 09:06:00', '2017-10-08 09:06:00'),
(1833, 1, 10, 18, 178, 'Carmen', 'Villalba', 'Mayor', 14, '', NULL, '2017-10-08 09:06:19', '2017-10-08 09:06:19'),
(1834, 1, 10, 18, 178, 'Raquel y Oscar', 'Borrel Villalba', 'Mayor', 14, '', NULL, '2017-10-08 09:06:51', '2017-10-08 09:06:51'),
(1835, 1, 10, 18, 179, 'Luís', 'Caldas Almuster', 'Mayor', 15, '', NULL, '2017-10-08 09:07:28', '2017-10-08 09:07:28'),
(1836, 1, 10, 18, 179, 'Emilia', 'Alves Cregenzan', 'Mayor', 15, '', NULL, '2017-10-08 09:08:33', '2017-10-08 09:08:33'),
(1837, 1, 10, 18, 180, 'Joaquín', 'Alai', 'Mayor', 17, '', NULL, '2017-10-08 09:08:53', '2017-10-08 09:08:53'),
(1838, 1, 10, 18, 181, 'Marisol', 'Barcos Pérez', 'Mayor', 30, '', NULL, '2017-10-08 09:09:30', '2017-10-08 09:09:30'),
(1839, 1, 10, 18, 181, 'Joaquín', 'Catalan', 'Mayor', 30, '', NULL, '2017-10-08 09:10:00', '2017-10-08 09:10:00'),
(1840, 1, 10, 18, 182, 'Mariano', 'Aranda Felez', 'Mayor', 34, '', NULL, '2017-10-08 09:10:32', '2017-10-08 09:10:32'),
(1841, 1, 10, 18, 182, 'Josefa', 'León', 'Mayor', 34, '', NULL, '2017-10-08 09:10:59', '2017-10-08 09:10:59'),
(1842, 1, 10, 18, 182, 'Adela', 'Aranda León', 'Mayor', 34, '', NULL, '2017-10-08 09:11:20', '2017-10-08 09:11:20'),
(1843, 1, 10, 18, 182, 'María', 'Lacasa', 'Mayor', 19, '', NULL, '2017-10-08 09:11:42', '2017-10-08 09:11:42'),
(1844, 1, 10, 18, 183, 'Benedicta', 'Florencia Consola', 'San Roque', 1, '', NULL, '2017-10-08 09:12:11', '2017-10-08 09:12:11'),
(1845, 1, 10, 18, 183, 'Jesús', 'Elsuso Florencia', 'San Roque', 1, '', NULL, '2017-10-08 09:12:43', '2017-10-08 09:12:43'),
(1846, 1, 10, 18, 183, 'Ramona', 'Pérez', 'San Roque', 3, 'Dejar en Castillo 11', NULL, '2017-10-08 09:13:13', '2017-10-08 09:13:13'),
(1847, 1, 10, 18, 184, '......', 'Farmacia', 'San Roque', 11, '', NULL, '2017-10-08 09:13:55', '2017-10-08 09:13:55'),
(1848, 1, 10, 18, 184, 'Mª José', 'Gallifa', 'San Roque', 11, 'Farmacia', NULL, '2017-10-08 09:14:22', '2017-10-08 09:14:22'),
(1849, 1, 10, 18, 184, 'Antonio', 'Sánchez', 'San Roque', 11, 'Farmacia', NULL, '2017-10-08 09:14:46', '2017-10-08 09:14:46'),
(1850, 1, 10, 18, 185, 'Carmen', 'Costa Canalis', 'San Roque', 13, '', NULL, '2017-10-08 09:15:12', '2017-10-08 09:15:12'),
(1851, 1, 10, 18, 185, 'Ámparo', 'Aineto', 'San Roque', 13, '', NULL, '2017-10-08 09:15:36', '2017-10-08 09:15:36'),
(1852, 1, 10, 18, 185, 'A..', 'Canalis', 'San Roque', 13, '', NULL, '2017-10-08 09:15:52', '2017-10-08 09:15:52'),
(1853, 1, 10, 18, 186, 'Raúl', 'Canalis', 'Mayor', 36, '', NULL, '2017-10-08 09:16:18', '2017-10-08 09:16:18'),
(1854, 1, 10, 18, 187, 'Mario', 'Buisan Calvo', 'Mayor', 38, '', NULL, '2017-10-08 09:16:58', '2017-10-08 09:16:58'),
(1855, 1, 10, 18, 187, 'Montserrat', 'Sanz', 'Mayor', 38, '', NULL, '2017-10-08 09:17:14', '2017-10-08 09:17:14'),
(1856, 1, 10, 18, 187, 'Mario', 'Buisan Sanz', 'Mayor', 38, '', NULL, '2017-10-08 09:17:34', '2017-10-08 09:17:34'),
(1857, 1, 10, 18, 188, 'Eliseo', 'Ferrer Canalis', 'Mayor', 40, '', NULL, '2017-10-08 09:17:50', '2017-10-08 09:17:50'),
(1858, 1, 10, 18, 188, 'Carlos', 'Ferrer Costa', 'Mayor', 40, '', NULL, '2017-10-08 09:18:19', '2017-10-08 09:18:19'),
(1859, 1, 10, 18, 189, 'Salvador', 'Raimundo', 'Mayor', 23, '', NULL, '2017-10-08 09:19:38', '2017-10-08 09:19:38'),
(1860, 1, 10, 18, 189, 'Fabiana', 'Otero', 'Mayor', 23, '', NULL, '2017-10-08 09:19:54', '2017-10-08 09:19:54'),
(1861, 1, 10, 18, 190, 'Ángel', 'Costa Cambra', 'Mayor', 42, '', NULL, '2017-10-08 09:20:18', '2017-10-08 09:20:18'),
(1862, 1, 10, 18, 190, 'Mª Luz', 'Ballarin Urrea', 'Mayor', 42, '', NULL, '2017-10-08 09:20:46', '2017-10-08 09:20:46'),
(1863, 1, 10, 18, 190, 'Ángel', 'Costa Ballarin', 'Mayor', 42, '', NULL, '2017-10-08 09:21:07', '2017-10-08 09:21:07'),
(1864, 1, 10, 18, 191, 'Mª José', 'Charlez', 'Mayor', 46, '', NULL, '2017-10-08 09:21:25', '2017-10-08 09:21:25'),
(1865, 1, 10, 18, 191, 'Miguel Ángel', 'Charlez', 'Mayor', 46, '', NULL, '2017-10-08 09:21:52', '2017-10-08 09:21:52'),
(1866, 1, 10, 18, 192, 'Luís', 'Roda Catalan', 'Mayor', 5, '', NULL, '2017-10-08 09:23:00', '2017-10-08 09:23:00'),
(1867, 1, 10, 18, 192, 'Agueda', 'Canalis Sanz', 'Mayor', 5, '', NULL, '2017-10-08 09:23:22', '2017-10-08 09:23:22'),
(1868, 1, 10, 18, 192, 'Beatriz ', 'Roda Canalis', 'Mayor', 5, 'Alguacil', NULL, '2017-10-08 09:24:10', '2017-10-08 09:24:10'),
(1869, 1, 10, 18, 193, 'Miguel', 'Ramón Villacampa', 'Mayor', 0, 'S/N', NULL, '2017-10-08 09:24:37', '2017-10-08 09:24:37'),
(1870, 1, 10, 18, 193, 'Joaquina', 'Alegre', 'Mayor', 0, 'S/N', NULL, '2017-10-08 09:25:08', '2017-10-08 09:25:08'),
(1871, 1, 10, 18, 193, 'Rosario y Miguel', 'Ramón Alegre', 'Mayor', 0, 'S/N, todo a Sta Agueda 5', NULL, '2017-10-08 09:25:54', '2017-10-08 09:25:54'),
(1872, 1, 10, 18, 193, 'Jovita', 'Villacampa', 'Mayor', 0, 'S/N', NULL, '2017-10-08 09:26:13', '2017-10-08 09:26:13'),
(1873, 1, 10, 18, 194, 'Siham', 'Afar', 'Cuatro Esquinas', 6, '', NULL, '2017-10-08 09:26:41', '2017-10-08 09:26:41'),
(1874, 1, 10, 18, 195, 'Pilar', 'Millera Roda', 'Mayor', 33, '', NULL, '2017-10-08 09:27:07', '2017-10-08 09:27:07'),
(1875, 1, 10, 18, 195, 'José', 'Palau', 'Mayor', 33, '', NULL, '2017-10-08 09:27:52', '2017-10-08 09:27:52'),
(1876, 1, 10, 18, 195, 'Emilia', 'Finta', 'Mayor', 33, '', NULL, '2017-10-08 09:28:14', '2017-10-08 09:28:14'),
(1877, 1, 10, 18, 195, '......', 'Etelvina', 'Mayor', 33, '', NULL, '2017-10-08 09:28:33', '2017-10-08 09:28:33'),
(1878, 1, 10, 18, 196, 'Carmen', 'Mur Casabon', 'Mayor', 39, '', NULL, '2017-10-08 09:29:02', '2017-10-08 09:29:02'),
(1879, 1, 10, 18, 197, '......', 'Consultorio Médico', 'Mayor', 0, 'S/N', NULL, '2017-10-08 09:29:24', '2017-10-08 09:29:24'),
(1880, 1, 10, 18, 198, 'Luís', 'Cambra Torres', 'Mayor', 43, '', NULL, '2017-10-08 09:30:18', '2017-10-08 09:30:18'),
(1881, 1, 10, 18, 198, 'Mª Luz', 'Lapena Jove', 'Mayor', 43, '', NULL, '2017-10-08 09:31:04', '2017-10-08 09:31:04'),
(1882, 1, 10, 18, 198, 'Mª José y Javier', 'Cambra Lapena', 'Mayor', 43, '', NULL, '2017-10-08 09:31:51', '2017-10-08 09:31:51'),
(1883, 1, 10, 18, 199, 'Rosa Ana', 'Lázaro Escanilla', 'Mayor', 58, '', NULL, '2017-10-08 09:32:23', '2017-10-08 09:32:23'),
(1884, 1, 10, 18, 200, '......', 'Ibercaja', 'Mayor', 0, 'S/N', NULL, '2017-10-08 09:32:58', '2017-10-08 09:32:58'),
(1885, 1, 10, 18, 201, 'Manuel', 'López', 'Mayor', 48, '', NULL, '2017-10-08 09:33:14', '2017-10-08 09:33:14'),
(1886, 1, 10, 18, 201, 'Encarna', 'Peco', 'Mayor', 48, '', NULL, '2017-10-08 09:33:27', '2017-10-08 09:33:27'),
(1887, 1, 10, 18, 202, 'Benjamin', 'Alegre', 'Carlota', 2, '', NULL, '2017-10-08 09:33:42', '2017-10-08 09:33:42'),
(1888, 1, 10, 18, 202, 'Esther', 'Bastarras', 'Carlota', 2, '', NULL, '2017-10-08 09:34:01', '2017-10-08 09:34:01'),
(1889, 1, 10, 18, 203, 'Ana', 'Ramos', 'Carlota', 5, '', NULL, '2017-10-08 09:34:12', '2017-10-08 09:34:12'),
(1890, 1, 10, 18, 203, '......', 'Iglesia', 'Carlota', 5, '', NULL, '2017-10-08 09:34:52', '2017-10-08 09:34:52'),
(1891, 1, 10, 18, 204, 'José', 'Consola Calvo', 'Carlota', 1, '', NULL, '2017-10-08 09:35:27', '2017-10-08 09:35:27'),
(1892, 1, 10, 18, 205, 'José Ignacio', 'Alastruey', 'Obispo Roda', 2, '', NULL, '2017-10-08 09:35:57', '2017-10-08 09:35:57'),
(1893, 1, 10, 18, 206, 'Ana', 'Roca Royes', 'Obispo Roda', 4, '', NULL, '2017-10-08 09:36:24', '2017-10-08 09:36:24'),
(1894, 1, 10, 18, 207, 'Pilar', 'Casabón Roda', 'Obispo Roda', 10, '', NULL, '2017-10-08 09:36:49', '2017-10-08 09:36:49'),
(1895, 1, 10, 18, 208, 'Eva', 'Casabón Cregenzan', 'Obispo Roda', 12, '', NULL, '2017-10-08 09:37:34', '2017-10-08 09:37:34'),
(1896, 1, 10, 18, 208, 'Joaquín', 'Ferreira', 'Obispo Roda', 12, '', NULL, '2017-10-08 09:40:06', '2017-10-08 09:40:06'),
(1897, 1, 10, 18, 208, 'Blanca', 'Ibañez', 'Obispo Roda', 12, '', NULL, '2017-10-08 09:40:23', '2017-10-08 09:40:23'),
(1898, 1, 10, 18, 209, 'Eugenio', 'Novellon', 'Obispo Roda', 20, '', NULL, '2017-10-08 09:41:04', '2017-10-08 09:41:04'),
(1899, 1, 10, 18, 209, 'Alicia', 'Novellon Roda', 'Obispo Roda', 20, '', NULL, '2017-10-08 09:41:34', '2017-10-08 09:41:34'),
(1900, 1, 10, 18, 210, 'María', 'Cregenzan ', 'Obispo Roda', 22, '', NULL, '2017-10-08 09:42:13', '2017-10-08 09:42:13'),
(1901, 1, 10, 18, 211, 'Dora', 'Duaso Palacio', 'Obispo Roda', 66, '', NULL, '2017-10-08 09:42:51', '2017-10-08 09:42:51'),
(1902, 1, 10, 18, 211, '......', 'Cregenzan ', 'Obispo Roda', 66, '', NULL, '2017-10-08 09:43:09', '2017-10-08 09:43:09'),
(1903, 1, 10, 18, 212, 'Lorenzo', 'Buera Salamero', 'Iglesia', 0, 'Parroquia', NULL, '2017-10-08 09:44:11', '2017-10-08 09:44:11'),
(1904, 1, 10, 18, 213, 'Daniel', 'Alegre Lax', 'Mayor', 72, '', NULL, '2017-10-08 09:44:55', '2017-10-08 09:44:55'),
(1905, 1, 10, 18, 213, '......', 'Aragón 3', 'Mayor', 72, '', NULL, '2017-10-08 09:45:47', '2017-10-08 09:45:47'),
(1906, 1, 10, 18, 214, 'Máximo', 'Escanilla Tomás', 'Mayor', 74, '', NULL, '2017-10-08 09:46:14', '2017-10-08 09:46:14'),
(1907, 1, 10, 18, 214, 'Elisa', 'Escanilla Roda', 'Mayor', 74, '', NULL, '2017-10-08 09:46:36', '2017-10-08 09:46:36'),
(1908, 1, 10, 18, 214, 'José', 'Salar Alzuria', 'Mayor', 74, '', NULL, '2017-10-08 09:47:02', '2017-10-08 09:47:02'),
(1909, 1, 10, 18, 214, 'Ana', 'Vargas', 'Mayor', 74, '', NULL, '2017-10-08 09:47:28', '2017-10-08 09:47:28'),
(1910, 1, 10, 18, 215, 'Amalia', 'Ballarin', 'Mayor', 29, 'Dejar en el Pilar 10', NULL, '2017-10-08 09:48:01', '2017-10-08 09:48:01'),
(1911, 1, 10, 18, 216, 'Ángeles ', 'Escanilla Pérez', 'Mayor', 35, '', NULL, '2017-10-08 09:48:42', '2017-10-08 09:49:46'),
(1912, 1, 10, 18, 216, 'José', 'Peropadre', 'Mayor', 35, '', NULL, '2017-10-08 09:49:09', '2017-10-08 09:49:09'),
(1913, 1, 10, 18, 217, 'Antonio', 'Pueyo Urrea', 'Mayor', 37, '', NULL, '2017-10-08 09:50:32', '2017-10-08 09:50:32'),
(1914, 1, 10, 18, 217, 'Pilar', 'Cambra Horno', 'Mayor', 37, '', NULL, '2017-10-08 09:51:28', '2017-10-08 09:51:28'),
(1915, 1, 10, 18, 217, '......', 'Cregenzan Sanz', 'Mayor', 37, '', NULL, '2017-10-08 09:52:04', '2017-10-08 09:52:04'),
(1916, 1, 10, 18, 218, 'José', 'Chela', 'Mayor', 39, '', NULL, '2017-10-08 09:52:31', '2017-10-08 09:52:31'),
(1917, 1, 10, 18, 218, 'María', 'Setau', 'Mayor', 39, '', NULL, '2017-10-08 09:52:48', '2017-10-08 09:52:48'),
(1918, 1, 10, 18, 218, 'José Manuel', 'Chela Setau', 'Mayor', 39, '', NULL, '2017-10-08 09:53:07', '2017-10-08 09:53:07'),
(1919, 1, 10, 18, 219, 'Emilio y Ángel', 'Roda Tomás', 'Mayor', 28, '', NULL, '2017-10-08 09:53:50', '2017-10-08 09:53:50'),
(1920, 1, 10, 18, 219, 'Ana Delia', 'Barcos Pérez', 'Mayor', 28, '', NULL, '2017-10-08 09:54:24', '2017-10-08 09:54:24'),
(1921, 1, 10, 18, 219, 'Elena', 'Calvo Alaiz', 'Mayor', 28, '', NULL, '2017-10-08 09:54:39', '2017-10-08 09:54:39'),
(1922, 1, 10, 18, 219, 'Ramón', 'Borrell', 'Mayor', 28, '', NULL, '2017-10-08 09:56:01', '2017-10-08 09:56:01'),
(1923, 1, 10, 18, 219, 'Miguel', 'Cregenzan Escanilla', 'Mayor', 28, '', NULL, '2017-10-08 09:56:38', '2017-10-08 09:56:38'),
(1924, 1, 10, 18, 220, 'Joaquina', 'Borrego', 'Mayor', 19, 'Dejar en  Jaime I 9', NULL, '2017-10-08 09:57:21', '2017-10-08 09:57:21'),
(1925, 1, 10, 18, 221, 'Pascuala', 'Florencia', 'San Gregorio', 0, 'S/N', NULL, '2017-10-08 09:57:54', '2017-10-08 09:57:54'),
(1926, 1, 10, 18, 222, 'Emilio', 'Sanz Escuaín', 'San Gregorio', 27, '', NULL, '2017-10-08 09:58:32', '2017-10-08 09:58:32'),
(1927, 1, 10, 18, 222, 'María', 'Soler Florencia', 'San Gregorio', 27, '', NULL, '2017-10-08 09:58:52', '2017-10-08 09:58:52'),
(1928, 1, 10, 18, 223, 'Antonio', 'Mur', 'San Gregorio', 42, '', NULL, '2017-10-08 09:59:12', '2017-10-08 09:59:12'),
(1929, 1, 10, 18, 224, '......', 'Escuela', 'San Gregorio', 0, 'S/N', NULL, '2017-10-08 09:59:57', '2017-10-08 09:59:57'),
(1930, 1, 10, 18, 225, 'Cristina', 'Royo', 'San Gregorio', 0, 'Polígono', NULL, '2017-10-08 10:00:33', '2017-10-08 10:00:33'),
(1931, 1, 10, 18, 226, 'Leonardo', 'Elcacho ', 'San Gregorio', 53, '', NULL, '2017-10-08 10:04:22', '2017-10-08 10:04:22'),
(1932, 1, 10, 18, 226, 'Emeri', 'Mur', 'San Gregorio', 53, '', NULL, '2017-10-08 10:04:38', '2017-10-08 10:04:38'),
(1933, 1, 10, 18, 226, 'Pilar', 'Elcacho Mur', 'San Gregorio', 53, '', NULL, '2017-10-08 10:05:01', '2017-10-08 10:05:01'),
(1934, 1, 10, 18, 227, 'Manuel', 'Cregenzan ', 'San Gregorio', 49, '', NULL, '2017-10-08 10:05:41', '2017-10-08 10:05:41'),
(1935, 1, 10, 18, 227, 'Amalia', 'Alberti Ferrer', 'San Gregorio', 49, '', NULL, '2017-10-08 10:06:11', '2017-10-08 10:06:11'),
(1936, 1, 10, 18, 227, 'Hector y Alba', 'Cregenzan Alberti', 'San Gregorio', 49, '', NULL, '2017-10-08 10:06:43', '2017-10-08 10:06:43'),
(1937, 1, 10, 18, 227, 'María', 'Alaiz', 'San Gregorio', 29, '', NULL, '2017-10-08 10:07:43', '2017-10-08 10:07:43'),
(1938, 1, 10, 18, 228, 'José', 'Pueyo Escanilla', 'San Gregorio', 30, '', NULL, '2017-10-08 10:08:11', '2017-10-08 10:08:11'),
(1939, 1, 10, 18, 228, 'Sara', 'Canalis Sanz', 'San Gregorio', 30, '', NULL, '2017-10-08 10:08:34', '2017-10-08 10:08:34'),
(1941, 1, 10, 18, 228, 'Sergio y Alodia', 'Pueyo Canalis', 'San Gregorio', 30, '', NULL, '2017-10-08 10:09:49', '2017-10-08 10:09:49'),
(1942, 1, 10, 18, 229, 'Manuel', 'Chela', 'San Gregorio', 45, '', NULL, '2017-10-08 10:10:17', '2017-10-08 10:10:17'),
(1943, 1, 10, 18, 229, 'Dulce y Pascual', 'Sanz Escuaín', 'San Gregorio', 45, '', NULL, '2017-10-08 10:10:57', '2017-10-08 10:10:57'),
(1944, 1, 10, 18, 229, 'Manolo y Ana', 'Chela Sanz', 'San Gregorio', 45, '', NULL, '2017-10-08 10:11:41', '2017-10-08 10:11:41'),
(1945, 1, 10, 18, 230, 'Federico', 'Ros Andrés', 'San Gregorio', 40, '', NULL, '2017-10-08 10:12:18', '2017-10-08 10:12:18'),
(1946, 1, 10, 18, 230, 'Josefa', 'Campillo Cano', 'San Gregorio', 40, '', NULL, '2017-10-08 10:12:56', '2017-10-08 10:12:56'),
(1947, 1, 10, 18, 230, 'Mª José', 'Valencia Escuaín', 'San Gregorio', 40, '', NULL, '2017-10-08 10:13:26', '2017-10-08 10:13:26'),
(1948, 1, 10, 18, 230, 'Miguel A.', 'Delgado', 'San Gregorio', 40, '', NULL, '2017-10-08 10:14:17', '2017-10-08 10:14:17'),
(1949, 1, 10, 18, 231, 'Santiago ', 'Cregenzan Latre', 'San Gregorio', 77, '', NULL, '2017-10-08 10:14:47', '2017-10-08 10:14:47'),
(1950, 1, 10, 18, 231, 'María', 'Sanz Roda', 'San Gregorio', 77, '', NULL, '2017-10-08 10:15:10', '2017-10-08 10:15:10'),
(1951, 1, 10, 18, 231, 'María', 'Cregenzan Sanz', 'San Gregorio', 77, '', NULL, '2017-10-08 10:15:31', '2017-10-08 10:15:31'),
(1952, 1, 10, 18, 232, 'Jaime', 'Lázaro Sanz', 'San Gregorio', 60, '', NULL, '2017-10-08 10:16:28', '2017-10-08 10:16:28'),
(1953, 1, 10, 18, 232, 'Dolores', 'Sanvisen Escanilla', 'San Gregorio', 60, '', NULL, '2017-10-08 10:16:58', '2017-10-08 10:16:58'),
(1954, 1, 10, 18, 232, 'Rosana y Maribel', 'Lázaro Sanvisen', 'San Gregorio', 60, '', NULL, '2017-10-08 10:17:28', '2017-10-08 10:17:28'),
(1955, 1, 10, 18, 233, 'Eleuterio', 'Pueyo Escanilla', 'San Gregorio', 103, '', NULL, '2017-10-08 10:17:53', '2017-10-08 10:18:47'),
(1956, 1, 10, 18, 233, 'Mª José', 'Ferrer Jordán', 'San Gregorio', 103, '', NULL, '2017-10-08 10:19:49', '2017-10-08 10:19:49'),
(1957, 1, 10, 18, 233, 'Alfredo e Irene', 'Pueyo Ferrer', 'San Gregorio', 103, '', NULL, '2017-10-08 10:20:28', '2017-10-08 10:20:28'),
(1958, 1, 10, 18, 234, 'Antonio', 'Ariza Aguilera', 'San Gregorio', 113, '', NULL, '2017-10-08 10:20:47', '2017-10-08 10:20:47'),
(1959, 1, 10, 18, 235, 'Lita', 'Barcos Loscertales', 'San Gregorio', 47, '', NULL, '2017-10-08 10:21:13', '2017-10-08 10:21:13'),
(1960, 1, 10, 18, 235, 'Ramón', 'López Roman', 'San Gregorio', 47, '', NULL, '2017-10-08 10:21:34', '2017-10-08 10:21:34'),
(1961, 1, 10, 18, 236, 'Alfredo', 'Nasarre Mur', 'El Pilar', 52, '', NULL, '2017-10-08 10:22:00', '2017-10-08 10:22:00'),
(1962, 1, 10, 18, 236, 'Mª Carmen', 'Escanilla Martín', 'El Pilar', 52, '', NULL, '2017-10-08 10:22:25', '2017-10-08 10:22:25'),
(1963, 1, 10, 18, 236, 'Daniel', 'Nasarre', 'El Pilar', 52, '', NULL, '2017-10-08 10:22:43', '2017-10-08 10:22:43'),
(1964, 1, 10, 18, 237, 'José', 'Pueyo Cregenzan', 'El Pilar', 54, '', NULL, '2017-10-08 10:23:18', '2017-10-08 10:23:18'),
(1965, 1, 10, 18, 237, 'Mª Carmen', 'Abizanda Ostal', 'El Pilar', 54, '', NULL, '2017-10-08 10:23:51', '2017-10-08 10:23:51'),
(1966, 1, 10, 18, 237, 'Arancha y Jorge', 'Pueyo Abizanda', 'El Pilar', 54, '', NULL, '2017-10-08 10:24:23', '2017-10-08 10:24:23'),
(1967, 1, 10, 18, 238, 'Conchita', 'Cregenzan ', 'El Pilar', 56, '', NULL, '2017-10-08 10:24:57', '2017-10-08 10:24:57'),
(1968, 1, 10, 18, 238, 'I..', 'Pueyo Peña', 'El Pilar', 56, 'luz', NULL, '2017-10-08 10:25:24', '2017-10-08 10:25:24'),
(1969, 1, 10, 18, 239, 'José', 'Gallinad Solans', 'Travesia del Pilar', 59, '', NULL, '2017-10-08 10:26:12', '2017-10-08 10:26:12'),
(1970, 1, 10, 18, 239, 'Josefina', 'Ferrer', 'Travesia del Pilar', 59, '', NULL, '2017-10-08 10:26:27', '2017-10-08 10:26:27'),
(1971, 1, 10, 18, 240, 'Ramón', 'Escalona', 'Travesia del Pilar', 0, 'S/N', NULL, '2017-10-08 10:27:00', '2017-10-08 10:27:00'),
(1972, 1, 10, 18, 240, 'Ana', 'Lázaro Forcada', 'Travesia del Pilar', 0, 'S/N', NULL, '2017-10-08 10:27:32', '2017-10-08 10:27:32'),
(1973, 1, 10, 18, 240, 'Paula y Mario', 'Escalona Lázaro', 'Travesia del Pilar', 0, 'S/N', NULL, '2017-10-08 10:27:57', '2017-10-08 10:27:57'),
(1974, 1, 10, 18, 241, 'Andrés', 'Elcacho Chela', 'Travesia del Pilar', 67, '', NULL, '2017-10-08 10:28:56', '2017-10-08 10:28:56'),
(1975, 1, 10, 18, 241, 'Ángeles ', 'Duaso Mur', 'Travesia del Pilar', 67, '', NULL, '2017-10-08 10:29:28', '2017-10-08 10:29:28'),
(1976, 1, 10, 18, 242, 'María', 'Duaso Sanz', 'Travesia del Pilar', 48, '', NULL, '2017-10-08 10:30:02', '2017-10-08 10:30:02'),
(1977, 1, 10, 18, 242, 'Adolfo', 'Pueyo Pena', 'Travesia del Pilar', 48, 'luz', NULL, '2017-10-08 10:30:30', '2017-10-08 10:30:30'),
(1978, 1, 10, 18, 243, 'Sebastian', 'López López', 'Travesia del Pilar', 63, '', NULL, '2017-10-08 10:31:05', '2017-10-08 10:31:05'),
(1979, 1, 10, 18, 244, 'Montserrat', 'Cambra Torres', 'Travesia del Pilar', 61, '', NULL, '2017-10-08 10:31:31', '2017-10-08 10:31:31'),
(1980, 1, 10, 18, 244, 'Manolo', 'Sanz Sanz', 'Travesia del Pilar', 61, '', NULL, '2017-10-08 10:32:08', '2017-10-08 10:32:08'),
(1983, 7, 21, 21, 1, 'Rodi', 'Rodi', 'Carretera', 0, '', NULL, '2018-05-23 16:31:31', '2018-05-23 16:31:31'),
(1984, 7, 21, 21, 2, '...', 'Regera Ferrer', 'Carretera', 0, '', NULL, '2018-05-23 16:32:15', '2018-05-23 16:32:15'),
(1985, 7, 21, 21, 2, 'Blas', 'Cosculluela Clemente', 'Carretera', 0, 'Puerta al lado de Rodi', NULL, '2018-05-23 16:33:26', '2018-05-23 16:33:26'),
(1986, 7, 21, 21, 2, 'Rosa', 'Berdejo Sarrablo', 'Carretera', 0, 'Puerta al lado de Rodi', NULL, '2018-05-23 16:34:02', '2018-05-23 16:34:02'),
(1987, 7, 21, 21, 2, 'María Soledad', 'Charlez', 'Carretera', 0, 'Puerta al lado de Rodi', NULL, '2018-05-23 16:34:41', '2018-05-23 16:34:41'),
(1988, 7, 21, 21, 2, 'Ana María', 'Quero', 'Carretera', 0, 'Puerta al lado de Rodi', NULL, '2018-05-23 16:35:04', '2018-05-23 16:35:04'),
(1989, 7, 21, 21, 2, 'Isabel', 'Latorre', 'Carretera', 0, 'Puerta al lado de Rodi', NULL, '2018-05-23 16:35:27', '2018-05-23 16:35:27'),
(1990, 7, 21, 21, 2, 'Melchor', 'Escudero', 'Carretera', 0, 'Puerta al lado de Rodi', NULL, '2018-05-23 16:35:46', '2018-05-23 16:35:46'),
(1991, 7, 21, 21, 3, 'Gas..', 'Gasolinera Repsol', 'Km 161', 0, '', NULL, '2018-05-23 16:36:43', '2018-05-23 16:36:43'),
(1992, 7, 21, 21, 4, 'Jesús y Fco?', 'Tremosa Pano', 'Km 161', 0, 'Al lado de la gasolinera', NULL, '2018-05-23 16:37:53', '2018-05-23 16:37:53'),
(1993, 7, 21, 21, 4, 'Agustín y Diana', 'Oviedo García', 'Km 161', 0, 'Al lado de la gasolinera', NULL, '2018-05-23 16:38:54', '2018-05-23 16:38:54'),
(1994, 7, 21, 21, 4, 'Lai', 'Xi Yeung', 'Km 161', 0, 'Al lado de la gasolinera', NULL, '2018-05-23 16:39:29', '2018-05-23 16:39:29'),
(1995, 7, 21, 21, 4, 'Asunción Ingrid ', 'Tremosa', 'Km 161', 0, 'Al lado de la gasolinera', NULL, '2018-05-23 16:40:48', '2018-05-23 16:40:48'),
(1996, 7, 21, 21, 5, 'Portal', 'Portal del Somontano', 'Km 161', 0, 'Bajando escalera buzón', NULL, '2018-05-23 16:41:52', '2018-05-23 16:41:52'),
(1997, 7, 21, 21, 5, 'Expl', 'Explotación Hostelera Somontano', 'Km 161', 0, 'Bajando escalera buzón', NULL, '2018-05-23 16:42:35', '2018-05-23 16:42:35'),
(1998, 7, 21, 21, 5, 'Razesi', 'Razesi', 'Km 161', 0, 'Bajando escalera buzón', NULL, '2018-05-23 16:43:03', '2018-05-23 16:43:03'),
(1999, 7, 21, 21, 5, 'Café', 'Café del mar', 'Km 161', 0, 'Bajando escalera buzón', NULL, '2018-05-23 16:44:35', '2018-05-23 16:44:35'),
(2000, 7, 21, 21, 5, 'Antigüedades', 'Antigüedades', 'Km 161', 0, 'Bajando escalera buzón', NULL, '2018-05-23 16:45:14', '2018-05-23 16:45:14'),
(2001, 7, 21, 21, 5, 'José Luis', 'Torres', 'Km 161', 0, 'Bajando escalera buzón', NULL, '2018-05-23 16:45:47', '2018-05-23 16:45:47'),
(2002, 7, 21, 21, 5, 'María Pilar', 'Puértolas Moli', 'Km 161', 0, 'Bajando escalera buzón', NULL, '2018-05-23 16:46:17', '2018-05-23 16:46:17'),
(2003, 7, 21, 21, 5, 'Restauración', 'Restauración del Somontano', 'Km 161', 0, 'Bajando escalera buzón', NULL, '2018-05-23 16:46:48', '2018-05-23 16:46:48'),
(2004, 7, 21, 21, 6, 'Maqu', 'Maquinaría agrícola J.Marco', 'Km 162', 0, '', NULL, '2018-05-23 16:47:27', '2018-05-23 16:47:27'),
(2005, 7, 21, 21, 6, 'José Marcos', 'Zazurca', 'Km 162', 0, '', NULL, '2018-05-23 16:48:05', '2018-05-23 16:48:05'),
(2006, 7, 21, 21, 7, 'Garmetal', 'Garmetal', 'Km 162.5', 0, 'Certificados casa encima', NULL, '2018-05-23 16:48:46', '2018-05-23 16:48:46'),
(2007, 7, 21, 21, 7, 'Granja', 'Granja aventura', 'Km 162.5', 0, 'Certificados casa encima', NULL, '2018-05-23 16:49:10', '2018-05-23 16:49:10'),
(2008, 7, 21, 21, 7, 'Javier', 'Escuer Esquillor', 'Km 162.5', 0, 'Certificados casa encima', NULL, '2018-05-23 16:49:32', '2018-05-23 16:49:32'),
(2009, 7, 21, 21, 7, 'Montse', 'Lapiedra Abadía', 'Km 162.5', 0, 'Certificados casa encima', NULL, '2018-05-23 16:50:17', '2018-05-23 16:50:17'),
(2010, 7, 21, 21, 7, 'Milagros', 'Abadía', 'Km 162.5', 0, 'Certificados casa encima', NULL, '2018-05-23 16:50:57', '2018-05-23 16:50:57'),
(2011, 7, 21, 21, 7, 'Hnos', 'Escuer Lapiedra', 'Km 162.5', 0, 'Certificados casa encima', NULL, '2018-05-23 16:51:27', '2018-05-23 16:51:27'),
(2013, 7, 21, 21, 8, 'Area', 'Área 62', 'km ..', 0, '', NULL, '2018-05-23 16:53:45', '2018-05-23 16:53:45'),
(2014, 7, 21, 21, 8, 'Grupo', 'Grupo Aldar', 'km ..', 0, '', NULL, '2018-05-23 16:54:16', '2018-05-23 16:54:16'),
(2015, 7, 21, 21, 9, 'Gas..', 'Gasolinera Peraltilla', 'km ..', 0, '', NULL, '2018-05-23 16:54:57', '2018-05-23 16:54:57'),
(2016, 7, 21, 21, 9, 'Som', 'Somontano Social', 'km ..', 0, '', NULL, '2018-05-23 16:55:18', '2018-05-23 16:55:18'),
(2017, 7, 21, 21, 10, 'Tall', 'Talleres Bosque', 'km 177', 0, '', NULL, '2018-05-23 16:55:44', '2018-05-23 16:55:44'),
(2018, 7, 21, 21, 10, 'Antonio', 'Bosque Allúe', 'km 177', 0, '', NULL, '2018-05-23 16:56:11', '2018-05-23 16:56:11'),
(2019, 7, 21, 21, 10, 'Sergio', 'Bosque Cavero', 'km 177', 0, '', NULL, '2018-05-23 16:56:38', '2018-05-23 16:56:38'),
(2020, 7, 21, 21, 11, 'María', 'Villa', 'km 177.1', 0, '', NULL, '2018-05-23 16:57:23', '2018-05-23 16:57:23'),
(2021, 7, 21, 21, 11, 'Liliana ', 'Barrios', 'km 177.1', 0, '', NULL, '2018-05-23 16:57:49', '2018-05-23 16:57:49'),
(2022, 7, 21, 21, 11, 'Jackeline', 'Serprs', 'km 177.1', 0, '', NULL, '2018-05-23 16:58:14', '2018-05-23 16:58:14'),
(2023, 7, 21, 21, 11, 'Petrolina', 'Disla', 'km 177.1', 0, '', NULL, '2018-05-23 16:58:41', '2018-05-23 16:58:41'),
(2024, 7, 21, 21, 12, 'San', 'San Román', 'km 177.2', 0, '', NULL, '2018-05-23 16:59:22', '2018-05-23 16:59:22'),
(2025, 7, 21, 21, 12, 'Praia', 'Praia 13', 'km 177.2', 0, '', NULL, '2018-05-23 16:59:45', '2018-05-23 16:59:45'),
(2026, 7, 21, 21, 12, 'Morro', 'Morro blanco', 'km 177.2', 0, '', NULL, '2018-05-23 17:00:05', '2018-05-23 17:00:05'),
(2027, 7, 21, 21, 12, 'Cipriano', 'Banzo', 'km 177.2', 0, '', NULL, '2018-05-23 17:00:24', '2018-05-23 17:00:24'),
(2028, 7, 21, 21, 12, 'Patricia', 'Leal', 'km 177.2', 0, '', NULL, '2018-05-23 17:00:47', '2018-05-23 17:00:47'),
(2029, 7, 21, 22, 1, 'Relojes', 'Relojes Pallas', 'Ctra Nacional', 0, 'Buzón puerta', NULL, '2018-05-23 17:54:22', '2018-05-23 17:54:22'),
(2030, 7, 21, 22, 1, 'Alfredo', 'Pallas Foncillas', 'Ctra Nacional', 0, 'Buzón puerta, relojero', NULL, '2018-05-23 17:55:04', '2018-06-10 11:45:17'),
(2031, 7, 21, 22, 2, 'Fco', 'Nasarre García', 'Camino Lizana', 0, 'Primer chalet aunque se deja todo en segundo chalet', NULL, '2018-05-23 17:56:24', '2019-03-06 17:19:15'),
(2032, 7, 21, 22, 2, 'Claudia', 'Ortiz Rivero', 'Camino Lizana', 0, 'Primer chalet aunque se deja todo en segundo chalet', NULL, '2018-05-23 17:57:00', '2019-03-06 17:20:27'),
(2033, 7, 21, 22, 2, 'Begoña', 'Nasarre', 'Camino Lizana', 0, 'Primer chalet aunque se deja todo en segundo chalet', NULL, '2018-05-23 17:57:26', '2019-03-06 17:21:12'),
(2034, 7, 21, 22, 2, 'Aurora', 'Nasarre Urraca', 'Camino Lizana', 0, 'Primer chalet aunque se deja todo en segundo chalet', NULL, '2018-05-23 17:58:02', '2019-03-06 17:21:46'),
(2035, 7, 21, 22, 2, 'Montserrat', 'Azara Dueso', 'Camino Lizana', 0, 'Primer chalet aunque se deja todo en segundo chalet', NULL, '2018-05-23 17:58:33', '2019-03-06 17:22:27'),
(2036, 7, 21, 22, 3, 'Daniel', 'Nasarre García', 'Camino Lizana', 0, 'Segundo chalet', NULL, '2018-05-23 17:59:00', '2018-05-23 17:59:00'),
(2037, 7, 21, 22, 3, 'María Soledad', 'Broto Buera', 'Camino Lizana', 0, 'Segundo chalet', NULL, '2018-05-23 17:59:54', '2018-05-23 17:59:54'),
(2038, 7, 21, 22, 3, 'Antonio', 'Nasarre Sa?', 'Camino Lizana', 0, 's', NULL, '2018-05-23 18:00:19', '2018-05-23 18:00:19'),
(2039, 7, 21, 22, 3, 'Lam', 'Lambarene', 'Camino Lizana', 0, 'Segundo chalet', NULL, '2018-05-23 18:00:57', '2018-05-23 18:00:57'),
(2040, 7, 21, 22, 3, 'Jorge', 'Valle Nasarre', 'Camino Lizana', 0, 'Segundo chalet', NULL, '2018-05-23 18:01:19', '2018-05-23 18:01:19'),
(2041, 7, 21, 22, 4, 'Natalie', 'Susanne Dupuy', 'Alta', 10, '', NULL, '2018-05-23 18:02:11', '2018-05-23 18:02:11'),
(2042, 7, 21, 22, 5, 'Antonio', 'Subías', 'Alta', 28, 'Casa Pons', NULL, '2018-05-23 18:02:56', '2018-05-23 18:02:56'),
(2043, 7, 21, 22, 6, 'Gaspar', 'Rodrigo Almunia', 'Alta', 32, '', NULL, '2018-05-23 18:03:19', '2018-08-04 09:10:09'),
(2044, 7, 21, 22, 6, 'Pilar', 'Plana', 'Alta', 32, '', NULL, '2018-05-23 18:04:06', '2018-05-23 18:04:06'),
(2045, 7, 21, 22, 7, 'Jesús y José', 'Galindo Jaime', 'Alta', 7, '', NULL, '2018-05-23 18:04:47', '2018-05-23 18:04:47'),
(2046, 7, 21, 22, 7, 'María', 'Benabarre Foncillas', 'Alta', 7, '', NULL, '2018-05-23 18:05:13', '2018-05-23 18:05:13'),
(2047, 7, 21, 22, 7, 'Liliana Silvia', 'Ciungu', 'Alta', 7, '', NULL, '2018-05-23 18:05:47', '2018-05-23 18:05:47'),
(2048, 7, 21, 22, 8, 'Pascual', 'García Conte', 'Alta', 9, '', NULL, '2018-05-23 18:06:14', '2018-05-23 18:06:14'),
(2049, 7, 21, 22, 9, 'Mª Paz', 'Solano Leris', 'Alta', 11, 'Casa Solano', NULL, '2018-05-23 18:07:50', '2018-08-04 09:12:19'),
(2050, 7, 21, 22, 10, 'Ramón', 'Guiral Olivar', 'Alta', 13, 'Vuelta Esquina', NULL, '2018-05-23 18:09:22', '2018-05-23 18:09:22'),
(2051, 7, 21, 22, 10, 'José Joaquin', 'Guiral Broto', 'Alta', 13, 'Vuelta Esquina', NULL, '2018-05-23 18:10:29', '2018-05-23 18:10:29'),
(2052, 7, 21, 22, 10, 'Alc', 'Alcanadre Inversiones', 'Alta', 13, '', NULL, '2018-05-23 18:11:20', '2018-05-23 18:11:20'),
(2053, 7, 21, 22, 10, 'Aviso', 'Aviso Marcas y Clases', 'Alta', 13, '', NULL, '2018-05-23 18:11:42', '2018-05-23 18:11:42'),
(2054, 7, 21, 22, 10, 'Carolina', 'Paz del Valle', 'Alta', 13, '', NULL, '2018-05-23 18:12:25', '2019-03-06 17:18:14'),
(2055, 7, 21, 22, 11, 'María', 'Arnal Azara', 'San Miguel', 1, 'Dejar en Peña 17', NULL, '2018-05-23 18:13:21', '2018-05-23 18:13:21'),
(2056, 7, 21, 22, 12, 'Carlos', 'Salillas Galindo', 'San Miguel', 2, 'Certificados en la Posada', NULL, '2018-05-23 18:14:05', '2018-08-04 09:06:58'),
(2057, 7, 21, 22, 13, 'Angel y Urbano', 'Subías Urraca', 'San Miguel', 3, 'Dejar en Alta 21', NULL, '2018-05-23 18:15:48', '2018-05-23 18:15:48'),
(2058, 7, 21, 22, 14, 'Esteban', 'Arasanz', 'San Miguel', 14, '', NULL, '2018-05-23 18:17:17', '2018-05-23 18:17:17'),
(2059, 7, 21, 22, 15, 'Victor Daniel ', 'Greño Coll', 'San Miguel', 16, '', NULL, '2018-05-23 18:18:02', '2018-05-23 18:18:02'),
(2060, 7, 21, 22, 15, 'María Isabel', 'blanco García', 'San Miguel', 16, '', NULL, '2018-05-23 18:18:36', '2018-05-23 18:18:36'),
(2061, 7, 21, 22, 16, 'Ramón', 'Guiral Canudo', 'San Miguel', 8, 'Llevar a buzón c/alta42, certificados a c/alta 21', NULL, '2018-05-23 18:20:49', '2018-05-23 18:20:49'),
(2062, 7, 21, 22, 16, 'Aurelia', 'Conte Foncillas', 'San Miguel', 8, 'Llevar a buzón c/alta42, certificados a c/alta 21', NULL, '2018-05-23 18:21:30', '2018-05-23 18:21:30'),
(2063, 7, 21, 22, 16, 'Milagros', 'Guiral Conte', 'San Miguel', 8, 'Llevar a buzón c/alta42, certificados a c/alta 21', NULL, '2018-05-23 18:22:18', '2018-05-23 18:22:18'),
(2064, 7, 21, 22, 16, 'Sergio y Miguel', 'Sazatornil Guiral', 'San Miguel', 8, 'Llevar a buzón c/alta42, certificados a c/alta 21', NULL, '2018-05-23 18:22:54', '2018-05-23 18:22:54'),
(2065, 7, 21, 22, 16, 'ami', 'Amigos de San Antón', 'San Miguel', 8, 'Llevar a buzón c/alta42, certificados a c/alta 21', NULL, '2018-05-23 18:23:36', '2018-05-23 18:23:36'),
(2066, 7, 21, 22, 17, 'Manuel', 'Del Río', 'San Miguel', 4, 'Casa Alvira', NULL, '2018-05-23 18:24:28', '2018-05-23 18:27:11'),
(2067, 7, 21, 22, 17, 'Vicente', 'Alvira Salillas', 'San Miguel', 4, 'Casa Alvira', NULL, '2018-05-23 18:26:25', '2018-08-04 09:05:16'),
(2068, 7, 21, 22, 18, 'Carmen', 'Subías Urraca', 'Alta', 21, '', NULL, '2018-05-23 18:28:20', '2018-05-23 18:28:20'),
(2069, 7, 21, 22, 32, 'Mariano', 'Subías Valles', 'la peña', 7, 'Buzón negro', NULL, '2018-05-24 07:00:36', '2018-07-04 18:24:39'),
(2070, 7, 21, 22, 33, 'Antonio ', 'Jaime Cortina', 'la peña', 1, '', NULL, '2018-05-24 07:01:24', '2018-07-04 18:25:16'),
(2071, 7, 21, 22, 34, 'José Luis', 'Martínez Navarro', 'Baja', 6, 'Buzón gris', NULL, '2018-05-25 16:03:18', '2018-07-04 18:25:57'),
(2072, 7, 21, 22, 35, '....', 'Subías ...', 'Baja', 10, '', NULL, '2018-05-25 16:04:01', '2018-07-04 18:26:39'),
(2073, 7, 21, 22, 36, 'Juana', 'Mairal Sierra', 'Baja', 5, 'casa Benabarre', NULL, '2018-05-25 16:04:50', '2018-07-04 18:27:09'),
(2074, 7, 21, 22, 37, 'Rosario', 'Borruel', 'Baja', 2, 'contador de luz', NULL, '2018-05-25 16:05:26', '2018-07-04 18:27:49'),
(2075, 7, 21, 22, 38, 'Casimira ', 'Coll Rubiella', 'Peña', 3, 'Enfrente de baja 6', NULL, '2018-05-25 16:06:43', '2018-07-04 18:28:26'),
(2076, 7, 21, 22, 39, 'Posada', 'Posada Restaurante Joaquín', 'Ctra Nacional', 0, '', NULL, '2018-05-25 16:07:41', '2018-07-04 18:30:51'),
(2077, 7, 21, 22, 39, 'Bodegas', 'Bodegas Abinasa', 'Ctra Nacional', 0, '', NULL, '2018-05-25 16:08:03', '2018-07-04 18:31:55'),
(2078, 7, 21, 22, 39, 'Jesús', 'Abizanda Tomás', 'Ctra Nacional', 0, '', NULL, '2018-05-25 16:08:22', '2018-07-04 18:29:14'),
(2079, 7, 21, 22, 39, 'Ana', 'Nasarre Guiral', 'Ctra Nacional', 0, '', NULL, '2018-05-25 16:08:53', '2018-07-04 18:29:46'),
(2080, 7, 21, 22, 39, 'Luis Miguel', 'Abizanda Nasarre', 'Ctra Nacional', 0, '', NULL, '2018-05-25 16:09:17', '2018-07-04 18:30:17'),
(2081, 7, 21, 23, 1, 'Lorenzo Antonio', 'Bosque Allúe', 'Extramuros', 49, '49 o 51', NULL, '2018-05-25 16:12:03', '2018-05-25 16:12:03'),
(2082, 7, 21, 23, 1, 'Carmen', 'Cavero', 'Extramuros', 49, '49 o 51', NULL, '2018-05-25 16:12:27', '2018-05-25 16:12:27'),
(2083, 7, 21, 23, 1, 'Sergio y Raquel', 'Bosque Cavero', 'Extramuros', 49, '49 o 51', NULL, '2018-05-25 16:13:02', '2018-05-25 16:13:02'),
(2084, 7, 21, 23, 1, 'María', 'Allúe', 'Extramuros', 49, '49 o 51', NULL, '2018-05-25 16:13:22', '2018-05-25 16:13:22'),
(2085, 7, 21, 23, 2, 'Benito', 'Castán', 'Extramuros', 44, '', NULL, '2018-05-25 16:13:40', '2018-05-25 16:13:40'),
(2086, 7, 21, 23, 2, 'Silvia', 'Arnaiz', 'Extramuros', 42, '', NULL, '2018-05-25 16:14:17', '2018-05-25 16:14:17'),
(2087, 7, 21, 23, 2, 'Jaime', 'Utrera', 'Extramuros', 42, '', NULL, '2018-05-25 16:14:31', '2018-05-25 16:14:31'),
(2088, 7, 21, 23, 3, 'José', 'Ortiz', 'Extramuros', 37, '', NULL, '2018-05-25 16:14:52', '2018-05-25 16:14:52'),
(2089, 7, 21, 23, 3, 'Fina', 'Donaire', 'Extramuros', 37, '', NULL, '2018-05-25 16:15:47', '2018-05-25 16:15:47'),
(2090, 7, 21, 23, 4, 'Juan José', 'Boira Blecua', 'Extramuros', 41, '', NULL, '2018-05-25 16:16:54', '2018-05-25 16:16:54'),
(2091, 7, 21, 23, 4, 'Natalia', 'Escolano', 'Extramuros', 41, '', NULL, '2018-05-25 16:17:07', '2018-05-25 16:17:07'),
(2092, 7, 21, 23, 5, 'José Antonio', 'Salido?', 'Extramuros', 49, 'Última?', NULL, '2018-05-25 16:17:50', '2018-05-25 16:17:50'),
(2093, 7, 21, 23, 6, 'Juan', 'Vitales', 'Extramuros', 21, '', NULL, '2018-05-25 16:37:07', '2018-05-25 16:37:07'),
(2094, 7, 21, 23, 6, 'Pilar', 'Plana', 'Extramuros', 21, '', NULL, '2018-05-25 16:37:46', '2018-05-25 16:37:46'),
(2095, 7, 21, 23, 7, 'Leoncio', 'Clemente', 'Extramuros', 32, '', NULL, '2018-05-25 16:38:06', '2018-05-25 16:38:06'),
(2096, 7, 21, 23, 8, 'Cristina', 'Carrillero García', 'Extramuros', 13, '', NULL, '2018-05-25 16:38:46', '2018-05-25 16:38:46'),
(2097, 7, 21, 23, 9, 'Hermanos', 'Vidal Belloc', 'Extramuros', 11, '', NULL, '2018-05-25 16:39:11', '2018-05-25 16:39:11'),
(2098, 7, 21, 23, 9, 'Ángel', 'Vidal', 'Extramuros', 11, '', NULL, '2018-05-25 16:39:33', '2018-05-25 16:39:33');
INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(2099, 7, 21, 23, 9, 'Nuria', 'Pano Seas', 'Extramuros', 11, '', NULL, '2018-05-25 16:39:51', '2018-05-25 16:39:51'),
(2100, 7, 21, 23, 10, 'Sergio', 'Bosque Mur', 'Extramuros', 9, '', NULL, '2018-05-25 16:40:43', '2018-05-25 16:40:43'),
(2101, 7, 21, 23, 11, 'Ayuntamiento', 'Ayuntamiento', 'Extramuros', 0, 'El viernes, resto de la semana alguacil, Fernando Pozo Martos 667200033', NULL, '2018-05-25 16:41:49', '2018-05-25 16:41:49'),
(2102, 7, 21, 23, 12, 'Jesús', 'Cosculluela Barón', 'Extramuros', 2, '', NULL, '2018-05-25 16:42:16', '2018-05-25 16:42:16'),
(2103, 7, 21, 23, 12, 'Purificación', 'Noguerol Santiago', 'Extramuros', 2, '', NULL, '2018-05-25 16:42:32', '2018-05-25 16:42:32'),
(2104, 7, 21, 23, 12, 'Cristian', 'Martin Noguerol', 'Extramuros', 2, '', NULL, '2018-05-25 16:42:49', '2018-05-25 16:42:49'),
(2105, 7, 21, 23, 13, 'Fernando', 'Muniesa Abadía', 'Extramuros', 0, 's/n casa del médico', NULL, '2018-05-25 16:45:24', '2018-05-25 16:45:24'),
(2106, 7, 21, 23, 13, 'Encarna', 'Calderón González', 'Extramuros', 0, 's/n casa del médico', NULL, '2018-05-25 16:45:53', '2018-05-25 16:45:53'),
(2107, 7, 21, 23, 13, 'Hnas', 'Muniesa Calderón', 'Extramuros', 0, 's/n casa del médico', NULL, '2018-05-25 16:46:17', '2018-05-25 16:46:17'),
(2108, 7, 21, 23, 13, 'Rosa ', 'González Sillero', 'Extramuros', 0, 's/n casa del médico', NULL, '2018-05-25 16:46:59', '2018-05-25 16:46:59'),
(2109, 7, 21, 23, 14, 'Elías Abel', 'Bosque Foncillas', 'Barbastro', 16, '+19', NULL, '2018-05-25 16:47:42', '2018-05-25 16:47:42'),
(2110, 7, 21, 23, 14, 'Pilar', 'Leris Porta', 'Barbastro', 16, '+19', NULL, '2018-05-25 16:47:59', '2018-05-25 16:47:59'),
(2111, 7, 21, 23, 14, 'Ivan Martin', 'Bosque Leris', 'Barbastro', 16, '+19', NULL, '2018-05-25 16:48:46', '2018-05-25 16:48:46'),
(2112, 7, 21, 23, 14, 'Mª Pilar', 'Nerín', 'Barbastro', 16, '+19', NULL, '2018-05-25 16:49:10', '2018-05-25 16:49:10'),
(2113, 7, 21, 23, 14, 'Antonio', 'Bosque Agon', 'Barbastro', 16, '+19', NULL, '2018-05-25 16:49:45', '2018-05-25 16:49:45'),
(2114, 7, 21, 23, 15, 'Antonio', 'Barón', 'Barbastro', 17, '', NULL, '2018-05-25 16:50:28', '2018-05-25 16:50:28'),
(2115, 7, 21, 23, 15, 'María', 'Panzano', 'Barbastro', 17, '', NULL, '2018-05-25 16:50:46', '2018-05-25 16:50:46'),
(2116, 7, 21, 23, 15, 'Ángeles', 'Barón Panzano', 'Barbastro', 17, '', NULL, '2018-05-25 16:51:14', '2018-05-25 16:51:14'),
(2117, 7, 21, 23, 16, 'Mariano', 'Huguet Trell', 'Barbastro', 21, '', NULL, '2018-05-25 16:53:02', '2018-05-25 16:53:02'),
(2118, 7, 21, 23, 16, 'Ramón', 'Mongay', 'Barbastro', 21, '', NULL, '2018-05-25 16:53:32', '2018-05-25 16:53:32'),
(2119, 7, 21, 23, 17, 'Cándido', 'Vidal', 'Barbastro', 23, '23 ó 25', NULL, '2018-05-25 16:54:08', '2018-05-25 16:54:08'),
(2120, 7, 21, 23, 17, 'Laura', 'Broto', 'Barbastro', 23, '23 ó 25', NULL, '2018-05-25 16:54:25', '2018-05-25 16:54:25'),
(2121, 7, 21, 23, 17, 'Gemma', 'Vidal Broto', 'Barbastro', 23, '23 ó 25', NULL, '2018-05-25 16:55:01', '2018-05-25 16:55:01'),
(2122, 7, 21, 23, 18, 'Gregorio y Fernando', 'Rivarés Juberías', 'Barbastro', 27, '', NULL, '2018-05-25 16:55:39', '2018-05-25 16:55:39'),
(2123, 7, 21, 23, 19, 'Mariano', 'Cabrero Calvo', 'Barbastro', 18, '', NULL, '2018-05-25 16:55:56', '2018-05-25 16:55:56'),
(2124, 7, 21, 23, 20, 'Mariano y Montse', 'Buil', 'Medio', 2, '', NULL, '2018-05-25 16:56:43', '2018-05-25 16:56:43'),
(2125, 7, 21, 23, 20, 'Carmen', 'Bonet', 'Medio', 2, '', NULL, '2018-05-25 16:57:00', '2018-05-25 16:57:00'),
(2126, 7, 21, 23, 21, 'José Luis', 'Sin Corvinos', 'Medio', 1, '', NULL, '2018-05-25 16:57:21', '2018-05-25 16:57:21'),
(2127, 7, 21, 23, 21, 'Mª Teresa ', 'Jordan Monclús', 'Medio', 1, '', NULL, '2018-05-25 16:57:52', '2018-05-25 16:57:52'),
(2128, 7, 21, 23, 21, 'Maite', 'Sin jordan', 'Medio', 1, '', NULL, '2018-05-25 16:58:20', '2018-05-25 16:58:20'),
(2129, 7, 21, 23, 21, 'Parr', 'Parroquia', 'Medio', 1, '', NULL, '2018-05-25 16:58:38', '2018-05-25 16:58:38'),
(2130, 7, 21, 23, 22, 'José Luis', 'Sin jordan', 'Medio', 3, '', NULL, '2018-05-25 16:59:14', '2018-05-25 16:59:14'),
(2131, 7, 21, 23, 22, 'Silvia', 'Cosculluela Barón', 'Medio', 3, '', NULL, '2018-05-25 17:00:13', '2018-05-25 17:00:13'),
(2132, 7, 21, 23, 22, 'Gana', 'Ganadería Sin S.C', 'Medio', 3, '', NULL, '2018-05-25 17:00:55', '2018-05-25 17:00:55'),
(2133, 7, 21, 23, 23, 'Antonio', 'Cosculluela Barón', 'Iglesia', 2, '', NULL, '2018-05-25 17:01:34', '2018-05-25 17:01:34'),
(2134, 7, 21, 23, 23, 'Mª José ', 'Loncán Oliveros', 'Iglesia', 2, '', NULL, '2018-05-25 17:01:58', '2018-05-25 17:01:58'),
(2135, 7, 21, 23, 23, 'Agro', 'Agroservicios', 'Iglesia', 2, '', NULL, '2018-05-25 17:02:27', '2018-05-25 17:02:27'),
(2136, 7, 21, 23, 24, 'Antonio', 'Lasús Casasín', 'Iglesia', 3, '', NULL, '2018-05-25 17:02:54', '2018-05-25 17:02:54'),
(2137, 7, 21, 23, 25, 'Patrocinio', 'Bescós Bosque', 'Iglesia', 5, '', NULL, '2018-05-25 17:03:22', '2018-05-25 17:03:22'),
(2138, 7, 21, 23, 25, 'Luz Divina', 'Serrano Boira', 'Iglesia', 5, '', NULL, '2018-05-25 17:03:45', '2018-05-25 17:03:45'),
(2139, 7, 21, 23, 25, 'Manuela', 'Bescós', 'Iglesia', 5, '', NULL, '2018-05-25 17:04:03', '2018-05-25 17:04:03'),
(2140, 7, 21, 23, 25, 'Ana María?', 'Calvo', 'Iglesia', 5, '', NULL, '2018-05-25 17:04:37', '2018-05-25 17:04:37'),
(2141, 7, 21, 23, 25, 'Mª Pilar y J. Manuel', 'Bescós Serrano', 'Iglesia', 5, '', NULL, '2018-05-25 17:05:12', '2018-05-25 17:05:12'),
(2142, 7, 21, 23, 26, 'Cipriano', 'Banzo Goñi', 'Alta', 1, 'Llevar a Hotel San Román', NULL, '2018-05-25 17:07:48', '2018-05-25 17:07:48'),
(2143, 7, 21, 23, 26, 'Patricia', 'Leal', 'Alta', 1, 'Llevar a Hotel San Román', NULL, '2018-05-25 17:08:15', '2018-05-25 17:08:15'),
(2144, 7, 21, 23, 27, 'Santiago ', 'Fajarnes Cabrero', 'Alta', 3, '', NULL, '2018-05-25 17:08:38', '2018-05-25 17:08:38'),
(2145, 7, 21, 23, 27, 'Rosario', 'Sierra Albás', 'Alta', 3, '', NULL, '2018-05-25 17:09:05', '2018-05-25 17:09:05'),
(2146, 7, 21, 23, 28, 'Eugenio', 'Castañera Gómez', 'Alta', 5, '', NULL, '2018-05-25 17:09:30', '2018-05-25 17:09:30'),
(2147, 7, 21, 23, 28, 'Josefa', 'Bajoz Zafra', 'Alta', 5, '', NULL, '2018-05-25 17:12:45', '2018-05-25 17:12:45'),
(2148, 7, 21, 23, 28, 'Tania', 'Castañera Bajoz', 'Alta', 5, '', NULL, '2018-05-25 17:13:13', '2018-05-25 17:13:13'),
(2149, 7, 21, 23, 29, 'Antonio', 'Cosculluela Campo', 'Alta', 11, '', NULL, '2018-05-25 17:15:15', '2018-05-25 17:15:15'),
(2150, 7, 21, 23, 29, 'Encarnación', 'Barón Agón', 'Alta', 11, '', NULL, '2018-05-25 17:15:44', '2018-05-25 17:15:44'),
(2151, 7, 21, 23, 29, 'Severina', 'Agón', 'Alta', 11, '', NULL, '2018-05-25 17:15:57', '2018-05-25 17:15:57'),
(2152, 7, 21, 23, 30, 'Rosario', 'Bosque Borruel', 'Cruzada', 18, '', NULL, '2018-05-25 17:16:44', '2018-05-25 17:16:44'),
(2153, 7, 21, 23, 30, 'Ángeles', 'Borruel', 'Cruzada', 18, '', NULL, '2018-05-25 17:17:15', '2018-05-25 17:17:15'),
(2154, 7, 21, 23, 30, 'Marina y Lorenzo', 'Urraca Borruel', 'Cruzada', 18, '', NULL, '2018-05-25 17:17:47', '2018-05-25 17:17:47'),
(2155, 7, 21, 23, 31, 'Carmen', 'Calvo Rivales', 'Cruzada', 20, '', NULL, '2018-05-25 17:18:38', '2018-05-25 17:18:38'),
(2156, 7, 21, 23, 32, 'Carmen', 'Calvo', 'Cruzada', 16, '', NULL, '2018-05-25 17:19:24', '2018-05-25 17:19:24'),
(2157, 7, 21, 23, 33, 'Jesús', 'Barón Agón', 'Cruzada', 14, 'LLevar a calle alta 11', NULL, '2018-05-25 17:20:49', '2018-05-25 17:20:49'),
(2158, 7, 21, 23, 34, 'Ana Carmen ', 'Laguarta Liesa', 'Cruzada', 3, '', NULL, '2018-05-25 17:21:47', '2018-05-25 17:21:47'),
(2159, 7, 21, 23, 34, 'José Manuel', 'Vitales Craver', 'Cruzada', 3, '', NULL, '2018-05-25 17:22:16', '2018-05-25 17:22:16'),
(2160, 7, 21, 23, 34, 'Rubén y Esther', 'Vitales Laguarta', 'Cruzada', 3, '', NULL, '2018-05-25 17:22:43', '2018-05-25 17:22:43'),
(2161, 7, 21, 23, 34, 'Carlos', 'Carpi Novales', 'Cruzada', 3, '', NULL, '2018-05-25 17:23:09', '2018-05-25 17:23:09'),
(2162, 7, 21, 23, 34, 'Visu', 'Visu sc', 'Cruzada', 3, '', NULL, '2018-05-25 17:23:28', '2018-05-25 17:23:28'),
(2163, 7, 21, 23, 35, 'Claudio', 'Vidal Fajarnes', 'Medio', 18, 'LLevar a Extramuros 11', NULL, '2018-05-25 17:24:07', '2018-05-25 17:24:07'),
(2164, 7, 21, 23, 35, 'Iluminada', 'Belloc', 'Medio', 18, 'LLevar a Extramuros 11', NULL, '2018-05-25 17:24:28', '2018-05-25 17:24:28'),
(2165, 7, 21, 23, 36, 'Hnas', 'Cruel', 'Medio', 11, '', NULL, '2018-05-25 17:27:45', '2018-05-25 17:27:45'),
(2166, 7, 21, 23, 37, 'Lidia', 'Giner?', 'Medio', 9, '', NULL, '2018-05-25 17:28:08', '2018-05-25 17:28:08'),
(2167, 7, 21, 23, 38, 'Lidia', 'Alonso García', 'Cruzada', 8, '', NULL, '2018-05-25 17:28:41', '2018-05-25 17:28:41'),
(2168, 7, 21, 23, 38, 'Pedro', 'Pascual De Ana', 'Cruzada', 8, '', NULL, '2018-05-25 17:29:00', '2018-05-25 17:29:00'),
(2169, 7, 21, 23, 38, 'Nicolás', 'Vitales', 'Cruzada', 8, 'Dejar en taller de Peraltilla', NULL, '2018-05-25 17:30:00', '2018-05-25 17:30:00'),
(2170, 7, 21, 23, 39, 'Francisco', 'Farré', 'Cruzada', 1, '', NULL, '2018-05-25 17:30:15', '2018-05-25 17:30:15'),
(2171, 7, 21, 23, 39, 'Antonia', 'Bellosta', 'Cruzada', 1, '', NULL, '2018-05-25 17:30:38', '2018-05-25 17:30:38'),
(2172, 7, 21, 23, 40, 'Eulogia', 'Vives', 'Cruzada', 6, '', NULL, '2018-05-25 17:31:22', '2018-05-25 17:31:22'),
(2173, 7, 21, 23, 41, 'Ángel Tomás ', 'Laguarta Liesa', 'Cruzada', 4, 'Llevar a Iglesia 1 Bodega', NULL, '2018-05-25 17:32:21', '2018-05-25 17:32:21'),
(2174, 7, 21, 23, 41, 'Mar Cruz', 'Craver Rivales', 'Cruzada', 4, 'Llevar a Iglesia 1 Bodega', NULL, '2018-05-25 17:32:54', '2018-05-25 17:32:54'),
(2175, 7, 21, 23, 42, 'Manuel', 'Vitales', 'Baja', 22, '', NULL, '2018-05-25 17:33:14', '2018-05-25 17:33:14'),
(2176, 7, 21, 23, 43, 'Manuel', 'Mur', 'Baja', 15, 'Certificados a Baja 8', NULL, '2018-05-25 17:34:01', '2018-05-25 17:34:01'),
(2177, 7, 21, 23, 43, 'Ramona', 'Vitales', 'Baja', 15, 'Certificados a Baja 8', NULL, '2018-05-25 17:34:48', '2018-05-25 17:34:48'),
(2178, 7, 21, 23, 44, 'Danielle', 'Roquelle', 'Baja', 20, '', NULL, '2018-05-26 08:40:42', '2018-05-26 08:40:42'),
(2179, 7, 21, 23, 45, 'Mª Rosa y Silvia', 'Campo Cosculluela', 'Baja', 18, '', NULL, '2018-05-26 08:41:31', '2018-05-26 08:41:31'),
(2180, 7, 21, 23, 45, 'Antonio y Gregorio', 'Felipe Funes', 'Baja', 18, '', NULL, '2018-05-26 08:41:56', '2018-05-26 08:41:56'),
(2181, 7, 21, 23, 46, 'Gregorio', 'Bispe Lacoma', 'Baja', 14, '', NULL, '2018-05-26 08:42:26', '2018-05-26 08:42:26'),
(2182, 7, 21, 23, 46, 'Inmaculada', 'Bispe', 'Baja', 14, '', NULL, '2018-05-26 08:42:45', '2018-05-26 08:42:45'),
(2183, 7, 21, 23, 47, 'Pablo Javier', 'Diaz García', 'Baja', 12, '', NULL, '2018-05-26 08:43:17', '2018-05-26 08:43:17'),
(2184, 7, 21, 23, 48, 'Cipriano', 'Mur Agon', 'Baja', 9, '', NULL, '2018-05-26 08:43:36', '2018-05-26 08:43:36'),
(2185, 7, 21, 23, 48, 'Cipriano', 'Mur Bosque', 'Baja', 9, '', NULL, '2018-05-26 08:43:53', '2018-05-26 08:43:53'),
(2186, 7, 21, 23, 48, 'Brigida ', 'Agon', 'Baja', 9, '', NULL, '2018-05-26 08:44:16', '2018-05-26 08:44:16'),
(2187, 7, 21, 23, 49, 'Antonio', 'Duerto Mediano', 'Baja', 8, '', NULL, '2018-05-26 08:44:32', '2018-05-26 08:44:32'),
(2188, 7, 21, 23, 49, 'Jesús', 'Duerto Bosque', 'Baja', 8, '', NULL, '2018-05-26 08:45:44', '2018-05-26 08:45:44'),
(2189, 7, 21, 23, 49, 'Fracisca', 'Bosque Allúe', 'Baja', 8, '', NULL, '2018-05-26 08:46:30', '2018-05-26 08:46:30'),
(2190, 7, 21, 23, 49, 'Pablo', 'Bosque Allúe', 'Baja', 8, 'viene como alta 4 (Luz)', NULL, '2018-05-26 08:47:28', '2018-05-26 08:47:28'),
(2191, 7, 21, 23, 50, 'Ana', 'Otín Puértolas', 'Baja', 6, '', NULL, '2018-05-26 08:47:52', '2018-05-26 08:47:52'),
(2192, 7, 21, 23, 50, 'Ángela', 'Fajarnes Sierra', 'Baja', 6, '', NULL, '2018-05-26 08:48:38', '2018-05-26 08:48:38'),
(2193, 7, 21, 23, 51, 'Pedro', 'Ruiz Retamosa', 'Baja', 5, '', NULL, '2018-05-26 08:49:22', '2018-05-26 08:49:22'),
(2194, 7, 21, 23, 51, 'Dolores', 'Gimenez', 'Baja', 5, '', NULL, '2018-05-26 08:49:33', '2018-05-26 08:49:33'),
(2195, 7, 21, 23, 52, 'Inés ', 'Campo', 'Baja', 3, 'Dejar en Baja 9', NULL, '2018-05-26 08:50:11', '2018-05-26 08:50:11'),
(2196, 7, 21, 23, 52, 'Felipe', 'Mur', 'Baja', 3, '', NULL, '2018-05-26 08:50:31', '2018-05-26 08:50:31'),
(2197, 7, 21, 23, 51, 'Bode', 'Bodegas Osca o Borruel', 'Bodega', 0, 'Traer lo de Iglesia 1, cruzada 24, cruzada 4', NULL, '2018-05-26 08:56:32', '2018-05-26 08:56:32'),
(2198, 7, 21, 23, 51, 'Félix, Ángel y Gregorio', 'Borruel Rivarés', 'Bodega', 0, 'Bodega Osca o Borruel', NULL, '2018-05-26 08:57:12', '2018-05-26 08:57:12'),
(2199, 7, 21, 23, 51, 'Pilar', 'Rivarés Calvo', 'Bodega', 0, 'Bodega Osca o Borruel', NULL, '2018-05-26 08:57:32', '2018-05-26 08:57:32'),
(2200, 7, 21, 23, 51, 'Mª Luz', 'Rivarés', 'Bodega', 0, 'Bodega Osca o Borruel', NULL, '2018-05-26 08:59:37', '2018-05-26 08:59:37'),
(2201, 7, 21, 23, 51, 'Ángel Tomás', 'Laguarta Liesa', 'Bodega', 0, 'Bodega Osca o Borruel', NULL, '2018-05-26 09:00:26', '2018-05-26 09:00:26'),
(2202, 7, 21, 23, 51, 'Mª Cruz', 'Craver Rivarés', 'Bodega', 0, 'Bodega Osca o Borruel', NULL, '2018-05-26 09:02:03', '2018-05-26 09:02:03'),
(2203, 7, 21, 23, 51, 'Asoc', 'Asociación Ornitológica Barbastrense', 'Bodega', 0, 'Bodega Osca o Borruel', NULL, '2018-05-26 09:02:42', '2018-05-26 09:02:42'),
(2204, 7, 21, 23, 51, 'Amig', 'Amigos de la Ermita de San Román', 'Bodega', 0, 'Bodega Osca o Borruel', NULL, '2018-05-26 09:03:29', '2018-05-26 09:03:29'),
(2205, 7, 21, 23, 52, 'Joaquin', 'Beneroso Ferrando', 'Barbastro', 4, '', NULL, '2018-05-26 09:04:09', '2018-05-26 09:04:09'),
(2206, 7, 21, 23, 53, 'Manuel', 'López', 'Barbastro', 0, '', NULL, '2018-05-26 09:04:39', '2018-05-26 09:04:39'),
(2207, 7, 21, 23, 53, 'Pilar', 'Cambra', 'Barbastro', 7, 'Certificados a Baja ', NULL, '2018-05-26 09:05:42', '2018-05-26 09:05:42'),
(2208, 7, 21, 23, 54, 'Const', 'Construcciones Duerto Luis', 'Barbastro', 3, 'o Cruzada 10', NULL, '2018-05-26 09:06:20', '2018-05-26 09:06:20'),
(2209, 7, 21, 23, 54, 'Jorge Mario ', 'Duerto Luis', 'Barbastro', 3, 'o Cruzada 10', NULL, '2018-05-26 09:07:31', '2018-05-26 09:07:31'),
(2210, 7, 21, 23, 54, 'Pedro Roman', 'Duerto Angusto', 'Barbastro', 3, 'o Cruzada 10', NULL, '2018-05-26 09:07:59', '2018-05-26 09:07:59'),
(2211, 7, 21, 23, 54, 'Ana María', 'Luis Angusto', 'Barbastro', 3, 'o Cruzada 10', NULL, '2018-05-26 09:08:34', '2018-05-26 09:08:34'),
(2212, 7, 21, 23, 54, 'Gana', 'Ganadería Duerto', 'Barbastro', 3, 'o Cruzada 10', NULL, '2018-05-26 09:09:31', '2018-05-26 09:09:31'),
(2213, 7, 21, 23, 55, 'Félix José', 'Calero Díaz', 'Carretera', 0, '', NULL, '2018-05-26 09:10:13', '2018-05-26 09:10:13'),
(2214, 7, 21, 23, 55, 'Modesta', 'Bajoz Zafra', 'Carretera', 0, '', NULL, '2018-05-26 09:10:50', '2018-05-26 09:10:50'),
(2215, 7, 21, 23, 55, 'Hnos', 'Calero Bajoz', 'Carretera', 0, '', NULL, '2018-05-26 09:11:18', '2018-05-26 09:11:18'),
(2216, 7, 21, 23, 55, 'Tamara', 'Calero Bajoz', 'Carretera', 0, '', NULL, '2018-05-26 09:11:32', '2018-05-26 09:11:32'),
(2217, 7, 21, 24, 1, 'Fco Javier', 'Barón Laborda', 'Ctra Nacional', 0, 'Casa Paco', NULL, '2018-05-26 09:43:20', '2018-05-26 09:43:20'),
(2218, 7, 21, 24, 2, '....', 'Somontano Social gasolinera', 'Ctra Nacional', 0, '', NULL, '2018-05-26 09:43:50', '2018-05-26 09:43:50'),
(2219, 7, 21, 24, 3, 'Edelmira ', 'Craver Cebollero', 'Canal del Cinca', 35, 'Buzón blanco', NULL, '2018-05-26 09:46:17', '2018-05-26 09:46:17'),
(2220, 7, 21, 24, 4, 'Santiago', 'Latorre Riverola', 'Canal del Cinca', 24, '(8)', NULL, '2018-05-26 09:47:17', '2018-05-26 09:47:17'),
(2221, 7, 21, 24, 4, 'Santiago y Yolanda', 'Latorre Lacoma', 'Canal del Cinca', 24, '(8)', NULL, '2018-05-26 09:48:09', '2018-05-26 09:48:09'),
(2222, 7, 21, 24, 4, 'Mª Jesús', 'Lacoma Biescas', 'Canal del Cinca', 24, '(8)', NULL, '2018-05-26 09:48:45', '2018-05-26 09:48:45'),
(2223, 7, 21, 24, 4, 'Mª Dolores ', 'Satorra Naval', 'Canal del Cinca', 24, '(8)', NULL, '2018-05-26 09:49:18', '2018-05-26 09:49:18'),
(2224, 7, 21, 24, 4, 'Movi', 'Movi Pirineos 2000 S.L', 'Canal del Cinca', 24, '(8)', NULL, '2018-05-26 09:50:03', '2018-05-26 09:50:03'),
(2225, 7, 21, 24, 5, 'Antonio', 'Raurich Frechin', 'Canal del Cinca', 14, '(4)', NULL, '2018-05-26 09:50:43', '2018-05-26 09:50:43'),
(2226, 7, 21, 24, 5, 'Adoración', 'Frechin Lacambra', 'Canal del Cinca', 14, '(4)', NULL, '2018-05-26 09:51:48', '2018-05-26 09:51:48'),
(2227, 7, 21, 24, 6, 'Dalmacio', 'Catalán', 'Canal del Cinca', 19, '', NULL, '2018-05-26 09:52:06', '2018-05-26 09:52:06'),
(2228, 7, 21, 24, 7, 'José Pedro y Encarna', 'Sierra Cebollero', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 09:57:35', '2018-05-26 10:25:14'),
(2229, 7, 21, 24, 7, 'José', 'Sierra Bitrían', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 09:58:42', '2018-05-26 10:25:46'),
(2230, 7, 21, 24, 7, 'Encarna', 'Cebollero Riverola', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 10:00:22', '2018-05-26 10:26:18'),
(2231, 7, 21, 24, 7, 'Javier', 'Escudero Pano', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 10:00:51', '2018-05-26 10:26:52'),
(2232, 7, 21, 24, 7, 'Fco y Manolo ', 'Juste', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 10:01:34', '2018-05-26 10:27:29'),
(2233, 7, 21, 24, 7, 'Ayto', 'Ayuntamiento', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 10:03:12', '2018-05-26 10:03:12'),
(2234, 7, 21, 24, 7, 'Asoc', 'Asociación de mujeres la Clamor', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 10:04:12', '2018-05-26 10:04:12'),
(2235, 7, 21, 24, 7, '...', 'Hojas parroquiales', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 10:04:48', '2018-05-26 10:04:48'),
(2236, 7, 21, 24, 7, '...', 'Periódico escuela de adultos', 'Mayor', 42, '(46) + 4', NULL, '2018-05-26 10:05:37', '2018-05-26 10:05:37'),
(2237, 7, 21, 24, 8, 'José', 'Latorre Riverola', 'Mayor', 29, '(31) +2', NULL, '2018-05-26 10:07:31', '2018-05-26 10:07:31'),
(2238, 7, 21, 24, 8, 'Mª Carmen', 'Latorre Arroyos', 'Mayor', 29, '(31) +2', NULL, '2018-05-26 10:08:10', '2018-05-26 10:08:10'),
(2239, 7, 21, 24, 9, 'Luís', 'Cosculluela Riverola', 'Mayor', 38, '(42) + 4', NULL, '2018-05-26 10:09:04', '2018-05-26 10:09:04'),
(2240, 7, 21, 24, 9, 'Mª Cruz ', 'Pablo Sampietro', 'Mayor', 38, '(42) + 4', NULL, '2018-05-26 10:09:41', '2018-05-26 10:09:41'),
(2241, 7, 21, 24, 9, 'Hector y Ricardo', 'Cosculluela Pablo', 'Mayor', 38, '(42) + 4', NULL, '2018-05-26 10:10:19', '2018-05-26 10:10:19'),
(2242, 7, 21, 24, 10, 'José', 'Craver Carruesco', 'Mayor', 36, '(40) + 4', NULL, '2018-05-26 10:11:29', '2018-05-26 10:11:29'),
(2243, 7, 21, 24, 10, 'Milagros', 'Lailla Juste', 'Mayor', 36, '(40) + 4', NULL, '2018-05-26 10:12:24', '2018-05-26 10:12:24'),
(2244, 7, 21, 24, 10, 'Milagros', 'Craver Lailla', 'Mayor', 36, '(40) + 4', NULL, '2018-05-26 10:12:57', '2018-05-26 10:12:57'),
(2245, 7, 21, 24, 11, 'José María', 'Craver Cebollero', 'Mayor', 34, '(38) + 4', NULL, '2018-05-26 10:14:00', '2018-05-26 10:14:00'),
(2246, 7, 21, 24, 11, 'Mª Carmen', 'Marquina Cebollero', 'Mayor', 34, '(38) + 4', NULL, '2018-05-26 10:14:34', '2018-05-26 10:14:34'),
(2247, 7, 21, 24, 11, 'Pilar', 'Cebollero Juste', 'Mayor', 34, '(38) + 4', NULL, '2018-05-26 10:15:03', '2018-05-26 10:15:03'),
(2248, 7, 21, 24, 11, 'José Manuel y Lourdes', 'Craver Marquina', 'Mayor', 34, '(38) + 4', NULL, '2018-05-26 10:15:37', '2018-05-26 10:15:37'),
(2249, 7, 21, 24, 12, 'Miguel Ángel y José Antonio', 'Campo Bescós', 'Mayor', 27, '(29) + 2', NULL, '2018-05-26 10:16:35', '2018-05-26 10:16:35'),
(2250, 7, 21, 24, 12, 'José Antonio, Lolita, Dolores', 'Campo Barón', 'Mayor', 27, '(29) + 2', NULL, '2018-05-26 10:17:56', '2018-05-26 10:17:56'),
(2251, 7, 21, 24, 12, 'Felipe', 'Campo Rivera', 'Mayor', 27, '(29) + 2', NULL, '2018-05-26 10:18:27', '2018-05-26 10:18:27'),
(2252, 7, 21, 24, 12, 'Mª Pilar', 'Bescós Bibian', 'Mayor', 27, '(29) + 2', NULL, '2018-05-26 10:19:01', '2018-05-26 10:19:01'),
(2253, 7, 21, 24, 12, 'Estela', 'Campo Moya', 'Mayor', 27, '(29) + 2', NULL, '2018-05-26 10:19:25', '2018-05-26 10:19:25'),
(2254, 7, 21, 24, 12, 'Marta', 'Moya Martínez', 'Mayor', 27, '(29) + 2', NULL, '2018-05-26 10:20:46', '2018-05-26 10:20:46'),
(2255, 7, 21, 24, 13, 'Luís y José María', 'Sampietro Sierra', 'Mayor', 25, '(27) + 2', NULL, '2018-05-26 10:21:25', '2018-05-26 10:21:25'),
(2256, 7, 21, 24, 13, 'Natividad', 'Sierra Albás', 'Mayor', 25, '(27) + 2', NULL, '2018-05-26 10:22:00', '2018-05-26 10:22:00'),
(2257, 7, 21, 24, 14, 'Alberto', 'Bertran', 'Mayor', 23, '', NULL, '2018-05-26 13:48:47', '2018-05-26 13:48:47'),
(2258, 7, 21, 24, 14, 'Juna ', 'Moreno', 'Mayor', 23, '', NULL, '2018-05-26 13:49:08', '2018-05-26 13:49:08'),
(2259, 7, 21, 24, 15, '....', 'Montaner', 'Mayor', 30, '', NULL, '2018-05-26 13:49:30', '2018-05-26 13:49:30'),
(2260, 7, 21, 24, 15, 'Abel', 'Bellosta', 'Mayor ', 30, '', NULL, '2018-05-26 13:50:06', '2018-05-26 13:50:06'),
(2261, 7, 21, 24, 16, 'Marisol Concepción', 'Larroya', 'Mayor', 28, '(32) + 4 Dejar en Virgen del Pilar 4 ', NULL, '2018-05-26 13:52:14', '2018-05-26 13:52:14'),
(2262, 7, 21, 24, 16, 'José Carlos', 'Salvatierra Colungo', 'Mayor', 28, '(32) + 4 Dejar en Virgen del Pilar 4', NULL, '2018-05-26 13:53:26', '2018-05-26 13:53:26'),
(2263, 7, 21, 24, 16, 'Carlos ', 'Salvatierra Larroya', 'Mayor', 28, '(32) + 4 Dejar en Virgen del Pilar 4', NULL, '2018-05-26 13:54:13', '2018-05-26 13:54:13'),
(2264, 7, 21, 24, 17, 'Ángeles', 'Cebollero Riverola', 'Mayor', 21, '(23) + 2', NULL, '2018-05-26 13:54:57', '2018-05-26 13:54:57'),
(2265, 7, 21, 24, 18, 'Antonio', 'Cavero Broto', 'Mayor', 24, '(28) + 4', NULL, '2018-05-26 13:55:33', '2018-05-26 13:55:33'),
(2266, 7, 21, 24, 18, 'Encarna ', 'Domper Salas', 'Mayor', 24, '(28)', NULL, '2018-05-26 13:56:29', '2018-05-26 13:56:29'),
(2267, 7, 21, 24, 18, 'Severino', 'Cavero Laina', 'Mayor', 24, '(28) + 4', NULL, '2018-05-26 13:57:13', '2018-05-26 13:57:13'),
(2268, 7, 21, 24, 18, 'Paulina', 'Broto Vicién', 'Mayor', 24, '(28) + 4', NULL, '2018-05-26 13:57:51', '2018-05-26 13:57:51'),
(2269, 7, 21, 24, 18, 'Antonio', 'Cavero Domper', 'Mayor', 24, '(28) + 4', NULL, '2018-05-26 13:58:18', '2018-05-26 13:58:18'),
(2270, 7, 21, 24, 19, 'Antonio', 'Coronas Panzano', 'Mayor', 19, '(21) + 2', NULL, '2018-05-26 13:58:53', '2018-05-26 13:58:53'),
(2271, 7, 21, 24, 20, 'Mª Pilar y Luís', 'Monclús Lacoma', 'Mayor', 17, '(19) + 4', NULL, '2018-05-26 13:59:53', '2018-05-26 13:59:53'),
(2272, 7, 21, 24, 20, 'Mª Pilar', 'Lacoma Biescas', 'Mayor', 17, '(21) + 2', NULL, '2018-05-26 14:01:24', '2018-05-26 14:03:57'),
(2273, 7, 21, 24, 21, 'Daniel', 'Romeo Serena', 'Callizo', 2, '', NULL, '2018-05-26 14:04:36', '2018-05-26 14:04:36'),
(2274, 7, 21, 24, 22, 'Rogelio', 'Budíos Pano', 'Mayor', 16, '', NULL, '2018-05-26 14:11:02', '2018-05-26 14:11:02'),
(2275, 7, 21, 24, 22, 'Nieves', 'Túa Nasarre', 'Mayor', 16, '', NULL, '2018-05-26 14:12:27', '2018-05-26 14:12:27'),
(2276, 7, 21, 24, 22, 'Eduardo', 'Budíos Túa', 'Mayor', 16, '', NULL, '2018-05-26 14:12:45', '2018-05-26 14:12:45'),
(2277, 7, 21, 24, 23, 'Vicente', 'Salvatierra Valle', 'Mayor', 14, '', NULL, '2018-05-26 14:13:30', '2018-05-26 14:13:30'),
(2278, 7, 21, 24, 23, 'Ismael y Gerardo', 'Salvatierra Riverola', 'Mayor', 14, '', NULL, '2018-05-26 14:13:59', '2018-05-26 14:13:59'),
(2279, 7, 21, 24, 23, '....', 'GESOL s.l', 'Mayor', 14, '', NULL, '2018-05-26 14:15:05', '2018-05-26 14:15:05'),
(2280, 7, 21, 24, 24, 'Benito', 'Puértolas Millat', 'Mayor', 11, '(13) + 2', NULL, '2018-05-26 14:16:14', '2018-05-26 14:16:14'),
(2281, 7, 21, 24, 24, 'Joaquina', 'Perrera De Arroyos', 'Mayor', 11, '(13) + 2', NULL, '2018-05-26 14:17:15', '2018-05-26 14:17:15'),
(2282, 7, 21, 24, 24, 'Mª Teresa', 'Arroyos Perrera', 'Mayor', 11, '(13) + 2', NULL, '2018-05-26 14:18:30', '2018-05-26 14:18:30'),
(2283, 7, 21, 24, 24, 'Carlos', 'Puértolas Arroyos', 'Mayor', 11, '(13) + 2', NULL, '2018-05-26 14:19:04', '2018-05-26 14:19:04'),
(2284, 7, 21, 24, 25, 'Felicidad', 'Lailla Zamora', 'Mayor', 12, '', NULL, '2018-05-26 14:19:26', '2018-05-26 14:19:26'),
(2285, 7, 21, 24, 25, 'Juan', 'Martínez Frías', 'Mayor', 12, '', NULL, '2018-05-26 14:20:08', '2018-05-26 14:20:08'),
(2286, 7, 21, 24, 25, 'Mª Reyes', 'Zamora Lailla', 'Mayor', 12, '', NULL, '2018-05-26 14:21:04', '2018-05-26 14:21:04'),
(2287, 7, 21, 24, 25, 'Ángel', 'Zamora Riverola', 'Mayor', 12, '', NULL, '2018-05-26 14:21:24', '2018-05-26 14:21:24'),
(2288, 7, 21, 24, 26, 'Mª Luisa', 'Franco Arregui', 'Mayor', 10, '', NULL, '2018-05-26 14:22:28', '2018-05-26 14:22:28'),
(2289, 7, 21, 24, 26, '...', 'Asociación el Lecinar', 'Mayor', 10, '', NULL, '2018-05-26 14:23:19', '2018-05-26 14:23:19'),
(2290, 7, 21, 24, 26, 'Antonifo', 'Franco Arregui', 'Mayor', 10, '', NULL, '2018-05-26 14:24:00', '2018-05-26 14:24:00'),
(2291, 7, 21, 24, 26, 'Mª Rosa', 'Franco Colungo', 'Mayor', 10, '', NULL, '2018-05-26 14:24:39', '2018-05-26 14:24:39'),
(2292, 7, 21, 24, 26, 'Juan José', 'Altemir Cavero', 'Mayor', 10, '', NULL, '2018-05-26 14:25:05', '2018-05-26 14:25:05'),
(2293, 7, 21, 24, 26, 'Noelia y José Antonio', 'Altemir Franco', '', 0, '', NULL, '2018-05-26 14:25:42', '2018-05-26 14:25:42'),
(2294, 7, 21, 24, 27, 'Raúl', 'Altemir Franco', 'Mayor', 9, 'Dejar en el 10 hasta fin de obras', NULL, '2018-05-26 14:26:19', '2018-05-26 14:26:19'),
(2295, 7, 21, 24, 27, 'Caroline', 'Baron', 'Mayor', 9, 'Dejar en el 10 hasta fin de obras', NULL, '2018-05-26 14:26:53', '2018-05-26 14:26:53'),
(2296, 7, 21, 24, 28, 'Victor', 'Riverola Sanz', 'Mayor', 5, 'o 7, dejar en el 13 hasta fin de obras', NULL, '2018-05-26 14:28:03', '2018-05-26 14:28:03'),
(2297, 7, 21, 24, 28, 'Gloria', 'Altemir Cavero', 'Mayor', 5, 'o 7, dejar en el 13 hasta fin de obras', NULL, '2018-05-26 14:28:40', '2018-05-26 14:28:40'),
(2298, 7, 21, 24, 28, 'Rubén', 'Riverola Altemir', 'Mayor', 5, 'o 7, dejar en el 13 hasta fin de obras', NULL, '2018-05-26 14:29:12', '2018-05-26 14:29:12'),
(2299, 7, 21, 24, 28, 'Laura', 'Bertran Moreno', 'Mayor', 5, 'o 7, dejar en el 13 hasta fin de obras', NULL, '2018-05-26 14:30:04', '2018-05-26 14:30:04'),
(2300, 7, 21, 24, 29, '...', 'Apartado nº 20', 'Mayor', 3, '', NULL, '2018-05-26 14:30:31', '2018-05-26 14:30:31'),
(2301, 7, 21, 24, 30, 'José María', 'Riverola Sanz', 'Mayor', 4, '', NULL, '2018-05-26 14:31:32', '2018-05-26 14:31:32'),
(2302, 7, 21, 24, 30, 'Trinidad', 'lacoma craver', 'Mayor', 4, '', NULL, '2018-05-26 14:32:27', '2018-05-26 14:32:27'),
(2303, 7, 21, 24, 30, 'josé miguel y mario', 'Riverola Lacoma', 'Mayor', 4, '', NULL, '2018-05-26 14:33:38', '2018-05-26 14:33:38'),
(2304, 7, 21, 24, 31, 'José Luis', 'Riverola Craver', 'Mayor', 1, '', NULL, '2018-05-26 14:34:26', '2018-05-26 14:34:26'),
(2305, 7, 21, 24, 31, 'Ramona', 'Vall Casanovas', 'Mayor', 1, '', NULL, '2018-05-26 14:34:44', '2018-05-26 14:34:44'),
(2306, 7, 21, 24, 31, 'Diego y Rafael', 'Riverola Vall', 'Mayor', 1, '', NULL, '2018-05-26 14:35:12', '2018-05-26 14:35:12'),
(2307, 7, 21, 24, 31, 'Jesús', 'Riverola Domper', 'Mayor', 1, '', NULL, '2018-05-26 14:35:31', '2018-05-26 14:35:31'),
(2308, 7, 21, 24, 31, 'Josefina', 'Craver Sopena', 'Mayor', 1, '', NULL, '2018-05-26 14:35:51', '2018-05-26 14:35:51'),
(2309, 7, 21, 24, 32, 'Emilio', 'Altemir Carmen', 'Ignacio Riverola', 2, '', NULL, '2018-05-27 08:29:30', '2018-05-27 08:29:30'),
(2310, 7, 21, 24, 32, 'Cristina', 'Armendariz Castillón', 'Ignacio Riverola', 2, '', NULL, '2018-05-27 08:31:39', '2018-05-27 08:31:39'),
(2311, 7, 21, 24, 32, 'Carlota', 'Altemir Armendariz', 'Ignacio Riverola', 2, '', NULL, '2018-05-27 08:32:14', '2018-05-27 08:32:14'),
(2312, 7, 21, 24, 33, 'Ignacio', 'Riverola', 'Ignacio Riverola', 4, '', NULL, '2018-05-27 08:32:35', '2018-05-27 08:32:35'),
(2313, 7, 21, 24, 34, 'Dolores', 'García Castaño', 'Ignacio Riverola', 8, '(6) +2', NULL, '2018-05-27 08:33:32', '2018-05-27 08:33:32'),
(2314, 7, 21, 24, 34, 'Félix ', 'Toro Mansilla', 'Ignacio Riverola', 8, '(6) +2', NULL, '2018-05-27 08:34:13', '2018-05-27 08:34:13'),
(2315, 7, 21, 24, 34, 'Javier', 'Toro García', 'Ignacio Riverola', 8, '(6) +2', NULL, '2018-05-27 08:34:38', '2018-05-27 08:34:38'),
(2316, 7, 21, 24, 34, '...', 'Fetor', 'Ignacio Riverola', 8, '(6) +2', NULL, '2018-05-27 08:35:14', '2018-05-27 08:35:14'),
(2317, 7, 21, 24, 35, 'Xavier', 'Cabanas Senar', 'Ignacio Riverola', 10, '(7) +3', NULL, '2018-05-27 08:35:52', '2018-05-27 08:35:52'),
(2318, 7, 21, 24, 35, 'Dori', 'Espuña', 'Ignacio Riverola', 10, '(7) +3', NULL, '2018-05-27 08:38:04', '2018-05-27 08:38:04'),
(2319, 7, 21, 24, 35, 'Mª Sol', 'Senar Colungo', 'Ignacio Riverola', 10, '(7) +3', NULL, '2018-05-27 08:38:33', '2018-05-27 08:38:33'),
(2320, 7, 21, 24, 36, 'Agustín y Alberto', 'Broto Lalueza', 'Plaza Mayor', 3, '(5) + 2', NULL, '2018-05-27 08:39:53', '2018-05-27 08:39:53'),
(2321, 7, 21, 24, 37, 'José', 'Garzón', 'Plaza Mayor', 4, '', NULL, '2018-05-27 08:41:00', '2018-05-27 08:41:00'),
(2322, 7, 21, 24, 38, 'Mariano ', 'Biescas Sierra', 'Plaza Mayor', 5, '', NULL, '2018-05-27 08:41:50', '2018-05-27 08:41:50'),
(2323, 7, 21, 24, 39, 'Sebastían', 'Lailla Pablo', 'Plaza Mayor', 6, '', NULL, '2018-05-27 08:42:23', '2018-05-27 08:42:23'),
(2324, 7, 21, 24, 40, 'Eduardo', 'Salvatierra Valle', 'Pz Ayuntamiento', 3, '(10) + 7', NULL, '2018-05-27 08:44:17', '2018-05-27 08:44:17'),
(2325, 7, 21, 24, 40, 'Carlos', 'Duran', 'Pz Ayuntamiento', 3, '(10) + 7', NULL, '2018-05-27 08:44:45', '2018-05-27 08:44:45'),
(2326, 7, 21, 24, 40, '...', 'Trono Aventura', 'Pz Ayuntamiento', 3, '(10) + 7', NULL, '2018-05-27 08:45:15', '2018-05-27 08:45:15'),
(2327, 7, 21, 24, 40, 'Consuelo', 'Brosel Romero', 'Pz Ayuntamiento', 3, '(10) + 7', NULL, '2018-05-27 08:45:46', '2018-05-27 08:45:46'),
(2328, 7, 21, 24, 41, 'Pedro ', 'Fuertes Embún', 'Pz Ayuntamiento', 4, '(11) + 7', NULL, '2018-05-27 08:47:07', '2018-05-27 08:47:07'),
(2329, 7, 21, 24, 42, 'José', 'Escudero Pano', 'Pz Ayuntamiento', 5, '(12) + 7', NULL, '2018-05-27 08:48:50', '2018-05-27 08:48:50'),
(2330, 7, 21, 24, 42, 'Josefina', 'Pano Broto', 'Pz Ayuntamiento', 5, '(12) + 7', NULL, '2018-05-27 08:49:25', '2018-05-27 08:49:25'),
(2331, 7, 21, 24, 42, 'Francisco', 'Escudero Mur', 'Pz Ayuntamiento', 5, '(12) + 7', NULL, '2018-05-27 08:50:10', '2018-05-27 08:50:10'),
(2332, 7, 21, 24, 43, 'Luís', 'Tricas Escartín', 'Pz Ayuntamiento', 6, '(14) + 8', NULL, '2018-05-27 08:50:49', '2018-05-27 08:50:49'),
(2333, 7, 21, 24, 43, 'Mª Pilar', 'Craver Lailla', 'Pz Ayuntamiento', 6, '(14) + 8', NULL, '2018-05-27 08:51:49', '2018-05-27 08:51:49'),
(2334, 7, 21, 24, 43, 'Begoña', 'Tricas Craver', 'Pz Ayuntamiento', 6, '(14) + 8', NULL, '2018-05-27 08:52:18', '2018-05-27 08:52:18'),
(2335, 7, 21, 24, 44, 'Antonio', 'Repiso Tapia', 'Av Virgen del Pilar', 0, 's/n polígono rural, Buzón blanco en camino', NULL, '2018-05-27 08:54:28', '2018-05-27 08:54:28'),
(2336, 7, 21, 24, 44, 'Ana Josefa', 'Balsera', 'Av Virgen del Pilar', 0, 's/n polígono rural, Buzón blanco en camino', NULL, '2018-05-27 08:55:14', '2018-05-27 08:55:14'),
(2337, 7, 21, 24, 45, 'Amalia', 'Riverola Zamora', 'Av Virgen del Pilar', 2, '(4) + 2', NULL, '2018-05-27 08:55:53', '2018-05-27 08:55:53'),
(2338, 7, 21, 24, 45, 'Natividad', 'Zamora Riverola', 'Av Virgen del Pilar', 2, '(4) + 2', NULL, '2018-05-27 08:56:26', '2018-05-27 08:56:26'),
(2339, 7, 21, 24, 45, 'José Manuel', 'Gómez Riverola', 'Av Virgen del Pilar', 2, '(4) + 2', NULL, '2018-05-27 08:57:34', '2018-05-27 08:57:34'),
(2340, 7, 21, 24, 46, 'Carlos', 'Salvatierra Larroya', 'Av Virgen del Pilar', 4, 'Mayor 28', NULL, '2018-05-27 08:58:29', '2018-05-27 08:58:29'),
(2341, 7, 21, 24, 47, 'Antonio', 'Biescas Sierra', 'Av Virgen del Pilar', 6, '(8) + 2', NULL, '2018-05-27 09:00:21', '2018-05-27 09:00:21'),
(2342, 7, 21, 24, 47, 'Mª Antonia', 'Cosculluela Riverola', 'Av Virgen del Pilar', 6, '(8) + 2', NULL, '2018-05-27 09:01:08', '2018-05-27 09:01:08'),
(2343, 7, 21, 24, 47, 'Luís Antonio', 'Biescas Cosculluela', 'Av Virgen del Pilar', 6, '(8) + 2, llevar a Guara 4', NULL, '2018-05-27 09:02:15', '2018-05-27 09:02:15'),
(2344, 7, 21, 24, 47, 'Ana Josefa', 'Riverola Zamora', 'Av Virgen del Pilar', 8, '(10) + 2, dejar en el 2', NULL, '2018-05-27 09:03:42', '2018-05-27 09:03:42'),
(2345, 7, 21, 24, 48, 'Francisca', 'Iglesias Marquez', 'Av Virgen del Pilar', 12, '', NULL, '2018-05-27 09:05:36', '2018-05-27 09:05:36'),
(2346, 7, 21, 24, 48, 'Emilio ', 'López Mena', 'Av Virgen del Pilar', 12, '', NULL, '2018-05-27 09:16:11', '2018-05-27 09:16:11'),
(2347, 7, 21, 24, 49, 'María', 'García Ruiz', 'Av Virgen del Pilar', 14, '(16) + 2', NULL, '2018-05-27 09:17:21', '2018-05-27 09:17:21'),
(2348, 7, 21, 24, 49, 'Vicente', 'Sesé Miralles', 'Av Virgen del Pilar', 14, '(16) + 2', NULL, '2018-05-27 09:17:55', '2018-05-27 09:17:55'),
(2349, 7, 21, 24, 50, 'Gemma', 'Biescas Cosculluela', 'Av Virgen del Pilar', 16, '', NULL, '2018-05-27 09:18:21', '2018-05-27 09:18:21'),
(2350, 7, 21, 24, 50, '...', 'Fernández', 'Av Virgen del Pilar', 16, '', NULL, '2018-05-27 09:19:19', '2018-05-27 09:19:19'),
(2351, 7, 21, 24, 51, 'Josefina', 'Gimenez Gimenez', 'Av Virgen del Pilar', 3, '', NULL, '2018-05-27 09:19:47', '2018-05-27 09:19:47'),
(2352, 7, 21, 24, 52, 'Amparo', 'Broto Mur', 'Ángel Sanz Briz', 2, 'Antes Virgen del Pilar 15, avisos a Barbastro', NULL, '2018-05-27 09:22:16', '2018-05-27 09:25:57'),
(2353, 7, 21, 24, 52, 'José Francisco', 'Frechin Badel', 'Ángel Sanz Briz', 2, 'Antes Virgen del Pilar 15, avisos a Barbastro', NULL, '2018-05-27 09:22:58', '2018-05-27 09:26:29'),
(2354, 7, 21, 24, 52, 'Ámparo, José Luís y Carlos', 'Domper Broto', 'Ángel Sanz Briz', 2, 'Antes Virgen del Pilar 15, avisos a Barbastro', NULL, '2018-05-27 09:24:11', '2018-05-27 09:27:05'),
(2355, 7, 21, 24, 52, 'Pilar', 'Frechin Broto', 'Ángel Sanz Briz', 2, 'Antes Virgen del Pilar 15, avisos a Barbastro', NULL, '2018-05-27 09:25:18', '2018-05-27 09:25:18'),
(2356, 7, 21, 24, 53, 'Mª Cruz', 'Lacoma Sopena', 'Ángel Sanz Briz', 6, '', NULL, '2018-05-27 09:28:30', '2018-05-27 09:28:30'),
(2357, 7, 21, 24, 53, 'Leandro ', 'Buil Lacoma', 'Ángel Sanz Briz', 6, '', NULL, '2018-05-27 09:29:27', '2018-05-27 09:29:27'),
(2358, 7, 21, 24, 54, '...', 'Fontanería Abizanda', 'Pz Ayuntamiento', 2, '', NULL, '2018-05-28 17:25:53', '2018-05-28 17:25:53'),
(2359, 7, 21, 24, 54, 'Vicente', 'Abizanda Sanromán', 'Pz Ayuntamiento', 2, '', NULL, '2018-05-28 17:26:27', '2018-05-28 17:26:27'),
(2360, 7, 21, 24, 54, 'Josefina', 'Toro Sierra', 'Pz Ayuntamiento', 2, '', NULL, '2018-05-28 17:26:44', '2018-05-28 17:26:44'),
(2361, 7, 21, 24, 54, 'Consuelo', 'Sierra Albás', 'Pz Ayuntamiento', 2, '', NULL, '2018-05-28 17:27:01', '2018-05-28 17:27:01'),
(2362, 7, 21, 24, 54, 'Sergio y Vicente', 'Abizanda Toro', 'Pz Ayuntamiento', 2, '', NULL, '2018-05-28 17:27:27', '2018-05-28 17:27:27'),
(2363, 7, 21, 24, 55, 'Miguel Ángel', 'Sampietro Cancer', 'Pz Ayuntamiento', 8, '(VP 9)', NULL, '2018-05-28 17:32:56', '2018-05-28 17:32:56'),
(2364, 7, 21, 24, 55, 'Mª Luisa', 'Pueyo Riverola', 'Pz Ayuntamiento', 8, '(VP 9)', NULL, '2018-05-28 17:33:27', '2018-05-28 17:33:27'),
(2365, 7, 21, 24, 55, 'Paloma', 'Sampietro Pueyo', 'Pz Ayuntamiento', 8, '(VP 9)', NULL, '2018-05-28 17:36:08', '2018-05-28 17:36:08'),
(2366, 7, 21, 24, 56, 'Isabel', 'Plaza Sola', 'Pz Ayuntamiento', 10, '(VP 7)', NULL, '2018-05-28 17:39:38', '2018-05-28 17:39:38'),
(2367, 7, 21, 24, 56, 'Jaime', 'Olive Muñoz', 'Pz Ayuntamiento', 10, '(VP 7)', NULL, '2018-05-28 17:40:20', '2018-05-28 17:40:20'),
(2368, 7, 21, 24, 57, 'Rosario', 'Matta Conago', 'Pz Ayuntamiento', 14, '', NULL, '2018-05-28 17:40:44', '2018-05-28 17:40:44'),
(2369, 7, 21, 24, 58, 'José', 'Millat', 'Pz Ayuntamiento', 16, '(VP 3)', NULL, '2018-05-28 17:41:12', '2018-05-28 17:41:12'),
(2370, 7, 21, 24, 58, 'Pilar', 'Barón Bellosta', 'Pz Ayuntamiento', 16, '(VP 3)', NULL, '2018-05-28 17:41:42', '2018-05-28 17:41:42'),
(2371, 7, 21, 24, 58, 'Javier', 'Millat Barón', 'Pz Ayuntamiento', 16, '(VP 3)', NULL, '2018-05-28 17:42:26', '2018-05-28 17:42:26'),
(2372, 7, 21, 24, 59, 'Antonia', 'Millat', 'Av Canal del Cinca', 13, '(3) + 10 Certificados comunidad a Barbastro', NULL, '2018-05-28 17:43:57', '2018-05-28 17:43:57'),
(2373, 7, 21, 24, 59, '...', 'Gonga', 'Av Canal del Cinca', 13, 'Llevar a Azlor a Iglesia 2', NULL, '2018-05-28 17:45:34', '2018-05-28 17:45:34'),
(2374, 7, 21, 24, 59, 'Elias ', 'Ruiz', 'Av Canal del Cinca', 13, '(3)', NULL, '2018-05-28 17:46:57', '2018-05-28 17:46:57'),
(2375, 7, 21, 24, 59, 'Isabel ', 'Val', 'Av Canal del Cinca', 13, '(3)', NULL, '2018-05-28 17:47:25', '2018-05-28 17:47:25'),
(2376, 7, 21, 24, 59, 'Sandra', 'Entrenas', 'Av Virgen del Pilar', 13, '(3)', NULL, '2018-05-28 17:48:07', '2018-05-28 17:48:07'),
(2377, 7, 21, 24, 59, 'Juan Carlos', 'Robaina', 'Av Canal del Cinca', 13, '(3) Avisos a Barbastro', NULL, '2018-05-28 17:48:50', '2018-05-28 17:48:50'),
(2378, 7, 21, 24, 60, 'Julian', 'Martínez Frías', 'Av Canal del Cinca', 15, 'Buzón verde', NULL, '2018-05-28 17:49:30', '2018-05-28 17:49:30'),
(2379, 7, 21, 24, 60, 'Mª Reyes', 'Zamora Lailla', 'Av Canal del Cinca', 15, 'Buzón verde', NULL, '2018-05-28 17:50:02', '2018-05-28 17:50:02'),
(2380, 7, 21, 24, 61, '...', 'Finca la Grande', 'Av Canal del Cinca', 17, '(1)', NULL, '2018-05-28 17:50:40', '2018-05-28 17:50:40'),
(2381, 7, 21, 24, 61, 'José Antonio', 'Latorre Arroyos', 'Av Canal del Cinca', 17, '(1)', NULL, '2018-05-28 17:51:18', '2018-05-28 17:51:18'),
(2382, 7, 21, 24, 61, 'Esther', 'Urban Laguarta', 'Av Canal del Cinca', 17, '(1)', NULL, '2018-05-28 17:51:53', '2018-05-28 17:51:53'),
(2383, 7, 21, 24, 61, 'Alex y Álvaro', 'Latorre Urban', 'Av Canal del Cinca', 17, '(1)', NULL, '2018-05-28 17:52:28', '2018-05-28 17:52:28'),
(2384, 7, 21, 24, 62, 'Amado', 'Vigo Doloz', 'Guara', 25, '', NULL, '2018-05-28 17:52:50', '2018-05-28 17:52:50'),
(2385, 7, 21, 24, 63, 'María', 'Larroya', 'Guara', 24, 'Arriba, pequeña cuesta', NULL, '2018-05-28 17:53:32', '2018-05-28 17:53:32'),
(2386, 7, 21, 24, 63, 'Hans', 'Werner Kempes', 'Guara', 24, 'Arriba, pequeña cuesta', NULL, '2018-05-28 17:54:05', '2018-05-28 17:54:05'),
(2387, 7, 21, 24, 64, '...', 'Salvatierra', 'Guara', 11, '', NULL, '2018-05-28 17:54:35', '2018-05-28 17:54:35'),
(2388, 7, 21, 24, 65, 'Luís Antonio', 'Biescas Cosculluela', 'Guara', 4, 'Echar bien', NULL, '2018-05-28 17:55:48', '2018-05-28 17:55:48'),
(2389, 7, 21, 24, 65, 'Mónica', 'Mateo', 'Guara', 4, 'Echar bien', NULL, '2018-05-28 17:56:09', '2018-05-28 17:56:09'),
(2390, 7, 21, 24, 65, '...', 'Construcciones Biescas', 'Guara', 4, 'Echar bien', NULL, '2018-05-28 17:56:38', '2018-05-28 17:56:38'),
(2391, 7, 21, 24, 66, 'Victoriano', 'Pérez Martínez', 'Guara', 1, 'Puerta garaje', NULL, '2018-05-28 17:57:08', '2018-05-28 17:57:08'),
(2392, 7, 21, 24, 67, 'Antonio', 'Sampietro Cancer', 'Av Virgen del Pilar', 26, '(20) + 6', NULL, '2018-05-28 18:00:06', '2018-05-28 18:00:06'),
(2393, 7, 21, 24, 67, 'Mª José ', 'Ardanuy Rius', 'Av Virgen del Pilar', 26, '(20) + 6', NULL, '2018-05-28 18:00:52', '2018-05-28 18:00:52'),
(2394, 7, 21, 24, 67, 'Mª Mar y José Antonio', 'Sampietro Ardanuy', 'Av Virgen del Pilar', 26, '(20) + 6', NULL, '2018-05-28 18:02:03', '2018-05-28 18:02:03'),
(2395, 7, 21, 24, 68, 'Federico y Antonio', 'López Iglesias', 'Av Virgen del Pilar', 28, '(10) + 16', NULL, '2018-05-28 18:04:18', '2018-05-28 18:04:18'),
(2396, 7, 21, 24, 68, 'Berta', 'Rivera', 'Av Virgen del Pilar', 28, '(10) + 16', NULL, '2018-05-28 18:05:13', '2018-05-28 18:05:13'),
(2397, 7, 21, 24, 68, 'Concepción', 'Cortés Torres', 'Av Virgen del Pilar', 28, '(10) + 16', NULL, '2018-05-28 18:06:29', '2018-05-28 18:06:29'),
(2398, 7, 21, 24, 69, 'José Antonio', 'López Iglesias', 'Av Virgen del Pilar', 30, '(22 ó mayor 18)', NULL, '2018-05-28 18:07:19', '2018-05-28 18:07:19'),
(2399, 7, 21, 24, 69, 'Mª Sol', 'Blasco Gomera', 'Av Virgen del Pilar', 30, '(22 ó mayor 18)', NULL, '2018-05-28 18:10:44', '2018-05-28 18:10:44'),
(2400, 7, 21, 24, 69, 'David y Tania', 'López Blasco', 'Av Virgen del Pilar', 30, '(22 ó mayor 18)', NULL, '2018-05-28 18:11:38', '2018-05-28 18:11:38'),
(2401, 7, 21, 24, 69, '...', 'Club deportivo comarcal Somontano', 'Av Virgen del Pilar', 30, '(22 ó mayor 18)', NULL, '2018-05-28 18:12:11', '2018-05-28 18:12:11'),
(2402, 7, 21, 24, 70, 'Antonio', 'Luque', 'Av Virgen del Pilar', 19, '(21) + 2', NULL, '2018-05-28 18:13:44', '2018-05-28 18:13:44'),
(2403, 7, 21, 24, 71, 'Juan Enrique', 'rodriguez', 'Av Virgen del Pilar', 23, '(19) + 4', NULL, '2018-05-28 18:14:32', '2018-05-28 18:14:32'),
(2404, 7, 21, 24, 71, 'Roser', 'de San José', 'Av Virgen del Pilar', 23, '(19) + 4', NULL, '2018-05-28 18:17:52', '2018-05-28 18:17:52'),
(2405, 7, 21, 24, 71, 'Susana', 'Rodriguez de San José', 'Av Virgen del Pilar', 23, '(19) + 4', NULL, '2018-05-28 18:18:51', '2018-05-28 18:18:51'),
(2406, 7, 21, 24, 71, 'Kennet', 'Balaguer Rodriguez', 'Av Virgen del Pilar', 23, '(19) + 4', NULL, '2018-05-28 18:19:34', '2018-05-28 18:19:34'),
(2407, 7, 21, 24, 72, '...', 'Taller ACL', 'Av Virgen del Pilar', 44, '44 ó s/n (Barrio 2 Azara)', NULL, '2018-05-28 18:20:22', '2018-05-28 18:20:22'),
(2408, 7, 21, 24, 72, 'Alberto', 'Cuello Loncan', 'Av Virgen del Pilar', 44, '44 ó s/n (Barrio 2 Azara) Certificados Ayuntamiento Azara (menos los martes)', NULL, '2018-05-28 18:23:40', '2018-05-28 18:23:40'),
(2409, 7, 21, 24, 72, 'Maite ', 'vitales Craver', 'Av Virgen del Pilar', 44, '44 ó s/n (Barrio 2 Azara)', NULL, '2018-05-28 18:24:46', '2018-05-28 18:24:46'),
(2410, 7, 21, 24, 72, 'Nicolás', 'Vitales', 'Av Virgen del Pilar', 44, '44 ó s/n (Barrio 2 Azara), cruzada Ponzano', NULL, '2018-05-28 18:25:21', '2018-05-28 18:25:21'),
(2411, 7, 21, 24, 73, '...', 'Bucher', 'Posada Perdigana', 0, 'abajo hay buzón', NULL, '2018-05-28 18:26:16', '2018-05-28 18:26:16'),
(2412, 7, 21, 24, 74, 'Jana', 'Binner', 'Posada Perdigana', 0, 'arriba, traer calle Guara', NULL, '2018-05-28 18:26:59', '2018-05-28 18:26:59'),
(2413, 7, 21, 24, 74, 'Hans', 'Werner Kempkes', 'Posada Perdigana', 0, 'arriba, traer calle Guara', NULL, '2018-05-28 18:27:52', '2018-05-28 18:27:52'),
(2414, 7, 21, 25, 1, 'Javier', 'Arnal Sanvicente', 'Bucharabola', 1, '', NULL, '2018-06-01 18:00:26', '2018-06-01 18:00:26'),
(2415, 7, 21, 25, 1, 'María', 'Sampietro Barrabés', 'Bucharabola', 1, '', NULL, '2018-06-01 18:00:51', '2018-06-01 18:00:51'),
(2416, 7, 21, 25, 1, '...', 'Agroganadería Subias', 'Bucharabola', 1, '', NULL, '2018-06-01 18:01:13', '2018-06-01 18:01:13'),
(2417, 7, 21, 25, 2, 'Daniel', 'Orús Valero', 'Bucharabola', 6, '', NULL, '2018-06-01 18:01:41', '2018-06-01 18:01:41'),
(2418, 7, 21, 25, 3, 'Marina', 'Muniesa', 'Bucharabola', 8, '', NULL, '2018-06-01 18:02:03', '2018-06-01 18:02:03'),
(2419, 7, 21, 25, 3, 'Sergio', 'Carpi Novales', 'Bucharabola', 8, '', NULL, '2018-06-01 18:03:12', '2018-06-01 18:03:12'),
(2420, 7, 21, 25, 4, '...', 'CRA Río Vero', 'Bucharabola', 0, 'Periódicos los Miércoles de Azara, Azlor y Peraltilla', NULL, '2018-06-01 18:04:01', '2018-06-01 18:04:01'),
(2421, 7, 21, 25, 5, 'Félix', 'Arasanz Pano', 'Alta', 20, '', NULL, '2018-06-01 18:04:35', '2018-06-01 18:04:35'),
(2422, 7, 21, 25, 6, 'Javier', 'Gamisel Mur', 'Alta', 20, '', NULL, '2018-06-01 18:05:13', '2018-06-01 18:05:13'),
(2423, 7, 21, 25, 6, 'Mª José', 'Muzás Subías', 'Alta', 20, '', NULL, '2018-06-01 18:05:57', '2018-06-01 18:05:57'),
(2424, 7, 21, 25, 6, 'Africa y Javier', 'Gamisel Muzás', 'Alta', 16, '', NULL, '2018-06-01 18:06:29', '2018-06-01 18:06:29'),
(2425, 7, 21, 25, 7, 'Antonio', 'Mur Ballabriga', 'Alta', 14, '', NULL, '2018-06-01 18:07:11', '2018-06-01 18:07:11'),
(2426, 7, 21, 25, 8, 'Sebastían', 'Lisa Cuello', 'Alta', 11, 'o Calvario 11, si no está certificados a Alta 12', NULL, '2018-06-01 18:08:13', '2018-06-01 18:08:13'),
(2427, 7, 21, 25, 9, 'Josefa', 'Cuello Carbón', 'Alta', 12, '', NULL, '2018-06-01 18:08:40', '2018-06-01 18:08:40'),
(2428, 7, 21, 25, 9, 'Manuel ', 'Barra Ramos', 'Alta', 12, '', NULL, '2018-06-01 18:09:04', '2018-06-01 18:09:04'),
(2429, 7, 21, 25, 10, 'Juan', 'Celdrán Abadías', 'Alta', 10, '', NULL, '2018-06-01 18:09:35', '2018-06-01 18:09:35'),
(2430, 7, 21, 25, 10, 'Mª Carmen', 'Linés Espinet', 'Alta', 10, '', NULL, '2018-06-01 18:10:20', '2018-06-01 18:10:20'),
(2431, 7, 21, 25, 10, 'María', 'Espinet Arrufat', 'Alta', 10, '', NULL, '2018-06-01 18:10:46', '2018-06-01 18:10:46'),
(2432, 7, 21, 25, 10, 'Laura', 'Celdrán Linés', 'Alta', 10, '', NULL, '2018-06-01 18:11:04', '2018-06-01 18:11:04'),
(2433, 7, 21, 25, 11, '...', 'Villacampa', 'Alta', 8, 'Dejar en Calvario 34', NULL, '2018-06-01 18:11:54', '2018-06-01 18:11:54'),
(2434, 7, 21, 25, 12, 'Manuel', 'Barón Villacampa', 'Alta', 8, '', NULL, '2018-06-01 18:12:35', '2018-06-01 18:12:35'),
(2435, 7, 21, 25, 12, 'Victor Manuel', 'Barón Puy', 'Alta', 7, '', NULL, '2018-06-01 18:13:10', '2018-06-01 18:13:10'),
(2436, 7, 21, 25, 12, 'Santos', 'Barón Barón', 'Alta', 7, '', NULL, '2018-06-01 18:13:34', '2018-06-01 18:13:34'),
(2437, 7, 21, 25, 13, 'Antonia', 'Barón Mur', 'Alta', 9, '', NULL, '2018-06-01 18:14:09', '2018-06-01 18:14:09'),
(2438, 7, 21, 25, 13, 'Josefina', 'Salvatierra Rubiella', 'Calvario', 1, '', NULL, '2018-06-01 18:14:49', '2018-06-01 18:14:49'),
(2439, 7, 21, 25, 13, 'Agustín', 'Lobera Valdovinos', 'Calvario', 1, '', NULL, '2018-06-01 18:15:11', '2018-06-01 18:15:11'),
(2440, 7, 21, 25, 14, 'Mª Carrodilla', 'LLoret Muzás', 'Calvario', 10, '', NULL, '2018-06-01 18:15:52', '2018-06-01 18:15:52'),
(2441, 7, 21, 25, 14, 'Carolina y Albano', 'Cuello LLoret', 'Calvario', 10, '', NULL, '2018-06-01 18:16:22', '2018-06-01 18:16:22'),
(2442, 7, 21, 25, 14, '...', 'La Barzuela', 'Calvario', 10, '', NULL, '2018-06-01 18:16:44', '2018-06-01 18:16:44'),
(2443, 7, 21, 25, 15, 'Yolanda', 'Lailla Viñuales', 'Calvario', 3, '', NULL, '2018-06-01 18:17:18', '2018-06-01 18:17:18'),
(2444, 7, 21, 25, 15, 'Fernando', 'Viñuales Sanz', 'Calvario', 3, 'Baja 14 Azlor', NULL, '2018-06-01 18:17:53', '2018-06-01 18:17:53'),
(2445, 7, 21, 25, 16, 'Miguel Ángel', 'Arasanz Miguel', 'Calvario', 14, '', NULL, '2018-06-01 18:18:33', '2018-06-01 18:18:33'),
(2446, 7, 21, 25, 16, 'Ángel', 'Arasanz Mur', 'Calvario', 14, 'Avisos a Barbastro', NULL, '2018-06-01 18:19:40', '2018-06-01 18:19:40'),
(2447, 7, 21, 25, 17, 'José María', 'Ayala Blanch', 'Calvario', 16, '', NULL, '2018-06-01 18:20:23', '2018-06-01 18:20:23'),
(2448, 7, 21, 25, 17, '...', 'Pérez', 'Calvario', 16, '', NULL, '2018-06-01 18:20:42', '2018-06-01 18:20:42'),
(2449, 7, 21, 25, 18, 'Juan José', 'Celdrán Linés', 'Calvario', 18, '', NULL, '2018-06-01 18:21:08', '2018-06-01 18:21:08'),
(2450, 7, 21, 25, 18, 'Noemí', 'Pérez Alfonsea', 'Calvario', 18, '', NULL, '2018-06-01 18:21:30', '2018-06-01 18:21:30'),
(2451, 7, 21, 25, 19, '...', 'Cerrazara sl', 'Calvario', 34, '', NULL, '2018-06-01 18:21:54', '2018-06-01 18:21:54'),
(2452, 7, 21, 25, 19, 'José Ramón', 'Lacambra Avellanas', 'Calvario', 34, '', NULL, '2018-06-01 18:23:24', '2018-06-01 18:23:24'),
(2453, 7, 21, 25, 19, 'Mª Esther ', 'Villacampa Tornos', 'Calvario', 34, '', NULL, '2018-06-01 18:23:55', '2018-06-01 18:23:55'),
(2454, 7, 21, 25, 19, 'José María', 'Villacampa Mur', 'Calvario', 34, '', NULL, '2018-06-01 18:24:24', '2018-06-01 18:24:24'),
(2455, 7, 21, 25, 19, 'Mª Cruz', 'Tornos Campos', 'Calvario', 34, '', NULL, '2018-06-01 18:25:03', '2018-06-01 18:25:03'),
(2456, 7, 21, 25, 19, 'Javier', 'Lacambra Villacampa', 'Calvario', 34, '', NULL, '2018-06-01 18:25:38', '2018-06-01 18:25:38'),
(2457, 7, 21, 25, 20, 'Gregorio', 'Pascual Colungo', 'San Miguel', 15, '', NULL, '2018-06-01 18:26:20', '2018-06-01 18:26:20'),
(2458, 7, 21, 25, 21, 'Mariano, Santos, Mª Mar, Reyes', 'Larroya Domper', 'San Miguel', 13, '11 - 13', NULL, '2018-06-01 18:28:25', '2018-06-01 18:28:25'),
(2459, 7, 21, 25, 21, 'Luisa', 'Domper Bescós', 'San Miguel', 13, '11 - 13', NULL, '2018-06-01 18:28:57', '2018-06-01 18:28:57'),
(2460, 7, 21, 25, 21, 'Pedro y Jesús', 'Ayarza Larroya', 'San Miguel', 13, '11 - 13, avisos a Barbastro', NULL, '2018-06-01 18:29:29', '2018-06-01 18:29:29'),
(2461, 7, 21, 25, 21, 'Victoriano', 'Pérez Martínez', 'San Miguel', 13, '11 - 13', NULL, '2018-06-01 18:29:57', '2018-06-01 18:29:57'),
(2462, 7, 21, 25, 21, 'Antonia', 'Pérez', 'San Miguel', 13, '11 - 13', NULL, '2018-06-01 18:30:27', '2018-06-01 18:30:27'),
(2463, 7, 21, 25, 22, 'José María', 'de la Cruz Blanch', 'San Miguel', 12, '', NULL, '2018-06-01 18:31:59', '2018-06-01 18:31:59'),
(2464, 7, 21, 25, 22, 'Hnos', 'Grau de la Cruz', 'San Miguel', 12, '', NULL, '2018-06-01 18:32:24', '2018-06-01 18:32:24'),
(2465, 7, 21, 25, 22, 'Lucía', 'de la Cruz Arnal', 'San Miguel', 12, '', NULL, '2018-06-01 18:32:58', '2018-06-01 18:32:58'),
(2466, 7, 21, 25, 22, 'Mª Cruz', 'Arnal Coscujuela', 'San Miguel', 12, '', NULL, '2018-06-01 18:33:24', '2018-06-13 16:11:30'),
(2467, 7, 21, 25, 23, 'Ramón', 'Cuello Domper', 'San Miguel', 10, '', NULL, '2018-06-01 18:33:56', '2018-06-01 18:33:56'),
(2468, 7, 21, 25, 23, 'Adoración', 'Garcés Cazcarra', 'San Miguel', 10, '', NULL, '2018-06-01 18:34:31', '2018-06-01 18:34:31'),
(2469, 7, 21, 25, 23, 'Mª Pilar', 'Cuello Garcés', 'San Miguel', 10, '', NULL, '2018-06-01 18:34:58', '2018-06-01 18:34:58'),
(2470, 7, 21, 25, 23, 'José Manuel', 'López Alonso', 'San Miguel', 10, '', NULL, '2018-06-01 18:35:39', '2018-06-01 18:35:39'),
(2471, 7, 21, 25, 24, '...', 'Trans Elca Azara slu', 'San Miguel', 8, '', NULL, '2018-06-01 18:36:22', '2018-06-01 18:36:22'),
(2472, 7, 21, 25, 24, 'Olga', 'Cuello Cuello', 'San Miguel', 8, '', NULL, '2018-06-01 18:36:46', '2018-06-01 18:36:46'),
(2473, 7, 21, 25, 24, 'José', 'Morales Cosculluela', 'San Miguel', 8, '', NULL, '2018-06-01 18:37:09', '2018-06-01 18:37:09'),
(2474, 7, 21, 25, 24, 'Elsa', 'Morales Cuello', 'San Miguel', 8, '', NULL, '2018-06-01 18:37:27', '2018-06-01 18:37:27'),
(2475, 7, 21, 25, 24, 'Felicidad', 'Cuello Carbón', 'San Miguel', 8, '', NULL, '2018-06-01 18:37:43', '2018-06-01 18:37:43'),
(2476, 7, 21, 25, 24, 'Gregorio', 'Cuello Viñuales', 'San Miguel', 8, '', NULL, '2018-06-01 18:38:21', '2018-06-01 18:38:21'),
(2477, 7, 21, 25, 25, 'Antonio', 'Sanvicente Domper', 'San Miguel', 6, '(18)', NULL, '2018-06-01 18:39:00', '2018-06-01 18:39:00'),
(2478, 7, 21, 25, 25, 'Emérita', 'Lanau Mazana', 'San Miguel', 6, '(18)', NULL, '2018-06-01 18:39:32', '2018-06-01 18:39:32'),
(2479, 7, 21, 25, 25, 'Virginia y Sonia', 'Sanvicente Lanau', 'San Miguel', 6, '(18)', NULL, '2018-06-01 18:40:22', '2018-06-01 18:40:22'),
(2480, 7, 21, 25, 26, 'Alfredo', 'Novales Mur', 'San Miguel', 5, '', NULL, '2018-06-01 18:41:08', '2018-06-01 18:41:08'),
(2481, 7, 21, 25, 26, 'Mª Pilar', 'Torrecilla Sanz', 'San Miguel', 5, '', NULL, '2018-06-01 18:41:36', '2018-06-01 18:41:36');
INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(2482, 7, 21, 25, 26, 'Andrés', 'Novales Torrecilla', 'San Miguel', 5, '', NULL, '2018-06-01 18:42:24', '2018-06-01 18:42:24'),
(2483, 7, 21, 25, 27, 'Ignacio', 'Pérez Galván', 'San Miguel', 4, '', NULL, '2018-06-01 18:42:48', '2018-06-01 18:42:48'),
(2484, 7, 21, 25, 27, 'Carmen', 'Pozo Pérez', 'San Miguel', 4, '', NULL, '2018-06-01 18:43:14', '2018-06-01 18:43:14'),
(2485, 7, 21, 25, 28, 'José', 'Rodrigo Puente', 'San Miguel', 2, '', NULL, '2018-06-01 18:43:36', '2018-06-01 18:43:36'),
(2486, 7, 21, 25, 28, 'Salomé', 'Buil Rubiella', 'San Miguel', 2, '', NULL, '2018-06-01 18:43:58', '2018-06-01 18:43:58'),
(2487, 7, 21, 25, 28, 'Raúl y Daniel', 'Rodrigo Buil', 'San Miguel', 2, '', NULL, '2018-06-01 18:44:19', '2018-06-01 18:44:19'),
(2488, 7, 21, 25, 29, 'Antonio', 'Romero', 'Plaza Mayor', 1, '', NULL, '2018-06-01 18:44:46', '2018-06-01 18:44:46'),
(2489, 7, 21, 25, 30, 'Pablo', 'Lisa Cuello', 'Plaza Mayor', 3, '', NULL, '2018-06-01 18:45:19', '2018-06-01 18:45:19'),
(2490, 7, 21, 25, 30, 'Mª Teresa', 'Fiestas Peruga', 'Plaza Mayor', 3, '', NULL, '2018-06-01 18:45:45', '2018-06-01 18:45:45'),
(2491, 7, 21, 25, 30, 'Pablo y Cristina', 'Lisa Fiestas', 'Plaza Mayor', 3, '', NULL, '2018-06-01 18:46:08', '2018-06-01 18:46:51'),
(2492, 7, 21, 25, 30, 'Olga', 'Mora Ródenas', 'Plaza Mayor', 3, '', NULL, '2018-06-01 18:47:43', '2018-06-01 18:47:43'),
(2493, 7, 21, 25, 30, '...', 'Explotaciones Lisa-Fiestas S.C', 'Plaza Mayor', 3, '', NULL, '2018-06-01 18:48:17', '2018-06-01 18:48:17'),
(2494, 7, 21, 25, 31, '...', 'Construcciones Innovial', 'Plaza Mayor', 5, '', NULL, '2018-06-01 18:48:40', '2018-06-01 18:48:40'),
(2495, 7, 21, 25, 31, 'Quintana Pilar', 'Novales Mur', 'Plaza Mayor', 5, '', NULL, '2018-06-01 18:49:14', '2018-06-01 18:49:14'),
(2496, 7, 21, 25, 31, 'Victor', 'Novales Felices', 'Plaza Mayor', 5, '', NULL, '2018-06-01 18:49:37', '2018-06-01 18:49:37'),
(2497, 7, 21, 25, 31, 'Ramón', 'Carpi Arnal', 'Plaza Mayor', 5, '', NULL, '2018-06-01 18:49:58', '2018-06-01 18:49:58'),
(2498, 7, 21, 25, 31, 'Pilar, Cándido', 'Novales Mur', 'Plaza Mayor', 5, '', NULL, '2018-06-02 09:38:22', '2018-06-02 09:38:22'),
(2499, 7, 21, 25, 31, 'Hnos', 'Carpi Novales', 'Plaza Mayor', 5, '', NULL, '2018-06-02 09:38:37', '2018-06-02 09:38:37'),
(2500, 7, 21, 25, 32, 'Conrado', 'Barón Calvo', 'Alta', 1, '', NULL, '2018-06-02 09:39:17', '2018-06-02 09:39:17'),
(2501, 7, 21, 25, 32, 'Elena', 'Lozano Jiménez', 'Alta', 1, '', NULL, '2018-06-02 09:39:40', '2018-06-02 09:39:40'),
(2502, 7, 21, 25, 33, 'José', 'Campodarve Campodarve', 'Alta', 3, '', NULL, '2018-06-02 09:40:12', '2018-06-02 09:40:12'),
(2503, 7, 21, 25, 33, 'Felipe', 'Campodarve Esqués', 'Alta', 3, '', NULL, '2018-06-02 09:40:43', '2018-06-02 09:40:43'),
(2504, 7, 21, 25, 33, 'Emilia', 'Esqués', 'Alta', 3, '', NULL, '2018-06-02 09:40:58', '2018-06-02 09:40:58'),
(2505, 7, 21, 25, 34, 'Hnos, Pablo J.', 'Viñuales Castillón', 'Medio', 18, '', NULL, '2018-06-02 09:41:57', '2018-06-02 09:41:57'),
(2506, 7, 21, 25, 34, 'Mercedes', 'Castillón Castillón', 'Medio', 18, '', NULL, '2018-06-02 09:42:17', '2018-06-02 09:42:17'),
(2507, 7, 21, 25, 34, 'Ramón', 'Castillón Vilas', 'Medio', 18, '', NULL, '2018-06-02 09:42:37', '2018-06-02 09:42:37'),
(2508, 7, 21, 25, 35, 'Antonio', 'Villacampa Campodarve', 'Alta', 16, '', NULL, '2018-06-02 09:43:20', '2018-06-02 09:43:20'),
(2509, 7, 21, 25, 35, 'Antonio y Eduardo', 'Villacampa Rubiella', 'Medio', 16, '', NULL, '2018-06-02 09:44:06', '2018-06-02 09:44:06'),
(2510, 7, 21, 25, 36, 'Antonio', 'Lailla Cuello', 'Medio', 9, '', NULL, '2018-06-02 09:44:39', '2018-06-02 09:44:39'),
(2511, 7, 21, 25, 36, 'Mª Ángeles', 'Viñuales Novales', 'Medio', 9, '', NULL, '2018-06-02 09:45:48', '2018-06-02 09:45:48'),
(2512, 7, 21, 25, 36, 'Antonio', 'Lailla Viñuales', 'Medio', 9, '', NULL, '2018-06-02 09:46:20', '2018-06-02 09:46:20'),
(2513, 7, 21, 25, 37, 'Pintado', 'Jiménez', 'Nueva', 3, 'Certificados a Barbastro', NULL, '2018-06-02 09:47:42', '2018-06-02 09:47:42'),
(2514, 7, 21, 25, 38, 'Ángel', 'Vistué Olivar', 'Nueva', 2, '', NULL, '2018-06-02 09:48:21', '2018-06-02 09:48:21'),
(2515, 7, 21, 25, 38, 'Ascensión', 'Tornil Ballabriga', 'Nueva', 2, '', NULL, '2018-06-02 09:48:45', '2018-06-02 09:48:45'),
(2516, 7, 21, 25, 38, 'Beatriz y Lucia', 'Vistúe Tornil', 'Nueva', 2, '', NULL, '2018-06-02 09:49:28', '2018-06-02 09:49:28'),
(2517, 7, 21, 25, 39, 'Manuel J', 'Pablo Coronas', 'Medio', 7, '', NULL, '2018-06-02 09:50:09', '2018-06-02 09:50:09'),
(2518, 7, 21, 25, 39, 'Isabel', 'Plana Subías', 'Medio', 7, '', NULL, '2018-06-02 09:50:28', '2018-06-02 09:50:28'),
(2519, 7, 21, 25, 39, 'Mª José', 'Pablo Plana', 'Medio', 7, '', NULL, '2018-06-02 09:50:54', '2018-06-02 09:50:54'),
(2520, 7, 21, 25, 40, 'Fco Javier', 'Domper Gil', 'Medio', 12, '', NULL, '2018-06-02 09:51:22', '2018-06-02 09:51:22'),
(2521, 7, 21, 25, 41, 'José', 'Lisa Cuello', 'Medio', 10, '', NULL, '2018-06-02 09:53:18', '2018-06-02 09:53:18'),
(2522, 7, 21, 25, 41, 'Alejandro', 'Pueyo Sallán', 'Medio', 10, '', NULL, '2018-06-02 09:53:49', '2018-06-02 09:53:49'),
(2523, 7, 21, 25, 41, 'Ana María y Elena', 'Cuello Mairal', 'Medio', 10, '', NULL, '2018-06-02 09:54:28', '2018-06-02 09:54:28'),
(2524, 7, 21, 25, 42, 'Arturo', 'Loncán Cebollero', 'Pz Ayuntamiento', 2, '', NULL, '2018-06-02 09:55:10', '2018-06-02 09:55:10'),
(2525, 7, 21, 25, 42, 'Mª Pilar', 'Oliveros Leris', 'Pz Ayuntamiento', 2, '', NULL, '2018-06-02 09:56:03', '2018-06-02 09:56:03'),
(2526, 7, 21, 25, 42, 'Ana', 'Loncán Oliveros', 'Pz Ayuntamiento', 2, '', NULL, '2018-06-02 09:56:48', '2018-06-02 09:56:48'),
(2527, 7, 21, 25, 43, '...', 'Ayuntamiento', 'Pz Ayuntamiento', 0, 'Buzón', NULL, '2018-06-02 09:57:14', '2018-06-02 09:57:14'),
(2528, 7, 21, 25, 44, 'Narciso y Ana Pilar', 'Domper Azlor', 'Medio', 6, '', NULL, '2018-06-02 09:58:01', '2018-06-02 09:58:01'),
(2529, 7, 21, 25, 45, 'Marc', 'Antoine Colin', 'Medio', 3, '', NULL, '2018-06-02 09:58:40', '2018-06-02 09:58:40'),
(2530, 7, 21, 25, 46, 'Joaquin', 'Barón Foncillas', 'Medio', 4, '', NULL, '2018-06-02 09:59:24', '2018-06-02 09:59:24'),
(2531, 7, 21, 25, 46, 'Josefina', 'Calvo Cuello', 'Medio', 4, '', NULL, '2018-06-02 10:00:05', '2018-06-02 10:00:05'),
(2532, 7, 21, 25, 47, 'Concepción', 'Fernández Cabello', 'Medio', 2, '', NULL, '2018-06-02 10:00:38', '2018-06-02 10:00:38'),
(2533, 7, 21, 25, 47, 'Amador', 'García Fernández', 'Medio', 2, '', NULL, '2018-06-02 10:01:12', '2018-06-02 10:01:12'),
(2534, 7, 21, 25, 48, 'Antonio José y Carmen', 'Rufas Novales', 'Baja', 3, '', NULL, '2018-06-02 10:01:53', '2018-06-02 13:34:58'),
(2535, 7, 21, 25, 48, 'Esther', 'Pardo Aguilar', 'Baja', 3, '', NULL, '2018-06-02 10:02:26', '2018-06-02 10:02:26'),
(2536, 7, 21, 25, 48, 'Hugo', 'Rufas Pardo', 'Baja', 3, '', NULL, '2018-06-02 10:03:03', '2018-06-02 10:03:03'),
(2537, 7, 21, 25, 48, 'Antonio', 'Rufas Otín', 'Baja', 3, '', NULL, '2018-06-02 10:03:24', '2018-06-02 10:03:24'),
(2538, 7, 21, 25, 48, 'Carmen', 'Novales Subías', 'Baja', 3, '', NULL, '2018-06-02 10:03:48', '2018-06-02 10:03:48'),
(2540, 7, 21, 25, 49, 'José María', 'Pueyo Muy', 'Baja', 5, '5 - 7, echar en el 7', NULL, '2018-06-02 13:38:50', '2018-06-02 13:38:50'),
(2541, 7, 21, 25, 49, 'Felisa', 'Mur Novales', 'Baja', 5, '5 - 7, echar en el 7', NULL, '2018-06-02 13:39:31', '2018-06-02 13:39:31'),
(2542, 7, 21, 25, 50, 'Fco', 'Palaín Arasanz', 'Baja', 9, '', NULL, '2018-06-02 13:40:00', '2018-06-02 13:40:00'),
(2543, 7, 21, 25, 51, 'José', 'Ballabriga Laborda', 'Baja', 11, '', NULL, '2018-06-02 13:40:31', '2018-06-02 13:40:31'),
(2544, 7, 21, 25, 51, 'Pilar', 'Arasanz Colungo', 'Baja', 11, '', NULL, '2018-06-02 13:41:07', '2018-06-02 13:41:07'),
(2545, 7, 21, 25, 51, 'José María y Alfredo', 'Ballabriga Arasanz', 'Baja', 11, '', NULL, '2018-06-02 13:41:42', '2018-06-02 13:41:42'),
(2546, 7, 21, 25, 52, 'Antonio y Antonia', 'Campodarve Lisa', 'Baja', 13, '', NULL, '2018-06-02 13:42:17', '2018-06-02 13:42:17'),
(2547, 7, 21, 25, 52, 'Mª Josefa', 'Cosculluela Torres', 'Baja', 13, '', NULL, '2018-06-02 13:42:42', '2018-06-02 13:42:42'),
(2548, 7, 21, 25, 52, 'Alicia y Hnos', 'Campodarve Cosculluela', 'Baja', 13, '', NULL, '2018-06-02 13:43:15', '2018-06-02 13:43:15'),
(2549, 7, 21, 25, 53, 'Felipe', 'Gamisel Arnal', 'Baja', 15, 'Buzón garaje', NULL, '2018-06-02 13:44:08', '2018-06-02 13:44:08'),
(2550, 7, 21, 25, 53, 'Félix Luis', 'Gamisel Latorre', 'Baja', 15, 'Buzón garaje', NULL, '2018-06-02 13:45:01', '2018-06-02 13:45:01'),
(2551, 7, 21, 25, 54, 'M. Ángel', 'Cuello Bernad', 'Baja', 14, 'Buzón garaje', NULL, '2018-06-02 13:45:53', '2018-06-02 13:45:53'),
(2552, 7, 21, 25, 54, 'María', 'Margalejo Domper', 'Baja', 14, 'Buzón garaje', NULL, '2018-06-02 13:46:20', '2018-06-02 13:46:20'),
(2553, 7, 21, 25, 54, 'M. Ángel', 'Cuello Margalejo', 'Baja', 14, 'Buzón garaje', NULL, '2018-06-02 13:47:21', '2018-06-02 13:47:21'),
(2554, 7, 21, 25, 55, 'Patrocinio', 'Riverola Zamora', 'Baja', 10, '', NULL, '2018-06-02 13:47:59', '2018-06-02 13:47:59'),
(2555, 7, 21, 25, 55, 'Carlos Miguel', 'Mur Villacampa', 'Baja', 8, '', NULL, '2018-06-02 13:49:04', '2018-06-02 13:49:04'),
(2556, 7, 21, 25, 56, 'Joaquin', 'Campodarve Rodellar', 'El aire', 1, '', NULL, '2018-06-02 13:49:47', '2018-06-02 13:49:47'),
(2557, 7, 21, 25, 56, 'Mª Esther ', 'Campodarve Bernad', 'El aire', 1, '', NULL, '2018-06-02 13:50:19', '2018-06-02 13:50:19'),
(2558, 7, 21, 25, 57, 'José y Antonio', 'Colungo Barón', 'El aire', 3, '', NULL, '2018-06-02 13:51:04', '2018-06-02 13:51:04'),
(2559, 7, 21, 25, 57, 'Julia', 'Herran Herraz', 'El aire', 3, '', NULL, '2018-06-02 13:51:30', '2018-06-02 13:51:30'),
(2560, 7, 21, 25, 57, 'Manolo', 'Colungo Herran', 'El aire', 3, '', NULL, '2018-06-02 13:52:00', '2018-06-02 13:52:00'),
(2561, 7, 21, 25, 58, 'María', 'Larroya Paúl', 'El aire', 4, '', NULL, '2018-06-02 13:53:24', '2018-06-02 13:53:24'),
(2562, 7, 21, 25, 58, 'Ramón', 'Martínez Tornil', 'El aire', 4, '', NULL, '2018-06-02 13:53:55', '2018-06-02 13:53:55'),
(2563, 7, 21, 25, 58, 'Jesús y José', 'Martínez Larroya', 'El aire', 4, '', NULL, '2018-06-02 13:54:27', '2018-06-02 13:54:27'),
(2564, 7, 21, 25, 59, 'Antonio', 'Cosculluela Torres', 'El aire', 6, '', NULL, '2018-06-02 13:54:58', '2018-06-02 13:54:58'),
(2565, 7, 21, 25, 59, 'Mª Carmen ', 'Barón Villacampa', 'El aire', 6, '', NULL, '2018-06-02 13:55:32', '2018-06-02 13:56:59'),
(2566, 7, 21, 25, 59, 'Hnas', 'Cosculluela Barón', 'El aire', 6, '', NULL, '2018-06-02 13:56:16', '2018-06-02 13:56:16'),
(2567, 7, 21, 25, 59, 'Josefina', 'Torres Banzo', 'El aire', 6, '', NULL, '2018-06-02 13:59:27', '2018-06-02 13:59:27'),
(2568, 7, 21, 25, 60, '...', 'Forsbach-Moreau', 'El aire', 8, '', NULL, '2018-06-02 14:00:03', '2018-06-02 14:00:03'),
(2569, 7, 21, 25, 61, 'Mª Jesús', 'Cosculluela ', 'El aire', 7, 'Casa de piedra', NULL, '2018-06-02 14:00:59', '2018-06-02 14:00:59'),
(2570, 7, 21, 25, 61, '...', 'Herran', 'El aire', 7, 'Casa de piedra', NULL, '2018-06-02 14:01:25', '2018-06-02 14:01:25'),
(2571, 7, 21, 25, 62, 'Mª Luz', 'Domper Cuello', 'El aire', 9, '', NULL, '2018-06-02 14:02:05', '2018-06-02 14:02:05'),
(2572, 7, 21, 25, 62, 'Antonio', 'Fernández', 'El aire', 9, '', NULL, '2018-06-02 14:03:36', '2018-06-02 14:03:36'),
(2573, 7, 21, 25, 62, 'Sonia', 'Fernández Domper', 'El aire', 9, '', NULL, '2018-06-02 14:04:08', '2018-06-02 14:04:08'),
(2574, 7, 21, 25, 63, 'Ramón', 'Tornil Rodrigo', 'El aire', 10, '', NULL, '2018-06-02 14:04:47', '2018-06-02 14:04:47'),
(2575, 7, 21, 25, 64, 'Antonio', 'Tornil Bosque', 'Baja', 1, '', NULL, '2018-06-02 14:05:50', '2018-06-02 14:05:50'),
(2576, 7, 21, 25, 64, 'Concepción', 'Ballabriga Laborda', 'Baja', 1, '', NULL, '2018-06-02 14:06:10', '2018-06-02 14:06:10'),
(2577, 7, 21, 25, 64, 'Conchita', 'Tornil Ballabriga', 'Baja', 1, '', NULL, '2018-06-02 14:06:33', '2018-06-02 14:06:33'),
(2578, 7, 21, 25, 64, 'Miguel Ángel', 'Bernad Sallán', 'Baja', 1, '', NULL, '2018-06-02 14:07:26', '2018-06-02 14:07:26'),
(2579, 7, 21, 25, 65, 'José', 'Colungo Novales', 'Baja', 4, '', NULL, '2018-06-02 14:08:01', '2018-06-02 14:08:01'),
(2580, 7, 21, 25, 65, 'Engracia', 'Sampietro de Antonio', 'Baja', 4, '', NULL, '2018-06-02 14:08:33', '2018-06-02 14:08:33'),
(2581, 7, 21, 25, 66, 'Carmelo', 'Arnal Coscujuela', 'Baja', 2, '', NULL, '2018-06-02 14:09:18', '2018-06-13 16:11:04'),
(2582, 7, 21, 25, 66, 'Ana María', 'Sanvicente Domper', 'Baja', 2, '', NULL, '2018-06-02 14:12:45', '2018-06-02 14:12:45'),
(2583, 7, 21, 25, 66, 'Mª Carmen', 'Arnal Sanvicente', 'Baja', 2, '', NULL, '2018-06-02 14:13:14', '2018-06-02 14:13:14'),
(2584, 7, 21, 25, 67, 'Alberto', 'Cuello Loncan', 'Barrio', 2, 'dejar en taller ACL Peraltilla', NULL, '2018-06-02 14:16:33', '2018-06-02 14:16:33'),
(2585, 7, 21, 25, 67, 'Maite', 'vitales Craver', 'Barrio', 2, 'dejar en taller ACL Peraltilla', NULL, '2018-06-02 14:17:07', '2018-06-02 14:17:07'),
(2586, 7, 21, 25, 68, 'Mariano', 'Rodrigo Bosque', 'Barrio', 4, 'casa Periz', NULL, '2018-06-02 14:17:44', '2018-06-02 14:17:44'),
(2587, 7, 21, 25, 69, 'Matilde', 'Arnal Barón', 'Barrio', 8, '', NULL, '2018-06-02 14:18:42', '2018-06-02 14:18:42'),
(2588, 7, 21, 25, 70, 'Melchor', 'Arasanz Colungo', 'Barrio', 10, '', NULL, '2018-06-02 14:19:10', '2018-06-02 14:19:10'),
(2589, 7, 21, 25, 70, 'Josefina', 'Arnal Coscujuela', 'Barrio', 10, '', NULL, '2018-06-02 14:19:31', '2018-06-13 16:11:54'),
(2590, 7, 21, 25, 71, 'Jesús', 'Domper Gracia', 'Barrio', 12, '', NULL, '2018-06-02 14:19:57', '2018-06-02 14:19:57'),
(2591, 7, 21, 25, 71, 'Antonia', 'Vidal Campo', 'Barrio', 12, '', NULL, '2018-06-02 14:20:20', '2018-06-02 14:20:20'),
(2592, 7, 21, 25, 71, 'Hnas', 'Domper Vidal', 'Barrio', 12, '', NULL, '2018-06-02 14:20:52', '2018-06-02 14:20:52'),
(2593, 7, 21, 25, 72, 'Luís', 'Gamisel Arnal', 'Barrio', 14, '', NULL, '2018-06-02 14:21:17', '2018-06-02 14:21:17'),
(2594, 7, 21, 25, 72, 'Elena y Rosa', 'Gamisel Mur', 'Barrio', 14, '', NULL, '2018-06-02 14:21:45', '2018-06-02 14:21:45'),
(2595, 7, 21, 25, 72, 'Domingo', 'Montaner Acosta', 'Barrio', 14, '', NULL, '2018-06-02 14:22:18', '2018-06-02 14:22:18'),
(2596, 7, 21, 25, 73, 'Carmen', 'Villacampa Arnal', 'Barrio', 3, '', NULL, '2018-06-02 14:22:54', '2018-06-02 14:22:54'),
(2597, 7, 21, 25, 74, 'Gregorio', 'Cuello Carbón', 'Escudero', 1, '', NULL, '2018-06-02 14:23:37', '2018-06-02 14:23:37'),
(2598, 7, 21, 25, 74, 'Agustín', 'Cuello Loncan', 'Escudero', 1, '', NULL, '2018-06-02 14:23:59', '2018-06-02 14:23:59'),
(2599, 7, 21, 25, 74, 'Josefina', 'Loncán Cebollero', 'Escudero', 1, '', NULL, '2018-06-02 14:24:59', '2018-06-02 14:24:59'),
(2600, 7, 21, 25, 74, 'Mª Mar', 'Ferrando Jordan', 'Escudero', 1, '', NULL, '2018-06-02 14:25:21', '2018-06-02 14:25:21'),
(2601, 7, 21, 25, 74, 'Andrea y Miguel', 'Cuello Ferrando', 'Escudero', 1, '', NULL, '2018-06-02 14:25:40', '2018-06-02 14:25:40'),
(2602, 7, 21, 25, 75, 'Josefina y Ramón', 'Laborda Azara', 'Escudero', 2, '', NULL, '2018-06-02 14:26:15', '2018-06-02 14:26:15'),
(2603, 7, 21, 25, 76, 'Ramón', 'Tornil Bosque', 'Escudero', 3, 'Casa Panadería', NULL, '2018-06-02 14:27:32', '2018-06-02 14:27:32'),
(2604, 7, 21, 25, 76, 'Antonia', 'Mata Subías', 'Escudero', 3, 'Casa Panadería', NULL, '2018-06-02 14:28:04', '2018-06-02 14:28:04'),
(2605, 7, 21, 25, 76, 'Ramón', 'Tornil Mata', 'Escudero', 3, 'Casa Panadería', NULL, '2018-06-02 14:28:26', '2018-06-02 14:28:26'),
(2606, 7, 21, 25, 76, 'Mª Carmen', 'Pasías Revilla', 'Escudero', 3, 'Casa Panadería', NULL, '2018-06-02 14:28:51', '2018-06-02 14:28:51'),
(2607, 7, 21, 25, 77, 'Pepita', 'Palaín Arasanz', 'El Horzal', 0, 'Camino Azlor', NULL, '2018-06-02 14:30:23', '2018-06-02 14:30:23'),
(2608, 7, 21, 25, 77, 'Sebastían', 'Díaz Rius', 'El Horzal', 0, 'Camino Azlor', NULL, '2018-06-02 14:30:54', '2018-06-02 14:30:54'),
(2609, 7, 21, 25, 78, 'Concepción y Mª José', 'Arnal Grasa', 'El Horzal', 4, '', NULL, '2018-06-02 14:31:24', '2018-06-02 14:31:24'),
(2610, 7, 21, 25, 79, 'José', 'Domper Sierra', 'El Horzal', 7, '', NULL, '2018-06-02 14:31:51', '2018-06-02 14:31:51'),
(2611, 7, 21, 25, 79, 'Ramón', 'Domper Bescós', 'El Horzal', 7, '', NULL, '2018-06-02 14:32:54', '2018-06-02 14:32:54'),
(2612, 7, 21, 25, 79, 'Benigna Josefa', 'Domper Bescós', 'El Horzal', 7, '', NULL, '2018-06-02 14:33:16', '2018-06-02 14:33:16'),
(2613, 7, 21, 25, 79, 'Carmen Pascuala', 'Sin Casas', 'El Horzal', 7, '', NULL, '2018-06-02 14:34:03', '2018-06-02 14:34:03'),
(2614, 7, 21, 25, 79, 'Jorge y María', 'Domper Sin', 'El Horzal', 7, '', NULL, '2018-06-02 14:34:31', '2018-06-02 14:34:31'),
(2615, 7, 21, 25, 80, 'Miguel y Mª Teresa', 'Barón Puertolas', 'El Horzal', 6, 'Dejar en Calvario 10', NULL, '2018-06-02 14:35:06', '2018-06-02 14:35:06'),
(2616, 7, 21, 25, 81, 'Hermenegildo', 'Cuello Mairal', 'Afueras', 0, 'Casa Perico', NULL, '2018-06-02 14:35:43', '2018-06-02 14:35:43'),
(2617, 7, 21, 25, 81, 'Mª Pilar', 'Domper Cuello', 'Afueras', 0, 'Casa Perico', NULL, '2018-06-02 14:36:08', '2018-06-02 14:36:08'),
(2618, 7, 21, 25, 81, 'Sergio y Judith', 'Cuello Domper', 'Afueras', 0, 'Casa Perico', NULL, '2018-06-02 14:36:37', '2018-06-02 14:36:37'),
(2619, 7, 21, 27, 1, 'Santiago', 'Franco Gistau', 'Santiago Foncillas', 0, 'Primer Chalet', NULL, '2018-06-03 15:52:18', '2018-06-03 15:52:18'),
(2620, 7, 21, 27, 1, 'Rosaura', 'Nieto', 'Santiago Foncillas', 0, 'Primer chalet de la carretera', NULL, '2018-06-03 15:53:03', '2018-06-03 15:53:03'),
(2621, 7, 21, 27, 1, 'Ventilian', 'Bubosqui', 'Santiago Foncillas', 0, 'Primer chalet de la carretera', NULL, '2018-06-03 15:53:30', '2018-06-03 15:53:30'),
(2622, 7, 21, 27, 1, 'Paloma, Toño y Javi', 'Franco', 'Santiago Foncillas', 0, 'Primer chalet de la carretera', NULL, '2018-06-03 15:54:35', '2018-06-03 15:54:35'),
(2623, 7, 21, 27, 1, 'Margarita', 'Todorova Dodushka', 'Santiago Foncillas', 0, 'Primer chalet de la carretera', NULL, '2018-06-03 15:55:47', '2018-06-03 15:55:47'),
(2624, 7, 21, 27, 1, 'Ventsislav', 'Tsankov Bumbosvski', 'Santiago Foncillas', 0, 'Primer chalet de la carretera', NULL, '2018-06-03 15:56:20', '2018-06-03 15:56:20'),
(2625, 7, 21, 27, 2, '...', 'CRA', 'Santiago Foncillas', 0, 'Ampa Escuelas, Guardería Treviner', NULL, '2018-06-03 15:57:47', '2018-06-03 15:57:47'),
(2626, 7, 21, 27, 3, 'Pascual', 'Serrate Mendia', 'Santiago Foncillas', 0, 'Segundo chalet', NULL, '2018-06-03 15:59:23', '2018-06-03 15:59:23'),
(2627, 7, 21, 27, 3, 'Jorge', 'Sarrate', 'Santiago Foncillas', 0, 'Segundo chalet', NULL, '2018-06-03 15:59:42', '2018-06-03 15:59:42'),
(2628, 7, 21, 27, 4, 'Eloy', 'Almazan', 'Santiago Foncillas', 0, 'Casa Marilena', NULL, '2018-06-03 16:00:35', '2018-06-03 16:00:35'),
(2629, 7, 21, 27, 4, 'Mª Elena', 'Almazan Cortés', 'Santiago Foncillas', 0, 'Casa Marilena', NULL, '2018-06-03 16:02:34', '2018-06-03 16:02:34'),
(2630, 7, 21, 27, 5, '...', 'Gouuorix', 'Santiago Foncillas', 0, 'Guías', NULL, '2018-06-03 16:03:06', '2018-06-03 16:03:06'),
(2631, 7, 21, 27, 5, 'Ignacio', 'Segorbe Pareja', 'Santiago Foncillas', 0, 'Guías', NULL, '2018-06-03 16:03:39', '2018-06-03 16:03:39'),
(2632, 7, 21, 27, 6, 'Fernando', 'Lainez Vazquez', 'Santiago Foncillas', 0, 'LLevar a primer chalet de la carretera', NULL, '2018-06-03 16:04:48', '2018-06-03 16:04:48'),
(2633, 7, 21, 27, 6, 'Esperanza ', 'Gómez Rico', 'Santiago Foncillas', 0, 'LLevar a primer chalet de la carretera', NULL, '2018-06-03 16:05:21', '2018-06-03 16:05:21'),
(2634, 7, 21, 27, 7, '...', 'Quesos Radiquero', 'Santiago Foncillas', 0, '', NULL, '2018-06-03 16:05:49', '2018-06-03 16:05:49'),
(2635, 7, 21, 27, 7, '...', 'Viñedos Sevil S.A', 'Santiago Foncillas', 0, '', NULL, '2018-06-03 16:06:51', '2018-06-03 16:06:51'),
(2636, 7, 21, 27, 8, 'Oscar', 'Gil Dominguez', 'Santiago Foncillas', 0, 'Último chalet carretera, certificados a Jesús BC7', NULL, '2018-06-03 16:07:55', '2018-06-03 16:07:55'),
(2637, 7, 21, 27, 8, 'Teresa', 'Andreu Mandango', 'Santiago Foncillas', 0, 'Último chalet carretera, certificados a Jesús BC7', NULL, '2018-06-03 16:08:44', '2018-06-03 16:08:44'),
(2638, 7, 21, 27, 8, '...', 'Multiplicación Huerta de Vero S.C', 'Santiago Foncillas', 0, 'Último chalet carretera, certificados a Jesús BC7', NULL, '2018-06-03 16:09:23', '2018-06-03 16:09:23'),
(2639, 7, 21, 27, 9, '...', 'Abuelas de Sevil', 'Carretera Alberuela', 0, 'Tienda', NULL, '2018-06-03 16:10:19', '2018-06-03 16:10:19'),
(2640, 7, 21, 27, 9, '...', 'Mansion Rodriguez S.C', 'Carretera Alberuela', 0, 'Tienda', NULL, '2018-06-03 16:10:59', '2018-06-03 16:10:59'),
(2641, 7, 21, 27, 9, 'Fco', 'Rodriguez Cano', 'Carretera Alberuela', 0, 'Tienda', NULL, '2018-06-03 16:11:29', '2018-06-03 16:11:29'),
(2642, 7, 21, 27, 9, 'Mª Elena o Marilen', 'Mansion', 'Carretera Alberuela', 0, 'Tienda', NULL, '2018-06-03 16:11:59', '2018-06-03 16:11:59'),
(2643, 7, 21, 27, 10, 'José', 'Capablo Felíces', 'Carretera Alberuela', 0, '', NULL, '2018-06-03 16:13:14', '2018-06-03 16:13:14'),
(2644, 7, 21, 27, 11, 'José', 'Vidal Grasa', 'Carretera Alberuela', 0, 'Buzón verde, llevar a Casa Vidal en c/Baja 6, (17)', NULL, '2018-06-03 16:15:04', '2018-06-03 16:15:04'),
(2645, 7, 21, 27, 11, 'Fernando', 'Orsola', 'Carretera Alberuela', 0, 'Buzón verde, llevar a Casa Vidal en c/Baja 6, (17)', NULL, '2018-06-03 16:15:31', '2018-06-03 16:15:31'),
(2646, 7, 21, 27, 11, 'Mª Ángeles', 'Vidal', 'Carretera Alberuela', 0, 'Buzón verde, llevar a Casa Vidal en c/Baja 6, (17)', NULL, '2018-06-03 16:15:56', '2018-06-03 16:15:56'),
(2647, 7, 21, 27, 12, 'Santiago', 'Tornes Calvo', 'Pozallón', 5, 'Comunidad, Paquetes a Pozallón 7', NULL, '2018-06-03 16:18:18', '2018-06-03 16:18:18'),
(2648, 7, 21, 27, 12, 'Noelia', 'Pérez Ibañez', 'Pozallón', 5, 'Comunidad, Paquetes a Pozallón 7', NULL, '2018-06-03 16:18:49', '2018-06-03 16:18:49'),
(2649, 7, 21, 27, 12, 'Leo', 'Tornes Pérez', 'Pozallón', 5, 'Comunidad, Paquetes a Pozallón 7', NULL, '2018-06-03 16:19:19', '2018-06-03 16:19:19'),
(2650, 7, 21, 27, 12, 'Santiago, Fco', 'Naya Zamora', 'Pozallón', 7, 'Traer c/Saco 4', NULL, '2018-06-03 16:21:44', '2018-06-03 16:21:44'),
(2651, 7, 21, 27, 12, 'Josefina y Mª José', 'Cortés Viñuales', 'Pozallón', 7, 'Traer c/Saco 4', NULL, '2018-06-03 16:22:30', '2018-06-13 16:58:19'),
(2652, 7, 21, 27, 12, 'David y María', 'Naya Cortés', 'Pozallón', 7, 'Traer c/Saco 4', NULL, '2018-06-03 16:23:00', '2018-06-03 16:23:00'),
(2653, 7, 21, 27, 12, 'Óscar ', 'Altemir Pardo', 'Pozallón', 9, '', NULL, '2018-06-03 16:24:17', '2018-06-03 16:24:17'),
(2654, 7, 21, 27, 12, 'Belén', 'Bayo Espinosa', 'Pozallón', 9, '', NULL, '2018-06-03 16:24:37', '2018-06-03 16:24:37'),
(2655, 7, 21, 27, 12, 'Carmen', 'Sampietro ', 'Pozallón', 11, '', NULL, '2018-06-03 16:24:55', '2018-06-03 16:24:55'),
(2656, 7, 21, 27, 12, 'Alex', 'Molina García', 'Pozallón', 11, '', NULL, '2018-06-03 16:25:28', '2018-06-03 16:25:28'),
(2657, 7, 21, 27, 12, '...', 'Bodegas Alodia', 'Pozallón', 13, 'Llevar a casa Labata en Nueva 3', NULL, '2018-06-03 16:26:12', '2018-06-03 16:26:12'),
(2658, 7, 21, 27, 12, 'Sergio', 'Labata Banzo', 'Pozallón', 13, 'Llevar a casa Labata en Nueva 3', NULL, '2018-06-03 16:26:32', '2018-06-03 16:26:32'),
(2659, 7, 21, 27, 12, 'Beatriz ', 'Martínez Fernández', 'Pozallón', 13, 'Llevar a casa Labata en Nueva 3', NULL, '2018-06-03 16:27:11', '2018-06-03 16:27:11'),
(2660, 7, 21, 27, 12, 'Pablo y Martín', 'Labata Martínez', 'Pozallón', 13, 'Llevar a casa Labata en Nueva 3', NULL, '2018-06-03 16:27:37', '2018-06-03 16:27:37'),
(2661, 7, 21, 27, 12, 'Pau', 'Roset Ventura', 'Pozallón', 15, 'certificados a Jesús BC7', NULL, '2018-06-03 16:28:46', '2018-06-03 16:28:46'),
(2662, 7, 21, 27, 12, 'Teresa', 'Vilas Martínez', 'Pozallón', 15, 'certificados a Jesús BC7', NULL, '2018-06-03 16:29:26', '2018-06-03 16:29:26'),
(2663, 7, 21, 27, 71, 'Mª Jesús', 'Viñuales', 'Las Eras', 0, '', NULL, '2018-06-03 16:38:11', '2018-06-03 16:38:11'),
(2664, 7, 21, 27, 71, 'Mariano', 'Albajar', 'Las Eras', 0, 'Chalet 1, llevar a (81)', NULL, '2018-06-03 16:39:18', '2018-06-03 16:39:18'),
(2665, 7, 21, 27, 72, 'Mercedes', 'Miguel', 'Las Eras', 0, 'Chalet 2, llevar a (81)', NULL, '2018-06-03 16:40:04', '2018-06-03 16:40:04'),
(2666, 7, 21, 27, 15, 'José', 'Pardina Sarvisé', 'Baja', 0, '1 izquierda', NULL, '2018-06-03 16:41:20', '2018-06-03 16:41:20'),
(2667, 7, 21, 27, 15, 'Mª Josefa', 'Ayerbe Duran', 'Baja', 0, '1 izquierda', NULL, '2018-06-03 16:41:55', '2018-06-03 16:41:55'),
(2668, 7, 21, 27, 15, 'Jesús', 'Espluga Sampietro', 'Baja', 0, '1 izquierda', NULL, '2018-06-03 16:42:46', '2018-06-03 16:42:46'),
(2669, 7, 21, 27, 16, 'Alfredo', 'Suarez Suarez', 'Baja', 0, '2 izquierda', NULL, '2018-06-03 16:43:24', '2018-06-03 16:43:24'),
(2670, 7, 21, 27, 16, 'Pilar', 'Larrosa Gistau', 'Baja', 0, '2 izquierda', NULL, '2018-06-03 16:43:48', '2018-06-03 16:43:48'),
(2671, 7, 21, 27, 16, 'Mariano', 'Almendrote', 'Baja', 0, '2 izquierda', NULL, '2018-06-03 16:44:16', '2018-06-03 16:44:16'),
(2672, 7, 21, 27, 16, 'Antonia', 'Gistau Barón', 'Baja', 0, '2 izquierda', NULL, '2018-06-03 16:44:37', '2018-06-03 16:44:37'),
(2673, 7, 21, 27, 17, 'Gregorio y Emilia', 'Vidal Grasa', 'Baja', 6, 'Casa Vidal', NULL, '2018-06-03 16:46:25', '2018-06-03 16:46:25'),
(2674, 7, 21, 27, 17, 'Mª Cruz', 'Calvo Vidal', 'Baja', 6, 'Casa Vidal', NULL, '2018-06-03 16:47:06', '2018-06-03 16:47:06'),
(2675, 7, 21, 27, 17, 'César y Santiago', 'Tornes Calvo', 'Baja', 6, 'Casa Vidal', NULL, '2018-06-03 16:47:42', '2018-06-03 16:47:42'),
(2676, 7, 21, 27, 17, 'Santiago', 'Tornes Vidal', 'Baja', 6, 'Casa Vidal', NULL, '2018-06-03 16:48:08', '2018-06-03 16:48:08'),
(2677, 7, 21, 27, 17, '...', 'Presidente Riegos Isuela', 'Baja', 6, 'Casa Vidal', NULL, '2018-06-03 16:48:41', '2018-06-03 16:48:41'),
(2678, 7, 21, 27, 18, 'Andrés y Antonio', 'Mata Zamora', 'Baja', 9, '', NULL, '2018-06-03 16:50:11', '2018-06-03 16:50:11'),
(2679, 7, 21, 27, 18, 'Josefina', 'Román Meri', 'Baja', 9, '', NULL, '2018-06-03 16:50:39', '2018-06-03 16:50:39'),
(2680, 7, 21, 27, 18, 'Mª José', 'Mata Román', 'Baja', 9, '', NULL, '2018-06-03 16:51:21', '2018-06-03 16:51:21'),
(2681, 7, 21, 27, 18, 'Marcos', 'Garcés Mata', 'Baja', 9, '', NULL, '2018-06-03 16:51:59', '2018-06-03 16:51:59'),
(2682, 7, 21, 27, 19, 'Miguel', 'Ballarín', 'Baja', 4, 'Final calle puerta vieja, 1', NULL, '2018-06-03 16:53:49', '2018-06-03 16:53:49'),
(2683, 7, 21, 27, 19, 'Manuel', 'Cortés Albajar', 'Baja', 4, 'Final calle puerta vieja, 1', NULL, '2018-06-03 16:54:27', '2018-06-03 16:54:27'),
(2684, 7, 21, 27, 19, 'Mariano y José Luís', 'Vidal Cortés', 'Baja', 4, 'Final calle puerta vieja, 2', NULL, '2018-06-03 16:55:14', '2018-06-03 16:55:14'),
(2685, 7, 21, 27, 19, 'Mariano', 'Vidal Grasa', 'Baja', 4, 'Final calle puerta vieja, 2', NULL, '2018-06-03 16:55:41', '2018-06-03 16:55:41'),
(2686, 7, 21, 27, 19, 'María', 'Cortés Albajar', 'Baja', 4, 'Final calle puerta vieja, 2', NULL, '2018-06-03 16:56:30', '2018-06-03 16:56:30'),
(2687, 7, 21, 27, 19, 'Pilar', 'Altemir Carruesco', 'Baja', 4, 'Final calle puerta vieja, 2', NULL, '2018-06-03 16:57:15', '2018-06-03 16:57:15'),
(2688, 7, 21, 27, 19, 'Berta y Celia ', 'Vidal Altemir', 'Baja', 4, 'Final calle puerta vieja, 2', NULL, '2018-06-03 16:57:39', '2018-06-03 16:57:39'),
(2689, 7, 21, 27, 19, 'Eva', 'Vidal', 'Baja', 4, 'Llevar a c/Medio 25, (106)', NULL, '2018-06-03 16:59:01', '2018-06-03 16:59:01'),
(2690, 7, 21, 27, 20, 'Alegría', 'Casasús Mata', 'Baja', 11, 'llevar a baja 12', NULL, '2018-06-03 17:02:21', '2018-06-03 17:02:21'),
(2691, 7, 21, 27, 20, 'Alegría', 'Foncillas Casasús', 'Baja', 11, 'llevar a baja 12', NULL, '2018-06-03 17:02:58', '2018-06-03 17:02:58'),
(2692, 7, 21, 27, 21, 'Luís', 'Mostolaz Pérez', 'Baja', 12, '', NULL, '2018-06-03 17:04:29', '2018-06-03 17:04:29'),
(2693, 7, 21, 27, 21, 'Pilar', 'Cereza Palacio', 'Baja', 12, '', NULL, '2018-06-03 17:05:00', '2018-06-03 17:05:00'),
(2694, 7, 21, 27, 21, 'Mª Antonia', 'Cosculluela Bergua', 'Baja', 12, '', NULL, '2018-06-03 17:05:33', '2018-06-03 17:05:33'),
(2695, 7, 21, 27, 21, 'José Luis', 'Mostolac Cereza', 'Baja', 12, '', NULL, '2018-06-03 17:06:23', '2018-06-03 17:06:23'),
(2696, 7, 21, 27, 22, 'José', 'Grasa Villar', 'Baja', 7, 'Buzón negro puerta garaje', NULL, '2018-06-03 17:07:23', '2018-06-03 17:07:23'),
(2697, 7, 21, 27, 22, 'José Ramón y Eva', 'Grasa Albajar', 'Baja', 7, 'Buzón negro puerta garaje', NULL, '2018-06-03 17:08:31', '2018-06-03 17:08:31'),
(2698, 7, 21, 27, 22, 'María', 'Villar Español', 'Baja', 7, 'Buzón negro puerta garaje', NULL, '2018-06-03 17:08:51', '2018-06-03 17:08:51'),
(2699, 7, 21, 27, 22, 'Mª Jesús', 'Albajar', 'Baja', 7, 'Buzón negro puerta garaje', NULL, '2018-06-03 17:09:27', '2018-06-03 17:09:27'),
(2700, 7, 21, 27, 23, 'José María', 'Larrosa Franco', 'Baja', 13, '', NULL, '2018-06-03 17:10:17', '2018-06-03 17:10:17'),
(2701, 7, 21, 27, 23, 'Susana', 'Morales Perailes', 'Baja', 13, '', NULL, '2018-06-03 17:10:45', '2018-06-03 17:10:45'),
(2702, 7, 21, 27, 23, 'Natividad', 'Albajar Ferrandiz', 'Baja', 13, '', NULL, '2018-06-03 17:11:20', '2018-06-03 17:11:20'),
(2703, 7, 21, 27, 23, 'José María', 'Larrosa Albajar', 'Baja', 13, '', NULL, '2018-06-03 17:11:50', '2018-06-03 17:11:50'),
(2704, 7, 21, 27, 27, '...', 'Casa Cura', 'Baja', 0, 'Hojas parroquiales, Obispado', NULL, '2018-06-03 17:12:52', '2018-06-03 17:12:52'),
(2705, 7, 21, 27, 28, 'Bar', 'Vino Tinto', 'Pz Las Santas', 9, '', NULL, '2018-06-03 17:14:22', '2018-06-03 17:14:22'),
(2706, 7, 21, 27, 28, 'Reyes ', 'Maza Pardina', 'Pz Las Santas', 9, '', NULL, '2018-06-03 17:15:13', '2018-06-03 17:15:13'),
(2707, 7, 21, 27, 28, 'Mª José', 'Rojas Reyes', 'Pz Las Santas', 9, 'Vino Tinto', NULL, '2018-06-03 17:16:01', '2018-06-03 17:16:01'),
(2708, 7, 21, 27, 28, 'José', 'Navarrete Ollas', 'Pz Las Santas', 9, 'Vino Tinto', NULL, '2018-06-03 17:16:38', '2018-06-03 17:16:38'),
(2709, 7, 21, 27, 28, 'Concepción', 'Marti Sánchez', 'Pz Las Santas', 9, 'Vino Tinto, dar a Jesús BC7', NULL, '2018-06-03 17:18:04', '2018-06-03 17:18:04'),
(2710, 7, 21, 27, 29, 'Antonio', 'Rivert', 'Pz Las Santas', 10, '', NULL, '2018-06-03 17:18:23', '2018-06-03 17:18:23'),
(2711, 7, 21, 27, 30, 'Fco', 'Nasarre Rivera', 'Callizo Jordán', 2, 'Año 1690?', NULL, '2018-06-03 17:19:32', '2018-06-03 17:19:32'),
(2712, 7, 21, 27, 30, 'Marcelina', 'González ', 'Callizo Jordán', 2, 'Año 1690?', NULL, '2018-06-03 17:20:18', '2018-06-03 17:20:18'),
(2713, 7, 21, 27, 30, 'Angelines', 'Nasarre', 'Callizo Jordán', 2, 'Año 1690?', NULL, '2018-06-03 17:20:45', '2018-06-03 17:20:45'),
(2714, 7, 21, 27, 31, 'Pau', 'Jordán', 'Callizo Jordán', 0, '', NULL, '2018-06-03 17:21:18', '2018-06-03 17:21:18'),
(2715, 7, 21, 27, 31, 'José María', 'Labata', 'Callizo Jordán', 0, '', NULL, '2018-06-03 17:21:42', '2018-06-03 17:21:42'),
(2716, 7, 21, 27, 32, 'Nunila', 'Jordán', 'Callizo Jordán', 3, '', NULL, '2018-06-03 17:22:21', '2018-06-03 17:22:21'),
(2717, 7, 21, 27, 33, 'Aurora', 'Buil Mur', 'Callizo Jordán', 0, '', NULL, '2018-06-03 17:23:06', '2018-06-03 17:23:06'),
(2718, 7, 21, 27, 33, 'Mª Sol', 'Febas', 'Callizo Jordán', 0, 'Última', NULL, '2018-06-03 17:23:41', '2018-06-03 17:23:41'),
(2719, 7, 21, 27, 33, 'José María', 'Larrosa Buil', 'Callizo Jordán', 0, 'Última', NULL, '2018-06-03 17:24:11', '2018-06-03 17:24:11'),
(2720, 7, 21, 27, 33, 'Antonio', 'Valle Larrosa', 'Callizo Jordán', 0, 'Última', NULL, '2018-06-03 17:24:43', '2018-06-03 17:24:43'),
(2721, 7, 21, 27, 33, 'Daniel', 'Larrosa Trallero', 'Callizo Jordán', 0, 'Última', NULL, '2018-06-03 17:25:11', '2018-06-03 17:25:11'),
(2722, 7, 21, 27, 33, 'Rosario', 'Larrosa', 'Callizo Jordán', 0, 'Última', NULL, '2018-06-03 17:25:32', '2018-06-03 17:25:32'),
(2723, 7, 21, 27, 34, 'Fco', 'Jiménez Pardina', 'Iglesia', 6, 'Buzón en la pared, bloques', NULL, '2018-06-03 17:26:29', '2018-06-03 17:26:29'),
(2724, 7, 21, 27, 34, 'Alegría', 'Paco Román', 'Iglesia', 6, 'Buzón en la pared, bloques', NULL, '2018-06-03 17:27:12', '2018-06-03 17:27:12'),
(2725, 7, 21, 27, 34, 'Nicolás, Alodia y Fco', 'Jiménez Paco', 'Iglesia', 6, 'Buzón en la pared, bloques', NULL, '2018-06-03 17:27:52', '2018-06-03 17:27:52'),
(2726, 7, 21, 27, 35, 'José', 'Nasarre Berroy', 'Iglesia', 7, 'Casa Nasarre', NULL, '2018-06-03 17:44:09', '2018-06-03 17:44:09'),
(2727, 7, 21, 27, 35, 'Rita', 'Panillo Aguardo', 'Iglesia', 7, 'Casa Nasarre', NULL, '2018-06-03 17:44:50', '2018-06-03 17:44:50'),
(2728, 7, 21, 27, 36, 'Casa', 'Turismo Sierra Guara', 'Iglesia', 0, 'Llevar a carretera Alberuela (76)', NULL, '2018-06-03 17:45:46', '2018-06-03 17:45:46'),
(2729, 7, 21, 27, 36, 'Casa', 'Señorito Lazaro', 'Iglesia', 0, 'Llevar a carretera Alberuela (76)', NULL, '2018-06-03 17:46:22', '2018-06-03 17:46:22'),
(2730, 7, 21, 27, 39, '...', 'Repostería el puntillo', 'Iglesia', 4, 'Piso 1', NULL, '2018-06-03 17:47:06', '2018-06-03 17:47:06'),
(2731, 7, 21, 27, 39, 'Helga, Sergio y Helena', 'Paulesky', 'Iglesia', 4, 'Piso 1, repostería el puntillo', NULL, '2018-06-03 17:48:12', '2018-06-03 17:48:12'),
(2732, 7, 21, 27, 39, 'Esteban', 'Reina Escalera', 'Iglesia', 4, 'Piso 1, repostería el puntillo', NULL, '2018-06-03 17:48:54', '2018-06-03 17:48:54'),
(2733, 7, 21, 27, 39, 'Mara', 'Rolger Estape', 'Iglesia', 4, 'Piso 2', NULL, '2018-06-03 17:49:23', '2018-06-03 17:49:23'),
(2734, 7, 21, 27, 40, 'Ricardo', 'Banzo', 'Iglesia', 2, '', NULL, '2018-06-03 17:49:43', '2018-06-03 17:49:43'),
(2735, 7, 21, 27, 41, 'Agustín', 'Loscertales Sopena', 'Pz la Villa', 1, 'Buzón negro', NULL, '2018-06-03 17:50:57', '2018-06-03 17:50:57'),
(2736, 7, 21, 27, 41, 'Antonio', 'Alastrue Berrly', 'Pz la Villa', 1, 'Buzón negro', NULL, '2018-06-03 17:51:39', '2018-06-03 17:51:39'),
(2737, 7, 21, 27, 42, 'Joaquin', 'Monclus Albajar', 'Pz la Villa', 6, '', NULL, '2018-06-03 17:52:17', '2018-06-03 17:52:17'),
(2738, 7, 21, 27, 42, 'Pilar', 'Zamora Felipe', 'Pz la Villa', 6, '', NULL, '2018-06-03 17:52:54', '2018-06-03 17:52:54'),
(2739, 7, 21, 27, 43, 'Guadalupe y Ángel', 'Bara', 'Pz la Villa', 0, 'Esquina', NULL, '2018-06-03 17:53:37', '2018-06-03 17:53:37'),
(2740, 7, 21, 27, 43, 'Primitivo', 'Fumanal', 'Pz la Villa', 0, 'Esquina', NULL, '2018-06-03 17:54:03', '2018-06-03 17:54:03'),
(2741, 7, 21, 27, 44, '...', 'Ayuntamiento', 'Pz la Villa', 0, '', NULL, '2018-06-03 17:54:26', '2018-06-03 17:54:26'),
(2742, 7, 21, 27, 74, '...', 'Ayuntamiento', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:24:55', '2018-06-04 13:24:55'),
(2743, 7, 21, 27, 74, '...', 'Viñedos Sevil S.A', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:25:49', '2018-06-04 13:25:49'),
(2744, 7, 21, 27, 74, '...', 'Gasoleo', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:26:33', '2018-06-04 13:26:33'),
(2745, 7, 21, 27, 74, '...', 'Cámara Agraria', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:27:08', '2018-06-04 13:27:08'),
(2746, 7, 21, 27, 74, 'José Antonio', 'Franco Gistau', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:27:40', '2018-06-04 13:27:40'),
(2747, 7, 21, 27, 74, 'Mª Pilar', 'Ocariz Ortigas', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:28:23', '2018-06-04 13:28:23'),
(2748, 7, 21, 27, 74, 'Manuel', 'Juste Broto', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:28:57', '2018-06-04 13:28:57'),
(2749, 7, 21, 27, 74, 'José María', 'Franco Arregui', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:30:12', '2018-06-04 13:30:12'),
(2750, 7, 21, 27, 74, 'Estela', 'Albajar', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:30:29', '2018-06-04 13:30:29'),
(2751, 7, 21, 27, 74, 'Fco José', 'Franco Ocariz', 'Carretera Alberuela', 0, 'Buzón izquierda', NULL, '2018-06-04 13:31:00', '2018-06-04 13:31:00'),
(2752, 7, 21, 27, 75, 'Luís', 'Caceres Diez', 'Carretera Alberuela', 0, 'Buzón derecha', NULL, '2018-06-04 13:31:40', '2018-06-04 13:31:40'),
(2753, 7, 21, 27, 75, 'Mª Josefa', 'Franco Gistau', 'Carretera Alberuela', 0, 'Buzón derecha', NULL, '2018-06-04 13:32:12', '2018-06-04 13:32:12'),
(2754, 7, 21, 27, 75, 'José Luis y Alberto', 'Cáceres Franco', 'Carretera Alberuela', 0, 'Buzón derecha', NULL, '2018-06-04 13:32:59', '2018-06-04 13:32:59'),
(2755, 7, 21, 27, 76, 'Marcos', 'Duce Garriga', 'Carretera Alberuela', 0, 'Chalet Blanco, buzón negro', NULL, '2018-06-04 13:34:19', '2018-06-04 13:34:19'),
(2756, 7, 21, 27, 76, 'Manolita', 'Viñuales Nasarre', 'Carretera Alberuela', 0, 'Chalet Blanco, buzón negro', NULL, '2018-06-04 13:34:50', '2018-06-04 13:34:50'),
(2757, 7, 21, 27, 76, 'Alberto', 'Duce Viñuales', 'Carretera Alberuela', 0, 'Chalet Blanco, buzón negro', NULL, '2018-06-04 13:35:20', '2018-06-04 13:35:20'),
(2758, 7, 21, 27, 76, '...', 'Turismo Sierra Guara', 'Carretera Alberuela', 0, 'Chalet Blanco, buzón negro', NULL, '2018-06-04 13:35:55', '2018-06-04 13:35:55'),
(2759, 7, 21, 27, 77, 'Ramón', 'Altemir Cebollero ', 'Carretera Alberuela', 0, 'Fachada blanca', NULL, '2018-06-04 13:36:57', '2018-06-04 13:36:57'),
(2760, 7, 21, 27, 77, 'Pilar', 'Carruesco Fumanal', 'Carretera Alberuela', 0, 'Fachada blanca', NULL, '2018-06-04 13:37:19', '2018-06-04 13:37:19'),
(2761, 7, 21, 27, 78, 'Pablo', 'Altemir Cebollero', 'El Portal', 1, 'Subiendo derecha', NULL, '2018-06-04 13:38:22', '2018-06-04 13:38:22'),
(2762, 7, 21, 27, 78, 'Isabel', 'Torres Vidal', 'El Portal', 1, 'Subiendo derecha', NULL, '2018-06-04 13:38:46', '2018-06-04 13:38:46'),
(2763, 7, 21, 27, 78, 'Marcos', 'Altemir Torres', 'El Portal', 1, 'Subiendo derecha', NULL, '2018-06-04 13:39:08', '2018-06-04 13:39:08'),
(2764, 7, 21, 27, 79, 'Julian', 'Albajar Ferrandez', 'El Portal', 2, 'Subiendo derecha', NULL, '2018-06-04 13:40:06', '2018-06-04 13:40:06'),
(2765, 7, 21, 27, 83, 'Martín', 'Altemir Cebollero', 'El Portal', 5, '', NULL, '2018-06-04 13:40:58', '2018-06-04 13:40:58'),
(2766, 7, 21, 27, 83, 'Mª Rosa', 'Bayo Mostolac', 'El Portal', 5, '', NULL, '2018-06-04 13:41:34', '2018-06-04 13:41:34'),
(2767, 7, 21, 27, 83, 'Belen', 'Bayo Espinosa', 'El Portal', 5, '', NULL, '2018-06-04 13:41:53', '2018-06-04 13:41:53'),
(2768, 7, 21, 27, 83, 'Oscar y Fernando', 'Altemir Bayo', 'El Portal', 5, '', NULL, '2018-06-04 13:42:28', '2018-06-04 13:42:28'),
(2769, 7, 21, 27, 84, 'Mª Ángeles', 'Albajar Ferrandiz', 'El Portal', 8, '', NULL, '2018-06-04 13:43:05', '2018-06-04 13:43:05'),
(2770, 7, 21, 27, 84, 'José', 'Fullget', 'El Portal', 8, '', NULL, '2018-06-04 14:54:49', '2018-06-04 14:54:49'),
(2771, 7, 21, 27, 85, 'Helga', 'Gpablosky', 'El Portal', 3, '', NULL, '2018-06-04 14:55:32', '2018-06-04 14:55:32'),
(2772, 7, 21, 27, 85, 'Mihai Sergio', 'Pawlowsky Glahn', 'El Portal', 3, '', NULL, '2018-06-04 14:56:35', '2018-06-04 14:56:35'),
(2773, 7, 21, 27, 87, 'Mariano', 'Vidal Albajar', 'El Portal', 0, 'Buzón contador de luz', NULL, '2018-06-04 14:58:32', '2018-06-04 14:58:32'),
(2774, 7, 21, 27, 87, 'Pilar', 'Cortés de Vidal', 'El Portal', 0, 'Buzón contador de luz', NULL, '2018-06-04 14:59:13', '2018-06-04 14:59:13'),
(2775, 7, 21, 27, 87, 'Mariano', 'Cortés Ballabriga', 'El Portal', 0, 'Buzón contador de luz', NULL, '2018-06-04 15:00:11', '2018-06-04 15:00:11'),
(2776, 7, 21, 27, 87, 'Ángel', 'Ballabriga Jordan', 'El Portal', 0, 'Buzón contador de luz', NULL, '2018-06-04 15:00:55', '2018-06-04 15:00:55'),
(2777, 7, 21, 27, 87, 'Pilar', 'Cortés Ballabriga', 'El Portal', 0, 'Buzón contador de luz', NULL, '2018-06-04 15:01:36', '2018-06-04 15:01:36'),
(2778, 7, 21, 27, 89, 'Jesús y José', 'Cortés Viñuales', 'Torno', 2, 'Puerta madera, cartas por encima', NULL, '2018-06-04 15:03:28', '2018-06-04 15:03:28'),
(2779, 7, 21, 27, 90, 'José Miguel', 'Cebollero', 'Torno', 0, 'Abajo casa amarilla y azul', NULL, '2018-06-04 15:05:17', '2018-06-04 15:05:17'),
(2780, 7, 21, 27, 90, 'Pedra', 'Larrosa Trallero', 'Torno', 0, 'Abajo casa amarilla y azul', NULL, '2018-06-04 15:05:46', '2018-06-04 15:05:46'),
(2781, 7, 21, 27, 90, 'Tomás', 'González', 'Torno', 0, 'Abajo casa amarilla y azul', NULL, '2018-06-04 15:06:06', '2018-06-04 15:06:06'),
(2782, 7, 21, 27, 91, 'José María, José Miguel, Luca', 'Ballabriga González', 'Torno', 2, 'Plaza, buzón pared', NULL, '2018-06-04 15:07:33', '2018-06-04 15:07:33'),
(2783, 7, 21, 27, 91, 'José', 'Ballabriga Carruesco', 'Torno', 2, 'Plaza, buzón pared', NULL, '2018-06-04 15:08:17', '2018-06-04 15:08:17'),
(2784, 7, 21, 27, 91, 'José María', 'Ballabriga Castán', 'Torno', 2, 'Plaza, buzón pared', NULL, '2018-06-04 15:08:52', '2018-06-04 15:08:52'),
(2785, 7, 21, 27, 91, 'María', 'Naya Campo', 'Torno', 2, 'Plaza, buzón pared', NULL, '2018-06-04 15:09:19', '2018-06-04 15:09:19'),
(2786, 7, 21, 27, 92, 'Andrés', 'Cosculluela ', 'Torno', 0, '', NULL, '2018-06-04 15:10:15', '2018-06-04 15:10:15'),
(2787, 7, 21, 27, 93, 'Julian y Mª Dolores', 'Alastrue Lacambra', 'Medio', 4, 'Puerta vieja, parece que no vive nadie', NULL, '2018-06-04 15:12:40', '2018-06-04 15:13:18'),
(2788, 7, 21, 27, 94, 'Andrés', 'Vidal Nasarre', 'Medio', 0, '', NULL, '2018-06-04 15:14:00', '2018-06-04 15:14:00'),
(2789, 7, 21, 27, 95, '...', 'Ordio', 'Medio', 6, '', NULL, '2018-06-04 15:14:47', '2018-06-04 15:14:47'),
(2790, 7, 21, 27, 95, 'José María', 'Nasarre Aguilar', 'Medio', 6, '', NULL, '2018-06-04 15:15:50', '2018-06-04 15:15:50'),
(2791, 7, 21, 27, 95, 'Mª José', 'Albajar Alastrue', 'Medio', 6, 'Ordio', NULL, '2018-06-04 15:16:37', '2018-06-04 15:16:37'),
(2792, 7, 21, 27, 95, 'Alba y Sheila', 'Nasarre Albajar', 'Medio', 6, 'Ordio', NULL, '2018-06-04 15:17:15', '2018-06-04 15:17:15'),
(2793, 7, 21, 27, 95, 'Consuelo', 'Alastrue ', 'Medio', 6, 'Ordio', NULL, '2018-06-04 15:17:41', '2018-06-04 15:17:41'),
(2794, 7, 21, 27, 95, 'Jesús', 'hernandez', 'Medio', 6, 'Ordio', NULL, '2018-06-04 15:18:03', '2018-06-04 15:18:03'),
(2795, 7, 21, 27, 95, 'Jorge', 'Tuda', 'Medio', 6, 'Ordio', NULL, '2018-06-04 15:18:27', '2018-06-04 15:18:27'),
(2796, 7, 21, 27, 96, 'Lorenzo', 'Vidal Nasarre', 'Medio', 18, '', NULL, '2018-06-04 15:19:04', '2018-06-04 15:19:04'),
(2797, 7, 21, 27, 96, 'Fco', 'Franco Arregui', 'Medio', 18, '', NULL, '2018-06-04 15:19:52', '2018-06-04 15:19:52'),
(2798, 7, 21, 27, 96, '...', 'Vidal Nasarre S.L', 'Medio', 18, '', NULL, '2018-06-04 15:20:18', '2018-06-04 15:21:31'),
(2799, 7, 21, 27, 96, 'Rafael', 'Broto', 'Medio', 18, '', NULL, '2018-06-04 15:22:26', '2018-06-04 15:22:26'),
(2800, 7, 21, 27, 96, 'Ricardo', 'Banzo Hernández', 'Medio', 18, '', NULL, '2018-06-04 15:23:10', '2018-06-04 15:23:10'),
(2801, 7, 21, 27, 97, 'Joaquin', 'Albajar Ballabriga', 'Medio', 19, '', NULL, '2018-06-04 15:23:50', '2018-06-04 15:23:50'),
(2802, 7, 21, 27, 97, 'Joaquin', 'Albajar Ballabriga', 'Medio', 19, '', NULL, '2018-06-04 15:24:20', '2018-06-04 15:24:20'),
(2803, 7, 21, 27, 97, 'Lidia', 'Estrada Albajar', 'Medio', 19, '', NULL, '2018-06-04 15:24:41', '2018-06-04 15:24:41'),
(2804, 7, 21, 27, 98, 'Nicolás e Isabel', 'Supervia', 'Medio', 28, '', NULL, '2018-06-04 15:25:33', '2018-06-04 15:25:33'),
(2805, 7, 21, 27, 98, 'Mª Jesús', 'Castilla Buzón', 'Medio', 28, '', NULL, '2018-06-04 15:26:06', '2018-06-04 15:26:06'),
(2806, 7, 21, 27, 99, 'Miguel', 'Albajar Nasarre', 'Medio', 21, '', NULL, '2018-06-04 15:28:13', '2018-06-04 15:28:13'),
(2807, 7, 21, 27, 100, 'Mariano', 'Cortés Ballabriga', 'Medio', 22, '', NULL, '2018-06-04 15:28:35', '2018-06-04 15:28:35'),
(2808, 7, 21, 27, 100, 'Felisa', 'Monclus Albajar', 'Medio', 22, '', NULL, '2018-06-04 15:29:00', '2018-06-04 15:29:00'),
(2809, 7, 21, 27, 101, 'José', 'Albajar Rodellas', 'Medio', 7, '', NULL, '2018-06-04 15:29:51', '2018-06-04 15:29:51'),
(2810, 7, 21, 27, 102, 'José María', 'Lacoma Montori', 'Medio', 23, '', NULL, '2018-06-04 15:30:43', '2018-06-04 15:30:43'),
(2811, 7, 21, 27, 102, 'Julia Asun', 'Montori', 'Medio', 23, '', NULL, '2018-06-04 15:30:59', '2018-06-04 15:30:59'),
(2812, 7, 21, 27, 103, 'Purificación', 'Jordán', 'Medio', 24, '', NULL, '2018-06-04 15:31:28', '2018-06-04 15:31:28'),
(2813, 7, 21, 27, 103, 'Santiago y Natividad', 'Jordán Gómez', 'Medio', 24, '', NULL, '2018-06-04 15:32:06', '2018-06-04 15:32:06'),
(2814, 7, 21, 27, 103, 'José Luis', 'Albajar Alastrue', 'Medio', 24, '', NULL, '2018-06-04 15:33:06', '2018-06-04 15:33:06'),
(2815, 7, 21, 27, 104, 'Mario', 'Niño García', 'Medio', 9, 'Puerta madera', NULL, '2018-06-04 15:33:44', '2018-06-04 15:33:44'),
(2816, 7, 21, 27, 104, 'Mª Teresa', 'García Torres', 'Medio', 9, '', NULL, '2018-06-04 15:34:20', '2018-06-04 15:34:20'),
(2817, 7, 21, 27, 105, 'José', 'Nasarre Berroy', 'Medio', 9, 'Bis, casa nueva', NULL, '2018-06-04 15:35:15', '2018-06-04 15:35:15'),
(2818, 7, 21, 27, 106, 'Luís, Javier y Mª Luisa', 'Cortés Vidal', 'Medio', 25, 'Piso 1', NULL, '2018-06-04 15:36:59', '2018-06-04 15:36:59'),
(2819, 7, 21, 27, 106, 'Margarita', 'Vidal Albajar', 'Medio', 25, '', NULL, '2018-06-04 15:37:34', '2018-06-04 15:37:34'),
(2820, 7, 21, 27, 106, '...', 'Crux Albergue SC', 'Medio', 25, 'Piso 2', NULL, '2018-06-04 15:38:13', '2018-06-04 15:38:13'),
(2821, 7, 21, 27, 106, 'Alfredo', 'Conte', 'Medio', 25, 'Piso 2', NULL, '2018-06-04 15:38:39', '2018-06-04 15:38:39'),
(2822, 7, 21, 27, 106, 'Eva', 'Vidal Altemir', 'Medio', 25, 'Piso 2', NULL, '2018-06-04 15:39:17', '2018-06-04 15:39:17'),
(2823, 7, 21, 27, 107, 'Mariano', 'Gómez Mallen', 'Medio', 5, '', NULL, '2018-06-04 15:41:18', '2018-06-04 15:41:18'),
(2824, 7, 21, 27, 107, 'Marisa', 'Geboles', 'Medio', 5, '', NULL, '2018-06-04 15:41:52', '2018-06-04 15:41:52'),
(2825, 7, 21, 27, 107, 'Manuel', 'Cosculluela Peña', 'Medio', 5, '', NULL, '2018-06-04 15:42:52', '2018-06-04 15:42:52'),
(2826, 7, 21, 27, 107, 'Esther', 'Gómez Gerboles', 'Medio', 5, '', NULL, '2018-06-04 15:43:27', '2018-06-04 15:43:27'),
(2827, 7, 21, 27, 107, 'Manuel Antonio y Marco', 'Cosculluela Gómez', 'Medio', 5, '', NULL, '2018-06-04 15:44:32', '2018-06-04 15:44:32'),
(2828, 7, 21, 27, 108, 'Pilar', 'Cortés Pallas', 'Medio', 0, 'Rincón blanca', NULL, '2018-06-04 15:45:24', '2018-06-04 15:45:24'),
(2829, 7, 21, 27, 108, 'Mª Pilar', 'Villar Angel', 'Medio', 0, 'Rincón blanca', NULL, '2018-06-04 15:45:56', '2018-06-04 15:45:56'),
(2830, 7, 21, 27, 108, 'Ángel', 'Villar Español', 'Medio', 0, 'Rincón blanca', NULL, '2018-06-04 15:46:24', '2018-06-04 15:46:24'),
(2831, 7, 21, 27, 109, 'Ascensión', 'Barasona Lacoma', 'Medio', 0, 'Puerta naranja', NULL, '2018-06-04 15:47:58', '2018-06-04 15:47:58'),
(2832, 7, 21, 27, 109, 'Antonio', 'Barasona Bardaji', 'Medio', 0, 'Puerta naranja', NULL, '2018-06-04 15:48:32', '2018-06-04 15:48:32'),
(2833, 7, 21, 27, 109, 'Filomena', 'Lacoma', 'Medio', 0, 'Puerta naranja', NULL, '2018-06-04 15:49:02', '2018-06-04 15:49:02'),
(2834, 7, 21, 27, 109, 'Santiago', 'Cortés Viñuales', 'Medio', 0, 'Puerta naranja', NULL, '2018-06-04 15:49:29', '2018-06-04 15:49:29'),
(2835, 7, 21, 27, 109, 'Rosa Mª', 'Cortés Barasona', 'Medio', 0, 'Puerta naranja', NULL, '2018-06-04 15:50:25', '2018-06-04 15:50:25'),
(2836, 7, 21, 27, 110, 'Manuel', 'García', 'Debajo', 0, 'Debajo de todo, villa Alquezar', NULL, '2018-06-04 15:51:18', '2018-06-04 15:53:07'),
(2837, 7, 21, 27, 111, 'Avelino', 'Olivera Juste', 'Medio', 3, '', NULL, '2018-06-04 15:55:21', '2018-06-04 15:55:21'),
(2838, 7, 21, 27, 111, 'Concepción y Conchita', 'Guillamón Matosas', 'Medio', 3, '', NULL, '2018-06-04 15:56:22', '2018-06-04 15:56:22'),
(2839, 7, 21, 27, 111, 'Carmen', 'Matosas Salvador', 'Medio', 3, '', NULL, '2018-06-04 15:56:50', '2018-06-04 15:56:50'),
(2840, 7, 21, 27, 111, '...', 'Explotaciones agrícolas José Olivera', 'Medio', 3, '', NULL, '2018-06-04 15:57:39', '2018-06-04 15:57:39'),
(2841, 7, 21, 27, 111, '...', 'Explotaciones agrícolas José Olivera', 'Medio', 3, '', NULL, '2018-06-04 15:57:53', '2018-06-04 15:57:53'),
(2842, 7, 21, 27, 111, 'José', 'Olivera Guillamón', 'Medio', 3, '', NULL, '2018-06-04 15:58:26', '2018-06-04 15:58:26'),
(2843, 7, 21, 27, 112, 'José María y Mª Ángeles', 'Albajar Albajar', 'Medio', 27, 'llevar al 3 (111)', NULL, '2018-06-04 15:59:56', '2018-06-04 15:59:56'),
(2844, 7, 21, 27, 113, 'Idelfonso', 'Naya Sampietro', 'Medio', 29, '', NULL, '2018-06-04 16:00:47', '2018-06-04 16:00:47'),
(2845, 7, 21, 27, 113, 'Sara', 'Subías Boira', 'Medio', 29, '', NULL, '2018-06-04 16:01:12', '2018-06-04 16:01:12'),
(2846, 7, 21, 27, 113, 'Román', 'Naya Campo', 'Medio', 29, '', NULL, '2018-06-04 16:01:48', '2018-06-04 16:01:48'),
(2847, 7, 21, 27, 113, 'Laura', 'Torres Andreu', 'Medio', 29, '', NULL, '2018-06-04 16:02:21', '2018-06-04 16:02:21'),
(2848, 7, 21, 27, 113, 'Carmen', 'boira Mur', 'Medio', 29, '', NULL, '2018-06-04 16:02:43', '2018-06-04 16:02:43'),
(2849, 7, 21, 27, 113, 'Alberto y Sara', 'Naya Subías', 'Medio', 29, '', NULL, '2018-06-04 16:03:10', '2018-06-04 16:03:10'),
(2850, 7, 21, 27, 114, 'Julia, Pedro, Félix', 'Sampietro', 'Medio', 0, 'Al lado rincón', NULL, '2018-06-04 16:04:51', '2018-06-04 16:04:51'),
(2851, 7, 21, 27, 115, 'Carmen', 'Buil', 'Pz Las Santas', 5, 'Buzón en la esquina, al lado del (114), en la puerta', NULL, '2018-06-04 16:06:07', '2018-06-04 16:06:07'),
(2852, 7, 21, 27, 115, 'Mª Carmen', 'Gil Buil', 'Pz Las Santas', 5, 'Buzón en la esquina, al lado del (114), en la puerta', NULL, '2018-06-04 16:06:45', '2018-06-04 16:06:45'),
(2853, 7, 21, 27, 115, 'Clemente', 'Gil Llorente', 'Pz Las Santas', 5, 'Buzón en la esquina, al lado del (114), en la puerta', NULL, '2018-06-04 16:07:39', '2018-06-04 16:07:39'),
(2854, 7, 21, 27, 116, 'Ángel', 'Viñuales Laliena', 'Pz Las Santas', 4, '', NULL, '2018-06-04 16:08:35', '2018-06-04 16:08:35'),
(2855, 7, 21, 27, 116, 'Pilar', 'Laliena Olivan', 'Pz Las Santas', 4, '', NULL, '2018-06-04 16:08:55', '2018-06-04 16:08:55'),
(2856, 7, 21, 27, 116, 'Mª Pilar', 'Vidal Cortés', 'Pz Las Santas', 4, '', NULL, '2018-06-04 16:10:17', '2018-06-04 16:10:17'),
(2857, 7, 21, 27, 116, 'Martín', 'Vasilev', 'Pz Las Santas', 4, '', NULL, '2018-06-04 16:10:55', '2018-06-04 16:10:55'),
(2858, 7, 21, 27, 116, 'Margarita', 'Todorrov', 'Pz Las Santas', 4, '', NULL, '2018-06-04 16:11:21', '2018-06-04 16:12:10'),
(2859, 7, 21, 27, 117, '...', 'Yubero', 'Pz Las Santas', 4, 'Reja', NULL, '2018-06-04 16:13:00', '2018-06-04 16:13:00'),
(2860, 7, 21, 27, 117, '...', 'Turismo casa Valles', 'Pz Las Santas', 4, 'Reja', NULL, '2018-06-04 16:13:29', '2018-06-04 16:13:29'),
(2861, 7, 21, 27, 117, 'Benjamin', 'Soto Yubero', 'Pz Las Santas', 4, 'Reja', NULL, '2018-06-04 16:14:05', '2018-06-04 16:14:05'),
(2862, 7, 21, 27, 118, '...', 'Cor Lanau', 'Pz Las Santas', 7, '', NULL, '2018-06-04 16:14:36', '2018-06-04 16:14:36'),
(2863, 7, 21, 27, 118, 'Antonio', 'Linares', 'Pz Las Santas', 7, '', NULL, '2018-06-04 16:14:52', '2018-06-04 16:14:52');
INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(2864, 7, 21, 27, 119, 'Antonio', 'Palau', 'Pz Las Santas', 16, 'Casa Palau', NULL, '2018-06-04 16:15:30', '2018-06-04 16:15:30'),
(2865, 7, 21, 27, 119, 'Ángeles', 'Masil', 'Pz Las Santas', 16, '', NULL, '2018-06-04 16:16:08', '2018-06-04 16:16:08'),
(2866, 7, 21, 27, 120, 'Lorenzo', 'Pardina Escartín', 'Manga', 14, 'Parra', NULL, '2018-06-04 16:18:12', '2018-06-04 16:18:12'),
(2867, 7, 21, 27, 120, 'Mercedes y Lourdes', 'Escartín', 'Manga', 14, 'Parra', NULL, '2018-06-04 16:18:58', '2018-06-04 16:18:58'),
(2868, 7, 21, 27, 120, 'Eduardo', 'Foncillas', 'Manga', 14, 'Parra', NULL, '2018-06-04 16:19:27', '2018-06-04 16:19:27'),
(2869, 7, 21, 27, 120, '...', 'Fonsevil', 'Manga', 14, 'Parra', NULL, '2018-06-04 16:19:48', '2018-06-04 16:19:48'),
(2870, 7, 21, 27, 121, 'Santiago', 'Pérez Inojosa', 'Manga', 4, '', NULL, '2018-06-04 16:20:27', '2018-06-04 16:20:27'),
(2871, 7, 21, 27, 121, 'Susana y Paquita', 'Pérez Zamora', 'Manga', 4, '', NULL, '2018-06-04 16:21:04', '2018-06-04 16:21:04'),
(2872, 7, 21, 27, 121, 'Paquita', 'Zamora Palles', 'Manga', 4, '', NULL, '2018-06-04 16:21:34', '2018-06-04 16:21:34'),
(2873, 7, 21, 27, 122, 'Margarita', 'Vigili Rom', 'Manga', 6, '', NULL, '2018-06-04 16:22:10', '2018-06-04 16:22:10'),
(2874, 7, 21, 27, 122, 'Margarita', 'Abello Vigili', 'Manga', 6, '', NULL, '2018-06-04 16:22:40', '2018-06-04 16:22:40'),
(2875, 7, 21, 27, 122, 'Antonio', 'Fernández Rodriguez', 'Manga', 6, '', NULL, '2018-06-04 16:23:11', '2018-06-04 16:23:11'),
(2876, 7, 21, 27, 122, 'Lucia', 'Rufas Abello', 'Manga', 6, '', NULL, '2018-06-04 16:23:35', '2018-06-04 16:23:35'),
(2877, 7, 21, 27, 123, 'Juan José', 'Bara Sampietro', 'Manga', 5, 'Quesos Radiquero', NULL, '2018-06-04 16:24:29', '2018-06-04 16:24:29'),
(2878, 7, 21, 27, 123, 'Alicia', 'Bara Moret', 'Manga', 5, 'Quesos Radiquero', NULL, '2018-06-04 16:25:37', '2018-06-13 17:00:46'),
(2879, 7, 21, 27, 123, 'Fernando', 'Gracia', 'Manga', 5, 'Quesos Radiquero', NULL, '2018-06-04 16:26:00', '2018-06-04 16:26:00'),
(2880, 7, 21, 27, 125, 'Cristobal', 'Rodriguez Velasco', 'Manga', 5, '', NULL, '2018-06-04 16:27:57', '2018-06-04 16:27:57'),
(2881, 7, 21, 27, 125, 'Mª José y Josefa', 'Moliner Maiquez', 'Manga', 5, '5 bis, buzón negro viejo', NULL, '2018-06-04 16:29:31', '2018-06-04 16:29:31'),
(2882, 7, 21, 27, 125, 'Julia y Alvaro', 'Rodriguez Moliner', 'Manga', 5, '5 bis, buzón negro viejo', NULL, '2018-06-04 16:30:23', '2018-06-04 16:30:23'),
(2883, 7, 21, 27, 125, 'Victor', 'Riso', 'Manga', 5, '5 bis, buzón negro viejo', NULL, '2018-06-04 16:31:30', '2018-06-04 16:31:30'),
(2884, 7, 21, 27, 126, 'Alegría', 'Cavero Lailla', 'Manga', 0, 'Puerta madera', NULL, '2018-06-04 16:32:15', '2018-06-04 16:32:15'),
(2885, 7, 21, 27, 127, 'Antonio', 'Roque', 'Manga', 7, 'Buzón pared', NULL, '2018-06-04 16:32:51', '2018-06-04 16:32:51'),
(2886, 7, 21, 27, 127, 'Mª Luisa', 'Miguel', 'Manga', 7, 'Buzón pared', NULL, '2018-06-04 16:33:23', '2018-06-04 16:33:23'),
(2887, 7, 21, 27, 128, 'Almudena y Paloma', 'Tornes', 'Manga', 8, '', NULL, '2018-06-04 16:33:50', '2018-06-04 16:33:50'),
(2888, 7, 21, 27, 129, '...', 'Soler Rodellas', 'Manga', 11, '', NULL, '2018-06-04 16:34:26', '2018-06-04 16:34:26'),
(2889, 7, 21, 27, 129, 'Rafael', 'Suarez Soler', 'Manga', 11, '', NULL, '2018-06-04 16:34:52', '2018-06-04 16:34:52'),
(2890, 7, 21, 27, 129, 'Rafael', 'Soler', 'Manga', 11, '', NULL, '2018-06-04 16:35:11', '2018-06-04 16:35:11'),
(2891, 7, 21, 27, 130, 'José Ramón y Adela', 'Larrosa', 'Manga', 0, '', NULL, '2018-06-04 16:35:44', '2018-06-04 16:35:44'),
(2892, 7, 21, 27, 131, 'Beatriz', 'Grafin', 'Manga', 10, 'llevar a baja 12 (21)', NULL, '2018-06-04 16:36:37', '2018-06-04 16:36:37'),
(2893, 7, 21, 27, 131, 'Eduardo', 'Foncillas Casasús', 'Manga', 10, 'llevar a baja 12 (21)', NULL, '2018-06-04 16:37:18', '2018-06-04 16:37:18'),
(2894, 7, 21, 26, 1, 'Jesús', 'Rufas Avilla', 'Afueras', 0, 'Cruzando la carretera, subiendo a la izq', NULL, '2018-06-06 16:37:55', '2018-06-06 16:37:55'),
(2895, 7, 21, 26, 1, 'Mª Pilar', 'Oliván Puymedon', 'Afueras', 0, 'Cruzando la carretera, subiendo a la izq', NULL, '2018-06-06 16:38:43', '2018-06-06 16:38:43'),
(2896, 7, 21, 26, 1, 'Sara', 'Rufas Oliván', 'Afueras', 0, 'Cruzando la carretera, subiendo a la izq', NULL, '2018-06-06 16:39:07', '2018-06-06 16:39:07'),
(2897, 7, 21, 26, 2, 'José María', 'Rufas Oliván', 'Camino Estrecho', 1, 'Izquierda', NULL, '2018-06-06 16:40:10', '2018-06-06 16:40:10'),
(2898, 7, 21, 26, 2, 'Elena', 'Bernúes Core', 'Camino Estrecho', 1, 'Izquierda', NULL, '2018-06-06 16:40:47', '2018-06-06 16:40:47'),
(2899, 7, 21, 26, 2, 'Hnos', 'Rufas Bernúes', 'Camino Estrecho', 1, 'Izquierda', NULL, '2018-06-06 16:41:38', '2018-06-06 16:41:38'),
(2900, 7, 21, 26, 3, 'Sergio', 'Izquierdo Conte', 'Camino Estrecho', 2, 'Derecha, arco en puerta', NULL, '2018-06-06 16:42:09', '2018-06-06 16:42:09'),
(2901, 7, 21, 26, 3, 'Mª Carmen', 'Galindo Altemir', 'Camino Estrecho', 2, 'Derecha, arco en puerta', NULL, '2018-06-06 16:42:50', '2018-06-06 16:42:50'),
(2902, 7, 21, 26, 4, 'José Luis', 'Domper Sanz', 'Camino del Molino', 0, 'Herrería', NULL, '2018-06-06 16:43:25', '2018-06-06 16:43:25'),
(2903, 7, 21, 26, 5, 'Juan Carlos', 'Ballabriga Castán', 'Plaza', 2, '', NULL, '2018-06-06 16:44:00', '2018-06-06 16:44:00'),
(2904, 7, 21, 26, 5, 'Manuela', 'Solano Escobar', 'Plaza', 2, '', NULL, '2018-06-06 16:44:30', '2018-06-06 16:44:30'),
(2905, 7, 21, 26, 5, 'Cristian y Sandra', 'Ballabriga Solano', 'Plaza', 2, '', NULL, '2018-06-06 16:44:59', '2018-06-06 16:44:59'),
(2906, 7, 21, 26, 6, 'Nicolás', 'Begüeste Pocino', 'Plaza', 3, '', NULL, '2018-06-06 16:46:00', '2018-06-06 16:46:00'),
(2907, 7, 21, 26, 6, 'Pilar', 'Villacampa Lizana', 'Plaza', 3, '', NULL, '2018-06-06 16:46:24', '2018-06-06 16:46:24'),
(2908, 7, 21, 26, 6, 'Alquilados', 'Fernández ...', 'Plaza', 3, '', NULL, '2018-06-06 16:46:51', '2018-06-06 16:46:51'),
(2909, 7, 21, 26, 7, 'Eduardo', 'Latorre Gutierrez', 'Plaza', 4, '', NULL, '2018-06-06 16:47:49', '2018-06-06 16:47:49'),
(2910, 7, 21, 26, 8, 'Ángeles', 'Nasarre Atin', 'Plaza', 5, '', NULL, '2018-06-06 16:48:19', '2018-06-06 16:48:19'),
(2911, 7, 21, 26, 9, 'Germán', 'Barón Cuello', 'Plaza', 6, '', NULL, '2018-06-06 16:49:27', '2018-06-06 16:49:27'),
(2912, 7, 21, 26, 9, 'Pilar', 'Barón', 'Plaza', 6, '', NULL, '2018-06-06 16:49:41', '2018-06-06 16:49:41'),
(2913, 7, 21, 26, 10, 'Rosario', 'Lalaguna Mur', 'Plaza', 1, '', NULL, '2018-06-06 16:50:47', '2018-06-06 16:50:47'),
(2914, 7, 21, 26, 10, 'Encarnación y Juan', 'Fernández Lalaguna', 'Plaza', 1, '', NULL, '2018-06-06 16:51:43', '2018-06-06 16:51:43'),
(2915, 7, 21, 26, 11, 'Fco', 'Lueza Rodrigo', 'Baja', 1, '', NULL, '2018-06-06 16:52:12', '2018-06-06 16:52:12'),
(2916, 7, 21, 26, 11, 'Guillerma', 'Abadías Arnal', 'Baja', 1, '', NULL, '2018-06-06 16:52:43', '2018-06-06 16:52:43'),
(2917, 7, 21, 26, 11, 'Reyes', 'Lueza Abadías', 'Baja', 1, '', NULL, '2018-06-06 16:53:06', '2018-06-06 16:53:06'),
(2918, 7, 21, 26, 12, 'Gabriela', 'Bolea Foncillas', 'Baja', 4, '', NULL, '2018-06-06 16:53:27', '2018-06-06 16:53:27'),
(2919, 7, 21, 26, 12, 'Joaquin', 'Abenoza Bolea', 'Baja', 4, '', NULL, '2018-06-06 16:53:46', '2018-06-06 16:53:46'),
(2920, 7, 21, 26, 13, 'José María', 'Sánchez Plana', 'Baja', 6, '', NULL, '2018-06-06 16:54:08', '2018-06-06 16:55:15'),
(2921, 7, 21, 26, 13, 'Mercedes', 'Cancer Otín', 'Baja', 6, '', NULL, '2018-06-06 16:54:45', '2018-06-06 16:54:45'),
(2922, 7, 21, 26, 13, 'Mª Rosa e Ismael', 'Sánchez Cancer', 'Baja', 6, '', NULL, '2018-06-06 16:56:00', '2018-06-06 16:56:00'),
(2923, 7, 21, 26, 14, 'Manuel', 'Avellanas Gracía', 'Baja', 3, '', NULL, '2018-06-06 16:56:29', '2018-06-13 16:33:39'),
(2924, 7, 21, 26, 15, 'Agustín', 'Vilches', 'Baja', 7, '', NULL, '2018-06-06 16:57:18', '2018-06-06 16:57:18'),
(2925, 7, 21, 26, 15, 'Mercedes', 'Sempere', 'Baja', 7, '', NULL, '2018-06-06 16:57:47', '2018-06-06 16:57:47'),
(2926, 7, 21, 26, 15, 'Miguel Ángel', 'Guiral Campo', 'Baja', 7, '', NULL, '2018-06-06 16:58:23', '2018-06-06 16:58:23'),
(2927, 7, 21, 26, 15, 'Miguel', 'Guiral Sierra', 'Baja', 7, '', NULL, '2018-06-06 16:58:43', '2018-06-06 16:58:43'),
(2928, 7, 21, 26, 16, 'Mª Isabel', 'de Pablo Melero', 'Baja', 9, 'alcaldesa', NULL, '2018-06-06 16:59:27', '2018-06-06 16:59:27'),
(2929, 7, 21, 26, 16, 'José Luis', 'Monclús Cebollero', 'Baja', 9, '', NULL, '2018-06-06 17:00:03', '2018-06-06 17:00:03'),
(2930, 7, 21, 26, 16, 'Borja y Saúl', 'Monclús de Pablo', 'Baja', 9, '', NULL, '2018-06-06 17:00:32', '2018-06-06 17:00:32'),
(2931, 7, 21, 26, 16, '...', 'Ayuntamiento', 'Baja', 9, 'abierto los Lunés', NULL, '2018-06-06 17:01:13', '2018-06-06 17:01:13'),
(2932, 7, 21, 26, 17, 'Juan José', 'Viñuales Veleta', 'Baja', 14, '', NULL, '2018-06-06 17:01:42', '2018-06-06 17:01:42'),
(2933, 7, 21, 26, 17, 'Daniel y Juan Luís', 'Viñuales Sanz', 'Baja', 14, '', NULL, '2018-06-06 17:02:51', '2018-06-06 17:02:51'),
(2934, 7, 21, 26, 17, 'Fernando', 'Viñuales Sanz', 'Baja', 14, 'Dejar en Calvario 3, Azara', NULL, '2018-06-06 17:03:36', '2018-06-06 17:03:36'),
(2935, 7, 21, 26, 18, 'Domingo', 'Sierra Pano', 'Baja', 16, '', NULL, '2018-06-06 17:05:27', '2018-06-06 17:05:27'),
(2936, 7, 21, 26, 18, 'José', 'Sierra Laplana', 'Baja', 18, '', NULL, '2018-06-06 17:05:53', '2018-06-06 17:05:53'),
(2937, 7, 21, 26, 18, 'Isidra', 'Banzo Rufas', 'Baja', 16, '', NULL, '2018-06-06 17:06:32', '2018-06-06 17:06:32'),
(2938, 7, 21, 26, 18, 'Lourdes y Mª Pilar', 'Sierra Banzo', 'Baja', 16, '', NULL, '2018-06-06 17:07:21', '2018-06-06 17:07:21'),
(2939, 7, 21, 26, 18, 'Fco Javier', 'Domper Gil', 'Baja', 16, '', NULL, '2018-06-06 17:07:56', '2018-06-06 17:07:56'),
(2940, 7, 21, 26, 19, 'Mª Pilar', 'Juste Buil', 'Baja', 18, '', NULL, '2018-06-06 17:08:22', '2018-06-06 17:08:22'),
(2941, 7, 21, 26, 19, 'Gregorio', 'Lacoma Broto', 'Baja', 18, '', NULL, '2018-06-06 17:08:42', '2018-06-06 17:08:42'),
(2942, 7, 21, 26, 19, 'Gregorio', 'Lacoma Juste', 'Baja', 18, '', NULL, '2018-06-06 17:10:51', '2018-06-06 17:10:51'),
(2943, 7, 21, 26, 19, 'Máxima', 'Broto Villacampa', 'Baja', 18, '', NULL, '2018-06-06 17:11:22', '2018-06-06 17:11:22'),
(2944, 7, 21, 26, 20, 'Domingo', 'Carpadon Guiral', 'Baja', 22, '', NULL, '2018-06-06 17:11:52', '2018-06-06 17:11:52'),
(2945, 7, 21, 26, 20, 'Gonzalo y Gabriel', 'Carpadon Campodarve', 'Baja', 22, '', NULL, '2018-06-06 17:12:36', '2018-06-06 17:12:36'),
(2946, 7, 21, 26, 20, 'Domingo y Julio César', 'Carpadon Gardeta', 'Baja', 22, '', NULL, '2018-06-06 17:13:16', '2018-06-06 17:13:16'),
(2947, 7, 21, 26, 20, 'Mª Luisa', 'Campodarve Bernad', 'Baja', 22, '', NULL, '2018-06-06 17:13:54', '2018-06-06 17:13:54'),
(2948, 7, 21, 26, 21, 'José', 'Abadías Lloro', 'Baja', 24, '', NULL, '2018-06-06 17:14:27', '2018-06-06 17:14:27'),
(2949, 7, 21, 26, 21, 'Aurora', 'Cuello Domper', 'Baja', 24, '', NULL, '2018-06-06 17:14:46', '2018-06-06 17:14:46'),
(2950, 7, 21, 26, 21, 'Juan Carlos y Yolanda', 'Abadías Cuello', 'Baja', 24, '', NULL, '2018-06-06 17:15:28', '2018-06-06 17:15:28'),
(2951, 7, 21, 26, 22, 'Conrado', 'Cancer Otín', 'Baja', 26, '', NULL, '2018-06-06 17:17:07', '2018-06-06 17:17:07'),
(2952, 7, 21, 26, 23, 'Javier y José Alberto', 'Zamora Villacampa', 'Baja', 28, '', NULL, '2018-06-06 17:17:54', '2018-06-06 17:17:54'),
(2953, 7, 21, 26, 23, 'Felicitas', 'Villacampa Ceresuela', 'Baja', 28, '', NULL, '2018-06-06 17:18:23', '2018-06-06 17:18:23'),
(2954, 7, 21, 26, 23, 'Fca', 'Zamora Cosculluela', 'Baja', 28, '', NULL, '2018-06-06 17:19:04', '2018-06-06 17:19:04'),
(2955, 7, 21, 26, 24, 'Leandro', 'Nasarre Colungo', 'Baja', 13, '', NULL, '2018-06-06 17:19:43', '2018-06-06 17:19:43'),
(2956, 7, 21, 26, 25, 'Javier', 'Madoz', 'Baja', 15, '', NULL, '2018-06-06 17:20:17', '2018-06-06 17:20:17'),
(2957, 7, 21, 26, 26, 'Joan', 'Folguera', 'Iglesia', 9, 'Casa Susana, dejar en Iglesia 7', NULL, '2018-06-06 17:21:32', '2018-06-06 17:21:32'),
(2958, 7, 21, 26, 26, 'Pepita ', 'Camp Ayerbe', 'Iglesia', 9, 'Casa Susana, dejar en Iglesia 7', NULL, '2018-06-06 17:22:22', '2018-06-06 17:22:22'),
(2959, 7, 21, 26, 26, 'Rosa', 'Puig', 'Iglesia', 9, 'Casa Susana, dejar en Iglesia 7', NULL, '2018-06-06 17:22:52', '2018-06-06 17:22:52'),
(2960, 7, 21, 26, 27, 'Eulalia', 'López Mairal', 'Iglesia', 10, '', NULL, '2018-06-06 17:23:40', '2018-06-06 17:23:40'),
(2961, 7, 21, 26, 27, 'Jordi', 'Ugarte', 'Iglesia', 10, '', NULL, '2018-06-06 17:23:57', '2018-06-06 17:23:57'),
(2962, 7, 21, 26, 28, 'José', 'López Mairal', 'Iglesia', 8, 'cartas de la luz a otro nombre', NULL, '2018-06-06 17:24:57', '2018-06-06 17:24:57'),
(2963, 7, 21, 26, 28, 'Fco', 'Giral Allué', 'Iglesia', 8, 'cartas de la luz a otro nombre', NULL, '2018-06-06 17:25:25', '2018-06-06 17:25:25'),
(2964, 7, 21, 26, 29, 'Antonio y Manuel', 'Subías Calvo', 'Iglesia', 7, '', NULL, '2018-06-06 17:25:51', '2018-06-06 17:25:51'),
(2965, 7, 21, 26, 30, 'Rubén', 'Ayerbe Contreras', 'Iglesia', 5, '', NULL, '2018-06-06 17:26:16', '2018-06-06 17:26:16'),
(2966, 7, 21, 26, 30, 'Ramón', 'Ayerbe Sannicolás', 'Iglesia', 5, '', NULL, '2018-06-06 17:26:43', '2018-06-06 17:26:43'),
(2967, 7, 21, 26, 30, 'Susana', 'Arruebo', 'Iglesia', 5, '', NULL, '2018-06-06 17:27:06', '2018-06-06 17:27:06'),
(2968, 7, 21, 26, 32, 'José Ramón', 'Abadías Cuello', 'Iglesia', 1, '', NULL, '2018-06-06 17:27:49', '2018-06-06 17:27:49'),
(2969, 7, 21, 26, 32, 'Begoña', 'López Alonso', 'Iglesia', 1, '', NULL, '2018-06-06 17:28:10', '2018-06-06 17:28:10'),
(2970, 7, 21, 26, 33, 'Sandrine ', 'Arell', 'Iglesia', 2, 'Piso 1', NULL, '2018-06-06 17:29:20', '2018-06-06 17:29:20'),
(2971, 7, 21, 26, 33, 'Vicenta', 'Gonga', 'Iglesia', 2, 'Piso 2, traer canal Cinca 13', NULL, '2018-06-06 17:29:58', '2018-06-06 17:29:58'),
(2972, 7, 21, 26, 33, 'Arnold', 'Szafrenic', 'Iglesia', 2, 'Piso 3', NULL, '2018-06-06 17:30:27', '2018-06-06 17:30:27'),
(2973, 7, 21, 26, 34, 'Vanesa', 'Clavo Secorun', 'Alta', 11, '', NULL, '2018-06-06 17:31:21', '2018-06-06 17:31:21'),
(2974, 7, 21, 26, 35, 'José', 'Porta Marco', 'Alta', 9, 'Dejar en Alta 1', NULL, '2018-06-06 17:31:58', '2018-06-06 17:31:58'),
(2975, 7, 21, 26, 36, 'Domingo', 'Jordán Monclús', 'Alta', 7, 'Viene con el 9, 10, 8', NULL, '2018-06-06 17:32:53', '2018-06-06 17:32:53'),
(2976, 7, 21, 26, 36, 'Petra', 'Pardo Allué', 'Alta', 7, 'Viene con el 9, 10, 8', NULL, '2018-06-06 17:33:37', '2018-06-06 17:33:37'),
(2977, 7, 21, 26, 36, 'Raúl, Domingo y Mª Teresa', 'Jordán Pardo', 'Alta', 7, 'Viene con el 9, 10, 8', NULL, '2018-06-06 17:34:20', '2018-06-06 17:34:20'),
(2978, 7, 21, 26, 37, 'Martín', 'Clemente', 'Alta', 6, '', NULL, '2018-06-06 17:35:16', '2018-06-06 17:35:16'),
(2979, 7, 21, 26, 37, 'Carmen', 'Crespo', 'Alta', 6, '', NULL, '2018-06-06 17:35:34', '2018-06-06 17:35:34'),
(2980, 7, 21, 26, 38, 'Luís', 'Calvo Grasa', 'Alta', 3, '(11)', NULL, '2018-06-06 17:36:58', '2018-06-06 17:36:58'),
(2981, 7, 21, 26, 38, 'Nicolás', 'Calvo Rufas', 'Alta', 3, '(11)', NULL, '2018-06-06 17:37:28', '2018-06-06 17:37:28'),
(2982, 7, 21, 26, 38, 'Luisa, Pili y Vanesa', 'Calvo Secorum', 'Alta', 3, '(11)', NULL, '2018-06-06 17:38:30', '2018-06-13 16:40:09'),
(2983, 7, 21, 26, 38, 'Mª Luisa', 'Secorum', 'Alta', 3, '(11)', NULL, '2018-06-06 17:38:56', '2018-06-06 17:38:56'),
(2984, 7, 21, 26, 39, 'Irene', 'Porta Porta', 'Alta', 1, '', NULL, '2018-06-06 17:39:24', '2018-06-06 17:39:24'),
(2985, 7, 21, 26, 39, 'Germán', 'Barón Colungo', 'Alta', 1, '', NULL, '2018-06-06 17:39:54', '2018-06-06 17:39:54'),
(2986, 7, 21, 26, 39, 'José', 'Porta Marco', 'Alta', 1, '', NULL, '2018-06-06 17:40:16', '2018-06-06 17:40:16'),
(2987, 7, 21, 26, 40, 'Juan Manuel', 'Aso Guirado', 'Alta', 2, 'Edificio Ayuntamiento', NULL, '2018-06-06 17:40:58', '2018-06-06 17:40:58'),
(2988, 7, 21, 26, 40, 'Andrea', 'Ciugan', 'Alta', 2, 'Edificio Ayuntamiento', NULL, '2018-06-06 17:41:21', '2018-06-06 17:41:21'),
(2989, 7, 21, 26, 41, 'Dionisio', 'Zamora Fuertes', 'San Blas', 3, '', NULL, '2018-06-06 17:48:49', '2018-06-06 17:49:36'),
(2990, 7, 21, 26, 41, 'David', 'Zamora Fernández', 'San Blas', 3, '', NULL, '2018-06-06 17:51:29', '2018-06-06 17:51:29'),
(2991, 7, 21, 26, 41, 'María', 'Gracia Tricas', 'San Blas', 3, '', NULL, '2018-06-06 17:51:50', '2018-06-06 17:51:50'),
(2992, 7, 21, 26, 42, 'Antonio y Fco', 'Mata Aniés', 'San Blas', 5, '', NULL, '2018-06-06 17:52:16', '2018-06-06 17:52:16'),
(2993, 7, 21, 26, 42, 'Segundo', 'Castán Rodrigo', 'San Blas', 5, '', NULL, '2018-06-06 17:52:33', '2018-06-06 17:53:56'),
(2994, 7, 21, 26, 43, 'Joaquin', 'Rodrigo Cuello', 'San Blas', 7, '', NULL, '2018-06-06 17:54:45', '2018-06-06 17:54:45'),
(2995, 7, 21, 26, 43, 'Felicidad', 'Guillamón Mor', 'San Blas', 7, '', NULL, '2018-06-06 17:55:36', '2018-06-06 17:55:36'),
(2996, 7, 21, 26, 43, 'Hnos', 'Rodrigo Guillamón', 'San Blas', 7, '', NULL, '2018-06-06 17:56:01', '2018-06-06 17:56:01'),
(2997, 7, 21, 26, 44, 'Mercedes Adoración', 'Casanovas Sierra', 'San Blas', 9, '', NULL, '2018-06-09 10:19:32', '2018-06-09 10:19:32'),
(2998, 7, 21, 26, 45, 'Carmen', 'Encuentra Craver', 'San Blas', 13, '', NULL, '2018-06-09 10:20:11', '2018-06-09 10:20:11'),
(2999, 7, 21, 26, 46, 'José', 'Loncan Monclús', 'San Blas', 17, 'Tb San Blas o Arrabal 30', NULL, '2018-06-09 10:21:02', '2018-06-09 10:21:02'),
(3000, 7, 21, 26, 46, 'Dolores', 'Magalejo Domper', 'San Blas', 17, 'Tb San Blas o Arrabal 30', NULL, '2018-06-09 10:22:08', '2018-06-09 10:22:08'),
(3001, 7, 21, 26, 46, 'Dolores', 'Loncan Margalejo', 'San Blas', 17, 'Tb San Blas o Arrabal 30', NULL, '2018-06-09 10:22:42', '2018-06-09 10:22:42'),
(3002, 7, 21, 26, 46, 'Juan José', 'Eito Cuello', 'San Blas', 17, 'Tb San Blas o Arrabal 30', NULL, '2018-06-09 10:23:08', '2018-06-09 10:23:08'),
(3003, 7, 21, 26, 46, 'Hnas', 'Eito Loncán', 'San Blas', 17, 'Tb San Blas o Arrabal 30', NULL, '2018-06-09 10:23:43', '2018-06-09 10:23:43'),
(3004, 7, 21, 26, 47, 'Marcel y Madeleine', 'Nayach', 'San Blas', 19, '', NULL, '2018-06-09 10:24:17', '2018-06-09 10:24:17'),
(3005, 7, 21, 26, 48, 'Fernando', 'Loncan Albajar', 'San Blas', 21, 'Cruzado,viene al 19', NULL, '2018-06-09 10:25:02', '2018-06-09 10:25:02'),
(3006, 7, 21, 26, 49, 'Juan Manuel', 'Calvo Grasa', 'San Blas', 2, '', NULL, '2018-06-09 10:25:31', '2018-06-09 10:25:31'),
(3007, 7, 21, 26, 49, 'Agustín', 'Cancer Castro', 'San Blas', 2, '', NULL, '2018-06-09 10:26:00', '2018-06-09 10:26:00'),
(3008, 7, 21, 26, 50, 'Martín y Nico', 'Rigaut', 'Arrabal', 26, 'Bis', NULL, '2018-06-09 10:26:35', '2018-06-09 10:26:35'),
(3009, 7, 21, 26, 51, 'Danilo', 'Pereira', 'Arrabal', 26, '', NULL, '2018-06-09 10:26:57', '2018-06-09 10:26:57'),
(3010, 7, 21, 26, 52, 'José', 'Quetglas', 'Arrabal', 24, '', NULL, '2018-06-09 10:27:44', '2018-06-09 10:27:44'),
(3011, 7, 21, 26, 52, 'Hnas', 'Quetglas Larroya', 'Arrabal', 24, '', NULL, '2018-06-09 10:28:10', '2018-06-09 10:28:10'),
(3012, 7, 21, 26, 52, 'Agustín', 'Larroya', 'Arrabal', 24, '', NULL, '2018-06-09 10:28:38', '2018-06-09 10:28:38'),
(3013, 7, 21, 26, 52, '...', 'Cruza sa', 'Arrabal', 24, '', NULL, '2018-06-09 10:28:54', '2018-06-09 10:28:54'),
(3014, 7, 21, 26, 53, 'Rosario', 'Encuentra Craver', 'Arrabal', 22, 'Casa Coronas', NULL, '2018-06-09 10:29:40', '2018-06-09 10:29:40'),
(3015, 7, 21, 26, 53, 'Manuel', 'Ballabriga Coronas', 'Arrabal', 22, 'Casa Coronas', NULL, '2018-06-09 10:30:13', '2018-06-09 10:30:13'),
(3016, 7, 21, 26, 54, 'Casemiro', 'Monclús Cebollero', 'Arrabal', 20, '', NULL, '2018-06-09 10:30:38', '2018-06-09 10:30:38'),
(3017, 7, 21, 26, 55, 'Fidel, German, Pilar e Isabel', 'Salas Ballabriga', 'Arrabal', 15, '', NULL, '2018-06-09 10:31:21', '2018-06-09 10:31:21'),
(3018, 7, 21, 26, 55, 'Pilar', 'Ballabriga Jal', 'Arrabal', 15, '', NULL, '2018-06-09 10:31:41', '2018-06-09 10:31:41'),
(3019, 7, 21, 26, 56, 'Joaquin', 'Cabrero Gazo', 'Arrabal', 13, '', NULL, '2018-06-09 10:32:09', '2018-06-09 10:32:09'),
(3020, 7, 21, 26, 57, 'Rufino ', 'Playan Gazo', 'Arrabal', 9, 'Reenvio', NULL, '2018-06-09 10:33:00', '2018-06-09 10:33:00'),
(3021, 7, 21, 26, 57, 'Irene', 'Tomás Colomer', 'Arrabal', 9, 'Reenvio', NULL, '2018-06-09 10:33:38', '2018-06-09 10:33:38'),
(3022, 7, 21, 26, 57, 'Mª Carmen', 'Playan Tomás', 'Arrabal', 9, 'Reenvio', NULL, '2018-06-09 10:34:06', '2018-06-09 10:34:06'),
(3023, 7, 21, 26, 58, 'Pío', 'Monclus Arnal', 'Arrabal', 18, '', NULL, '2018-06-09 10:46:33', '2018-06-09 10:46:33'),
(3024, 7, 21, 26, 58, 'Felisa', 'Abadías Broto', 'Arrabal', 18, '', NULL, '2018-06-09 10:47:11', '2018-06-09 10:47:11'),
(3025, 7, 21, 26, 59, 'Josefa', 'Abadías Lloro', 'Arrabal', 7, '', NULL, '2018-06-09 10:48:40', '2018-06-09 10:48:40'),
(3026, 7, 21, 26, 59, 'Pilar', 'Rufas Abadías', 'Arrabal', 7, '', NULL, '2018-06-09 10:49:06', '2018-06-09 10:49:06'),
(3027, 7, 21, 26, 59, 'Rufino', 'Rufas', 'Arrabal', 7, '', NULL, '2018-06-09 10:49:29', '2018-06-09 10:49:29'),
(3028, 7, 21, 26, 60, 'Julián', 'Calvo Vidal', 'Arrabal', 10, '', NULL, '2018-06-09 10:50:03', '2018-06-09 10:50:03'),
(3029, 7, 21, 26, 60, 'Carmen ', 'Vidal Allúe', 'Arrabal', 10, '', NULL, '2018-06-09 10:50:42', '2018-06-09 10:50:42'),
(3030, 7, 21, 26, 61, 'Mariano', 'Albajar Capardón', 'Arrabal', 2, '', NULL, '2018-06-09 10:51:26', '2018-06-09 10:51:26'),
(3031, 7, 21, 26, 61, 'Gregorio', 'Jara Iglesias', 'Arrabal', 2, '', NULL, '2018-06-09 10:51:53', '2018-06-09 10:51:53'),
(3032, 7, 21, 26, 61, 'Nuria, Alejandro y Sergio', 'Albajar Barón', 'Arrabal', 2, '', NULL, '2018-06-09 10:52:31', '2018-06-09 10:52:31'),
(3033, 7, 21, 26, 62, 'Mariano', 'Sanz Grasa', 'Labanera', 2, 'Buzón verde', NULL, '2018-06-09 10:54:27', '2018-06-09 10:54:27'),
(3034, 7, 21, 26, 62, 'María', 'Grasa Villar', 'Labanera', 2, 'Buzón verde', NULL, '2018-06-09 10:54:57', '2018-06-09 10:54:57'),
(3035, 7, 21, 26, 63, 'Pepita', 'Magariño Acosta', 'pasaje Labanera', 4, 'Casa Quilez', NULL, '2018-06-09 10:55:50', '2018-06-09 10:55:50'),
(3036, 7, 21, 26, 63, 'Antonio', 'Quilez Tello', 'pasaje Labanera', 4, 'Casa Quilez', NULL, '2018-06-09 10:56:16', '2018-06-09 10:56:16'),
(3037, 7, 21, 26, 64, 'Leonardo', 'Solano Malpartida', 'pasaje Labanera', 2, '', NULL, '2018-06-09 10:56:47', '2018-06-09 10:56:47'),
(3038, 7, 21, 26, 64, 'María', 'Escobar Acosta', 'pasaje Labanera', 2, '', NULL, '2018-06-09 10:57:02', '2018-06-09 10:57:02'),
(3039, 7, 21, 26, 65, 'Santiago', 'Puente Esqués', 'pasaje Labanera', 1, '', NULL, '2018-06-09 10:57:36', '2018-06-09 10:57:36'),
(3040, 7, 21, 26, 65, 'Amparo', 'Esqués Custodio', 'pasaje Labanera', 1, '', NULL, '2018-06-09 10:58:01', '2018-06-09 10:58:01'),
(3041, 7, 21, 26, 66, 'Victoria', 'Nasarre', 'Labanera', 3, '', NULL, '2018-06-09 11:00:25', '2018-06-09 11:00:25'),
(3042, 7, 21, 26, 66, 'Isabel', 'Sesé Nasarre', 'Labanera', 3, '', NULL, '2018-06-09 11:00:49', '2018-06-09 11:00:49'),
(3043, 7, 21, 26, 67, 'José', 'Sanvicente Mur', 'Labanera', 5, '', NULL, '2018-06-09 11:01:12', '2018-06-09 11:01:12'),
(3044, 7, 21, 26, 67, 'Josefina', 'Mur Mur', 'Labanera', 5, '', NULL, '2018-06-09 11:01:29', '2018-06-09 11:01:29'),
(3045, 7, 21, 26, 68, 'Juan', 'Berroy Borruel', 'Labanera', 6, 'Parroquia', NULL, '2018-06-09 11:02:12', '2018-06-09 11:02:12'),
(3046, 7, 21, 26, 68, 'Concepción', 'Guiral Jal', 'Labanera', 6, '', NULL, '2018-06-09 11:02:55', '2018-06-09 11:02:55'),
(3047, 7, 21, 26, 68, 'Fco José', 'Berroy Guiral', 'Labanera', 6, '', NULL, '2018-06-09 11:03:59', '2018-06-09 11:03:59'),
(3048, 7, 21, 26, 69, 'José', 'Abadías Arnal', 'Labanera', 7, 'Casa sidrer', NULL, '2018-06-09 11:04:42', '2018-06-09 11:04:42'),
(3049, 7, 21, 26, 70, 'Justino y Esteban', 'Guiral Lascorz', 'Labanera', 2, '(18)', NULL, '2018-06-09 11:06:05', '2018-06-09 11:06:05'),
(3050, 7, 21, 26, 70, 'Montserrat', 'Villacampa Mur', 'Labanera', 2, '(18)', NULL, '2018-06-09 11:06:36', '2018-06-09 11:06:36'),
(3051, 7, 21, 26, 70, 'Joaquin y Nuria', 'Giral Villacampa', 'Labanera', 2, '(18)', NULL, '2018-06-09 11:07:30', '2018-06-13 16:42:09'),
(3052, 7, 21, 26, 70, 'Sandra', 'Milena Nobiterio', 'Labanera', 2, '(18)', NULL, '2018-06-09 11:08:04', '2018-06-09 11:08:04'),
(3053, 7, 21, 26, 71, 'Eusebio y Aurelio', 'Gracia Arroyos', 'Labanera', 10, '', NULL, '2018-06-09 11:08:43', '2018-06-09 11:08:43'),
(3054, 7, 21, 26, 71, 'Mª Teresa', 'Lucas Segura', 'Labanera', 10, '', NULL, '2018-06-09 11:09:10', '2018-06-09 11:09:10'),
(3055, 7, 21, 26, 71, 'Eusebio y Soraya', 'Gracia Lucas', 'Labanera', 10, '', NULL, '2018-06-09 11:09:45', '2018-06-09 11:09:45'),
(3056, 7, 21, 26, 72, 'Pilar', 'Abadías Lloro', 'Labanera', 16, 'Dejar en el 3', NULL, '2018-06-09 11:10:56', '2018-06-09 11:10:56'),
(3057, 7, 21, 26, 72, 'Luciano ', 'Ayerbe Martínez', 'Labanera', 16, 'Dejar en el 3', NULL, '2018-06-09 11:11:36', '2018-06-09 11:11:36'),
(3058, 7, 21, 26, 73, 'José Luis', 'Ayerbe Abadías', 'Labanera', 3, '', NULL, '2018-06-09 11:12:06', '2018-06-09 11:12:06'),
(3059, 7, 21, 26, 73, 'María Soledad', 'Laborda Clua', 'Labanera', 3, '', NULL, '2018-06-09 11:12:31', '2018-06-09 11:12:31'),
(3060, 7, 21, 26, 73, 'Ainoa', 'Ayerbe Laborda', 'Labanera', 3, '', NULL, '2018-06-09 11:12:54', '2018-06-09 11:12:54'),
(3061, 7, 21, 26, 74, 'Natividad', 'Naval Belillas', 'Lavadero', 1, '', NULL, '2018-06-09 11:13:32', '2018-06-09 11:13:32'),
(3062, 7, 21, 26, 74, 'Laura', 'Guijarro', 'Lavadero', 1, '', NULL, '2018-06-09 11:13:49', '2018-06-09 11:15:00'),
(3063, 7, 21, 26, 75, 'María', 'Sanvicente Rodrigo', 'Lavadero', 3, '', NULL, '2018-06-09 11:16:00', '2018-06-09 11:16:00'),
(3064, 7, 21, 26, 75, 'Nicolás y Mª Carmen', 'Sánchez', 'Lavadero', 3, '', NULL, '2018-06-09 11:16:32', '2018-06-09 11:16:32'),
(3065, 7, 21, 26, 76, 'Luciano José', 'Galindo Estrada', 'Arrabal', 32, '', NULL, '2018-06-09 11:16:56', '2018-06-09 11:16:56'),
(3066, 7, 21, 26, 76, 'Mª José', 'Altemir Biescas', 'Arrabal', 32, '', NULL, '2018-06-09 11:17:18', '2018-06-09 11:17:18'),
(3067, 7, 21, 26, 76, 'Hnas', 'Galindo Altemir', 'Arrabal', 32, '', NULL, '2018-06-09 11:17:51', '2018-06-09 11:17:51'),
(3068, 7, 21, 26, 77, 'Rafael', 'Campodarve Latorre', 'Arrabal', 21, '', NULL, '2018-06-09 11:18:17', '2018-06-09 11:18:17'),
(3069, 7, 21, 26, 77, 'Pilar', 'Salanova Calvo', 'Arrabal', 32, '', NULL, '2018-06-09 11:18:41', '2018-06-09 11:18:41'),
(3070, 7, 21, 26, 77, 'Inmaculada', 'Campodarve Salanova', 'Arrabal', 21, '', NULL, '2018-06-09 11:19:06', '2018-06-09 11:19:06'),
(3071, 7, 21, 27, 45, '...', 'Centro Médico', 'Villa', 0, '', NULL, '2018-06-09 11:27:45', '2018-06-09 11:27:45'),
(3072, 7, 21, 27, 45, 'Mª Cruz', 'Lacoma', 'Villa', 0, 'Médico', NULL, '2018-06-09 11:28:17', '2018-06-09 11:28:17'),
(3073, 7, 21, 27, 48, 'Mariano', 'Cortés Ballabriga', 'Villa', 0, 'Llevar carta de la luz a c/Medio 25', NULL, '2018-06-09 11:29:37', '2018-06-09 11:29:37'),
(3074, 7, 21, 27, 48, 'Andrés', 'Ángeles Subias', 'Villa', 0, 'Llevar carta de la luz a c/Medio 25', NULL, '2018-06-09 11:30:20', '2018-06-09 11:30:20'),
(3075, 7, 21, 27, 49, 'Antonio', 'Ayerbe López', 'Villa', 0, 'Arco puerta piedra', NULL, '2018-06-09 11:31:21', '2018-06-09 11:31:21'),
(3076, 7, 21, 27, 50, 'Lorenzo', 'Cortés Pera', 'Villa', 0, 'c/plaza Herrero', NULL, '2018-06-09 11:31:59', '2018-06-09 11:31:59'),
(3077, 7, 21, 27, 52, 'Alselmo', 'Labata Mostolac', 'Nueva', 3, 'Bar Labata', NULL, '2018-06-09 11:33:22', '2018-06-09 11:34:54'),
(3078, 7, 21, 27, 51, 'Marcelino', 'Zamora Vallés', 'Nueva', 1, '', NULL, '2018-06-09 11:35:33', '2018-06-09 11:35:33'),
(3079, 7, 21, 27, 52, 'Vicente', 'Labata Seas', 'Nueva', 3, 'Bar Labata', NULL, '2018-06-09 11:36:07', '2018-06-09 11:36:07'),
(3080, 7, 21, 27, 52, 'Encarna', 'Banzo Encuentra', 'Nueva', 3, 'Bar Labata', NULL, '2018-06-09 11:36:54', '2018-06-09 11:36:54'),
(3081, 7, 21, 27, 52, 'Sergio y Elena', 'Labata Encuentra?', 'Nueva', 3, 'Bar Labata', NULL, '2018-06-09 11:37:46', '2018-06-09 11:37:46'),
(3082, 7, 21, 27, 52, 'Beatriz', 'Martínez Fernández', 'Nueva', 3, 'Bar Labata', NULL, '2018-06-09 11:38:48', '2018-06-09 11:38:48'),
(3083, 7, 21, 27, 52, '...', 'Bodegas Alodia', 'Nueva', 3, 'Bar Labata', NULL, '2018-06-09 11:39:17', '2018-06-09 11:39:17'),
(3084, 7, 21, 27, 52, '...', 'Bodegas Alcañon', 'Nueva', 3, 'Bar Labata', NULL, '2018-06-09 11:39:45', '2018-06-09 11:39:45'),
(3085, 7, 21, 27, 52, '...', 'Turismo Rural', 'Nueva', 3, 'Bar Labata', NULL, '2018-06-09 11:40:13', '2018-06-09 11:40:13'),
(3086, 7, 21, 27, 53, 'Ángel', 'Gracia Albajar', 'Nueva', 4, 'Casa Macaco', NULL, '2018-06-09 11:40:44', '2018-06-09 11:40:44'),
(3087, 7, 21, 27, 53, 'Fca', 'Laborda Ferrando', 'Nueva', 4, 'Devolver', NULL, '2018-06-09 11:41:35', '2018-06-09 11:41:35'),
(3088, 7, 21, 27, 54, 'Elisa', 'Gracia Almazan', 'Nueva', 0, 'Al lado de casa Macaco', NULL, '2018-06-09 11:42:16', '2018-06-09 11:42:16'),
(3089, 7, 21, 27, 55, 'Nicolás', 'Jordán Labata', 'Nueva', 0, '', NULL, '2018-06-09 11:42:49', '2018-06-09 11:42:49'),
(3090, 7, 21, 27, 56, 'Mª José', 'Cortés Vidal', 'Nueva', 4, 'Bis', NULL, '2018-06-09 11:43:32', '2018-06-09 11:43:32'),
(3091, 7, 21, 27, 57, 'Ángeles', 'Labata Plana', 'Nueva', 0, '', NULL, '2018-06-09 11:44:04', '2018-06-09 11:44:04'),
(3092, 7, 21, 27, 59, 'Fco', 'Naya', 'Saco', 0, 'Llevar a Pozallón 7', NULL, '2018-06-09 11:45:21', '2018-06-09 11:45:21'),
(3093, 7, 21, 27, 59, 'Santiago y María', 'Naya Cortés', 'Saco', 0, 'Llevar a Pozallón 7', NULL, '2018-06-09 11:45:57', '2018-06-09 11:45:57'),
(3094, 7, 21, 27, 61, 'Mª Carmen', 'Berroy', 'Saco', 3, '', NULL, '2018-06-09 11:46:28', '2018-06-09 11:46:28'),
(3095, 7, 21, 27, 61, 'María', 'Fernández Gayoso', 'Saco', 3, '', NULL, '2018-06-09 11:47:07', '2018-06-09 11:47:07'),
(3096, 7, 21, 27, 63, 'Celestino', 'Cortés Ballabriga', 'Saco', 14, '', NULL, '2018-06-09 11:47:51', '2018-06-09 11:47:51'),
(3097, 7, 21, 27, 63, 'María', 'Cortés Rodriguez', 'Saco', 14, '', NULL, '2018-06-09 11:48:38', '2018-06-09 11:48:38'),
(3098, 7, 21, 27, 63, 'Irene', 'Rodriguez González', 'Saco', 14, '', NULL, '2018-06-09 11:49:04', '2018-06-09 11:49:04'),
(3099, 7, 21, 27, 63, 'Ramón y Mariano', 'Nasarre', 'Saco', 14, '', NULL, '2018-06-09 11:49:33', '2018-06-09 11:49:33'),
(3100, 7, 21, 27, 63, 'Jesús', 'Puidemon Cortés', 'Saco', 14, '', NULL, '2018-06-09 11:50:02', '2018-06-09 11:50:02'),
(3101, 7, 21, 27, 63, 'Mª Carmen', 'Cortés Rodriguez', 'Saco', 14, '', NULL, '2018-06-09 11:50:30', '2018-06-09 11:50:30'),
(3102, 7, 21, 27, 64, 'Sheila', 'Nasarre Albajar', 'Saco', 0, 'Casa Morada', NULL, '2018-06-09 11:51:06', '2018-06-09 11:51:06'),
(3103, 7, 21, 27, 64, 'Jesús', 'Hernández Martínez', 'Saco', 0, 'Casa Morada', NULL, '2018-06-09 11:51:56', '2018-06-09 11:51:56'),
(3104, 7, 21, 27, 64, 'Bernardo', 'Aguilar Palacio', 'Saco', 0, 'Casa Morada', NULL, '2018-06-09 11:52:29', '2018-06-09 11:52:29'),
(3105, 7, 21, 27, 64, '...', 'Marvin Adahuesca SC', 'Saco', 0, 'Casa Morada', NULL, '2018-06-09 11:53:08', '2018-06-09 11:53:08'),
(3106, 7, 21, 27, 67, 'Miguel', 'Reina Escalera', 'Saco', 9, '', NULL, '2018-06-09 11:54:14', '2018-06-09 11:54:14'),
(3107, 7, 21, 27, 67, 'Guadalupe', 'Tierz Artes', 'Saco', 9, '', NULL, '2018-06-09 11:55:02', '2018-06-09 11:55:02'),
(3108, 7, 21, 27, 67, '...', 'Somos Arte', 'Saco', 9, '', NULL, '2018-06-09 11:55:36', '2018-06-09 11:55:36'),
(3109, 7, 21, 27, 67, '...', 'Reina Tierz', 'Saco', 9, '', NULL, '2018-06-09 11:56:13', '2018-06-09 11:56:13'),
(3110, 7, 21, 27, 67, 'José María', 'Carruesco Fumanal', 'Saco', 9, '', NULL, '2018-06-09 11:56:41', '2018-06-09 11:56:41'),
(3111, 7, 21, 27, 68, 'Antonio', 'Carruesco ', 'Saco', 8, '', NULL, '2018-06-09 11:58:06', '2018-06-09 11:58:06'),
(3112, 7, 21, 27, 68, 'Fca', 'Barasona Nasarre', 'Saco', 8, '', NULL, '2018-06-09 11:58:29', '2018-06-09 11:58:29'),
(3113, 7, 21, 27, 68, 'David', 'Fernández', 'Saco', 8, '', NULL, '2018-06-09 11:58:54', '2018-06-09 11:58:54'),
(3114, 7, 21, 27, 68, 'Maribel', 'Carruesco Barasona', 'Saco', 8, '', NULL, '2018-06-09 11:59:33', '2018-06-09 11:59:33'),
(3115, 7, 21, 27, 69, 'Miguel', 'Zamora Vallés', 'Saco', 0, '', NULL, '2018-06-09 11:59:59', '2018-06-09 11:59:59'),
(3116, 7, 21, 27, 69, 'Irene', 'Playan Tomás', 'Saco', 0, '', NULL, '2018-06-09 12:00:52', '2018-06-09 12:00:52'),
(3117, 7, 21, 27, 69, 'Santiago y Miguel', 'Zamora Playan', 'Saco', 0, '', NULL, '2018-06-09 12:01:18', '2018-06-09 12:01:18'),
(3118, 7, 21, 27, 70, 'Luís', 'Cano', 'Saco', 11, '2, Puerta 1 C D, 2 G H, casa Zamora', NULL, '2018-06-09 12:02:52', '2018-06-09 12:02:52'),
(3119, 7, 21, 27, 70, 'Lidia', 'Estrada', 'Saco', 11, '2, Puerta 1 C D, 2 G H, casa Zamora', NULL, '2018-06-09 12:03:14', '2018-06-09 12:03:14'),
(3120, 7, 21, 27, 70, 'Santiago', 'Docampo Lumbreras', 'Saco', 11, '2, Puerta 1 C D, 2 G H, casa Zamora', NULL, '2018-06-09 12:03:41', '2018-06-09 12:03:41'),
(3121, 7, 21, 28, 15, 'Mª Josefa', 'Ayerbe de Pardina', 'Baja', 1, '', NULL, '2018-06-09 12:08:18', '2018-06-09 12:08:18'),
(3122, 7, 21, 28, 16, 'Pilar', 'Larrosa', 'Baja', 2, '', NULL, '2018-06-09 12:08:43', '2018-06-09 12:08:43'),
(3123, 7, 21, 28, 22, 'Mª Jesús', 'Albajar', 'Baja', 7, '', NULL, '2018-06-09 12:09:24', '2018-06-09 12:09:24'),
(3124, 7, 21, 28, 23, 'Naty', 'Albajar de la Rosa', 'Baja', 13, '', NULL, '2018-06-09 12:10:13', '2018-06-09 12:10:13'),
(3125, 7, 21, 28, 63, 'Irene', 'Rodriguez González', 'Saco', 14, '', NULL, '2018-06-09 12:11:04', '2018-06-09 12:11:04'),
(3126, 7, 21, 28, 69, 'Irene', 'Playan Tomás', 'Saco', 10, '', NULL, '2018-06-09 12:11:28', '2018-06-09 12:11:28'),
(3127, 7, 21, 28, 77, 'Pilar', 'Carruesco', 'Carretera', 0, '', NULL, '2018-06-09 12:11:51', '2018-06-09 12:11:51'),
(3128, 7, 21, 28, 83, 'Fernando', 'Altemir', 'El Portal', 5, '', NULL, '2018-06-09 12:12:22', '2018-06-09 12:12:22'),
(3129, 7, 21, 28, 88, 'Pilar', 'Cortés de Vidal', 'El Portal', 1, '', NULL, '2018-06-09 12:12:47', '2018-06-09 12:12:47'),
(3130, 7, 21, 28, 95, 'Consuelo', 'Alastrue', 'Medio ', 6, '', NULL, '2018-06-09 12:13:15', '2018-06-09 12:13:15'),
(3131, 7, 21, 28, 106, 'Margarita', 'Vidal Albajar', 'Medio', 25, '', NULL, '2018-06-09 12:13:47', '2018-06-09 12:13:47'),
(3132, 7, 21, 28, 111, 'Conchiç', 'Guillamon Matosas', 'Medio', 30, '', NULL, '2018-06-09 12:14:22', '2018-06-09 12:14:22'),
(3133, 7, 21, 28, 111, 'Ángeles', 'Albajar', 'Medio', 30, '', NULL, '2018-06-09 12:14:43', '2018-06-09 12:14:43'),
(3134, 7, 21, 22, 18, 'Mariano', 'Pallás Foncillas', 'Alta', 21, '', NULL, '2018-07-04 17:57:57', '2018-07-04 17:57:57'),
(3135, 7, 21, 22, 19, 'Juan', 'Coll Cavero', 'Alta', 25, '1890', NULL, '2018-07-04 17:58:29', '2018-08-04 09:11:20'),
(3136, 7, 21, 22, 20, 'José', 'Arasanz Ballabriga', 'Alta', 17, 'Al lado 1890, parra', NULL, '2018-07-04 17:59:38', '2018-07-04 17:59:38'),
(3137, 7, 21, 22, 21, 'Ramón', 'Guiral Canudo', 'Alta', 42, 'Traer cartas San Miguel 8-10', NULL, '2018-07-04 18:00:38', '2018-07-04 18:00:38'),
(3138, 7, 21, 22, 21, 'Aurelia', 'Conte Foncillas', 'Alta', 42, 'Traer cartas San Miguel 8-10', NULL, '2018-07-04 18:02:09', '2018-07-04 18:02:09'),
(3139, 7, 21, 22, 21, 'Milagros', 'Guiral Conte', 'Alta', 42, 'Traer cartas San Miguel 8-10', NULL, '2018-07-04 18:02:39', '2018-07-04 18:02:39'),
(3140, 7, 21, 22, 21, 'Sergio y Miguel', 'Sazatornil Guiral', 'Alta', 42, 'Traer cartas San Miguel 8-10', NULL, '2018-07-04 18:03:13', '2018-07-04 18:03:13'),
(3141, 7, 21, 22, 21, '...', 'Amigos de San Antón', 'Alta', 42, '', NULL, '2018-07-04 18:03:34', '2018-07-04 18:03:34'),
(3142, 7, 21, 22, 22, 'Pedro', 'mancho mairal', 'Baja', 34, 'Casa Blecua', NULL, '2018-07-04 18:04:28', '2018-07-04 18:04:28'),
(3143, 7, 21, 22, 22, 'Pilar ', 'Martínez Martínez', 'Baja', 34, 'Casa Blecua', NULL, '2018-07-04 18:04:59', '2018-07-04 18:04:59'),
(3144, 7, 21, 22, 22, 'Pedro', 'Mancho Martínez', 'Baja', 34, 'Casa Blecua', NULL, '2018-07-04 18:05:25', '2018-07-04 18:05:25'),
(3145, 7, 21, 22, 23, 'Nicolás', 'Arnal', 'la peña', 17, '', NULL, '2018-07-04 18:06:01', '2018-07-04 18:06:01'),
(3146, 7, 21, 22, 23, 'Javier', 'Arnal Playán', 'La Peña', 17, '', NULL, '2018-07-04 18:07:03', '2018-07-04 18:07:03'),
(3147, 7, 21, 22, 23, 'María', 'Arnal Azara', 'La Peña', 17, '', NULL, '2018-07-04 18:07:31', '2018-07-04 18:07:31'),
(3148, 7, 21, 22, 23, 'David Alejandro', 'Arnal Calvo', 'La Peña', 17, '', NULL, '2018-07-04 18:07:56', '2018-07-04 18:07:56'),
(3149, 7, 21, 22, 23, '...', 'comunidad de regantes Alcanadre medio', 'La Peña', 17, '', NULL, '2018-07-04 18:08:22', '2018-07-04 18:08:22'),
(3150, 7, 21, 22, 23, '...', 'Sociedad de cazadores San Antón', 'La Peña', 17, '', NULL, '2018-07-04 18:09:04', '2018-07-04 18:09:04'),
(3151, 7, 21, 22, 24, 'Mª Elena', 'Gracia Escaner', 'La Peña', 26, 'Casa Escaner', NULL, '2018-07-04 18:09:56', '2018-07-04 18:09:56'),
(3152, 7, 21, 22, 24, 'Pilar', 'Escaner Giral', 'La Peña', 26, 'Casa Escaner', NULL, '2018-07-04 18:10:19', '2018-07-04 18:10:19'),
(3153, 7, 21, 22, 24, 'Ambrosio', 'Torres Olacia', 'La Peña', 26, 'Casa Escaner', NULL, '2018-07-04 18:11:05', '2018-07-04 18:11:05'),
(3154, 7, 21, 22, 25, 'Rosa y Agustín', 'Conte', 'La Peña', 0, '', NULL, '2018-07-04 18:11:56', '2018-07-04 18:11:56'),
(3155, 7, 21, 22, 26, 'Hermanos', 'Izquierdo Conte', 'La Peña', 0, 'Puerta garaje vieja gris', NULL, '2018-07-04 18:12:52', '2018-07-04 18:12:52'),
(3156, 7, 21, 22, 26, 'Antonio', 'Urraca Ayerbe', 'La Peña', 29, 'Puerta verde, avisos a Barbastro', NULL, '2018-07-04 18:13:55', '2018-07-04 18:13:55'),
(3157, 7, 21, 22, 26, 'Dolores', 'Ayerbe Martínez', 'La Peña', 29, 'Puerta verde, avisos a Barbastro', NULL, '2018-07-04 18:14:34', '2018-07-04 18:14:34'),
(3158, 7, 21, 22, 26, 'Fco', 'Urraca', 'La Peña', 29, 'Puerta verde, avisos a Barbastro', NULL, '2018-07-04 18:14:59', '2018-07-04 18:14:59'),
(3159, 7, 21, 22, 26, 'Mercedes', 'Subías Cavero', 'La Peña', 29, 'Puerta verde, avisos a Barbastro', NULL, '2018-07-04 18:15:25', '2018-07-04 18:15:25'),
(3160, 7, 21, 22, 26, 'Juan M', 'Subías Cuello', 'La Peña', 29, 'Puerta verde, avisos a Barbastro', NULL, '2018-07-04 18:15:59', '2018-07-04 18:15:59'),
(3161, 7, 21, 22, 26, 'Delfina', 'Subías Bonet', 'La Peña', 29, 'Puerta verde, avisos a Barbastro', NULL, '2018-07-04 18:16:42', '2018-07-04 18:16:42'),
(3162, 7, 21, 22, 27, 'Gregorio', 'Coll', 'La Peña', 0, 'Buzón verde', NULL, '2018-07-04 18:17:21', '2018-07-04 18:17:21'),
(3163, 7, 21, 22, 27, 'Pilar', 'Pera', 'La Peña', 0, 'Buzón verde', NULL, '2018-07-04 18:17:43', '2018-07-04 18:17:43'),
(3164, 7, 21, 22, 28, '...', 'Casa Cura', 'La Peña', 0, 'Parroquia', NULL, '2018-07-04 18:18:13', '2018-07-04 18:18:13'),
(3165, 7, 21, 22, 29, 'Fco', 'Clavero Cortin', 'La Peña', 10, 'o 1', NULL, '2018-07-04 18:19:13', '2018-07-04 18:19:13'),
(3166, 7, 21, 22, 29, 'Juan José', 'Clavero', 'La Peña', 10, 'o 1', NULL, '2018-07-04 18:19:43', '2018-07-04 18:19:43'),
(3167, 7, 21, 22, 30, 'María', 'Subías', 'La Peña', 11, '', NULL, '2018-07-04 18:20:24', '2018-07-04 18:20:24'),
(3168, 7, 21, 22, 30, 'Herederos', 'Ciprés Subías', 'La Peña', 11, '', NULL, '2018-07-04 18:20:53', '2018-07-04 18:20:53'),
(3169, 7, 21, 22, 31, 'Ángel', 'Pallás Foncillas', 'La Peña', 9, '', NULL, '2018-07-04 18:21:26', '2018-07-04 18:21:26'),
(3170, 7, 21, 22, 31, 'Natividad', 'Urraca Gracia', 'La Peña', 9, '', NULL, '2018-07-04 18:21:48', '2018-07-04 18:21:48'),
(3171, 7, 21, 22, 31, 'Hnas', 'Pallás Urraca', 'La Peña', 9, '', NULL, '2018-07-04 18:22:09', '2018-07-04 18:22:09'),
(3172, 7, 21, 22, 32, 'Pedro José', 'Subías Torres', 'La Peña', 7, 'Buzón negro', NULL, '2018-07-04 18:22:48', '2018-07-04 18:22:48'),
(3173, 7, 21, 22, 32, 'Pilar', 'Torres Puyuelo', 'La Peña', 7, 'Buzón negro', NULL, '2018-07-04 18:23:41', '2018-07-04 18:23:41'),
(3174, 7, 21, 27, 106, 'Luís', 'Cortés Ballabriga', 'Medio', 25, '', NULL, '2018-10-01 15:27:25', '2018-10-01 15:27:25'),
(3175, 7, 22, 30, 1, 'José Ángel', 'Escario Gistau', 'Ctra Adah - Alberuela', 0, 'Granja de Cerdos', NULL, '2020-03-24 18:20:05', '2020-03-24 18:20:05'),
(3176, 7, 22, 30, 1, 'Julian', 'Migales', 'Ctra Adah - Alberuela', 0, 'Granja de Cerdos', NULL, '2020-03-24 18:20:34', '2020-03-24 18:20:34'),
(3177, 7, 22, 30, 1, '....', 'Alberporc', 'Ctra Adah - Alberuela', 0, 'Granja de Cerdos', NULL, '2020-03-24 18:21:18', '2020-03-24 18:21:18'),
(3178, 7, 22, 30, 2, 'Dolores', 'Bestué', 'Los', 1, 'Entrada a la izquierda', NULL, '2020-03-24 18:22:24', '2020-03-24 18:22:24'),
(3179, 7, 22, 30, 2, '...', 'Olivan Bestué', 'Los', 1, 'Entrada a la izquierda', NULL, '2020-03-24 18:23:02', '2020-03-24 18:23:02'),
(3180, 7, 22, 30, 3, 'Joaquín - José Luis', 'Garcés Lardiés', 'Los', 5, 'buzón negro', NULL, '2020-03-24 18:24:57', '2020-03-24 18:24:57'),
(3181, 7, 22, 30, 3, 'Ángeles', 'Lardiés Pera', 'Los', 5, 'buzón negro', NULL, '2020-03-24 18:25:43', '2020-03-24 18:25:43'),
(3182, 7, 22, 30, 4, 'Milagros, Antonio', 'Nanceta', 'Los', 8, '', NULL, '2020-03-24 18:26:32', '2020-03-24 18:26:32'),
(3183, 7, 22, 30, 4, 'Carmen', 'Sarvisé', 'Los', 8, '', NULL, '2020-03-24 18:26:47', '2020-03-24 18:26:47'),
(3184, 7, 22, 30, 5, 'José', 'Fernández Gayoso', 'Los', 9, '', NULL, '2020-03-24 18:27:22', '2020-03-24 18:27:22'),
(3185, 7, 22, 30, 5, 'Mª Teresa', 'Arca Rodríguez', 'Los', 9, '', NULL, '2020-03-24 18:27:56', '2020-03-24 18:27:56'),
(3186, 7, 22, 30, 6, 'Ascensión', 'Aldea', 'Los', 3, '', NULL, '2020-03-24 18:29:15', '2020-03-24 18:29:15'),
(3187, 7, 22, 30, 6, 'Cesareo', 'Bierge', 'Los', 3, '', NULL, '2020-03-24 18:29:32', '2020-03-24 18:29:32'),
(3188, 7, 22, 30, 7, 'Pilar', 'Rodellar Buera', 'Santa Orosia', 4, 'buzón negro, dcha', NULL, '2020-03-24 18:31:20', '2020-03-24 18:31:20'),
(3189, 7, 22, 30, 7, 'David', 'Lardiés Rodellar', 'Santa Orosia', 4, 'buzón negro, dcha', NULL, '2020-03-24 18:31:50', '2020-03-24 18:31:50'),
(3190, 7, 22, 30, 8, 'Fco, José María', 'Rodellar Ceresuela', 'Santa Orosia', 5, 'Casa Castro, Agropecuaría Rodellar, Turismo rural', NULL, '2020-03-24 18:34:15', '2020-03-24 18:34:15'),
(3191, 7, 22, 30, 8, '...', 'Rodellar Toro', 'Santa Orosia', 5, 'Casa Castro, Agropecuaría Rodellar, Turismo rural', NULL, '2020-03-24 18:34:52', '2020-03-24 18:34:52'),
(3192, 7, 22, 30, 8, 'Alegría', 'Ceresuela', 'Santa Orosia', 5, 'Casa Castro, Agropecuaría Rodellar, Turismo rural', NULL, '2020-03-24 18:35:31', '2020-03-24 18:35:31'),
(3193, 7, 22, 30, 8, 'Mª Lourdes', 'Sanz López', 'Santa Orosia', 5, 'Casa Castro, Agropecuaría Rodellar, Turismo rural', NULL, '2020-03-24 18:36:11', '2020-03-24 18:36:11'),
(3194, 7, 22, 30, 9, 'Justo Felipe', 'Olivera', 'Santa Orosia', 7, '', NULL, '2020-03-24 18:37:11', '2020-03-24 18:37:11'),
(3195, 7, 22, 30, 9, 'Irene', 'Arilla', 'Santa Orosia', 7, '', NULL, '2020-03-24 18:37:23', '2020-03-24 18:37:23'),
(3196, 7, 22, 30, 9, 'José Ramón', 'Añaños', 'Santa Orosia', 7, '', NULL, '2020-03-24 18:37:47', '2020-03-24 18:37:47'),
(3197, 7, 22, 30, 10, 'Antonio', 'Cebollero Campo', 'Santa Orosia', 9, 'Rendija', NULL, '2020-03-24 18:39:07', '2020-03-24 18:39:07'),
(3198, 7, 22, 30, 10, 'Mercedes, Jesús', 'Cebollero Cebollero', 'Santa Orosia', 9, 'Rendija', NULL, '2020-03-24 18:39:42', '2020-03-24 18:39:42'),
(3199, 7, 22, 30, 10, 'José A.', 'Blanch Pueyo', 'Santa Orosia', 9, 'Rendija', NULL, '2020-03-24 18:40:18', '2020-03-24 18:40:18'),
(3200, 7, 22, 30, 11, 'María', 'Rodenas Revilla', 'Santa Orosia', 11, 'asoc. San Nicolás', NULL, '2020-03-24 18:41:11', '2020-03-24 18:41:11'),
(3201, 7, 22, 30, 11, 'Felix', 'Mata Ródenas', 'Santa Orosia', 11, 'asoc. San Nicolás', NULL, '2020-03-24 18:41:43', '2020-03-24 18:41:43'),
(3202, 7, 22, 30, 12, 'Rosa', 'Toro García', 'Santa Orosia', 13, 'CRA Vero Alcanadre, buzón pared', NULL, '2020-03-24 18:42:44', '2020-03-24 18:42:44'),
(3203, 7, 22, 30, 13, 'Salomé', 'Vidal Mairal', 'Santa Orosia', 17, '', NULL, '2020-03-24 18:43:20', '2020-03-24 18:43:20'),
(3204, 7, 22, 30, 14, 'Ramón', 'Herrero', 'Santa Orosia', 38, 'Pastor Herrero SC, debajo puerta', NULL, '2020-03-24 18:44:52', '2020-03-24 18:44:52'),
(3205, 7, 22, 30, 14, 'María', 'Cebollero Lardiés', 'Santa Orosia', 38, 'Pastor Herrero SC, debajo puerta', NULL, '2020-03-24 18:45:27', '2020-03-24 18:45:27'),
(3206, 7, 22, 30, 14, '..., hijos', 'Herrero Cebollero', 'Santa Orosia', 38, 'Pastor Herrero SC, debajo puerta', NULL, '2020-03-24 18:45:59', '2020-03-24 18:45:59'),
(3207, 7, 22, 30, 15, 'Pedro', 'Olivan Puimedon', 'Santa Orosia', 22, '', NULL, '2020-03-24 18:46:58', '2020-03-24 18:46:58'),
(3208, 7, 22, 30, 15, 'Dorita', 'Arevalo Delgado', 'Santa Orosia', 22, '', NULL, '2020-03-24 18:47:17', '2020-03-24 18:47:17'),
(3209, 7, 22, 30, 15, '..., hijos', 'Olivan Arévalo', 'Santa Orosia', 22, '', NULL, '2020-03-24 18:47:42', '2020-03-24 18:47:42'),
(3210, 7, 22, 30, 16, 'Roberto, Raquel', 'Pastor', 'Santa Orosia', 24, 'Granja Mara', NULL, '2020-03-24 18:48:40', '2020-03-24 18:48:40'),
(3211, 7, 22, 30, 16, 'Mª Jesús', 'Cebollero Lardiés', 'Santa Orosia', 24, 'Granja Mara', NULL, '2020-03-24 18:49:15', '2020-03-24 18:49:15'),
(3212, 7, 22, 30, 17, 'Nicolás', 'Aguilar Pano', 'Santa Orosia', 28, 'Cruzado', NULL, '2020-03-24 18:50:23', '2020-03-24 18:50:23'),
(3213, 7, 22, 30, 17, 'Laura', 'Cebollero Pérez', 'Santa Orosia', 28, 'Cruzado', NULL, '2020-03-24 18:51:41', '2020-03-24 18:51:41'),
(3214, 7, 22, 30, 17, 'Mª Pilar', 'Aguilar Cebollero', 'Santa Orosia', 28, '', NULL, '2020-03-24 18:52:10', '2020-03-24 18:52:10'),
(3215, 7, 22, 30, 18, 'Juan José', 'Trallero Garcés', 'Santa Orosia', 27, 'debajo puerta', NULL, '2020-03-24 18:52:58', '2020-03-24 18:52:58'),
(3216, 7, 22, 30, 18, 'Rosario', 'Castán Puyo', 'Santa Orosia', 27, 'debajo puerta', NULL, '2020-03-24 18:54:40', '2020-03-24 18:54:40'),
(3217, 7, 22, 30, 19, 'Enrique', 'Francia Pérez', 'Santa Orosia', 29, '', NULL, '2020-03-24 18:55:05', '2020-03-24 18:55:05'),
(3218, 7, 22, 30, 20, 'Santigo', 'Asín Raudich', 'Santa Orosia', 31, '', NULL, '2020-03-24 18:56:01', '2020-03-24 18:56:01'),
(3219, 7, 22, 30, 20, 'Nicolás', 'Asín', 'Santa Orosia', 31, '', NULL, '2020-03-24 18:56:22', '2020-03-24 18:56:22'),
(3220, 7, 22, 30, 20, 'Dorita', 'Raudich', 'Santa Orosia', 31, '', NULL, '2020-03-24 18:56:41', '2020-03-24 18:56:41'),
(3221, 7, 22, 30, 21, 'Antonio', 'Gil Cor', 'Santa Orosia', 32, 'Rte Aquelarre', NULL, '2020-03-24 18:57:53', '2020-03-24 18:57:53'),
(3222, 7, 22, 30, 21, 'Eufemia', 'Domínguez', 'Santa Orosia', 32, 'Rte Aquelarre', NULL, '2020-03-24 18:58:21', '2020-03-24 18:58:21'),
(3223, 7, 22, 30, 21, 'Oscar, Beatriz', 'Gil Dominguez', 'Santa Orosia', 32, 'Rte Aquelarre', NULL, '2020-03-24 18:58:57', '2020-03-24 18:58:57'),
(3224, 7, 22, 30, 22, 'Jesús', 'Cebollero Cebller', 'Santa Orosia', 36, 'en el nº 9', NULL, '2020-03-24 19:00:26', '2020-03-24 19:00:26'),
(3225, 7, 22, 30, 22, 'Mª José', 'Urfanel', 'Santa Orosia', 36, 'en el nº 9', NULL, '2020-03-24 19:01:22', '2020-03-24 19:01:22'),
(3226, 7, 22, 30, 23, 'Fco', 'Ródenas', 'Mara', 1, 'Flores', NULL, '2020-03-24 19:03:19', '2020-03-24 19:03:19'),
(3227, 7, 22, 30, 23, 'Pilar', 'Cebollero Cebollero', 'Mara', 1, 'Flores', NULL, '2020-03-24 19:03:47', '2020-03-24 19:03:47'),
(3228, 7, 22, 30, 24, 'José', 'Vilanova Aguiler', 'Mara', 3, 'cosas grandes dejar en san nicolás 19', NULL, '2020-03-24 19:05:26', '2020-03-24 19:05:26'),
(3229, 7, 22, 30, 24, 'Victoria', 'Bardají', 'Mara', 3, 'cosas grandes dejar en san nicolás 19', NULL, '2020-03-24 19:06:05', '2020-03-24 19:06:05'),
(3230, 7, 22, 30, 25, 'Antonio', 'Fonollet', 'Mara', 7, 'puerta por arriba', NULL, '2020-03-24 19:06:49', '2020-03-24 19:06:49'),
(3231, 7, 22, 30, 25, 'juan', 'Paños Sampietro', 'Mara', 7, 'puerta por arriba', NULL, '2020-03-24 19:07:16', '2020-03-24 19:07:16'),
(3232, 7, 22, 30, 26, 'Antonio', 'Barón Buera', 'San Nicolás', 3, 'dejar en c/cascajo 20 de Bierge', NULL, '2020-03-24 19:08:54', '2020-03-24 19:08:54'),
(3233, 7, 22, 30, 26, 'Mª Carmén', 'Cortés Zamora', 'San Nicolás', 3, 'dejar en c/cascajo 20 de Bierge', NULL, '2020-03-24 19:09:38', '2020-03-24 19:09:38'),
(3234, 7, 22, 30, 27, 'José A.', 'Lacoma', 'San Nicolás', 13, '', NULL, '2020-03-24 19:10:25', '2020-03-24 19:10:25'),
(3235, 7, 22, 30, 27, 'Fernando', 'Bescós Nasarre', 'San Nicolás', 8, 'lado puerta', NULL, '2020-03-24 19:11:51', '2020-03-24 19:13:43'),
(3236, 7, 22, 30, 27, 'José Mª ', 'Bescós Trallero', 'San Nicolás', 8, 'lado puerta', NULL, '2020-03-24 19:15:43', '2020-03-24 19:15:43'),
(3237, 7, 22, 30, 28, 'Sebastián', 'Puimedón Campo', 'San Nicolás', 12, 'casa Bescós, puerta marrón, si está cerrado en contador luz.', NULL, '2020-03-24 19:17:31', '2020-03-24 19:17:31'),
(3238, 7, 22, 30, 28, 'Esther', 'Arilla Castán', 'San Nicolás', 12, 'casa Bescós, puerta marrón, si está cerrado en contador luz.', NULL, '2020-03-24 19:18:47', '2020-03-24 19:18:47'),
(3239, 7, 22, 30, 28, 'Jesús', 'Puimedón Arilla', 'San Nicolás', 12, 'casa Bescós, puerta marrón, si está cerrado en contador luz.', NULL, '2020-03-24 19:19:24', '2020-03-24 19:19:24'),
(3240, 7, 22, 30, 29, 'Javier, Susana', 'Aguilar', 'San Nicolás', 14, '', NULL, '2020-03-24 19:20:32', '2020-03-24 19:20:32'),
(3241, 7, 22, 30, 30, 'Joaquín ', 'Gil Cor', 'San Nicolás', 19, 'no está en la puerta, dos balcones, dos timbres', NULL, '2020-03-24 19:21:50', '2020-03-24 19:21:50'),
(3242, 7, 22, 30, 30, 'Asunción', 'Bardají Pardinilla', 'San Nicolás', 19, 'no está en la puerta, dos balcones, dos timbres', NULL, '2020-03-24 19:23:19', '2020-03-24 19:23:19'),
(3243, 7, 22, 30, 30, 'Rafael', 'Gil Bardají', 'San Nicolás', 19, 'no está en la puerta, dos balcones, dos timbres', NULL, '2020-03-24 19:23:39', '2020-03-24 19:23:39'),
(3244, 7, 22, 30, 30, 'María Luisa', 'Cortés Vidal', 'San Nicolás', 19, 'no está en la puerta, dos balcones, dos timbres', NULL, '2020-03-24 19:26:09', '2020-03-24 19:26:09'),
(3245, 7, 22, 30, 31, 'Joaquín', 'Cebollero Lardiés', 'San Nicolás', 23, '', NULL, '2020-03-24 19:27:11', '2020-03-24 19:27:11'),
(3246, 7, 22, 30, 32, 'José A.', 'Villar Lardiés', 'San Nicolás', 16, 'fachada blanca en rendija', NULL, '2020-03-24 19:28:36', '2020-03-24 19:28:36'),
(3247, 7, 22, 30, 32, 'Trinidad', 'Supervia', 'San Nicolás', 16, 'fachada blanca en rendija', NULL, '2020-03-24 19:31:36', '2020-03-24 19:31:36'),
(3248, 7, 22, 30, 32, 'José Antonio', 'Villar Supervia', 'San Nicolás', 16, 'fachada blanca en rendija', NULL, '2020-03-24 19:32:14', '2020-03-24 19:32:14'),
(3249, 7, 22, 30, 32, 'David', 'Alastrue Garrido', 'San Nicolás', 16, 'fachada blanca en rendija', NULL, '2020-03-24 19:32:44', '2020-03-24 19:32:44'),
(3250, 7, 22, 30, 33, 'Antonio', 'Ballabriga Mata', 'San Nicolás', 18, '', NULL, '2020-03-24 19:33:16', '2020-03-24 19:33:16'),
(3251, 7, 22, 30, 34, 'Nicolás', 'Bardají', 'San Nicolás', 25, '', NULL, '2020-03-24 19:33:35', '2020-03-24 19:33:35');
INSERT INTO `usuarios` (`id`, `unidad_id`, `seccion_id`, `pueblo_id`, `number`, `name`, `surnames`, `street`, `number_street`, `observaciones`, `telephone`, `created_at`, `updated_at`) VALUES
(3252, 7, 22, 30, 35, 'Nicolás', 'Aguilar Cavero', 'San Nicolás', 29, '', NULL, '2020-03-24 19:35:20', '2020-03-24 19:35:20'),
(3253, 7, 22, 30, 35, 'Orosia', 'Gil Cor', 'San Nicolás', 29, '', NULL, '2020-03-24 19:35:55', '2020-03-24 19:35:55'),
(3254, 7, 22, 30, 35, 'Rómulo', 'Zuferri', 'San Nicolás', 29, '', NULL, '2020-03-24 19:36:17', '2020-03-24 19:36:17'),
(3255, 7, 22, 30, 36, 'José', 'Sarais Dortes', 'San Nicolás', 26, 'Casa Damian', NULL, '2020-03-24 19:38:30', '2020-03-24 19:38:30'),
(3256, 7, 22, 30, 37, 'Isidro', 'Bescós Salillas', 'San Nicolás', 28, '', NULL, '2020-03-24 19:39:43', '2020-03-24 19:39:43'),
(3257, 7, 22, 30, 37, 'Luisa', 'Fajarnes', 'San Nicolás', 28, '', NULL, '2020-03-24 19:40:20', '2020-03-24 19:40:20'),
(3258, 7, 22, 30, 38, 'Antonio, Mariano', 'Bescós Salillas', 'San Nicolás', 30, '', NULL, '2020-03-24 19:40:56', '2020-03-24 19:42:26'),
(3259, 7, 22, 30, 39, 'Antonia', 'Calvo Grasa', 'San Nicolás', 30, '', NULL, '2020-03-24 19:41:54', '2020-03-24 19:41:54'),
(3260, 7, 22, 30, 40, 'Luís', 'Cebollero Escartín', 'Santa Orosia', 20, 'cortina colores, dejar en el 12', NULL, '2020-03-24 19:43:42', '2020-03-24 19:43:42'),
(3261, 7, 22, 30, 40, 'Natalia', 'Ródenas', 'Santa Orosia', 20, 'cortina colores, dejar en el 12', NULL, '2020-03-24 19:44:18', '2020-03-24 19:44:18'),
(3262, 7, 22, 30, 41, 'Fco, Miguel A.', 'Cebollero Cebollero', 'Santa Orosia', 12, '', NULL, '2020-03-24 19:45:55', '2020-03-24 19:45:55'),
(3263, 7, 22, 30, 41, 'Orosia', 'Cebollero Escartín', 'Santa Orosia', 12, '', NULL, '2020-03-24 19:46:23', '2020-03-24 19:46:23'),
(3264, 7, 22, 30, 42, 'María', 'Almudevar Escartín', 'Santa Orosia', 16, 'puerta grande marrón, buzón en la puerta', NULL, '2020-03-24 19:47:28', '2020-03-24 19:47:28'),
(3265, 7, 22, 30, 42, 'Antonio', 'Pardinilla Gil', 'Santa Orosia', 16, 'puerta grande marrón, buzón en la puerta', NULL, '2020-03-24 19:47:56', '2020-03-24 19:47:56'),
(3266, 7, 22, 29, 1, 'José A.', 'Larrosa Ballarín', 'Ctra Alberuela', 0, 'abeja amarilla, buzón viejo', NULL, '2020-03-25 07:32:48', '2020-03-25 07:32:48'),
(3267, 7, 22, 29, 1, 'Ana', 'Buil Salamero', 'Ctra Alberuela', 0, 'abeja amarilla, buzón viejo', NULL, '2020-03-25 07:34:31', '2020-03-25 07:34:31'),
(3268, 7, 22, 29, 1, 'Vasile', 'Iancu', 'Ctra Alberuela', 0, 'abeja amarilla, buzón viejo', NULL, '2020-03-25 07:35:02', '2020-03-25 07:35:02'),
(3269, 7, 22, 29, 1, 'Dan', 'Iancu', 'Ctra Alberuela', 0, 'abeja amarilla, buzón viejo', NULL, '2020-03-25 07:35:36', '2020-03-25 07:35:36'),
(3270, 7, 22, 29, 2, 'Nelli', 'Andreo Martínez', 'Oriente', 3, 'persiana morada', NULL, '2020-03-25 07:36:57', '2020-03-25 07:36:57'),
(3271, 7, 22, 29, 2, 'Antonio', 'Cresao Meneses', 'Oriente', 3, 'persiana morada', NULL, '2020-03-25 07:37:58', '2020-03-25 07:37:58'),
(3272, 7, 22, 29, 3, 'Ana, Isabel', 'Viñuales Ferrando', 'Oriente', 2, 'Hostelería Guara, recoger cartas', NULL, '2020-03-25 07:40:29', '2020-03-25 07:40:29'),
(3273, 7, 22, 29, 3, 'Gabriel Antonio', 'Angos Vallejo', 'Oriente', 2, 'Hostelería Guara, recoger cartas', NULL, '2020-03-25 07:41:33', '2020-03-25 07:41:33'),
(3274, 7, 22, 29, 3, 'Floric, Andrea', 'Talbaru', 'Oriente', 2, 'Hostelería Guara, recoger cartas', NULL, '2020-03-25 07:42:12', '2020-03-25 07:42:12'),
(3275, 7, 22, 29, 3, 'Felix', 'Viñuales', 'Oriente', 2, 'Hostelería Guara, recoger cartas', NULL, '2020-03-25 07:42:44', '2020-03-25 07:42:44'),
(3276, 7, 22, 29, 3, 'Victoria, Matilde', 'Ferrando', 'Oriente', 2, 'Hostelería Guara, recoger cartas', NULL, '2020-03-25 07:43:15', '2020-03-25 07:43:15'),
(3277, 7, 22, 29, 4, 'Soledad', 'Conte', 'Camino iz estrecho, Hotel Era Conte', 0, '!dentro buzón, no tienen llaves!', NULL, '2020-03-25 07:45:41', '2020-03-25 07:45:41'),
(3278, 7, 22, 29, 4, '.....', 'Charles', 'Camino iz estrecho, Hotel Era Conte', 0, '!dentro buzón, no tienen llaves!', NULL, '2020-03-25 07:46:16', '2020-03-25 07:46:16'),
(3279, 7, 22, 29, 4, 'Carlos', 'Valle Conte', 'Camino iz estrecho, Hotel Era Conte', 0, '!dentro buzón, no tienen llaves!', NULL, '2020-03-25 07:46:48', '2020-03-25 07:46:48'),
(3280, 7, 22, 29, 4, 'Marta', 'Amarark', 'Camino iz estrecho, Hotel Era Conte', 0, '!dentro buzón, no tienen llaves!', NULL, '2020-03-25 07:47:22', '2020-03-25 07:47:22'),
(3281, 7, 22, 29, 5, 'Fco', 'Vivan Salamero', 'Horno', 5, 'al lado del bar, dejar en Alberuela Sta Orosia 4', NULL, '2020-03-25 07:49:10', '2020-03-25 07:49:10'),
(3282, 7, 22, 29, 6, 'José A.', 'Cortés Escario', 'Horno', 7, 'puerta grande, buzón en puerta', NULL, '2020-03-25 07:50:11', '2020-03-25 07:50:11'),
(3283, 7, 22, 29, 6, 'Nieves', 'Escario Usón', 'Horno', 7, 'puerta grande, buzón en puerta', NULL, '2020-03-25 07:50:49', '2020-03-25 07:50:49'),
(3284, 7, 22, 29, 6, '..., hijos', 'Cortés Escario', 'Horno', 7, 'puerta grande, buzón en puerta', NULL, '2020-03-25 07:51:30', '2020-03-25 07:51:30'),
(3285, 7, 22, 29, 6, 'Mª Teresa', 'Leris Palacio', 'Horno', 7, 'puerta grande, buzón en puerta', NULL, '2020-03-25 07:52:07', '2020-03-25 07:52:07'),
(3286, 7, 22, 29, 7, 'Pedro', 'Ferrando Domper', 'Horno', 6, 'callejón fondo, mano dcha', NULL, '2020-03-25 07:52:59', '2020-03-25 07:52:59'),
(3287, 7, 22, 29, 7, 'Mª Teresa', 'Ferrando Zamora', 'Horno', 6, 'callejón fondo, mano dcha', NULL, '2020-03-25 07:53:50', '2020-03-25 07:53:50'),
(3288, 7, 22, 29, 8, 'Pedro', 'Ferrando Pardina', 'Horno', 4, 'dejar en c/cascajo casa Valero', NULL, '2020-03-25 07:55:45', '2020-03-25 07:55:45'),
(3289, 7, 22, 29, 9, 'Lorenzo', 'Ferrando Gracia', 'Horno', 2, 'dejar en Hostelería de Guara', NULL, '2020-03-25 07:56:27', '2020-03-25 07:56:27'),
(3290, 7, 22, 29, 10, 'Gema', 'Vazquez Forellad', 'Horno', 0, 'Bar social, en ayto bajo la puerta del bar', NULL, '2020-03-25 08:02:08', '2020-03-25 08:02:08'),
(3291, 7, 22, 29, 11, '...', 'Ayto', 'San Lorenzo', 10, 'Lunes y viernes', NULL, '2020-03-25 08:04:25', '2020-03-25 08:04:25'),
(3292, 7, 22, 29, 11, '...', 'El salto', 'San Lorenzo', 10, 'Dejar en ayto', NULL, '2020-03-25 08:04:58', '2020-03-25 08:04:58'),
(3293, 7, 22, 29, 11, '...', 'Trivaldos', 'San Lorenzo', 10, 'Dejar en ayto', NULL, '2020-03-25 08:05:20', '2020-03-25 08:05:20'),
(3294, 7, 22, 29, 11, '...', 'Partida San Julian', 'San Lorenzo', 10, 'Dejar en ayto', NULL, '2020-03-25 08:06:16', '2020-03-25 08:06:16'),
(3295, 7, 22, 29, 12, 'Antonio', 'López Zamora', 'San Lorenzo', 12, 'entrar mesa puerta marrón rendija', NULL, '2020-03-25 08:08:43', '2020-03-25 08:08:43'),
(3296, 7, 22, 29, 12, 'Mª Jesús', 'Rufas Otín', 'San Lorenzo', 12, 'entrar mesa puerta marrón rendija', NULL, '2020-03-25 08:09:24', '2020-03-25 08:09:24'),
(3297, 7, 22, 29, 12, 'Antonio, Mª Jesús', 'López "de Zamora!!" Rufas', 'San Lorenzo', 12, 'entrar mesa puerta marrón rendija', NULL, '2020-03-25 08:10:23', '2020-03-25 08:10:23'),
(3298, 7, 22, 29, 13, 'Isidro', 'Clemente', 'San Lorenzo', 9, '', NULL, '2020-03-25 08:10:42', '2020-03-25 08:10:42'),
(3299, 7, 22, 29, 14, 'Valentín', 'Javierre Bentue', 'garaje, fachada blanca', 0, '', NULL, '2020-03-25 08:11:11', '2020-03-25 08:11:11'),
(3300, 7, 22, 29, 15, 'Pedro', 'Olivan Sierra', 'San Lorenzo', 13, 'cortina marrón buzón negro', NULL, '2020-03-25 08:12:29', '2020-03-25 08:12:29'),
(3301, 7, 22, 29, 15, 'Lidia', 'Cortina Falceto', 'San Lorenzo', 13, 'cortina marrón buzón negro', NULL, '2020-03-25 08:13:10', '2020-03-25 08:13:10'),
(3302, 7, 22, 29, 16, 'Mariano', 'Zamora Albero', 'San Lorenzo', 15, '', NULL, '2020-03-25 08:13:47', '2020-03-25 08:13:47'),
(3303, 7, 22, 29, 16, 'Fca', 'Foncillas Tornil', 'San Lorenzo', 15, '', NULL, '2020-03-25 08:14:37', '2020-03-25 08:14:37'),
(3304, 7, 22, 29, 17, 'Rafael', 'López Zamora', 'San Lorenzo', 17, '', NULL, '2020-03-25 08:15:05', '2020-03-25 08:15:05'),
(3305, 7, 22, 29, 17, 'Jovita', 'Usón Bellosta', 'San Lorenzo', 17, '', NULL, '2020-03-25 08:15:41', '2020-03-25 08:15:41'),
(3306, 7, 22, 29, 17, 'Ernes', 'Albiol', 'San Lorenzo', 17, '', NULL, '2020-03-25 08:19:36', '2020-03-25 08:19:36'),
(3307, 7, 22, 29, 18, 'Manuel', 'Foncillas Nasarre', 'San Lorenzo', 19, 'puerta garaje marrón grande', NULL, '2020-03-25 08:20:33', '2020-03-25 08:20:33'),
(3308, 7, 22, 29, 18, 'José', 'Tornil Rodrigo', 'San Lorenzo', 19, 'puerta garaje marrón grande', NULL, '2020-03-25 08:20:54', '2020-03-25 08:20:54'),
(3309, 7, 22, 29, 18, 'Ana, Esther', 'Tornil Foncillas', 'San Lorenzo', 19, 'puerta garaje marrón grande', NULL, '2020-03-25 08:21:37', '2020-03-25 08:21:37'),
(3310, 7, 22, 29, 18, 'Rubén', 'Asín Abiol', 'San Lorenzo', 19, 'puerta garaje marrón grande', NULL, '2020-03-25 08:22:15', '2020-03-25 08:22:15'),
(3311, 7, 22, 29, 19, 'José Mª', 'Otín Ballabriga', 'Torno', 3, 'dejarla en vertical', NULL, '2020-03-25 08:23:08', '2020-03-25 08:23:08'),
(3312, 7, 22, 29, 19, 'Larisa', 'Tereshenko', 'Torno', 3, 'dejarla en vertical', NULL, '2020-03-25 08:23:54', '2020-03-25 08:23:54'),
(3313, 7, 22, 29, 20, 'Campamento', 'Versal Sud', 'Torno', 0, 'Mixell Hernández', NULL, '2020-03-25 08:24:54', '2020-03-25 08:24:54'),
(3314, 7, 22, 29, 20, 'Mixell', 'Hernández', 'Torno', 0, 'Campamento Versal Sud', NULL, '2020-03-25 08:25:19', '2020-03-25 08:25:19'),
(3315, 7, 22, 29, 21, 'Javier', 'Vazquez Forrellad', 'Cascajo', 2, 'fachada beige', NULL, '2020-03-25 08:30:15', '2020-03-25 08:30:15'),
(3316, 7, 22, 29, 21, 'Eric', 'Pont Vazquez', 'Cascajo', 2, 'fachada beige', NULL, '2020-03-25 08:30:51', '2020-03-25 08:30:51'),
(3317, 7, 22, 29, 21, 'Manuel', 'Albajar Clemente', 'Cascajo', 2, 'fachada beige', NULL, '2020-03-25 08:31:15', '2020-03-25 08:31:15'),
(3318, 7, 22, 29, 22, 'Macario ', 'Casas Javierre', 'Cascajo', 4, 'vieja', NULL, '2020-03-25 08:31:55', '2020-03-25 08:31:55'),
(3319, 7, 22, 29, 22, 'Marcos', 'Santana Leris', 'Cascajo', 4, 'vieja', NULL, '2020-03-25 08:32:17', '2020-03-25 08:32:17'),
(3320, 7, 22, 29, 23, 'José Felix', 'Ontin Lasierra', 'Cascajo', 6, 'a mano dcha', NULL, '2020-03-25 08:32:55', '2020-03-25 08:32:55'),
(3321, 7, 22, 29, 23, 'Susana ', 'Ontín Prat', 'Cascajo', 6, 'a mano dcha', NULL, '2020-03-25 08:33:37', '2020-03-25 08:33:37'),
(3322, 7, 22, 29, 23, 'Rául', 'Olivan Cortina', 'Cascajo', 6, 'a mano dcha', NULL, '2020-03-25 08:34:04', '2020-03-25 08:34:04'),
(3323, 7, 22, 29, 24, 'Eduardo, Isabel', 'Codina Sampietro', 'Cascajo', 0, 'Chalet subiendo a la iz', NULL, '2020-03-25 08:35:17', '2020-03-25 08:35:17'),
(3324, 7, 22, 29, 25, 'Antonio, Ramón', 'Ballabriga Jal', 'Cascajo', 7, 'puerta marrón', NULL, '2020-03-25 08:38:33', '2020-03-25 08:38:33'),
(3325, 7, 22, 29, 26, 'Gildas', 'Alvari de Maramont', 'Cascajo', 7, 'Campamento Versal Sud- puerta pequeña', NULL, '2020-03-25 08:40:45', '2020-03-25 08:40:45'),
(3326, 7, 22, 29, 26, 'Miguel, Silvia', 'Hernández', 'Cascajo', 7, 'Campamento Versal Sud- puerta pequeña', NULL, '2020-03-25 08:41:34', '2020-03-25 08:41:34'),
(3327, 7, 22, 29, 27, 'Fco', 'Molina Javierre', 'Cascajo', 0, 'Chalet dcha subiendo, dejar en San Lorenzo 19', NULL, '2020-03-25 08:43:10', '2020-03-25 08:43:10'),
(3328, 7, 22, 29, 28, 'Pedro', 'Torres Sierra', 'Cascajo', 9, 'escaleras buzón', NULL, '2020-03-25 08:43:53', '2020-03-25 08:43:53'),
(3329, 7, 22, 29, 28, 'Natividad', 'Lafuente', 'Cascajo', 9, 'escaleras buzón', NULL, '2020-03-25 08:44:15', '2020-03-25 08:44:15'),
(3330, 7, 22, 29, 29, 'Justo', 'Bellosta Sesé', 'Cascajo', 0, 'Casa grande vieja', NULL, '2020-03-25 08:46:46', '2020-03-25 08:46:46'),
(3331, 7, 22, 29, 29, 'Lidia ', 'Bellosta Masia', 'Cascajo', 0, 'Casa grande vieja', NULL, '2020-03-25 08:47:51', '2020-03-25 08:47:51'),
(3332, 7, 22, 29, 29, 'Lidia', 'Bellosta Masia', 'Cascajo', 0, 'Casa grande vieja', NULL, '2020-03-25 08:48:58', '2020-03-25 08:48:58'),
(3333, 7, 22, 29, 30, 'Mª Carmén', 'Cutie Javierre', 'Cascajo', 0, 'Casa Valero, subiendo dcha, amarilla caravista', NULL, '2020-03-25 08:50:29', '2020-03-25 08:50:29'),
(3334, 7, 22, 29, 31, 'Angel ', 'Cutie Ferrando', 'Cascajo', 0, 'Casa Valero, subiendo dcha, amarilla caravista, !puerta de arriba!', NULL, '2020-03-25 08:51:24', '2020-03-25 08:51:24'),
(3335, 7, 22, 29, 32, 'José', 'Cutie Domper', 'Cascajo', 11, 'garaje verde', NULL, '2020-03-25 08:52:05', '2020-03-25 08:52:05'),
(3336, 7, 22, 29, 33, 'Antonio', 'Barón Buera', 'Cascajo', 20, 'entrada flores', NULL, '2020-03-25 08:53:06', '2020-03-25 08:53:06'),
(3337, 7, 22, 29, 33, 'Antonio', 'Barón Cortés', 'Cascajo', 20, 'entrada flores', NULL, '2020-03-25 08:53:34', '2020-03-25 08:53:34'),
(3338, 7, 22, 29, 33, 'Mª Carmén', 'Cortés Zamora', 'Cascajo', 20, 'entrada flores', NULL, '2020-03-25 08:54:06', '2020-03-25 08:54:06'),
(3339, 7, 22, 29, 33, '...', 'Cortés Ballabriga', 'Cascajo', 20, 'entrada flores', NULL, '2020-03-25 08:54:51', '2020-03-25 08:54:51'),
(3340, 7, 22, 29, 34, 'Adela ', 'Bellosta Frechin', 'Cascajo', 10, 'marrón clarita calle estrecha', NULL, '2020-03-25 08:56:29', '2020-03-25 08:56:29'),
(3341, 7, 22, 29, 34, 'Jesús', 'Ortas Bellosta', 'Cascajo', 10, 'marrón clarita calle estrecha', NULL, '2020-03-25 08:57:02', '2020-03-25 08:57:02'),
(3342, 7, 22, 29, 35, 'Joaquín Jesús', 'Gracia Cor', 'Santiago', 4, 'debajo iglesia, escaleras, fachada flores, puerta', NULL, '2020-03-25 09:17:45', '2020-03-25 09:17:45'),
(3343, 7, 22, 29, 35, 'Joaquín', 'Gracia Lasierra', 'Santiago', 4, 'debajo iglesia, escaleras, fachada flores, puerta', NULL, '2020-03-25 09:18:19', '2020-03-25 09:18:19'),
(3344, 7, 22, 29, 35, 'Pilar', 'Cor Asturia', 'Santiago', 4, 'debajo iglesia, escaleras, fachada flores, puerta', NULL, '2020-03-25 09:18:55', '2020-03-25 09:18:55'),
(3345, 7, 22, 29, 36, 'Fernando', 'Mata Ferrer', 'Santiago', 2, 'casa Usón, cortina marrón', NULL, '2020-03-25 09:19:50', '2020-03-25 09:19:50'),
(3346, 7, 22, 29, 36, 'Nieves', 'Cortés Escario', 'Santiago', 2, 'casa Usón, cortina marrón', NULL, '2020-03-25 09:20:26', '2020-03-25 09:20:26'),
(3347, 7, 22, 29, 36, 'Tania', 'Mata Cortés', 'Santiago', 2, 'casa Usón, cortina marrón', NULL, '2020-03-25 09:20:58', '2020-03-25 09:20:58'),
(3348, 7, 22, 29, 36, 'Guadalupe', 'Ferrer', 'Santiago', 2, 'casa Usón, cortina marrón', NULL, '2020-03-25 09:21:19', '2020-03-25 09:21:19'),
(3349, 7, 22, 29, 37, 'Carmen', 'Urban Gracia', 'Santiago', 5, 'casa Jacinto', NULL, '2020-03-25 09:22:05', '2020-03-25 09:22:05'),
(3350, 7, 22, 29, 38, 'Raquel', 'Eras Arnal', 'Santiago', 3, '', NULL, '2020-03-25 09:22:22', '2020-03-25 09:22:22'),
(3351, 7, 22, 29, 39, 'Alberto ', 'Vivan Bescós', 'Santiago', 1, 'dejar en casa Usón nº2', NULL, '2020-03-25 09:23:11', '2020-03-25 09:23:11'),
(3352, 7, 22, 29, 39, 'Aurea', 'Vivan Bescós', 'Santiago', 1, 'dejar en casa Usón nº2', NULL, '2020-03-25 09:23:42', '2020-03-25 09:23:42'),
(3353, 7, 22, 29, 40, '....', 'Bilanayur', 'Traviesa', 0, 'buzón negro, dcha', NULL, '2020-03-25 09:25:36', '2020-03-25 09:25:36'),
(3354, 7, 22, 29, 40, 'Milagros, Julia', 'Urban Leris', 'Traviesa', 0, 'buzón negro, dcha', NULL, '2020-03-25 09:26:08', '2020-03-25 09:26:08'),
(3355, 7, 22, 29, 40, 'Petra', 'Plana', 'Traviesa', 0, 'buzón negro, dcha', NULL, '2020-03-25 09:26:51', '2020-03-25 09:26:51'),
(3356, 7, 22, 29, 41, 'juan Ignacio', 'Bernués Sanz', 'Traviesa', 0, 'subiendo rampa buzón dcha', NULL, '2020-03-25 09:28:49', '2020-03-25 09:28:49'),
(3357, 7, 22, 29, 41, 'Begoña', 'Carrera Blecua', 'Traviesa', 0, 'subiendo rampa buzón dcha', NULL, '2020-03-25 09:29:21', '2020-03-25 09:29:21'),
(3358, 7, 22, 29, 41, 'Oriol', 'Sesé', 'Traviesa', 0, 'subiendo rampa buzón dcha ??', NULL, '2020-03-25 09:29:51', '2020-03-25 09:29:51'),
(3359, 7, 22, 29, 42, 'Ignacio', 'Ayerbe Sarvisé', 'Traviesa', 17, 'Guara Natura', NULL, '2020-03-25 09:30:37', '2020-03-25 09:30:37'),
(3360, 7, 22, 29, 43, 'Antonio', 'Cavero', 'Traviesa', 15, 'iz', NULL, '2020-03-25 09:31:09', '2020-03-25 09:31:09'),
(3361, 7, 22, 29, 43, 'José Fina', 'Campo', 'Traviesa', 15, 'iz', NULL, '2020-03-25 09:31:51', '2020-03-25 09:31:51'),
(3362, 7, 22, 29, 44, 'Fco', 'Carilla', 'Traviesa', 13, 'casa Chus', NULL, '2020-03-25 09:32:32', '2020-03-25 09:32:32'),
(3363, 7, 22, 29, 45, 'José Mª', 'Calvo Calvo', 'San Isidro', 1, '', NULL, '2020-03-25 09:33:14', '2020-03-25 09:33:14'),
(3364, 7, 22, 29, 46, 'Ainza ', 'Sierra Berdaguer', 'San Isidro', 3, '', NULL, '2020-03-25 09:34:15', '2020-03-25 09:34:15'),
(3365, 7, 22, 29, 47, 'Jaime', 'Berdaguer Urrón', 'Traviesa', 26, 'casa Urrón!', NULL, '2020-03-25 09:35:38', '2020-03-25 09:35:38'),
(3366, 7, 22, 29, 48, 'Domingo ', 'Leris Naya', 'Traviesa', 16, 'dejar en casa Cortés', NULL, '2020-03-25 09:36:34', '2020-03-25 09:36:34'),
(3367, 7, 22, 29, 48, 'Rosario', 'Palacio', 'Traviesa', 16, 'dejar en casa Cortés', NULL, '2020-03-25 09:37:06', '2020-03-25 09:37:06'),
(3368, 7, 22, 29, 49, 'Michel Jean', 'Bruel Federic', 'Traviesa', 18, 'garaje', NULL, '2020-03-25 09:37:42', '2020-03-25 09:37:42'),
(3369, 7, 22, 29, 50, 'Ramón', 'Campo Monclus', 'Traviesa', 12, 'buzón negro, familia', NULL, '2020-03-25 09:38:48', '2020-03-25 09:38:48'),
(3370, 7, 22, 29, 50, 'Olga', 'Campo', 'Traviesa', 12, 'buzón negro, familia', NULL, '2020-03-25 09:39:08', '2020-03-25 09:39:08'),
(3371, 7, 22, 29, 50, 'Aurea', 'Sanagustín', 'Traviesa', 12, 'buzón negro, familia', NULL, '2020-03-25 09:39:31', '2020-03-25 09:39:31'),
(3372, 7, 22, 29, 50, 'Jorge', 'Peralta Campo', 'Traviesa', 12, 'buzón negro, familia', NULL, '2020-03-25 09:40:29', '2020-03-25 09:40:29'),
(3373, 7, 22, 29, 50, 'Balbina', 'Martínez', 'Traviesa', 12, 'buzón negro, familia', NULL, '2020-03-25 09:40:47', '2020-03-25 09:40:47'),
(3374, 7, 22, 29, 51, '...', 'Michar', 'Traviesa', 7, 'franceses iz', NULL, '2020-03-25 09:41:26', '2020-03-25 09:41:26'),
(3375, 7, 22, 29, 51, '...', 'Michar', 'Traviesa', 7, 'franceses iz', NULL, '2020-03-25 09:41:39', '2020-03-25 09:41:39'),
(3376, 7, 22, 29, 51, '...', 'Alvarez', 'Traviesa', 7, 'franceses dcha', NULL, '2020-03-25 09:42:20', '2020-03-25 09:42:20'),
(3377, 7, 22, 29, 52, 'Manuel, Antonio', 'Bellosta Bellosta', 'Traviesa', 6, 'casa Tomaser, detrás puerta', NULL, '2020-03-25 09:43:54', '2020-03-25 09:43:54'),
(3378, 7, 22, 29, 52, 'José Manuel', 'Bellosta Valle', 'Traviesa', 6, 'casa Tomaser, detrás puerta', NULL, '2020-03-25 09:44:30', '2020-03-25 09:44:30'),
(3379, 7, 22, 29, 52, 'Celia', 'Valle', 'Traviesa', 6, 'casa Tomaser, detrás puerta', NULL, '2020-03-25 09:44:54', '2020-03-25 09:44:54'),
(3380, 7, 22, 29, 53, 'Raquel', 'López Diarte', 'Traviesa', 4, 'Colegio periódico', NULL, '2020-03-25 09:45:39', '2020-03-25 09:45:39'),
(3381, 7, 22, 29, 54, 'Pilar', 'Perez Soro', 'San Lorenzo', 3, '', NULL, '2020-03-25 09:46:18', '2020-03-25 09:46:18'),
(3382, 7, 22, 29, 54, 'Mariano', 'Jordán Bescós', 'San Lorenzo', 3, '', NULL, '2020-03-25 09:46:43', '2020-03-25 09:46:43'),
(3383, 7, 22, 29, 55, 'Julian', 'Calvo Calvo', 'San Lorenzo', 1, '', NULL, '2020-03-25 09:47:16', '2020-03-25 09:47:16'),
(3384, 7, 22, 29, 55, 'Mª Angeles', 'Usero Bescós', 'San Lorenzo', 1, '', NULL, '2020-03-25 09:47:46', '2020-03-25 09:47:46'),
(3385, 7, 22, 29, 55, 'Fermin', 'Usero', 'San Lorenzo', 1, '', NULL, '2020-03-25 09:48:03', '2020-03-25 09:48:03'),
(3386, 7, 22, 29, 56, 'Mª Isabel', 'Cortés Moros', 'San Lorenzo', 8, '', NULL, '2020-03-25 16:08:57', '2020-03-25 16:08:57'),
(3387, 7, 22, 29, 56, 'teresa', 'Jordan Leris', 'San Lorenzo', 8, '', NULL, '2020-03-25 16:09:57', '2020-03-25 16:09:57'),
(3388, 7, 22, 29, 57, 'Antonio', 'Ferrer Viñuales', 'San Lorenzo', 6, 'Aceites Ferrrer', NULL, '2020-03-25 16:10:45', '2020-03-25 16:10:45'),
(3389, 7, 22, 29, 57, 'Mercedes', 'Correas', 'San Lorenzo', 6, 'Aceites Ferrrer', NULL, '2020-03-25 16:11:38', '2020-03-25 16:11:38'),
(3390, 7, 22, 29, 57, '..., hijos', 'Ferrer Correas', 'San Lorenzo', 6, 'Aceites Ferrrer', NULL, '2020-03-25 16:12:04', '2020-03-25 16:12:04'),
(3391, 7, 22, 29, 58, 'Mauricio', 'Lafuente Cutie', 'San Lorenzo', 4, '', NULL, '2020-03-25 16:12:37', '2020-03-25 16:12:37'),
(3392, 7, 22, 29, 59, 'Felix, Mª Carmen', 'Leris Zamora', 'San Lorenzo', 2, '', NULL, '2020-03-25 16:22:30', '2020-03-25 16:22:30'),
(3393, 7, 22, 29, 59, 'Miguel', 'Fernandez Santos', 'San Lorenzo', 2, '', NULL, '2020-03-25 16:22:49', '2020-03-25 16:22:49'),
(3394, 7, 22, 29, 60, 'Pedro', 'Garcia Pancorbo', 'San Pedro', 2, 'casa rubia', NULL, '2020-03-25 16:24:10', '2020-03-25 16:24:10'),
(3395, 7, 22, 29, 60, 'Mª Angeles, Julian', 'Zamora Javierre', 'San Pedro', 2, 'casa rubia', NULL, '2020-03-25 16:24:55', '2020-03-25 16:24:55'),
(3396, 7, 22, 29, 61, 'Ana Mª', 'Sampietro Buisan', 'San Pedro', 4, '', NULL, '2020-03-25 16:25:33', '2020-03-25 16:25:33'),
(3397, 7, 22, 29, 61, 'Sara', 'Zamora Sampietro', 'San Pedro4', 0, '', NULL, '2020-03-25 16:26:28', '2020-03-25 16:26:28'),
(3398, 7, 22, 29, 61, 'Alfredo', 'Zamora Javierre', 'San Pedro', 4, '', NULL, '2020-03-25 16:27:09', '2020-03-25 16:27:09'),
(3399, 7, 22, 29, 62, 'Fco', 'Caraciolo Romero', 'San Pedro', 6, '', NULL, '2020-03-25 16:28:17', '2020-03-25 16:28:17'),
(3400, 7, 22, 29, 62, 'Pilar', 'Cortés', 'San Pedro', 6, '', NULL, '2020-03-25 16:28:34', '2020-03-25 16:28:34'),
(3401, 7, 22, 29, 63, 'Santigo', 'Otin Domper', 'Plaza', 8, 'buzón ventana', NULL, '2020-03-25 16:29:21', '2020-03-25 16:29:21'),
(3402, 7, 22, 29, 63, 'Santigo', 'Otin Lasierra', 'Plaza', 8, 'buzón ventana', NULL, '2020-03-25 16:29:42', '2020-03-25 16:29:42'),
(3403, 7, 22, 29, 63, 'Jaime', 'Puyol Cruz', 'Plaza', 8, 'buzón ventana', NULL, '2020-03-25 16:30:16', '2020-03-25 16:30:16'),
(3404, 7, 22, 29, 63, 'Flora', 'Otin Lasierra', 'Plaza', 8, 'buzón ventana', NULL, '2020-03-25 16:30:55', '2020-03-25 16:30:55'),
(3405, 7, 22, 29, 63, 'María', 'Mujal', 'Plaza', 8, 'buzón ventana', NULL, '2020-03-25 16:31:21', '2020-03-25 16:31:21'),
(3406, 7, 22, 29, 64, 'Antonio', 'Trallero Rodrigo', 'Plaza', 7, '', NULL, '2020-03-25 16:31:54', '2020-03-25 16:31:54'),
(3407, 7, 22, 29, 64, 'Josefa', 'Rodrigo', 'Plaza', 7, '', NULL, '2020-03-25 16:32:07', '2020-03-25 16:32:07'),
(3408, 7, 22, 29, 65, 'Javier, Santos', 'Javierre Albajar', 'Plaza', 6, '', NULL, '2020-03-25 16:32:39', '2020-03-25 16:32:39'),
(3409, 7, 22, 29, 66, 'María', 'Lopez de Zamora Bellosta', 'Plaza', 5, 'tres balcones, buzón garaje', NULL, '2020-03-25 16:33:48', '2020-03-25 16:33:48'),
(3410, 7, 22, 29, 66, 'Miguel', 'Fontanals Muñoz', 'Plaza', 5, 'tres balcones, buzón garaje', NULL, '2020-03-25 16:34:18', '2020-03-25 16:34:18'),
(3411, 7, 22, 29, 66, 'Pascuala', 'Cortina Zamora', 'Plaza', 5, 'tres balcones, buzón garaje', NULL, '2020-03-25 16:34:47', '2020-03-25 16:34:47'),
(3412, 7, 22, 29, 67, 'Elias', 'Palacio Valero', 'Plaza', 3, 'casa Jacovo', NULL, '2020-03-25 16:35:21', '2020-03-25 16:35:21'),
(3413, 7, 22, 29, 68, 'Angel Manuel', 'Trallero Calvo', 'Plaza', 2, 'dcha de la pz', NULL, '2020-03-25 16:36:08', '2020-03-25 16:36:08'),
(3414, 7, 22, 29, 69, 'José Luis', 'Rufas Otín', 'La cruz', 1, '', NULL, '2020-03-25 16:37:20', '2020-03-25 16:37:20'),
(3415, 7, 22, 29, 69, 'Josefa, Vitoriana', 'Zamora Foncillas', 'La cruz1', 0, '', NULL, '2020-03-25 16:37:54', '2020-03-25 16:37:54'),
(3416, 7, 22, 29, 69, 'David', 'Rufas Zamora', 'La cruz', 1, '', NULL, '2020-03-25 16:38:28', '2020-03-25 16:38:28'),
(3417, 7, 22, 29, 69, 'Agustín', 'Rodriguez', 'La cruz', 1, '', NULL, '2020-03-25 16:38:55', '2020-03-25 16:38:55'),
(3418, 7, 22, 29, 69, 'Yuneiky ', 'Fajardo Calas', 'La cruz', 1, '', NULL, '2020-03-25 16:39:33', '2020-03-25 16:39:33'),
(3419, 7, 22, 29, 70, 'Agustín, Angel', 'Rufas', 'La cruz', 0, 'casa grande enfrente de nº1', NULL, '2020-03-25 16:40:26', '2020-03-25 16:40:26'),
(3420, 7, 22, 29, 70, 'Reyes', 'Guillue', 'La cruz', 0, 'casa grande enfrente de nº1', NULL, '2020-03-25 16:41:14', '2020-03-25 16:41:14'),
(3421, 7, 22, 29, 70, 'Josefa', 'Jordan Monclus', 'La cruz', 0, 'casa grande enfrente de nº1, casa Rufas', NULL, '2020-03-25 16:42:10', '2020-03-25 16:42:10'),
(3422, 7, 22, 29, 70, 'Concepción', 'Fanlo', 'La cruz', 0, 'casa grande enfrente de nº1, casa Rufas', NULL, '2020-03-25 16:42:38', '2020-03-25 16:42:38'),
(3423, 7, 22, 29, 70, '...', 'Asoc O Batanar', 'La cruz', 0, 'casa grande enfrente de nº1, casa Rufas', NULL, '2020-03-25 16:43:36', '2020-03-25 16:43:36'),
(3424, 7, 22, 29, 71, 'Fructuoso', 'Vivan Canudo', 'La cruz', 2, '', NULL, '2020-03-25 16:44:04', '2020-03-25 16:44:04'),
(3425, 7, 22, 29, 71, 'Soledad', 'Bellosta', 'La cruz', 2, '', NULL, '2020-03-25 16:44:20', '2020-03-25 16:44:20'),
(3426, 7, 22, 29, 72, 'Jesús', 'Calvo Cortés', 'La cruz', 4, '', NULL, '2020-03-25 16:46:30', '2020-03-25 16:46:30'),
(3427, 7, 22, 29, 72, 'Pilar', 'Mavilla Campo', 'La cruz', 4, '', NULL, '2020-03-25 16:47:02', '2020-03-25 16:47:02'),
(3428, 7, 22, 29, 73, 'José', 'Otín', 'La cruz', 6, '', NULL, '2020-03-25 16:48:37', '2020-03-25 16:48:37'),
(3429, 7, 22, 29, 73, 'Montserrat', 'Calvo', 'La cruz', 6, '', NULL, '2020-03-25 16:48:51', '2020-03-25 16:48:51'),
(3430, 7, 22, 29, 73, 'Aitor', 'Otín', 'La cruz', 6, 'Helados Guara', NULL, '2020-03-25 16:49:19', '2020-03-25 16:49:19'),
(3431, 7, 22, 29, 73, 'Mª José', 'Olivan Cortina', 'La cruz', 6, 'Helados Guara', NULL, '2020-03-25 16:49:47', '2020-03-25 16:49:47'),
(3432, 7, 22, 29, 74, 'Rufina', 'Ribera Javierre', 'La cruz', 12, '', NULL, '2020-03-25 16:50:20', '2020-03-25 16:50:20'),
(3433, 7, 22, 29, 74, 'José', 'Benedé Andreu', 'La cruz', 12, '', NULL, '2020-03-25 16:50:34', '2020-03-25 16:50:34'),
(3434, 7, 22, 29, 75, 'Carlos', 'Otín Pardina', 'La cruz', 8, 'buzón blanco, puerta marron', NULL, '2020-03-25 16:51:29', '2020-03-25 16:51:29'),
(3435, 7, 22, 29, 75, 'Elena', 'Batalla Mingarro', 'La cruz', 8, 'buzón blanco, puerta marron', NULL, '2020-03-25 16:51:52', '2020-03-25 16:51:52'),
(3436, 7, 22, 29, 76, 'Leandro ', 'Foncillas Leris', 'La cruz', 3, 'dejar en el 1', NULL, '2020-03-25 16:52:28', '2020-03-25 16:52:28'),
(3437, 7, 22, 29, 77, 'Jesús', 'Ibor', 'La cruz', 5, 'dejar en casa Rufas', NULL, '2020-03-25 16:53:16', '2020-03-25 16:53:16'),
(3438, 7, 22, 29, 78, 'Antonio', 'Cambra Usón', 'La cruz', 7, 'buzón ventana', NULL, '2020-03-25 16:53:43', '2020-03-25 16:53:43'),
(3439, 7, 22, 29, 79, 'a.', 'Urfanel', 'La cruz', 7, 'buzón ventana', NULL, '2020-03-25 16:54:14', '2020-03-25 16:54:14'),
(3440, 7, 22, 29, 79, 'E.', 'Clemente', 'La cruz', 7, 'buzón ventana', NULL, '2020-03-25 16:54:35', '2020-03-25 16:54:35'),
(3441, 7, 22, 29, 80, 'Petra', 'Jordan', 'La cruz', 9, '', NULL, '2020-03-25 16:55:00', '2020-03-25 16:55:00'),
(3442, 7, 22, 29, 80, 'Marcos', 'Jordan Conte', 'La cruz', 9, '', NULL, '2020-03-25 16:55:26', '2020-03-25 16:55:26'),
(3443, 7, 22, 29, 81, 'Mª Isabel', 'Jordan Palacio', 'La cruz', 11, 'fachada piedra, cortina', NULL, '2020-03-25 16:56:17', '2020-03-25 16:56:17'),
(3444, 7, 22, 29, 81, 'Irene', 'Blanco Jordán', 'La cruz', 11, 'fachada piedra, cortina', NULL, '2020-03-25 16:56:56', '2020-03-25 16:56:56'),
(3445, 7, 22, 29, 81, 'María', 'Palacio Sesé', 'La cruz', 11, 'fachada piedra, cortina', NULL, '2020-03-25 16:57:23', '2020-03-25 16:57:23'),
(3446, 7, 22, 29, 81, 'Angel', 'Blanco Sevillana', 'La cruz', 11, 'fachada piedra, cortina', NULL, '2020-03-25 16:57:52', '2020-03-25 16:57:52'),
(3447, 7, 22, 29, 81, 'Gregorio', 'Jordan Belenguer', 'La cruz', 11, 'fachada piedra, cortina', NULL, '2020-03-25 16:58:18', '2020-03-25 16:58:18'),
(3448, 7, 22, 29, 82, 'Sergio', 'Padilla', 'La cruz', 10, 'buzón garaje en calle san fructuoso 2, CLIMBER', NULL, '2020-03-25 16:59:42', '2020-03-25 16:59:42'),
(3449, 7, 22, 29, 83, 'Antonio', 'Bellosta Bescos', 'La cruz', 13, '', NULL, '2020-03-25 17:00:13', '2020-03-25 17:00:13'),
(3450, 7, 22, 29, 84, 'Pedro', 'Bellosta Bescos', 'La cruz', 15, '', NULL, '2020-03-25 17:00:49', '2020-03-25 17:00:49'),
(3451, 7, 22, 29, 85, 'Antonio', 'Rodrigo Trallero', 'La cruz', 17, 'dejar en c/santiago 1', NULL, '2020-03-25 17:01:35', '2020-03-25 17:01:35'),
(3452, 7, 22, 29, 86, 'Luis', 'Gracia Arnal', 'La cruz', 19, '', NULL, '2020-03-25 17:01:58', '2020-03-25 17:01:58'),
(3453, 7, 22, 29, 86, 'Rosa', 'Atienza Sanchez', 'La cruz', 19, '', NULL, '2020-03-25 17:02:21', '2020-03-25 17:02:21'),
(3454, 7, 22, 29, 87, 'Michele', 'Gatica', 'La cruz', 21, '', NULL, '2020-03-25 17:03:17', '2020-03-25 17:03:17'),
(3455, 7, 22, 29, 87, 'Mariela', 'Velloso', 'La cruz', 21, '', NULL, '2020-03-25 17:03:33', '2020-03-25 17:03:33'),
(3456, 7, 22, 29, 88, 'Alba', 'Batalla Iglesias', 'La cruz', 20, '', NULL, '2020-03-25 17:04:43', '2020-03-25 17:04:43'),
(3457, 7, 22, 29, 88, 'Ramón', 'Aljibe', 'La cruz', 20, '', NULL, '2020-03-25 17:04:58', '2020-03-25 17:04:58'),
(3458, 7, 22, 29, 89, 'Lorenzo', 'Vivan Bescós', 'La cruz', 24, '', NULL, '2020-03-25 17:05:19', '2020-03-25 17:05:19'),
(3459, 7, 22, 29, 90, 'Emilio', 'Ariño Lasierra', 'La cruz', 26, '', NULL, '2020-03-25 17:06:38', '2020-03-25 17:06:38'),
(3460, 7, 22, 29, 91, 'Encarna', 'Terreu', 'La cruz', 25, '', NULL, '2020-03-25 17:06:58', '2020-03-25 17:06:58'),
(3461, 7, 22, 29, 92, 'Agustín', 'Bellosta Parrilla', 'La cruz', 27, '', NULL, '2020-03-25 17:07:22', '2020-03-25 17:07:22'),
(3462, 7, 22, 29, 93, 'Sergio', 'Padilla Hinojosa', 'San Fructuoso', 2, '', NULL, '2020-03-25 17:08:04', '2020-03-25 17:08:04'),
(3463, 7, 22, 29, 94, '...', 'Batalla Mingarro', 'San Fructuoso', 4, 'puerta marrón, buzón vertical, certificados cruz 8', NULL, '2020-03-25 17:09:48', '2020-03-25 17:09:48'),
(3464, 7, 22, 29, 94, '...', 'parroquias de la zona', 'San Fructuoso', 4, '', NULL, '2020-03-25 17:10:19', '2020-03-25 17:10:19'),
(3465, 7, 22, 29, 94, '...', 'Agronautica', 'San Fructuoso', 4, '', NULL, '2020-03-25 17:10:38', '2020-03-25 17:10:38'),
(3466, 7, 22, 29, 95, 'María', 'Valle', 'San Fructuoso', 6, 'buzón verde', NULL, '2020-03-25 17:11:10', '2020-03-25 17:11:10'),
(3467, 7, 22, 29, 95, 'María', 'Valle', 'San Fructuoso', 6, 'buzón verde', NULL, '2020-03-25 17:11:29', '2020-03-25 17:11:29'),
(3468, 7, 22, 29, 95, 'José Mª', 'Leris', 'San Fructuoso', 6, 'buzón verde', NULL, '2020-03-25 17:12:04', '2020-03-25 17:12:04'),
(3469, 7, 22, 29, 95, 'Juan A.', 'Leris Valle', 'San Fructuoso', 6, 'buzón verde', NULL, '2020-03-25 17:12:41', '2020-03-25 17:12:41'),
(3470, 7, 22, 29, 96, 'Fco', 'Givert', 'San Fructuoso', 1, '', NULL, '2020-03-25 17:13:09', '2020-03-25 17:13:09'),
(3471, 7, 22, 29, 96, 'Natalia', 'Casas Terreu', 'San Fructuoso', 1, '', NULL, '2020-03-25 17:13:30', '2020-03-25 17:13:30'),
(3472, 7, 22, 29, 97, 'Salvador, Gemma', 'Pelegrin', 'San Fructuoso', 3, '', NULL, '2020-03-25 17:14:33', '2020-03-25 17:14:33'),
(3473, 7, 22, 29, 97, 'Carlos', 'García Lloret', 'San Fructuoso', 3, '', NULL, '2020-03-25 17:15:06', '2020-03-25 17:15:06'),
(3474, 7, 22, 29, 98, 'Pilar', 'Campo Monclus', 'San Fructuoso', 10, 'nº3 antiguo', NULL, '2020-03-25 17:42:51', '2020-03-25 17:42:51'),
(3475, 7, 22, 29, 98, 'sabino', 'Nerin', 'San Fructuoso', 10, 'nº3 antiguo', NULL, '2020-03-25 17:43:22', '2020-03-25 17:43:22'),
(3476, 7, 22, 29, 98, 'Josefa', 'Gistau Mur', 'San Fructuoso', 10, 'nº3 antiguo', NULL, '2020-03-25 17:43:56', '2020-03-25 17:43:56'),
(3477, 7, 22, 29, 98, 'pilar', 'Foncillas Gistau', 'San Fructuoso', 10, 'nº3 antiguo', NULL, '2020-03-25 17:44:23', '2020-03-25 17:44:23'),
(3478, 7, 22, 29, 99, 'Adela', 'Jordan', 'San Fructuoso', 12, '', NULL, '2020-03-25 17:44:49', '2020-03-25 17:44:49'),
(3479, 7, 22, 29, 99, 'Mª Carmén', 'Gonzalez Redondo', 'San Fructuoso', 12, '', NULL, '2020-03-25 17:45:33', '2020-03-25 17:45:33'),
(3480, 7, 22, 29, 100, 'Antonio', 'Nasarre Calvo o Jordan', 'San Fructuoso', 16, 'pasadizo iz, escaleras junto iglesia', NULL, '2020-03-25 17:48:13', '2020-03-25 17:48:13'),
(3481, 7, 22, 29, 100, 'Rosario', 'Grael Rodrigo', 'San Fructuoso', 16, 'pasadizo iz, escaleras junto iglesia', NULL, '2020-03-25 17:48:56', '2020-03-25 17:48:56'),
(3482, 7, 22, 29, 101, 'Primitiva', 'Calvo Bellosta', 'San Fructuoso', 18, 'dcha', NULL, '2020-03-25 17:49:33', '2020-03-25 17:49:33'),
(3483, 7, 22, 29, 102, 'Aurea', 'Bescos Vivan', 'San Fructuoso', 20, 'dejar en c/santiago 1', NULL, '2020-03-25 17:51:31', '2020-03-25 17:51:31'),
(3484, 7, 22, 29, 102, 'Antonio', 'Rodrigo Nasarre', 'San Fructuoso', 20, 'dejar en c/santiago 1', NULL, '2020-03-25 17:52:02', '2020-03-25 17:52:02'),
(3485, 7, 22, 29, 103, 'Fco', 'Cortés Escario', 'San Fructuoso', 5, '', NULL, '2020-03-25 17:52:34', '2020-03-25 17:52:34'),
(3486, 7, 22, 29, 104, 'Justo', 'Sancerni', 'San Fructuoso', 7, '', NULL, '2020-03-25 17:52:55', '2020-03-25 17:52:55'),
(3487, 7, 22, 29, 105, 'José', 'Carruesco Jordan', 'San Fructuoso', 22, '', NULL, '2020-03-25 17:53:22', '2020-03-25 17:53:22'),
(3488, 7, 22, 29, 106, 'Josefa', 'Cortes Leris', 'San Fructuoso', 24, '', NULL, '2020-03-25 17:53:58', '2020-03-25 17:53:58'),
(3489, 7, 22, 29, 107, 'Agustín', 'Bellosta', 'San Fructuoso', 11, '', NULL, '2020-03-25 17:54:21', '2020-03-25 17:54:21'),
(3490, 7, 22, 29, 107, 'Fernando', 'mata cuadrado', 'San Fructuoso', 11, '', NULL, '2020-03-25 17:54:45', '2020-03-25 17:54:45'),
(3491, 7, 22, 29, 108, 'Rafael', 'Calvo', 'San Fructuoso', 28, '', NULL, '2020-03-25 17:55:06', '2020-03-25 17:55:06'),
(3492, 7, 22, 29, 108, 'Mª Jesús', 'seas', 'San Fructuoso', 28, '', NULL, '2020-03-25 17:55:29', '2020-03-25 17:55:29'),
(3493, 7, 22, 29, 109, 'patricia', 'arnal', 'San Fructuoso', 13, '', NULL, '2020-03-25 17:55:59', '2020-03-25 17:55:59'),
(3494, 7, 22, 29, 110, 'Raul', 'Rufas', 'San Fructuoso', 0, 'chalet al final dcha, dejar en casa Rufas', NULL, '2020-03-25 17:57:24', '2020-03-25 17:57:24'),
(3495, 7, 22, 29, 110, 'Concepción', 'Fanlo', 'San Fructuoso', 0, 'chalet al final dcha, dejar en casa Rufas', NULL, '2020-03-25 17:58:29', '2020-03-25 17:58:29'),
(3496, 7, 22, 29, 111, 'felipe', 'arnal', 'honguera, pone c/Torno', 115, '', NULL, '2020-03-25 18:01:03', '2020-03-25 18:01:03'),
(3497, 7, 22, 29, 111, 'marta', 'sanchez', 'honguera, pone c/Torno', 115, '', NULL, '2020-03-25 18:01:47', '2020-03-25 18:01:47'),
(3498, 7, 22, 29, 111, 'Rafael', 'rodillo soto', 'honguera, pone c/Torno', 115, '', NULL, '2020-03-25 18:02:13', '2020-03-25 18:02:13'),
(3499, 7, 22, 29, 112, 'luis', 'cernadas', 'honguera, pone c/Torno', 0, 'cortina colores', NULL, '2020-03-25 18:03:04', '2020-03-25 18:03:04'),
(3500, 7, 22, 29, 113, 'Lorenzo', 'Cortina Falceto', 'honguera, pone c/Torno', 0, 'buzón granate Elarte', NULL, '2020-03-25 18:08:50', '2020-03-25 18:08:50'),
(3501, 7, 22, 29, 113, 'Manuela', 'Casagualpa PIllage', 'honguera, pone c/Torno', 0, 'buzón granate Elarte', NULL, '2020-03-25 18:09:53', '2020-03-25 18:09:53'),
(3502, 7, 22, 29, 114, 'Leonardo', 'Ferrando', 'honguera, pone c/Torno', 1, 'dejar en Hostelería de Guara', NULL, '2020-03-25 18:11:49', '2020-03-25 18:11:49'),
(3503, 7, 22, 29, 114, 'Lourdes', 'Ferrando olivan', 'honguera, pone c/Torno', 1, 'dejar en Hostelería de Guara', NULL, '2020-03-25 18:12:43', '2020-03-25 18:12:43'),
(3504, 7, 22, 29, 115, 'Mora', 'Ribatallada', 'honguera, pone c/Torno', 3, '', NULL, '2020-03-25 18:13:18', '2020-03-25 18:13:18'),
(3505, 7, 22, 29, 116, 'felipe', 'García Arnal', 'honguera, pone c/Torno', 2, 'dejar en cruz 19', NULL, '2020-03-25 18:14:07', '2020-03-25 18:14:07'),
(3506, 7, 22, 29, 117, 'Julian', 'Viñuales Rufas', 'honguera, pone c/Torno', 0, 'casa sola, buzón negro', NULL, '2020-03-25 18:14:56', '2020-03-25 18:14:56'),
(3507, 7, 22, 29, 118, '....', '.....', '', 0, '', NULL, '2020-03-25 18:17:36', '2020-03-25 18:17:36'),
(3508, 7, 22, 30, 43, '...', '....', '', 0, '', NULL, '2020-03-25 18:20:47', '2020-03-25 18:20:47'),
(3509, 7, 22, 29, 118, 'Ángela, Antonio', 'Bellosta Batalla', 'Barrio tres torres', 0, 'casa más arriba iz, escaleras, buzón granate', NULL, '2020-04-18 08:29:32', '2020-04-18 08:29:32'),
(3510, 7, 22, 29, 118, 'Antonio', 'Bellosta Cortina', 'Barrio tres torres', 0, 'casa más arriba iz, escaleras, buzón granate', NULL, '2020-04-18 08:30:15', '2020-04-18 08:30:15'),
(3511, 7, 22, 29, 118, 'Blanca', 'Batalla Mingarro', 'Barrio tres torres', 0, 'casa más arriba iz, escaleras, buzón granate', NULL, '2020-04-18 08:30:46', '2020-04-18 08:30:46'),
(3512, 7, 22, 29, 118, '....', 'Sociedad de cazadores', 'Barrio tres torres', 0, 'casa más arriba iz, escaleras, buzón granate', NULL, '2020-04-18 08:31:40', '2020-04-18 08:31:40'),
(3513, 7, 22, 29, 119, 'Laura ', 'Ventura', 'Barrio tres torres', 0, '', NULL, '2020-04-18 08:32:34', '2020-04-18 08:32:34'),
(3514, 7, 22, 29, 119, '...', 'Compañia Guías de Bierge', 'Barrio tres torres', 0, '', NULL, '2020-04-18 08:33:10', '2020-04-18 08:33:10'),
(3515, 7, 22, 29, 120, 'Caterin', 'Scebarc', 'Barrio tres torres', 0, 'Dejar en casa al lado de centro de interpretación', NULL, '2020-04-18 08:34:45', '2020-04-18 08:34:45'),
(3516, 7, 22, 29, 121, '...', 'zzzz', 'Barrio tres torres', 0, '', NULL, '2020-04-18 08:35:50', '2020-04-18 08:35:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuadro_de_clasificaciones`
--
ALTER TABLE `cuadro_de_clasificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuadro_de_clasificaciones_unidad_id_foreign` (`unidad_id`);

--
-- Indices de la tabla `pueblos`
--
ALTER TABLE `pueblos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pueblos_title_unique` (`title`),
  ADD KEY `pueblos_unidad_id_foreign` (`unidad_id`),
  ADD KEY `pueblos_seccion_id_foreign` (`seccion_id`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `secciones_title_unique` (`title`),
  ADD KEY `secciones_unidad_id_foreign` (`unidad_id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unidades_title_unique` (`title`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_unidad_id_foreign` (`unidad_id`),
  ADD KEY `usuarios_seccion_id_foreign` (`seccion_id`),
  ADD KEY `usuarios_pueblo_id_foreign` (`pueblo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuadro_de_clasificaciones`
--
ALTER TABLE `cuadro_de_clasificaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT de la tabla `pueblos`
--
ALTER TABLE `pueblos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3517;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuadro_de_clasificaciones`
--
ALTER TABLE `cuadro_de_clasificaciones`
  ADD CONSTRAINT `cuadro_de_clasificaciones_unidad_id_foreign` FOREIGN KEY (`unidad_id`) REFERENCES `unidades` (`id`);

--
-- Filtros para la tabla `pueblos`
--
ALTER TABLE `pueblos`
  ADD CONSTRAINT `pueblos_seccion_id_foreign` FOREIGN KEY (`seccion_id`) REFERENCES `secciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pueblos_unidad_id_foreign` FOREIGN KEY (`unidad_id`) REFERENCES `unidades` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `secciones_unidad_id_foreign` FOREIGN KEY (`unidad_id`) REFERENCES `unidades` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_pueblo_id_foreign` FOREIGN KEY (`pueblo_id`) REFERENCES `pueblos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuarios_seccion_id_foreign` FOREIGN KEY (`seccion_id`) REFERENCES `secciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuarios_unidad_id_foreign` FOREIGN KEY (`unidad_id`) REFERENCES `unidades` (`id`) ON DELETE CASCADE;
--
-- Base de datos: `curso_styde`
--
CREATE DATABASE IF NOT EXISTS `curso_styde` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `curso_styde`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_06_22_090046_add_profession_to_users', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Base de datos: `homestead`
--
CREATE DATABASE IF NOT EXISTS `homestead` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `homestead`;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
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
-- Estructura de tabla para la tabla `pma__central_columns`
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
-- Estructura de tabla para la tabla `pma__column_info`
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
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('homestead', '{"angular_direct":"direct","snap_to_grid":"off","relation_lines":"true"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
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
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
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
-- Estructura de tabla para la tabla `pma__navigationhiding`
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
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('homestead', '[{"db":"blibiotecaAbiego","table":"libros"},{"db":"controlListadosPueblos","table":"users"},{"db":"controlListadosPueblos","table":"usuarios"},{"db":"curso_styde","table":"users"},{"db":"curso_styde","table":"password_resets"},{"db":"curso_styde","table":"migrations"},{"db":"controlListadosPueblos","table":"pueblos"},{"db":"controlListadosPueblos","table":"unidades"},{"db":"blog","table":"users"},{"db":"controlListadosPueblos","table":"cuadro_de_clasificaciones"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
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
-- Estructura de tabla para la tabla `pma__savedsearches`
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
-- Estructura de tabla para la tabla `pma__table_coords`
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
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('homestead', 'advanced-eloquent', 'books', '{"sorted_col":"`books`.`id`  DESC"}', '2018-02-20 18:38:32'),
('homestead', 'controlListadosPueblos', 'cuadro_de_clasificaciones', '{"sorted_col":"`cuadro_de_clasificaciones`.`number_section` ASC"}', '2017-11-20 20:46:46'),
('homestead', 'controlListadosPueblos', 'usuarios', '{"sorted_col":"`usuarios`.`pueblo_id`  DESC"}', '2018-02-25 09:46:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
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
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('homestead', '2017-09-15 07:18:27', '{"collation_connection":"utf8mb4_unicode_ci","lang":"es"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
