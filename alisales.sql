-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 16 déc. 2025 à 19:17
-- Version du serveur : 8.0.44-0ubuntu0.24.04.1
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `alisales`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postalCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `postalCode`, `city`, `email`, `url`, `user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Augustin Maillet', '48, boulevard de Blanchard\n75053 Grondin', '35965', 'Bousquet-la-Forêt', 'aclerc@example.net', 'http://legros.com/ut-quos-architecto-similique-ut-praesentium-magni.html', 5, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(2, 'François Lamy-Bourgeois', '2, rue Pottier\n86982 TanguyVille', '48105', 'Leconte-la-Forêt', 'hebert.penelope@example.com', 'http://bouchet.com/veniam-quis-inventore-iste-odit-aut', 8, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(3, 'Anaïs Bouvier', '9, boulevard Sauvage\n99922 Normand', '27520', 'Fleury', 'martin13@example.com', 'http://www.vasseur.com/incidunt-cum-est-ratione-corporis', 3, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(4, 'Corinne du Goncalves', 'avenue Marcel Robert\n85475 Gomez-la-Forêt', '42291', 'Marty-sur-Chauvet', 'ulecoq@example.net', 'http://guyon.com/quia-praesentium-architecto-blanditiis-maxime-voluptatibus-temporibus-nihil-et.html', 2, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(5, 'Alfred Gallet', '59, avenue Louis Roux\n21098 Brunet-sur-Mer', '74247', 'Breton-sur-Jourdan', 'pjoseph@example.com', 'http://www.marchal.fr/', 8, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(6, 'Susan Wagner', '49, rue Théodore Masse\n96973 David', '67639', 'Diaz', 'michele.berthelot@example.org', 'http://www.lopez.com/natus-consequatur-tempore-eos-maxime-minima-autem-nobis.html', 2, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(7, 'Grégoire-Charles Loiseau', '4, avenue Leger\n74012 Jacquet', '55435', 'Pottierboeuf', 'texier.isaac@example.org', 'http://www.michel.com/eum-qui-pariatur-harum-sit-commodi-dolores', 1, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(8, 'Patrick Bodin', 'impasse Xavier Merle\n87675 Jacquet-la-Forêt', '10692', 'Guillou-sur-Guichard', 'louise44@example.com', 'http://descamps.fr/vero-et-fugit-et-inventore-sed-itaque.html', 1, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(9, 'Suzanne Guerin', '76, place de Gay\n27835 Duhamel', '69949', 'Roux-les-Bains', 'roussel.alice@example.net', 'http://www.schneider.com/quam-expedita-ex-soluta.html', 4, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(10, 'Agnès Clement', '505, avenue Nicole Begue\n27497 TessierVille', '00918', 'Launay', 'girard.augustin@example.com', 'http://bailly.fr/ut-odio-perferendis-esse-distinctio.html', 10, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(11, 'Céline Georges', '462, chemin Philippe Dupuis\n41166 Joly', '60046', 'Benard', 'isaac.durand@example.net', 'http://www.martin.net/minima-ut-id-nulla-est-perspiciatis-ea', 8, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(12, 'Anastasie Schmitt', '4, rue Alexandrie Riou\n31651 Giraud', '88739', 'Bonnet', 'didier.susan@example.com', 'http://www.louis.fr/voluptatem-perspiciatis-pariatur-quam-inventore-sed-doloremque-voluptatem', 5, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(13, 'Élisabeth-Hortense Gerard', '94, place Franck Chauvin\n40541 Henry-sur-Richard', '55624', 'Wagner', 'joseph.thierry@example.org', 'http://raymond.fr/repudiandae-minus-assumenda-sit-minima-iusto-atque-corporis.html', 6, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(14, 'Alexandria Thierry-Wagner', '62, place Alix Marchal\n71275 Masse', '95249', 'Brun', 'julien.louis@example.com', 'http://www.dupre.net/neque-officia-ut-quae-accusamus-nemo-blanditiis-animi', 2, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(15, 'Stéphane Legendre', '1, place Amélie Noel\n31732 Benoitdan', '65173', 'Garcia', 'susan65@example.org', 'http://www.legrand.net/rem-et-eius-quisquam-enim-similique-eum-neque', 8, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(16, 'Louis Bouvier', 'boulevard Aurore Michel\n28231 Jacquotnec', '48052', 'David', 'yves81@example.com', 'http://tessier.net/voluptatem-sint-rem-quo-est.html', 8, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(17, 'Rémy Benard', '15, rue de Hoarau\n79326 David-sur-Gillet', '12345', 'Gautier', 'mendes.nath@example.net', 'https://david.fr/enim-debitis-explicabo-commodi-eaque-sit.html', 10, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(18, 'Anaïs Henry-Barbier', '95, rue de Millet\n10249 Delattre', '28980', 'DuboisVille', 'qrenaud@example.com', 'http://dias.fr/dicta-omnis-autem-enim-odio-nam', 9, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(19, 'Marcelle Lejeune', '4, chemin de Perez\n41703 Rossi', '26187', 'Roux', 'sebastien32@example.net', 'http://www.herve.com/quaerat-hic-velit-id-soluta-voluptates', 8, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(20, 'Mathilde de Guichard', '31, rue Philippe Baudry\n73566 Duval', '94728', 'Brun', 'josephine.pereira@example.com', 'http://www.noel.fr/perferendis-architecto-ut-reprehenderit-doloremque-quisquam-explicabo', 6, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(21, 'André Rodrigues', '526, boulevard de Vallet\n29422 Pons-sur-Mer', '07988', 'Mace-la-Forêt', 'gilles.brunet@example.org', 'http://www.blanchard.fr/', 5, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(22, 'Audrey du Prevost', '605, place de Morvan\n27575 LaunayVille', '16697', 'Chevallier', 'ufouquet@example.net', 'http://www.bourgeois.fr/', 9, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(23, 'Chantal Sanchez-Verdier', '1, chemin Isabelle Delaunay\n82250 Potier', '54811', 'Legendre', 'eleonore.martins@example.com', 'http://www.potier.fr/non-fugiat-dolores-possimus-veritatis-quas.html', 10, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(24, 'Nathalie Bouchet', '764, rue Michelle Hebert\n85083 Deschamps-la-Forêt', '71399', 'Durand', 'zoe.leclercq@example.net', 'http://ferreira.com/id-quas-nihil-sint-sunt-aut.html', 2, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(25, 'Stéphanie de la Parent', 'rue Texier\n22694 Huet', '57142', 'Salmon', 'eugene.leleu@example.com', 'http://www.dupre.net/incidunt-cumque-voluptas-sed-temporibus-aut-harum.html', 1, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(26, 'Margot-Anouk Blanc', '89, impasse Leclerc\n19905 Boucher', '72327', 'Maillard-sur-Delmas', 'louis.bonnet@example.com', 'http://www.lemonnier.fr/dolores-ad-quidem-autem-rerum-in-officiis-dicta.html', 1, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(27, 'Bertrand Le Foucher', 'impasse de Guillon\n89092 Verdiernec', '05920', 'Jacquetboeuf', 'vincent.emmanuel@example.com', 'http://georges.fr/eveniet-modi-mollitia-magnam-provident.html', 10, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(28, 'Adèle Le Goff', '77, boulevard de Charpentier\n72516 Lambertboeuf', '35726', 'Perez', 'etienne66@example.com', 'https://marie.com/dicta-placeat-et-beatae-nemo-magni-deleniti-recusandae.html', 6, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(29, 'Constance Blot', '36, rue Margot Vidal\n86145 Lacroix', '30146', 'Valettenec', 'jmartins@example.com', 'https://www.guichard.fr/temporibus-aliquam-quos-eaque', 9, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(30, 'Anouk Boutin', '43, place de Martin\n85642 De Sousa-la-Forêt', '73533', 'Lecoq-sur-Mer', 'kroy@example.org', 'http://www.benoit.org/error-aut-aliquam-eum-ullam-explicabo', 5, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(31, 'Daniel Bonnin', '96, place Giraud\n82430 Chevalier-sur-Rodriguez', '15129', 'Lamy', 'rbailly@example.com', 'http://www.ferreira.com/error-et-reiciendis-vel-earum-repellat-aut-nobis', 9, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(32, 'Sabine-Alexandrie Joly', '2, rue de Mercier\n51088 Baudry-la-Forêt', '47351', 'Francois-la-Forêt', 'vlegros@example.org', 'http://samson.com/et-modi-aut-nemo-occaecati-quod', 1, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(33, 'Guillaume-Rémy Lopes', '337, impasse Aubert\n62852 Lemaitre', '27919', 'BegueVille', 'maurice.bouchet@example.net', 'http://www.perrin.net/enim-nesciunt-ut-cumque-neque-voluptas-qui-et', 8, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(34, 'Danielle Bouvier', '750, rue Théophile Rousset\n61945 Paris', '47934', 'Lefebvre', 'susan.dossantos@example.org', 'http://www.godard.com/ex-aut-excepturi-aut-tempore.html', 6, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(35, 'Rémy Petit', '723, rue de Rodriguez\n85206 Roussetnec', '98202', 'Begue', 'follivier@example.org', 'http://adam.com/ab-et-laborum-nesciunt-rerum-sunt-totam.html', 10, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(36, 'Claudine Laurent', '16, chemin Daniel Vasseur\n96855 Chevalier-sur-Gonzalez', '04703', 'Roussel', 'iloiseau@example.net', 'https://www.guyon.net/dolorem-maxime-id-rem-consequuntur', 1, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(37, 'Joséphine Guerin', '3, avenue Marc Bodin\n97487 Gros', '92536', 'Benoitnec', 'fouquet.jacques@example.com', 'http://www.launay.fr/quod-velit-nesciunt-minima', 8, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(38, 'Maurice Bousquet', '636, boulevard Nathalie Blanc\n85035 Allard', '01661', 'Colin', 'theodore.boyer@example.net', 'http://delannoy.fr/in-vitae-aspernatur-ipsa-sed', 7, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(39, 'Thibaut de Ferreira', '91, avenue Robin\n78924 Thomas', '68012', 'Blondel', 'claude34@example.com', 'http://besson.com/', 3, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(40, 'Cécile Joly-Guyot', 'impasse de Devaux\n73841 Didier', '59467', 'Martins-les-Bains', 'agathe92@example.net', 'http://marion.org/fuga-ut-sed-id.html', 2, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(41, 'Louise Perrin', '133, rue Émilie Weiss\n62187 Renaud', '68501', 'Hamelboeuf', 'bernard.peron@example.net', 'http://thibault.net/cupiditate-aliquid-cumque-nulla-excepturi-voluptas', 10, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(42, 'Hortense Seguin', 'rue de Gautier\n36431 Gilles', '15270', 'Fernandes', 'sebastien18@example.net', 'http://cohen.fr/fugit-mollitia-aut-numquam-est-quibusdam.html', 10, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(43, 'Maggie Peltier', '65, impasse Marchand\n67297 Mercier', '24880', 'David', 'bertin.alfred@example.net', 'http://www.deschamps.fr/exercitationem-consequatur-iusto-et-quos-tempora-dignissimos-omnis', 3, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(44, 'Alexandria Gay', '321, rue de Fontaine\n90110 Marty', '82005', 'Rousseau', 'aurore.bonneau@example.org', 'http://www.marin.com/', 1, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(45, 'Céline Samson', '53, rue Thibault Renault\n92195 Foucher', '72189', 'Hoaraudan', 'egodard@example.com', 'http://germain.fr/corrupti-aut-ut-deserunt-rem-vel-consequatur', 7, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(46, 'Richard Adam', 'chemin Lemoine\n46249 Rollandboeuf', '76752', 'Bonneau-la-Forêt', 'dubois.elodie@example.org', 'https://rodrigues.com/ea-eligendi-earum-earum-consectetur-quam.html', 6, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(47, 'Zacharie Seguin', 'place de Pinto\n07827 Leroy-sur-Huet', '22166', 'Tessier', 'denise.pereira@example.com', 'http://gallet.net/qui-qui-laboriosam-quam-ut-nostrum', 3, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(48, 'Yves Diallo', 'boulevard Laurence Hubert\n63491 LerouxVille', '70736', 'Diallo', 'luce.bonneau@example.com', 'http://www.gaudin.com/', 5, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(49, 'Jeannine-Sylvie Gosselin', '231, boulevard Marcelle Ferrand\n46841 Gonzalez', '72177', 'Voisin-les-Bains', 'eugene.leclercq@example.net', 'http://www.auger.net/mollitia-doloribus-odit-voluptas-fugiat-quia.html', 4, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09'),
(50, 'Roger Teixeira-Boucher', '192, boulevard Denise Morin\n98898 Potier', '61035', 'Hamon-les-Bains', 'helene16@example.com', 'http://www.normand.fr/rerum-incidunt-officia-laboriosam-esse-perferendis', 7, NULL, '2025-10-04 13:22:09', '2025-10-04 13:22:09');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0002_09_11_133158_create_vats_table', 1),
(5, '2025_09_09_100708_create_customers_table', 1),
(6, '2025_09_11_125626_create_products_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchasePrice` double NOT NULL,
  `sellingPrice` double NOT NULL,
  `vat_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `reference`, `description`, `purchasePrice`, `sellingPrice`, `vat_id`) VALUES
(1, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Sylvie Labbe', '91', 'Nulla soluta perspiciatis provident sequi recusandae quas voluptatem. Omnis in consequatur culpa non facere non quas. Quo velit id vero enim.', 411.24, 471.03, 3),
(2, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'David du Dupuy', '2669', 'Itaque id non iusto sint. Fuga quis nihil quibusdam tempore.', 196.57, 967, 3),
(3, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Gilbert Vasseur', '2', 'Rerum ex delectus eius optio sint est. Excepturi ut at labore doloribus unde.', 523.84, 599.56, 3),
(4, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Bernadette Marques', '247', 'Mollitia quas quam tempora qui ut maxime. Doloribus ad aut non illo et est itaque. Fuga quo vel eius corrupti aliquam itaque. Non est rerum nihil adipisci.', 645.52, 684.92, 2),
(5, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Marcel Petitjean', '1282256', 'Rerum est quisquam ut nisi unde. Voluptas qui cum sapiente amet. Maiores id dolore vel ea. Cupiditate sit illo tempora. Sed nobis sunt a quae sint.', 321.79, 521.06, 3),
(6, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Alix-Paulette Guerin', '482645', 'Illo et officia rem tempora. Aut architecto velit et autem. Voluptas illum rerum enim omnis iusto temporibus et. Eius nisi blanditiis atque deserunt.', 768, 943.65, 1),
(7, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Sabine Louis', '9980', 'Qui delectus rerum velit at nisi debitis. Nesciunt voluptas voluptatem iste. Quam asperiores dolorem voluptatem quas earum dolorem porro.', 212.47, 506.25, 3),
(8, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Josette Bonnin', '40921935', 'Ipsam vel dolor voluptatibus rem. Suscipit harum ut et numquam necessitatibus aut rerum. In quos non atque repudiandae.', 242.87, 479.2, 3),
(9, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Michelle de la Barthelemy', '631', 'Et eius sed provident libero dignissimos laborum. Nisi doloribus quae doloremque nulla velit quia repudiandae. Non distinctio assumenda maxime sunt. Id pariatur magni aut porro.', 743.76, 973.26, 3),
(10, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Thomas-Thierry Mary', '6934825', 'Qui eos repellendus temporibus corrupti dolores molestiae qui nihil. Eius ut et eos quo. Omnis vel velit ut debitis sequi voluptas et.', 778.13, 874.42, 1),
(11, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Pierre Weber', '2064', 'Dolorem ut minima dolorum iste quae et. Ipsa pariatur est sint aspernatur sit quo. Doloremque architecto ea a veritatis fugit sint quia dolores.', 872.23, 933.23, 3),
(12, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Stéphane-Michel Seguin', '29513', 'Est consequatur facilis sunt. Et dolorem repellendus eveniet error ut repellat. Harum nihil tempore accusantium praesentium corrupti et aut.', 107.57, 215.78, 1),
(13, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Mathilde Masson-Bigot', '2513525', 'Et sequi sit aut alias voluptatem provident eum. Alias ad iusto deleniti autem rerum. Maiores inventore a et qui quod.', 506.23, 901.33, 2),
(14, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Zoé Laporte', '301750110', 'Illum et sunt aut quas ut non autem. Quia dolor veritatis consequatur omnis rerum cupiditate. Rerum beatae a modi veniam exercitationem odio.', 588.5, 720.52, 3),
(15, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'Véronique Descamps', '9531', 'Quidem illo autem dolorem nam fugit omnis. Harum ratione adipisci fugiat consequatur id. Maxime quibusdam magni libero iusto fugiat ut. Et aut voluptatem et in.', 667.55, 836.3, 2),
(16, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Susan Chauvin', '878902528', 'Suscipit non facilis autem quo rerum officiis voluptatem soluta. Dolorem id ipsam sequi. Optio aspernatur possimus alias a error. Nihil dolor ab maxime quia hic ab.', 440.79, 553.64, 1),
(17, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Gilles Gomes', '93605', 'Quae magnam non minima eos dolorem tempora. Praesentium aut qui perspiciatis voluptatem repellat odit. Aut est laborum odit.', 623.55, 655.41, 4),
(18, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Thibaut Gautier-Grenier', '739383133', 'Inventore quasi quos vel unde. Modi aut nihil fugit non. Eos quas nesciunt assumenda. Voluptates optio harum quas. Quod magni eos facere natus sed ex. Qui esse corrupti voluptatum eum quam magni at.', 653.24, 810.93, 3),
(19, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Stéphane du Poirier', '229157952', 'Impedit sed fugit velit labore laboriosam. Vero quae totam deleniti et. Eos et provident facere ratione ipsam quia voluptatem labore. Voluptatem assumenda error architecto ratione in impedit.', 255.97, 653.62, 4),
(20, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Alix Sauvage', '885', 'Quam placeat odio rerum non. Mollitia labore accusantium odit in illo est. Tempore in officiis eum voluptate fuga aperiam. Eum dicta temporibus dolor animi minima sit temporibus.', 819.85, 820.26, 4),
(21, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Arnaude Guyot', '731708232', 'Sunt omnis iste quas et. Omnis veritatis excepturi corrupti labore iure quos. Quos et minima impedit aut.', 798.95, 800.59, 1),
(22, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Renée Lamy', '6', 'Fugiat ut quidem accusantium in blanditiis. Corrupti labore voluptatem eum ut quibusdam commodi. Dolores error ea eaque molestias exercitationem. Eius aut fugit totam et sunt.', 527.14, 893.95, 4),
(23, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Martine Delannoy', '1130', 'Blanditiis perspiciatis vero iusto aut voluptas autem. Sunt mollitia est et et voluptas consectetur aut et. Pariatur aut dolores deleniti numquam autem est numquam.', 258.65, 508.39, 2),
(24, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Nathalie Simon', '2837', 'Hic quae numquam accusantium quisquam voluptatem ducimus tempora. Soluta qui pariatur sed. Ut aliquam ab id nihil eum porro eligendi. Soluta veritatis rerum unde doloribus eligendi.', 384.98, 790.36, 1),
(25, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Marianne Pichon', '6076', 'Nihil nihil unde labore et non. Quo perspiciatis dolorum ut minima.', 315.19, 886.94, 2),
(26, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Pauline Garcia', '8589956', 'Nisi atque corrupti incidunt est facere. Facere omnis nobis odio quia et. Voluptas qui aut maiores molestias labore nisi omnis. Nihil voluptatum aperiam fuga sed.', 371.17, 628.34, 1),
(27, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Michelle Hebert', '7060764', 'Quaerat dolorem quo debitis consequuntur dolorem quo. Sed inventore aspernatur sed. Voluptas odio dolor neque beatae.', 823.94, 859.71, 4),
(28, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Édith Bouchet', '580', 'Maxime voluptas et sit voluptatem. Est quod labore qui beatae enim voluptas non. Sed occaecati dolores et tempore aliquid et. Sit cumque quo provident delectus fuga eveniet.', 327.37, 707.87, 3),
(29, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Arthur Moulin-Meyer', '19', 'Quia autem aut minus quos sit minus aperiam. Quidem eos voluptatem et odit sint. Numquam amet eos vel ipsum asperiores molestiae sapiente ad.', 473.17, 476.29, 3),
(30, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Thomas Le Michel', '77115164', 'Voluptatem et in eaque harum animi deleniti similique. Assumenda reiciendis rerum nisi sit rerum autem. Et id ut recusandae quia ea numquam praesentium. Doloremque harum deleniti harum ut magnam.', 634.83, 637.08, 4),
(31, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Christelle-Henriette Lebon', '881', 'Optio veritatis magni natus autem dolor suscipit qui sapiente. Distinctio distinctio atque quia odit doloribus sint. Inventore magnam itaque tempora illo quis.', 848, 852.06, 3),
(32, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Paul Julien', '364387', 'Iusto sint et itaque laboriosam ducimus. At eum omnis nemo eaque. Aliquam neque et nulla quia. Qui ut commodi ut dignissimos.', 704.74, 831.93, 3),
(33, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Philippine Barre', '740', 'Sit nesciunt repellat ut. Laboriosam nostrum possimus odio ducimus sit voluptatum. Non sit qui neque voluptatem. Consequatur earum consectetur inventore magni nisi sit. Enim ex tempore tempora.', 524.74, 702.02, 4),
(34, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Anastasie Moreno', '392', 'Ut dolores qui tenetur deleniti consequatur. A unde ut non laudantium et quia expedita. Id est voluptate suscipit quia nihil sit iste.', 759.19, 950.65, 2),
(35, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'André Benoit', '98987835', 'Id cumque mollitia aut iusto. Saepe perspiciatis aperiam non beatae molestiae. Asperiores sit possimus laudantium.', 333.91, 854.97, 4),
(36, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Noël Boulay-Lucas', '552', 'Eaque omnis eveniet est qui delectus. Voluptate et dolor eligendi porro vero ex aut. Modi itaque eos quidem architecto. Itaque ex labore amet est.', 868.71, 871.2, 4),
(37, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Audrey Monnier-Lecoq', '1881', 'Aspernatur et praesentium accusamus illum illo. Quisquam delectus repellat ut quasi rerum.', 752.32, 854.71, 1),
(38, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Georges de Ledoux', '7749', 'Deleniti officiis voluptas provident fugit odio voluptas tempore. Nihil voluptate voluptas exercitationem. Voluptates quia autem veniam et dolores. Mollitia quam ut et veniam a quis.', 125.25, 617.68, 4),
(39, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Édith-Christelle Marques', '81', 'Odio commodi aut dolor totam in laudantium quis soluta. Autem eos dolore voluptatum. Dolorem rerum dolorem maiores. Nemo atque iste ut quaerat.', 172.44, 173.42, 2),
(40, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Thibaut Langlois-Lucas', '96', 'Veniam aliquam repellendus est quia quod pariatur ipsum. Qui non similique minima. Consequuntur adipisci laborum est necessitatibus omnis eos. Autem ullam veniam et voluptatem sunt ratione.', 808.13, 886.84, 2),
(41, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Alexandria Coulon-Leblanc', '4221', 'Aut hic necessitatibus veniam est eaque. Qui non perspiciatis molestias asperiores modi deserunt quidem est.', 593.93, 896.42, 1),
(42, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Philippine de la Dos Santos', '13', 'Suscipit commodi aut consectetur suscipit alias. Doloremque ea quae ut. Iure modi nam quia nemo. Deserunt aliquam sit nulla velit excepturi modi adipisci iusto.', 832.38, 850.18, 1),
(43, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Honoré-Pierre Nicolas', '942401', 'Incidunt in reprehenderit tempore numquam quia. Maxime dolores veritatis cupiditate sint. Et omnis exercitationem officia quidem autem aliquid.', 303.97, 882.78, 2),
(44, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Adrienne Klein', '440', 'Et consequatur quaerat nemo harum neque nam id. Ut sit et ut est voluptates praesentium. Et voluptatem similique corporis rerum ex. Dignissimos velit nam hic ipsum iure.', 141.86, 160.03, 1),
(45, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Joseph Gomes', '668748', 'Rerum totam rerum a harum optio. Ex voluptatem ipsa illo enim libero quas. Et quasi hic est sint nam voluptas voluptas fugiat. Dolorum dolore pariatur eaque consequatur vero omnis.', 328.36, 991.75, 3),
(46, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Nicole Lebrun-Gaudin', '606080', 'Dolor voluptatem error quis ipsum est accusamus doloribus. Labore ea velit dicta voluptates voluptatum eligendi debitis. Autem mollitia quis soluta sunt deserunt.', 174.62, 958.36, 1),
(47, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Xavier Gillet', '259', 'Amet perferendis corrupti itaque ad cupiditate natus. A quod ad quae ut qui. Quis earum ut quibusdam quia voluptas. Aut aut et culpa voluptate.', 311.53, 912.98, 3),
(48, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Michèle de Dupuy', '669', 'Ut et dolores et non. Nesciunt explicabo officia dicta doloribus quia facilis ipsum.', 126.24, 248.41, 3),
(49, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Nicolas Verdier', '35877', 'Ut odit culpa sint officiis. Eos et neque commodi voluptatum ex non. Error architecto velit magni illo.', 289.35, 435.47, 2),
(50, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Anaïs Leconte', '8343782', 'Voluptas placeat est omnis ullam molestiae nemo odio. Tempore incidunt perferendis veritatis maiores eos.', 823.31, 943.34, 2),
(51, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Charles Gerard', '636', 'Aut eum id ea cum facere iure. Reiciendis nulla maiores est quasi. Magnam eos et eligendi beatae quibusdam vel inventore a.', 690.71, 850.51, 4),
(52, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Marc Meunier', '4', 'Eaque voluptas illum iusto rerum voluptas accusantium. Dolores iure libero asperiores quam expedita quis atque. Accusantium ea minima placeat et.', 409.49, 779.7, 4),
(53, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Margaux Roy', '290671', 'Aspernatur odit dolores optio adipisci nisi quasi dolore rerum. Magnam vel quo nobis repudiandae laboriosam voluptatum. Voluptas perspiciatis voluptas unde adipisci.', 552.77, 872.53, 3),
(54, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Pierre Gay', '78', 'Et vel molestiae blanditiis. Molestiae laboriosam temporibus est molestias non impedit.', 293.61, 581.15, 2),
(55, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'André Cousin', '725', 'Pariatur praesentium ad laudantium. Nostrum illo quia optio natus est iure. Eligendi et est accusantium fuga est. Sunt quia in quia quam repellat.', 603.36, 805.87, 4),
(56, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Bernard Berger-David', '5', 'Eum voluptatem qui odio explicabo consequatur eligendi blanditiis. Et in animi et. Dolorum tempore id molestiae. Recusandae enim explicabo aspernatur quia consequatur ut.', 560.35, 958.81, 1),
(57, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Joséphine Chauvin', '51', 'Explicabo et iusto veritatis commodi nostrum qui ut. Sunt porro voluptatem dolores autem blanditiis autem voluptas consequatur. Ut quam debitis magni qui pariatur.', 179.18, 753.98, 4),
(58, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Richard Lemoine', '237867', 'Ab dolores culpa et autem. Quos reiciendis officia deleniti error labore ipsa. Et illo in suscipit ea sapiente qui.', 802.9, 932.19, 1),
(59, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Bertrand Bigot', '557', 'Distinctio consequatur pariatur occaecati. Et est aut beatae consequuntur. Dolores vel quasi temporibus ex. Reprehenderit minus aspernatur dignissimos non illo.', 507.19, 792.87, 1),
(60, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Henriette Fabre-Maurice', '633', 'Numquam iure aut voluptatibus. Tempora nam deserunt et molestiae nemo. In ipsam aliquam distinctio sequi fugit sunt nobis.', 498.48, 985.76, 1),
(61, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Luc Ramos', '6600395', 'Similique maiores quo modi nulla occaecati quaerat porro. Illo quasi harum aliquam voluptatem. Corporis qui non suscipit dolor. Voluptatibus optio ut expedita omnis minus aliquam eum.', 636.77, 918.05, 3),
(62, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Alain-André Lucas', '584', 'Temporibus perferendis quidem iste consequatur asperiores aut repudiandae. Eaque et non delectus nihil. Totam qui ad iure vero aut quia eum. Necessitatibus soluta quasi tempore nostrum.', 270.58, 553.26, 2),
(63, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Monique Roy', '1777816', 'Autem dolore quos dolorem repellat. Enim nostrum voluptatem facere vitae placeat. Molestiae soluta cum dolorem voluptas quia.', 718.56, 828.25, 2),
(64, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Chantal Martel', '188835503', 'Autem saepe modi non. Ratione assumenda vel accusamus dolorem rerum. Incidunt est voluptatem modi.', 492.41, 556.24, 4),
(65, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Auguste Gilbert-Muller', '874732', 'Amet earum quaerat voluptate voluptas exercitationem. Voluptates odit molestias et non ut aperiam autem. Placeat distinctio omnis nulla. Accusamus doloremque placeat minus voluptatem ut aut.', 256.53, 500.64, 3),
(66, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Margaux-Virginie Picard', '3725', 'Ut sint odit maiores placeat. Dicta quia illum ab tempora dolores. Voluptatem et et voluptatem hic eos.', 279, 690.07, 2),
(67, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Diane Ruiz', '770459831', 'Ut expedita ex doloribus dolorem. Nihil non earum laudantium et. Saepe et ipsam veritatis sit incidunt voluptatem cupiditate. Atque sint aliquid voluptates ratione inventore reiciendis.', 692.65, 934.09, 2),
(68, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Nathalie Robin', '66612', 'Inventore ipsum voluptate dolor nihil cumque. Quia quia ipsam aut voluptatum explicabo. Officia laboriosam est neque ullam consequatur.', 534.7, 628.49, 2),
(69, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Henriette-Mathilde Fernandez', '204244', 'Distinctio dolorem eos vero. Fugit placeat voluptas eaque maxime et minima. Id veritatis optio autem repellat.', 429.26, 470.63, 3),
(70, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Gabrielle Boyer-Merle', '2531765', 'Est nobis voluptatum enim eveniet. Distinctio doloribus cupiditate commodi. Facilis ut ut saepe aut. Debitis totam nihil in sed unde rerum.', 220.31, 436.18, 3),
(71, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Grégoire Coste-Guilbert', '441654962', 'Qui dolore quia dolores consequatur. Rem similique doloremque quis non sed atque adipisci. Et labore cumque officiis quaerat voluptas qui. Dolorum maxime quod officia repudiandae iure.', 618.07, 653, 1),
(72, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Maggie du Cordier', '985', 'Illum quia qui mollitia earum eius et velit. Possimus maxime et distinctio. Veritatis at et voluptatem dolores aliquid.', 349.04, 616.94, 1),
(73, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Dorothée Antoine', '11770768', 'Dolor vel aliquid consequatur minus. Itaque recusandae tempore reprehenderit voluptatum est quo quasi dolores. Eaque provident sint architecto commodi.', 528.05, 639.26, 2),
(74, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Sophie Colas', '90218628', 'Voluptatem quidem ut optio voluptate molestias. Quae quaerat sit sunt ullam distinctio.', 113.73, 685.38, 4),
(75, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Margot Loiseau', '75507', 'Aliquam sed qui quia est accusantium. Doloribus sequi debitis enim aut. Ipsam ullam velit ea incidunt qui mollitia soluta. Fugiat iste fugiat ipsam odio.', 648.26, 770.16, 4),
(76, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Suzanne Ledoux', '336358', 'Temporibus iste odit velit nisi qui sunt alias ut. Sapiente ut voluptate est labore. Laudantium accusamus in ut ipsum. Veritatis delectus laborum pariatur eligendi saepe.', 638.25, 835.8, 2),
(77, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Jérôme Guillon', '35943', 'Aut aut quia illo vitae consequatur. Non odit amet ab iure tempore sed praesentium minus. Tenetur aut dignissimos eius a. Sed accusamus veritatis repellat nostrum.', 433.7, 888.12, 3),
(78, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Hélène Vincent', '9348743', 'Itaque repellat numquam debitis. Quo sit omnis nobis quas asperiores similique voluptatem. Aut reiciendis nisi et sed voluptates pariatur non aut. Modi possimus eos voluptates quis modi consequuntur.', 634.58, 811.06, 2),
(79, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Christelle-Lucie Pierre', '25895500', 'Pariatur qui deleniti dolorum optio corporis fugit dolor facere. Nemo eveniet optio nihil repudiandae.', 421.96, 891.62, 2),
(80, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Anaïs Michaud', '9', 'Culpa laudantium molestias aut sunt et. Optio tenetur rerum voluptatem. Ut sint ex ut autem amet suscipit. Voluptatem sapiente dignissimos molestiae quibusdam et nesciunt sint.', 620.05, 857.11, 3),
(81, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Denise Couturier', '13774', 'Non tenetur nisi nihil dolorem. Est blanditiis molestiae ex aut. Sunt nesciunt qui sit possimus odio qui. Sed consequatur id vitae ipsa.', 861.29, 976.24, 2),
(82, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Brigitte-Alex Michel', '2412', 'Vel perferendis vero non dolorum et non ratione. Corporis ad sed aperiam quisquam voluptatem quia. Magni quia molestiae rerum laudantium eum.', 492.52, 504.2, 1),
(83, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Thibaut Le Traore', '637998680', 'Expedita enim laudantium maxime. Omnis explicabo fuga quibusdam rerum. Porro incidunt rerum aliquid non.', 366.29, 409.59, 2),
(84, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Henriette Marechal', '480689866', 'Quia qui voluptas aut esse quidem eaque. Quae corrupti ducimus vel pariatur. Minima non asperiores est.', 449.73, 797.18, 4),
(85, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Nicolas-Antoine Dumont', '22951965', 'Non natus quia harum recusandae amet mollitia. Voluptates quis repellat consequatur est. Voluptates nihil doloribus illum quis. Nisi et praesentium accusamus voluptas odio aliquid.', 119.89, 193.67, 2),
(86, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Astrid Germain', '4769404', 'Eos debitis eveniet quam labore ut autem quod officiis. Amet impedit atque natus quo. Sint est perferendis dicta repudiandae accusantium consequatur perferendis.', 111.76, 779.12, 4),
(87, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Anastasie Collet-Gillet', '25569', 'Similique quis explicabo illo laboriosam et natus minima. Laudantium ducimus et reprehenderit fugiat. Cumque dolores et et totam esse aut.', 265.11, 990.88, 4),
(88, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Susanne Delannoy', '99090', 'Excepturi numquam illum tempore. Laudantium corporis aspernatur reiciendis beatae non. Fugiat voluptate quis aperiam quibusdam adipisci soluta quia.', 124.18, 316.84, 2),
(89, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Marc Seguin-Boulanger', '41', 'Totam est perferendis sequi aut rerum. Dolor ratione officiis ad. Autem quasi quia alias. Rerum reiciendis voluptatem accusamus.', 137.24, 142.75, 1),
(90, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Stéphane Royer', '56', 'Voluptatem saepe est ullam dolorem iusto dignissimos. Quasi est molestias aperiam odio ipsa.', 233.57, 281.04, 2),
(91, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Michel Ribeiro', '722345495', 'Fugiat dolorem numquam et est rerum est. Aut qui et perferendis itaque. Natus illum aut rerum reprehenderit quia ipsa deserunt. Sed minus sequi deserunt ut.', 214.87, 531.45, 1),
(92, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Vincent Le Roux', '7', 'Incidunt vel rem ratione tempora repellat voluptas. Ipsum incidunt ut laborum et omnis aliquam quos. Fugiat perspiciatis et ut modi voluptas. Sed aspernatur omnis aperiam occaecati facilis.', 513.38, 739.43, 4),
(93, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Célina Rossi', '1', 'Enim tempora facere aut impedit. Itaque eligendi tempore animi.', 707.38, 866.93, 4),
(94, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Denis-Isaac Marion', '242933', 'Molestiae aut et placeat libero reiciendis facilis eum. Autem minus rerum a sunt. Provident consequatur quasi quam quia aut qui. Similique unde ab natus quam natus debitis doloremque.', 201.66, 690.16, 3),
(95, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Margaux Mendes', '964', 'Aperiam incidunt molestiae ea commodi. Eum est omnis consequatur. Expedita voluptas perspiciatis quibusdam ipsam dicta modi et. Est illum dolores minima officiis.', 315.07, 917.98, 4),
(96, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Gilbert Lagarde', '48633', 'Autem magnam omnis harum sit ad facere. At illum ducimus tenetur sint blanditiis hic. Hic explicabo optio quod dolor molestiae omnis eos. Consectetur consequuntur quam recusandae necessitatibus in.', 462.41, 748.89, 1),
(97, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Emmanuel Didier', '507', 'Est repellendus et eaque amet ipsum molestias recusandae. Voluptate ut eos harum dolores. Hic expedita magni eos quasi blanditiis nulla.', 119.55, 225.74, 3),
(98, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Joséphine Meyer', '463542', 'Est repellat velit minima soluta omnis. Ratione possimus beatae et aspernatur ipsam minus iure. Corporis magni et ut velit quo.', 785.54, 839.61, 2),
(99, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Zoé Brunet', '70193331', 'Tenetur eius in dolorum voluptatem autem et. Excepturi impedit magni ut aspernatur. Quam omnis nihil ullam expedita amet molestiae.', 842.38, 870.83, 4),
(100, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Olivier Adam', '7762048', 'Suscipit tempore ut provident magnam officia culpa. Hic aut animi voluptas perferendis eius adipisci esse ipsa.', 309.31, 554.33, 1),
(101, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Manon Gaillard', '429', 'Molestias mollitia inventore culpa ut et dolorem. Voluptatem non quis est non. Omnis error et ab ratione voluptatem.', 203.83, 723.67, 3),
(102, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Noël Rodrigues-Roger', '770696', 'Voluptate ut et molestias eum deserunt velit. Ullam non minima nihil molestias. Voluptatem eligendi dolore in. Unde et perspiciatis eum sunt harum numquam.', 684.22, 771.81, 4),
(103, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Patricia Morin', '3570', 'Sed velit sequi quam enim sunt. Aut id soluta numquam. Ea et aut cupiditate. Amet illum laboriosam omnis aut omnis esse nemo.', 375.06, 612.76, 3),
(104, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Patrick-Joseph Da Silva', '24848558', 'Assumenda tenetur voluptatibus et vel ut at voluptatem. Voluptas autem beatae non quo soluta quia. Commodi incidunt vero et rerum totam non. Optio rerum tempore odio quis totam consequuntur.', 806.03, 808.34, 1),
(105, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Susanne Martel', '45264766', 'Omnis velit veritatis molestiae dolorum hic unde. Delectus voluptas exercitationem alias. Cum fugiat eos iure qui sed animi.', 266.58, 433.52, 1),
(106, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Yves Potier', '45514457', 'Qui ut voluptatem sunt harum voluptatem qui aut. Iusto assumenda voluptas voluptas. Quam sint repellat vel vitae vero dolorum veritatis. Consequuntur laborum harum quia quidem rerum aperiam.', 163.7, 635.48, 1),
(107, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Agathe Carre', '3', 'Eum placeat qui aperiam et. In voluptas explicabo consequatur officiis. Voluptatem quas nihil deserunt veritatis.', 792.18, 985.15, 4),
(108, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Isabelle Letellier', '48', 'Et expedita rerum recusandae odit. Quidem maxime temporibus qui. Saepe sapiente laborum enim consequatur ab.', 149.84, 277.83, 2),
(109, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Corinne Potier-Mace', '314', 'Ut totam quo quis quas et ipsam dicta. Odit minus sunt consequatur aspernatur perferendis id. Et aspernatur consequatur dolore veniam tenetur et atque.', 877.83, 914.77, 2),
(110, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Philippine Bodin', '8763714', 'Omnis accusantium autem sequi quis. Amet nihil itaque quia nesciunt. Aut consequatur enim deleniti facilis unde.', 753.55, 999.15, 1),
(111, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Charles de Riviere', '4800', 'Veritatis assumenda tenetur odio laborum. Ducimus voluptatem facere nisi fuga accusantium enim. Rerum incidunt aut quaerat eum minima. Ut perferendis inventore velit repellat velit incidunt voluptas.', 389.18, 958.7, 1),
(112, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Alain Toussaint-Renaud', '2086336', 'Perspiciatis et illum sed nulla in nihil explicabo. Voluptatem nulla voluptas aut aut ipsum eveniet animi nam. Repellendus fugiat sed sint ut.', 281.86, 643.96, 2),
(113, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Jean Barbe', '512102496', 'Eius molestiae nam et et voluptatum rerum. Et ea ut quos ratione voluptatem modi. Ut voluptates ut modi aut consequatur voluptatem.', 561.22, 771.88, 1),
(114, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Théodore Fleury', '74284', 'Quo voluptates consequatur culpa repellendus occaecati inventore officia. Quia voluptatum doloribus dolores ex. Saepe laboriosam ratione animi quia fugiat.', 870.41, 973.83, 4),
(115, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Claude Chevalier', '476849663', 'Nobis fugit occaecati dolorum quia doloremque deserunt sed. Voluptatem error quo et rerum deserunt. Est culpa deleniti consequatur ut autem.', 297.13, 863.14, 2),
(116, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Margaux Gimenez', '50739225', 'Doloribus ut dolorum maxime. Quod voluptas ex eum adipisci incidunt quibusdam nesciunt. Laborum non ipsum itaque sed totam ea aut. Quaerat commodi quos labore est saepe.', 796.57, 864.63, 4),
(117, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Michel Lacombe-Pinto', '664728', 'Non magni itaque ad rerum. Aut atque non ut. Expedita incidunt qui perferendis quas eos.', 425.05, 910.07, 2),
(118, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Laurent Fouquet', '504639', 'Eaque nihil vel vitae voluptas excepturi aperiam. Iste cumque voluptatem consectetur ut itaque. Natus nemo enim vero ea qui.', 326.06, 788.75, 1),
(119, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Robert du Lemaire', '250814', 'Nulla omnis in non magnam ut ut molestiae. Nisi tempore aut in aut nostrum nesciunt modi. Aliquam voluptas eius qui consequatur qui.', 532.86, 574.4, 3),
(120, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Adrienne-Alexandria Courtois', '74', 'Rerum accusantium est aperiam neque. Non sequi ullam veritatis blanditiis exercitationem. Consequatur nemo deserunt quaerat. Temporibus recusandae similique facilis qui.', 358.59, 822.27, 1),
(121, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Georges Robert', '8170', 'Aut fugiat ipsum est nulla ipsa voluptatem. Et nihil odit nihil praesentium veniam explicabo. At laboriosam consequatur quod sed. Eius laborum quia nisi optio eum.', 573.73, 983.09, 2),
(122, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Louis Gilbert', '85081177', 'Reiciendis sed earum ad qui maxime. Tempora laborum maxime quasi quam ut magni provident. Mollitia est possimus magnam et. Debitis suscipit illo cumque soluta animi molestiae commodi.', 484.93, 992.63, 2),
(123, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Alix Riou-Guillot', '4567465', 'In eveniet consequatur molestias sed deleniti. Iusto facilis dolorem et nesciunt quo. Suscipit magnam nostrum enim id quos consequatur reiciendis. Nobis et unde sint quia.', 867.39, 944.33, 1),
(124, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Marie Herve', '5358', 'Animi nisi quam velit minima est. Quia commodi eligendi inventore ducimus eum quidem et saepe.', 546.29, 875.35, 2),
(125, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Juliette Gosselin', '77', 'Est eos tenetur non vel quibusdam aspernatur totam. Sit culpa aut quam aut. Velit voluptatem unde cupiditate id blanditiis illo maiores. Et quaerat ipsam ipsa sint possimus error.', 557.25, 807.78, 2),
(126, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Astrid Hardy-Arnaud', '45', 'Et facilis eum tempora aut voluptatum laudantium velit. Sit et voluptatibus cupiditate quae. Qui fuga autem minima.', 443.11, 792.21, 1),
(127, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Jacques Klein', '18463807', 'Ut neque minus aliquid ut natus. Exercitationem amet harum maiores a maiores consequuntur. Autem aut facere excepturi pariatur quisquam et tenetur. Facilis corporis quaerat necessitatibus qui.', 241.74, 303.14, 4),
(128, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'François Deschamps', '12759893', 'Ut quod eos nobis tempora soluta. Laborum ut est nihil consequatur qui. Neque fuga velit est tempore aut explicabo nesciunt.', 348.61, 606, 1),
(129, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Cécile Blanchet', '256440', 'Deleniti molestiae eum eos voluptas ratione. Eum laborum quas aut non. Est quia est dolore quisquam. Repellendus eaque corporis harum voluptas iste veniam sapiente.', 830.28, 987.16, 2),
(130, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Antoine-Guillaume Ribeiro', '21672', 'Modi harum aut voluptas culpa doloremque. Qui autem eveniet voluptatem tenetur dolorem expedita deserunt ut. Id aut omnis autem ullam ut iste.', 565.14, 934.61, 3),
(131, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Philippe-Bernard Gerard', '13505459', 'Nam aut aut sint unde. Nostrum veritatis reprehenderit optio ipsam. Id itaque incidunt qui et dicta qui enim quisquam.', 779.82, 861, 3),
(132, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Bernard Gallet-Blanchard', '112084', 'Est sapiente et quo consequatur mollitia distinctio quas quasi. Sit consequatur vero incidunt rerum tempore odio voluptas est. Saepe tenetur impedit id quibusdam.', 239.34, 566.9, 2),
(133, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Benjamin Vaillant', '9347642', 'Velit omnis quisquam non iusto voluptas autem. Exercitationem ut quasi expedita aut quae. Quam qui magnam tenetur. Amet libero distinctio recusandae numquam.', 760.26, 840.7, 1),
(134, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Roland Pelletier', '4021160', 'Nostrum omnis ut totam consequatur omnis. Ducimus provident quos et adipisci rem. Molestiae ex ut temporibus voluptas ut facere vel. Voluptatibus nemo dolorem autem natus atque.', 585.64, 721.59, 4),
(135, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Isaac Muller', '8865', 'Nihil corporis in fugiat consectetur cupiditate nulla. Maxime impedit aperiam doloremque esse cum recusandae. Omnis sit eos tempora id perspiciatis.', 531.67, 690.96, 4),
(136, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Adèle Moreno', '16', 'In debitis assumenda est quod libero impedit. Cupiditate quia deleniti mollitia laboriosam voluptas qui neque. Sunt velit ducimus qui libero. Consequatur fuga ad laborum ab quod nihil laboriosam.', 836.91, 860.72, 1),
(137, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Théophile-Alphonse Leveque', '882', 'Autem sed ut quia et odio quae eum. Consequatur at nemo inventore dolores eius omnis dolorum. Praesentium sit et voluptas quo molestiae officiis aut.', 124, 559.97, 2),
(138, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Marianne-Emmanuelle Peltier', '74010925', 'Illo omnis quo hic cupiditate minima ipsum. Vero harum nemo alias dignissimos. Et fuga facere voluptas quasi sit assumenda ipsa.', 646.68, 832.81, 2),
(139, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Noël de la De Oliveira', '783', 'Vel voluptate qui quidem deserunt et doloremque. Similique cumque dolorem quas eum.', 348.73, 951.97, 4),
(140, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Honoré Bouvier', '23056125', 'Fugit quisquam eos culpa voluptas. Animi repudiandae et error voluptatum molestiae. Rerum adipisci quidem voluptas fugiat assumenda.', 265.34, 782.58, 1),
(141, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Jeannine Thierry', '259918104', 'Dolorem dignissimos ducimus repellat harum iure soluta quia. Nihil quos odit corrupti velit qui aliquam. Est quia inventore perferendis natus nesciunt enim.', 695.87, 696.81, 1),
(142, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Manon Le Grenier', '47', 'Blanditiis dicta quia quis quibusdam. Eos et sed voluptas qui. Culpa voluptatibus quos placeat vitae iste.', 145.25, 349.2, 1),
(143, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Henri Langlois-Brun', '33427', 'Nulla modi odit ea hic autem quae similique. Doloremque sit et similique et molestias. Consequuntur consectetur ducimus atque nihil omnis est voluptas.', 497.69, 859.26, 1),
(144, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Frédéric de Pineau', '38242', 'Libero fuga corrupti adipisci odit cumque saepe voluptas exercitationem. Eligendi quidem sapiente eum quo. Architecto hic enim enim sunt rem officia laborum.', 228.49, 398.33, 1),
(145, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Michelle Hoareau', '18963324', 'Ea cumque dolor voluptas sit ullam voluptas quis. Tenetur placeat beatae eligendi illum. Et similique aut occaecati doloremque reprehenderit voluptatibus.', 533.31, 982.71, 4),
(146, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Céline Tanguy-Lebon', '452814878', 'Eaque voluptatem sit mollitia officiis voluptas. Voluptatibus suscipit et dolores non molestiae. Perferendis modi et dolorem quo a. Sed quos alias sit odit qui sunt.', 806.27, 976.29, 3),
(147, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Georges Gautier', '9533695', 'Est voluptatem quia similique ut iure excepturi quae. Tempora eum cupiditate qui. Illum cum ut velit beatae enim. Voluptates iste aut magni voluptas.', 430.2, 957.83, 3),
(148, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Léon Cordier', '6554', 'Amet consequuntur illo repellat ut corporis. Dolorem tenetur commodi est temporibus accusamus nam doloremque sed. In quia dolorem eos est voluptas nobis in.', 659.86, 965.87, 2),
(149, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Aimée Laroche', '2944526', 'Iusto et natus cumque porro facere. Quis libero quibusdam non velit aut provident libero. Doloremque iusto at enim saepe esse.', 436.2, 656.72, 3),
(150, '2025-10-04 13:22:08', '2025-10-04 13:22:08', 'Arnaude Le Roux', '330577', 'Praesentium suscipit nesciunt doloribus ut aut id ut. Provident dolor excepturi illo. Vitae dicta quibusdam sint necessitatibus aut voluptas sit.', 139.15, 365.48, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eXlOkBbaG6KC0FzM2qGvuu8el9YttyEEOyrrSL8h', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiamRZRXhEYnRRaWFMWWYxcHQ2cTEwYmZQN0F6OU1FaENFMTlKck5veCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9hbGlzYWxlcy50ZXN0L2N1c3RvbWVycyI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzA6Imh0dHA6Ly9hbGlzYWxlcy50ZXN0L2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9fQ==', 1759594408),
('JH0nAxQufqTxg3MxGfeS0MB9Ll2y7xQjpeRmwGEM', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidXdSYzNVSUE3V2p1ajdZWXhtMjg4OWNVZWtUR0VDeDN3ZTVtSUJseiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9hbGlzYWxlcy50ZXN0L2N1c3RvbWVycy83Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovL2FsaXNhbGVzLnRlc3QvZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1762150522),
('Mj5Lorr5ppsadGn4jBIcVCbcorHmUbnca0EBX1Xs', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:143.0) Gecko/20100101 Firefox/143.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXFBWThmZVlRbkRCaUtlRlZEdXNSdU1PSWRpcmw4VjFjMnNBWE54cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9hbGlzYWxlcy50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovL2FsaXNhbGVzLnRlc3QvZGFzaGJvYXJkIjt9fQ==', 1760888528),
('q0qOL7V12WDHU17z90XAwWJ6e4h2sePNVeqlLrl9', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieklhYkJLc3pyM292R1RUTEdYMDFMYk5MTEw1bGxSdHJlRElva3l0OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9hbGlzYWxlcy50ZXN0L2N1c3RvbWVycy83L2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1765903175);

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', 'D5XdYN2aBphaRVzY9YR3zqp24cMELhgZek9DL8GWGwtJuWVl7KLtdwZ0Bsd8', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(2, 'Henri Lejeune', 'eric.bourgeois@example.net', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', 'CyS40WYtfK', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(3, 'Hélène Denis-Seguin', 'noemi.caron@example.com', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', 'oDwzyVVI96', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(4, 'Marie de la Pelletier', 'jjacquet@example.net', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', 'qe63SNmpKl', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(5, 'Guy de Henry', 'georges.aimee@example.net', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', 'VXyHBPwRpp', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(6, 'Juliette Martins', 'wchauvin@example.org', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', 'asxOTY2K9O', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(7, 'Dominique Chauvin', 'descamps.emmanuel@example.org', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', 'xhH0O4TqPZ', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(8, 'Émile Fleury', 'simone.dupuy@example.net', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', '5kedjJdfp0', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(9, 'Julien Noel', 'rtexier@example.net', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', '3a67rXEgxO', '2025-10-04 13:22:07', '2025-10-04 13:22:07'),
(10, 'Antoine Roux', 'ygilbert@example.org', '2025-10-04 13:22:07', '$2y$12$1pxDGuO7gEyhlOuS1818tet9k0r5mHeoJLYYYxG/043kSyu9E05si', 'voJ6jXsb9t', '2025-10-04 13:22:07', '2025-10-04 13:22:07');

-- --------------------------------------------------------

--
-- Structure de la table `vats`
--

CREATE TABLE `vats` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vats`
--

INSERT INTO `vats` (`id`, `created_at`, `updated_at`, `categorie`, `rate`) VALUES
(1, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'normale', 20),
(2, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'intermediaire', 10),
(3, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'reduit', 5.5),
(4, '2025-10-04 13:22:07', '2025-10-04 13:22:07', 'particulier', 2.1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_vat_id_foreign` (`vat_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vats`
--
ALTER TABLE `vats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `vats`
--
ALTER TABLE `vats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_vat_id_foreign` FOREIGN KEY (`vat_id`) REFERENCES `vats` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
