-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: MYSQL5045.site4now.net
-- Время создания: Мар 16 2022 г., 06:00
-- Версия сервера: 8.0.22
-- Версия PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_a7f0d3_myshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `product_attribute_id` bigint UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'aliquid dolor', 'aliquid-dolor', '2022-01-14 03:46:12', '2022-01-14 03:46:12'),
(2, 'odio ut', 'odio-ut', '2022-01-14 03:46:14', '2022-01-14 03:46:14'),
(3, 'et dolor', 'et-dolor', '2022-01-14 03:46:14', '2022-01-14 03:46:14'),
(4, 'et sed', 'et-sed', '2022-01-14 03:46:15', '2022-01-14 03:46:15'),
(5, 'in nostrum', 'in-nostrum', '2022-01-14 03:46:15', '2022-01-14 03:46:15'),
(6, 'et repellendus', 'et-repellendus', '2022-01-14 03:46:15', '2022-01-14 03:46:15'),
(8, 'New Test Category', 'new-test-category', '2022-01-18 03:55:58', '2022-01-18 03:55:58');

-- --------------------------------------------------------

--
-- Структура таблицы `command_members`
--

CREATE TABLE `command_members` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `command_members`
--

INSERT INTO `command_members` (`id`, `name`, `work`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(2, 'Jora', 'Admin', 'Jora Admin', '1643141877.png', '2022-01-26 04:17:57', '2022-01-26 04:17:57'),
(3, 'Nikita', 'Owner', 'Nikita Owner', '1643142297.png', '2022-01-26 04:24:57', '2022-01-26 04:24:57');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Nikita', 'likeaboss13371@gmail.com', '+380961149776', 'k', '2022-01-31 07:53:21', '2022-01-31 07:53:21');

-- --------------------------------------------------------

--
-- Структура таблицы `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, 'SUS777', 'fixed', '5.00', '5000.00', '2022-01-19 07:31:33', '2022-01-20 02:21:32', '2022-01-31'),
(2, 'VASYA228', 'fixed', '100.00', '100.00', '2022-01-20 02:14:14', '2022-01-20 02:14:14', '2022-01-31');

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
-- Структура таблицы `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,6', 6, '2022-01-17 06:09:57', '2022-01-17 04:38:39');

-- --------------------------------------------------------

--
-- Структура таблицы `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(27, 'only today', 'Incredible discounts!', '50', 'localhost8000/shop', '1645191826.jpg', 1, '2022-02-18 21:43:46', '2022-02-18 21:43:46'),
(28, 'rather buy', 'The largest number of goods in Europe!', '150', 'localhost8000/shop', '1645191906.jpg', 1, '2022-02-18 21:45:06', '2022-02-18 21:45:06'),
(29, 'top quality', 'You won\'t regret your choice!', '300', 'localhost8000/shop', '1645192045.jpg', 1, '2022-02-18 21:47:25', '2022-02-18 21:47:25');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_13_155116_create_sessions_table', 1),
(7, '2022_01_13_190311_create_categories_table', 1),
(8, '2022_01_13_190443_create_products_table', 1),
(9, '2022_01_16_150425_create_home_sliders_table', 2),
(10, '2022_01_16_200436_create_home_categories_table', 3),
(11, '2022_01_17_161015_create_sales_table', 4),
(12, '2022_01_18_223730_create_coupons_table', 5),
(13, '2022_01_19_182853_create_orders_table', 6),
(14, '2022_01_19_182953_create_order_items_table', 6),
(15, '2022_01_19_183034_create_shippings_table', 6),
(16, '2022_01_19_183116_create_transactions_table', 6),
(17, '2022_01_21_182948_add_delivered_canceled_date_to_orders_table', 7),
(18, '2022_01_21_193242_add_rstatus_to_order_items_table', 8),
(19, '2022_01_22_140714_create_contacts_table', 9),
(20, '2022_01_22_150317_create_settings_table', 10),
(21, '2022_01_23_161228_create_shoppingcart_table', 11),
(22, '2022_01_23_164526_create_subcategories_table', 12),
(23, '2022_01_23_215154_add_subcategory_id_to_products_table', 13),
(24, '2022_01_24_192129_create_profiles_table', 14),
(25, '2022_01_24_213738_create_product_attributes_table', 15),
(26, '2022_01_25_150709_create_attribute_values_table', 16),
(27, '2022_01_25_174927_add_options_to_order_items_table', 17),
(28, '2022_01_25_182745_create_command_members_table', 18),
(29, '2022_02_05_104119_create_additional_infos_table', 19);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT '0',
  `options` longtext COLLATE utf8mb4_unicode_ci
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 'occaecati praesentium unde nisi', 'occaecati-praesentium-unde-nisi', 'Optio ab excepturi dolorem. Aut consequatur ducimus optio velit. Voluptatum occaecati quis optio possimus. Sint modi non et modi vitae autem quia.', 'Nam voluptas voluptatem et ab laborum explicabo. Temporibus dignissimos dolores dignissimos id. Doloribus cum rerum sit consequuntur quas fugiat. Dolor non excepturi fugit repellat quidem. Maiores sed tempora tempora nobis ut et eos recusandae. Laborum facere a nemo quibusdam tempora in. Natus necessitatibus labore occaecati pariatur corrupti temporibus. Veniam et eos autem cumque earum consequatur. Aperiam nihil quo ullam dolor maxime quos harum est.', '71.00', '100.00', 'DIGI446', 'instock', 0, 199, 'digital_1.jpg', NULL, 4, '2022-01-14 03:46:16', '2022-01-17 23:43:12', NULL),
(2, 'est ea debitis iure', 'est-ea-debitis-iure', 'Doloremque accusantium voluptates cumque in inventore saepe consequuntur. Accusamus et est ut velit earum amet consequatur. Non rerum aut dicta fugiat. Qui sequi deserunt qui sed.', 'Perspiciatis aut harum qui dolorem rem veniam sint. Autem voluptas eum et dolor. Et sequi id voluptate exercitationem recusandae explicabo nobis velit. Et minima eum illum temporibus excepturi. Ex sed officia ut impedit suscipit omnis magnam. Veniam et veniam vero et. Tenetur minima consequatur et maiores. Minus odit ea minus modi possimus. Voluptatum qui qui voluptatem voluptate amet. Eaque voluptas quis consequatur. Id perspiciatis at est corrupti accusamus. Laborum sunt est est saepe.', '101.00', '70.00', 'DIGI193', 'instock', 0, 139, 'digital_10.jpg', NULL, 2, '2022-01-14 03:46:16', '2022-01-17 23:54:54', NULL),
(3, 'in voluptate ut officiis', 'in-voluptate-ut-officiis', 'Alias alias voluptas vel rerum quia sit. Incidunt vero laudantium laboriosam eius assumenda dicta. Et qui sit esse voluptatum. Sequi hic iure mollitia ab.', 'Quis quo quia vel et nisi velit. Quibusdam est corporis consectetur a ullam voluptatem asperiores. Voluptate aut ipsum tenetur maxime voluptas assumenda. Impedit nostrum tempora magnam perferendis. Nihil et aspernatur ut nostrum earum odit molestiae. Quo ipsa ut sapiente eius. Voluptatem quisquam aliquam aperiam quo. Pariatur autem modi vero voluptatem ullam qui. Quia sapiente suscipit ullam natus vel. Enim blanditiis mollitia hic voluptatum. Porro et quasi sit eos itaque omnis.', '420.00', '320.00', 'DIGI135', 'instock', 0, 189, 'digital_3.jpg', NULL, 3, '2022-01-14 03:46:17', '2022-01-17 23:55:28', NULL),
(4, 'iste sint ipsum unde', 'iste-sint-ipsum-unde', 'Et illum qui ex omnis. Sint numquam magnam et non in aut ducimus. Impedit recusandae omnis maiores illum exercitationem eligendi qui. Corrupti et ullam consequatur qui nihil.', 'Id voluptatibus odio in et non et. Ut maxime et aut delectus sunt quia unde. Consequatur quia et atque sit vitae. Quis soluta dolor sequi nisi illo voluptatibus. Et tempora debitis molestias dignissimos consequatur. Sit ut aliquam quidem blanditiis et. Mollitia praesentium sunt necessitatibus molestiae. Hic incidunt dicta voluptatem nostrum distinctio harum impedit. Qui veniam eum amet labore velit quos.', '386.00', '300.00', 'DIGI440', 'instock', 0, 158, 'digital_21.jpg', NULL, 2, '2022-01-14 03:46:17', '2022-01-17 23:57:25', NULL),
(5, 'quibusdam delectus provident at', 'quibusdam-delectus-provident-at', 'Eos id ab est et consequatur. Nostrum amet explicabo quia doloremque. Commodi repellendus temporibus et quo explicabo est enim. Suscipit doloremque labore molestiae.', 'Ipsam qui ducimus consequatur ab et velit. Est soluta ut pariatur laboriosam porro voluptatem. Voluptatem deserunt vitae voluptates vel corporis omnis ad. Ipsam tempore error animi ullam earum. Ea et tempora sint. Et fugiat aliquid amet optio impedit expedita quasi. Nobis quia nihil nisi est. Occaecati quasi facere voluptas impedit eaque in.', '132.00', '82.00', 'DIGI388', 'instock', 0, 149, 'digital_5.jpg', NULL, 4, '2022-01-14 03:46:17', '2022-01-17 23:57:59', NULL),
(6, 'et et quidem aut', 'et-et-quidem-aut', 'Et iure exercitationem nesciunt at. Qui impedit est incidunt eum et aut consequatur repellendus. Et aut a aut eius et.', 'Iste quo illo tenetur. Ut sit qui commodi repellendus autem libero iste excepturi. Error impedit assumenda similique sit ea pariatur. Optio sed a facilis dolor. Et maxime eius inventore facilis deserunt. Ea numquam et incidunt et voluptas. Velit non aliquam fuga culpa assumenda necessitatibus et. Ut quo numquam nesciunt atque ipsa.', '264.00', NULL, 'DIGI348', 'instock', 0, 158, 'digital_11.jpg', NULL, 1, '2022-01-14 03:46:18', '2022-01-14 03:46:18', NULL),
(7, 'rerum voluptatem vitae eius', 'rerum-voluptatem-vitae-eius', 'Quas laborum sed quod ut fuga voluptas ut. Adipisci nihil quis ea ut nemo. Nesciunt est qui adipisci qui unde. Aperiam similique sunt dignissimos molestiae incidunt.', 'Minus incidunt aut dolor similique aperiam quo. Qui tempore nam quis totam sint laborum veritatis officiis. Voluptatibus consequuntur ut perferendis et. Laborum ullam voluptatem doloribus maiores quis dolorum aut. Est debitis nemo laborum autem eveniet eligendi. Qui ut ut consequatur quod aut odit molestiae quisquam. Et numquam aperiam odio minus rerum. Laboriosam consequuntur molestiae aspernatur vitae sed.', '289.00', NULL, 'DIGI286', 'instock', 0, 123, 'digital_4.jpg', NULL, 1, '2022-01-14 03:46:18', '2022-01-14 03:46:18', NULL),
(8, 'ad recusandae aliquid omnis', 'ad-recusandae-aliquid-omnis', 'Aut voluptatibus sit aliquam. Et iusto voluptatem tempore perspiciatis quo.', 'Asperiores perspiciatis cumque similique ut. Accusamus id libero quisquam perferendis atque et assumenda aut. Aut quia quae quaerat quas ad qui. Excepturi et sit aperiam. Quo cupiditate non ut. Ad vel quod et. Veniam in repellat delectus animi. Fugiat voluptas minus labore. Quo iure et veritatis facere reiciendis sit. Rem neque maxime ipsum. Iure rerum numquam rerum minima.', '285.00', NULL, 'DIGI179', 'instock', 0, 159, 'digital_19.jpg', NULL, 1, '2022-01-14 03:46:19', '2022-01-14 03:46:19', NULL),
(9, 'aliquam impedit alias rerum', 'aliquam-impedit-alias-rerum', 'Unde quam placeat qui. Cum optio ut corporis cupiditate in. Consectetur doloremque earum neque et ipsam qui. Autem officia vel accusantium voluptate quis.', 'Quo reprehenderit quia dignissimos quo. Et sint expedita commodi rerum. Voluptatem vero reiciendis voluptatem eveniet. Aut ducimus et ad praesentium voluptatem similique est. Totam nihil dicta quo placeat. Expedita non velit quis nemo maiores aut adipisci. Doloremque et aut eos laborum amet et. Et dolor unde eaque aliquid distinctio quasi.', '363.00', NULL, 'DIGI321', 'instock', 0, 123, 'digital_18.jpg', NULL, 4, '2022-01-14 03:46:19', '2022-01-14 03:46:19', NULL),
(10, 'AAAAAAAAAAAAAAAA', 'aaaaaaaaaaaaaaaa', 'Similique aliquid excepturi iure perferendis totam enim. Mollitia est nostrum quidem rerum. Et explicabo quis earum et sit repudiandae. Nostrum cum rerum quo repudiandae iure doloremque.', 'Neque eaque ut rerum nemo iure provident. Tempore vel expedita perferendis dolorem vel. Minus cumque nihil similique quia architecto sed. Est quis et ipsa autem officia quas sint. Qui aut repudiandae ex qui dolor porro veniam. Qui voluptas fuga et blanditiis ad. Incidunt accusamus ratione in incidunt dolorem ab. Qui quisquam eius cupiditate illum eum illo. Non repellat voluptatem consequuntur. Nisi magnam et magnam quaerat aperiam facere rerum.', '18.00', NULL, 'DIGI168', 'instock', 0, 175, 'digital_15.jpg', NULL, 3, '2022-01-14 03:46:20', '2022-01-16 04:56:50', NULL),
(11, 'repudiandae officia illo facere', 'repudiandae-officia-illo-facere', 'Numquam eum aut est molestias. Autem omnis est sit. Repellat atque quia et occaecati molestiae voluptatem.', 'Minima repudiandae nulla excepturi dolorem voluptatibus. Cumque adipisci vero culpa dolorem excepturi. Rem animi voluptatem at enim officia voluptatem voluptatem voluptatem. Molestiae dolores culpa quis impedit aut est natus ea. Laborum voluptas assumenda aut id facere numquam. Laborum ut et nihil corrupti aut illo. Nihil accusamus odio quia consequatur est distinctio nisi. Velit sed aut occaecati aut enim quia.', '232.00', NULL, 'DIGI104', 'instock', 0, 140, 'digital_14.jpg', NULL, 2, '2022-01-14 03:46:20', '2022-01-14 03:46:20', NULL),
(12, 'nobis laborum quaerat eum', 'nobis-laborum-quaerat-eum', 'Voluptatem mollitia aliquam non unde reiciendis consectetur a. Qui quam impedit perferendis culpa. Aut velit fugit incidunt possimus ut.', 'Perferendis autem sed nulla tempora. Nemo aliquam doloremque voluptates sint eos consequatur sunt. Molestias ad provident voluptatem cumque nemo ut et repellendus. Sunt nam vitae ut sunt unde numquam autem. Nemo inventore sunt est. Nobis occaecati eos est enim impedit. Vel perspiciatis ea sit qui error autem ex. Fugiat corporis itaque est.', '178.00', NULL, 'DIGI293', 'instock', 0, 109, 'digital_9.jpg', NULL, 2, '2022-01-14 03:46:20', '2022-01-14 03:46:20', NULL),
(13, 'repellat omnis nobis facere', 'repellat-omnis-nobis-facere', 'Eius officiis et eligendi suscipit. Ut aut quisquam maiores. Possimus omnis quam aut qui sit cupiditate.', 'Qui aspernatur eos et corporis enim quia. Vel maxime aut laboriosam nihil nam. Repudiandae molestiae quia culpa saepe enim a est. Quia laudantium dignissimos mollitia mollitia. Saepe nostrum vel rerum modi aut est. Magnam animi aut rem odio in voluptatibus. Repellat asperiores mollitia reprehenderit aut.', '276.00', NULL, 'DIGI102', 'instock', 0, 173, 'digital_12.jpg', NULL, 1, '2022-01-14 03:46:21', '2022-01-14 03:46:21', NULL),
(14, 'doloremque soluta placeat explicabo', 'doloremque-soluta-placeat-explicabo', 'Expedita expedita qui cumque rerum sapiente. Inventore aut quis rerum. Aut et quas possimus in atque.', 'Voluptatem pariatur aliquid quia. Voluptatem nulla repellendus et sint. Molestiae accusantium mollitia officiis praesentium. Non delectus esse quia reiciendis veniam. Qui ex quasi debitis doloribus. Aut quae doloribus optio optio sed corporis. Debitis rerum iure sed at est. Expedita commodi pariatur laborum distinctio autem sit rem.', '410.00', NULL, 'DIGI454', 'instock', 0, 191, 'digital_16.jpg', NULL, 5, '2022-01-14 03:46:21', '2022-01-14 03:46:21', NULL),
(15, 'qui blanditiis quia aut', 'qui-blanditiis-quia-aut', 'Eius animi voluptas doloribus accusantium illo ut dolorem. Dolores ipsum enim rerum quo maxime. Dolorum voluptas ea sint eligendi enim ut quis.', 'Animi blanditiis nisi voluptatem iure iure qui. Modi aut veniam necessitatibus voluptatum. Magnam eveniet aliquam nesciunt aut nihil vero consequuntur. Architecto aut accusamus quibusdam autem. Deleniti explicabo eveniet magni pariatur suscipit consequuntur provident. Repellendus sint maxime sint in blanditiis non assumenda.', '447.00', NULL, 'DIGI485', 'instock', 0, 149, 'digital_17.jpg', NULL, 4, '2022-01-14 03:46:22', '2022-01-14 03:46:22', NULL),
(16, 'rerum officiis eos eos', 'rerum-officiis-eos-eos', 'Nulla beatae asperiores sint sunt quo. Et ut nisi quaerat. Magnam voluptate ratione architecto qui id debitis ipsum. Distinctio enim reprehenderit illum est.', 'Laudantium consequuntur exercitationem voluptatum laboriosam est ea cum. Voluptatem inventore occaecati aliquam molestiae. Ullam quidem dolorum quidem optio. Fugit molestiae veniam atque sed. Accusamus eos rerum molestiae. Eligendi aliquid suscipit quod iste omnis. Officiis accusantium laudantium magni voluptatem praesentium magni. Odit magni nesciunt iste ea.', '20.00', NULL, 'DIGI334', 'instock', 0, 121, 'digital_6.jpg', NULL, 5, '2022-01-14 03:46:22', '2022-01-14 03:46:22', NULL),
(17, 'rem dolorem facilis est', 'rem-dolorem-facilis-est', 'Earum suscipit ratione numquam deserunt. Quibusdam et possimus et sunt laudantium.', 'Et cumque alias ut quis eveniet eveniet excepturi. Voluptates aliquid deleniti labore voluptatem voluptate ut et. Magnam quia voluptatum nisi est. Qui quisquam veniam repudiandae eaque eos explicabo ut. Eaque nihil minima ab dolorum aliquid. Dolor dicta dignissimos odit officia nihil. Voluptatem eaque magni maxime quo facere. Qui laboriosam sint ipsa quisquam. Mollitia dolores possimus quam. Ut repellendus voluptas est atque fugiat voluptatem veritatis. Est sed aspernatur cumque quos in.', '445.00', NULL, 'DIGI475', 'instock', 0, 179, 'digital_22.jpg', NULL, 1, '2022-01-14 03:46:22', '2022-01-14 03:46:22', NULL),
(18, 'quia ipsa temporibus est', 'quia-ipsa-temporibus-est', 'Corrupti illum incidunt ut molestias. Ut sit non explicabo omnis autem. Totam temporibus magnam veritatis et iste repudiandae.', 'Officia placeat nihil ducimus illo est error maiores reiciendis. Earum quibusdam porro rerum non laboriosam consequatur sed accusantium. Autem ut odit consequatur aliquam nihil facere. Et debitis consequuntur et beatae ullam laudantium molestias dignissimos. Animi ipsam provident ut labore. Cumque aut aut dolorem. Inventore voluptas dolorum cupiditate veritatis cumque in. Qui ut ut sint vel autem atque est. Aliquid facilis iure doloremque ipsum modi id dolorem sequi.', '399.00', NULL, 'DIGI208', 'instock', 0, 169, 'digital_8.jpg', NULL, 1, '2022-01-14 03:46:23', '2022-01-14 03:46:23', NULL),
(19, 'commodi est ut enim', 'commodi-est-ut-enim', 'Velit alias porro doloribus dolor animi. Sapiente ut pariatur distinctio eius tempora molestias. Quas quaerat modi autem eum illo ut provident maiores.', 'Laborum numquam voluptatem nulla possimus modi numquam quasi. Est est reprehenderit magnam rem autem est velit. Asperiores aut iste at est dolores itaque. Incidunt eum eius quibusdam ea libero explicabo. Aspernatur sed eaque sequi maiores quia quo. Consequatur laboriosam sint maiores et possimus. Maiores eveniet at quisquam voluptas autem commodi quia inventore. Voluptate cum quaerat omnis. Porro voluptas placeat quam totam eaque molestiae. Dolore dicta dignissimos quos quia et nemo ut officia.', '57.00', NULL, 'DIGI247', 'instock', 0, 107, 'digital_2.jpg', NULL, 4, '2022-01-14 03:46:23', '2022-01-14 03:46:23', NULL),
(20, 'ut veniam quibusdam quo', 'ut-veniam-quibusdam-quo', 'Natus minima aut magnam blanditiis iusto. Adipisci modi odit et aliquid sint commodi. Occaecati ex inventore fuga sit. Fugit accusantium ducimus ducimus earum.', 'Ad soluta voluptatum id qui consectetur ad tempore tempore. Debitis nemo aut sequi vitae distinctio. Voluptatem fugit iure molestiae ipsum. Et earum iusto aut et ut autem placeat ipsa. Est voluptate voluptatibus ea illo facere voluptas itaque. Id facere id dignissimos harum. Quos doloribus vel impedit nihil reprehenderit. Quis accusantium ad rerum delectus dolore cupiditate ut. Et eos nihil at esse distinctio quidem rerum.', '269.00', NULL, 'DIGI414', 'instock', 0, 170, 'digital_7.jpg', NULL, 5, '2022-01-14 03:46:24', '2022-01-14 03:46:24', NULL),
(21, 'est ut officia laudantium', 'est-ut-officia-laudantium', 'Ea vel illo aspernatur ut nam. Eos voluptatibus reiciendis asperiores in inventore sit. Aliquid illum consequatur omnis ea possimus et ipsam. Neque eius tenetur dolorum ullam.', 'Et repellendus asperiores maxime tempore ipsum voluptas nemo. Unde nesciunt quod est id. Doloremque sit quaerat et perspiciatis qui ipsam. Quaerat assumenda qui et modi. Qui dolores autem ut voluptas voluptas. Odio necessitatibus harum corrupti ipsum fugit cupiditate est. Autem sit eligendi animi ad possimus. Omnis hic non quo non excepturi aut.', '88.00', NULL, 'DIGI327', 'instock', 0, 127, 'digital_20.jpg', NULL, 2, '2022-01-14 03:46:24', '2022-01-14 03:46:24', NULL),
(22, 'et reprehenderit dolorem aut', 'et-reprehenderit-dolorem-aut', 'Iure nulla tempora eveniet fugiat. Sed doloremque dignissimos in error corrupti illo illum. Est tempora odit in voluptas excepturi quam consequuntur recusandae. Placeat dolorem maxime aut.', 'Exercitationem laboriosam voluptatem quae in dolor omnis ut. Dolore aut saepe omnis est. Itaque dolores tenetur doloremque tempore explicabo. In aliquid id et. Nam totam vel aut debitis occaecati ipsam. Dignissimos inventore voluptatem autem mollitia perspiciatis repudiandae sed esse. Occaecati vel consequatur aperiam et provident consequatur possimus.', '225.00', NULL, 'DIGI185', 'instock', 0, 193, 'digital_13.jpg', NULL, 2, '2022-01-14 03:46:24', '2022-01-14 03:46:24', NULL),
(24, 'Test Product', 'test-product', 'Categories Test', 'Categories Test', '100.00', '100.00', 'TEST001', 'instock', 0, 10, '1642369537.jpg', NULL, 6, '2022-01-17 05:45:37', '2022-01-17 05:45:37', NULL),
(25, 'Ruslan Fateev', 'ruslan-fateev', '<p><strong>Status:</strong> <em>Teacher.</em></p>\n<p><strong>Type:</strong> <em>Unique.</em></p>\n<p><strong>Type of programmer:</strong> <em>Professional.</em></p>', '<p>Likes to drink coffee, sometimes bites, but not for noting.</p>', '9999.00', '999999.00', 'FRV001', 'instock', 0, 1, '1642456299.jpg', NULL, 8, '2022-01-18 05:51:39', '2022-02-05 02:25:24', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Colour', '2022-01-25 23:24:53', '2022-01-25 23:24:53');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-25 03:54:48', '2022-01-25 03:54:48'),
(2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-05 05:01:22', '2022-02-05 05:01:22');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE `sales` (
  `id` bigint UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-02-01 12:00:00', 1, NULL, '2022-01-18 01:22:22');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1hsBpcWhslI5us13ZgwSuOFKjTzVWRzvAomQBpJU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.153', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXZobmtYQXBjQzVRdjIyMnJWdlNWa3J0WGhqZnZ5MWR4NXFMOE1PMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1647435339),
('eWeNKB8Aztmm1IyJHaipo77IL0w9U0lzaLCpXXUQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.153', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTFtdWJqbFBob01YTXdEZ3NGd0FmSUFpY0tucEF5a3ltRm9uWWZYTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1646131170),
('MES7SoB0llplSP0FFQFMip3KpF5b0XYpTcUWWXZr', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.153', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiRTBQalZsQkVCVHJHdlRPU2FNdzhmNHVrQ0VwSktRNUJJTEZLTmZoMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9kdWN0L2VkaXQvcnVzbGFuLWZhdGVldiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkWVFicFRBU0ozbnpGL3NwUndMUHJWZU8uSXNaLjM3M0UzRnZ4Yzk4UTRiOG1VcGtuRlhrUTYiO3M6NDoiY2FydCI7YToyOntzOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO2k6MTtzOjM6InF0eSI7aTo0O3M6NDoibmFtZSI7czozMToib2NjYWVjYXRpIHByYWVzZW50aXVtIHVuZGUgbmlzaSI7czo1OiJwcmljZSI7ZDo3MTtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO2k6MTtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czozMToib2NjYWVjYXRpIHByYWVzZW50aXVtIHVuZGUgbmlzaSI7czo1OiJwcmljZSI7ZDo3MTtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRZUWJwVEFTSjNuekYvc3BSd0xQclZlTy5Jc1ouMzczRTNGdnhjOThRNGI4bVVwa25GWGtRNiI7fQ==', 1646600175),
('OCzOn6fA89QkpTFeXwSs8NgqdBCUJTV0K0QjJMjK', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 OPR/78.0.4093.153', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiRVlFbWRDZEJNaW9mR0c1UHlWVGNjODY1NWtPYVpmSXhkdEhpWGNSdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkWVFicFRBU0ozbnpGL3NwUndMUHJWZU8uSXNaLjM3M0UzRnZ4Yzk4UTRiOG1VcGtuRlhrUTYiO3M6NDoiY2FydCI7YToyOntzOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO2k6MTtzOjM6InF0eSI7aTo0O3M6NDoibmFtZSI7czozMToib2NjYWVjYXRpIHByYWVzZW50aXVtIHVuZGUgbmlzaSI7czo1OiJwcmljZSI7ZDo3MTtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO2k6MTtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czozMToib2NjYWVjYXRpIHByYWVzZW50aXVtIHVuZGUgbmlzaSI7czo1OiJwcmljZSI7ZDo3MTtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRZUWJwVEFTSjNuekYvc3BSd0xQclZlTy5Jc1ouMzczRTNGdnhjOThRNGI4bVVwa25GWGtRNiI7fQ==', 1645192058);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'likeaboss13371@gmail.com', '380961149776', '380973569318', 'BEBRA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2638.027609576024!2d34.5592716508948!3d48.60931477916212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dbd71cfc1437f9%3A0x93907bb420bbbf2b!2z0LLRg9C70LjRhtGPINCS0L7Rl9C90ZbQsi3QsNGE0LPQsNC90YbRltCyLCA1LCDQmtCw0LzigJnRj9C90YHRjNC60LUsINCU0L3RltC_0YDQvtC_0LXRgtGA0L7QstGB0YzQutCwINC-0LHQu9Cw0YHRgtGMLCA1MTkwOQ!5e0!3m2!1suk!2sua!4v1642870418792!5m2!1suk!2sua', '#', '#', '#', '#', '#', '2022-01-23 00:18:29', '2022-01-23 00:56:40');

-- --------------------------------------------------------

--
-- Структура таблицы `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@admin.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:4;s:4:\"name\";s:31:\"occaecati praesentium unde nisi\";s:5:\"price\";d:71;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-03-07 04:54:58', NULL),
('admin@admin.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:31:\"occaecati praesentium unde nisi\";s:5:\"price\";d:71;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-03-07 04:54:58', NULL),
('user@user.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:3;s:4:\"name\";s:31:\"occaecati praesentium unde nisi\";s:5:\"price\";d:71;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-02-15 20:34:16', NULL),
('user@user.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:31:\"occaecati praesentium unde nisi\";s:5:\"price\";d:71;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-02-15 20:34:17', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Test Subcategory', 'test-subcategory', 2, '2022-01-24 05:37:50', '2022-01-24 05:37:50');

-- --------------------------------------------------------

--
-- Структура таблицы `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(5, 'User', 'user@user.com', NULL, '$2y$10$GJ.HSxN2eiv1RuU2PdHRKOzFJJJwfFOFuBKOFpctFVYYv811hyBpa', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-01-15 21:38:00', '2022-01-15 21:38:00'),
(6, 'Admin', 'admin@admin.com', NULL, '$2y$10$YQbpTASJ3nzF/spRwLPrVeO.IsZ.373E3Fvxc98Q4b8mUpknFXkQ6', NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-01-15 21:38:55', '2022-01-15 21:38:55');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `command_members`
--
ALTER TABLE `command_members`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Индексы таблицы `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Индексы таблицы `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Индексы таблицы `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `command_members`
--
ALTER TABLE `command_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
