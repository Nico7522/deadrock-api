-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 11 oct. 2023 à 12:17
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chapterapi`
--

-- --------------------------------------------------------

--
-- Structure de la table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, 'database\\migrations\\1587988332388_users', 1, '2023-09-30 09:19:44'),
(2, 'database\\migrations\\1592489784670_api_tokens', 1, '2023-09-30 09:19:44'),
(3, 'database\\migrations\\1695976239630_manga', 1, '2023-09-30 09:19:44'),
(4, 'database\\migrations\\1695976239649_chapters', 1, '2023-09-30 09:19:44'),
(5, 'database\\migrations\\1695977445180_pages', 1, '2023-09-30 09:19:44');

-- --------------------------------------------------------

--
-- Structure de la table `api_tokens`
--

CREATE TABLE `api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(10) UNSIGNED NOT NULL,
  `chapter_number` int(11) NOT NULL,
  `manga_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chapters`
--

INSERT INTO `chapters` (`id`, `chapter_number`, `manga_id`, `created_at`, `updated_at`) VALUES
(58, 1, 1, '2023-10-11 09:22:15', '2023-10-11 09:22:15');

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`id`, `title`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Dead Rock', 'Hiro Mashima', '2023-09-30 09:19:48', '2023-09-30 09:19:48');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_number` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `chapter_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `page_number`, `url`, `chapter_id`, `created_at`, `updated_at`) VALUES
(39, 1, 'deadrock/chapitre1/image1.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(40, 2, 'deadrock/chapitre1/image2.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(41, 3, 'deadrock/chapitre1/image3.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(42, 4, 'deadrock/chapitre1/image4.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(43, 5, 'deadrock/chapitre1/image5.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(44, 6, 'deadrock/chapitre1/image6.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(45, 7, 'deadrock/chapitre1/image7.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(46, 8, 'deadrock/chapitre1/image8.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(47, 9, 'deadrock/chapitre1/image9.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(48, 10, 'deadrock/chapitre1/image10.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(49, 11, 'deadrock/chapitre1/image11.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(50, 12, 'deadrock/chapitre1/image12.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(51, 13, 'deadrock/chapitre1/image13.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(52, 14, 'deadrock/chapitre1/image14.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(53, 15, 'deadrock/chapitre1/image15.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(54, 16, 'deadrock/chapitre1/image16.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(55, 17, 'deadrock/chapitre1/image17.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(56, 18, 'deadrock/chapitre1/image18.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(57, 19, 'deadrock/chapitre1/image19.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(58, 20, 'deadrock/chapitre1/image20.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(59, 21, 'deadrock/chapitre1/image21.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(60, 22, 'deadrock/chapitre1/image22.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(61, 23, 'deadrock/chapitre1/image23.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(62, 24, 'deadrock/chapitre1/image24.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(63, 25, 'deadrock/chapitre1/image25.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(64, 26, 'deadrock/chapitre1/image26.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(65, 27, 'deadrock/chapitre1/image27.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(66, 28, 'deadrock/chapitre1/image28.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(67, 29, 'deadrock/chapitre1/image29.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(68, 30, 'deadrock/chapitre1/image30.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(69, 31, 'deadrock/chapitre1/image31.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(70, 32, 'deadrock/chapitre1/image32.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(71, 33, 'deadrock/chapitre1/image33.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(72, 34, 'deadrock/chapitre1/image34.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(73, 35, 'deadrock/chapitre1/image35.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(74, 36, 'deadrock/chapitre1/image36.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(75, 37, 'deadrock/chapitre1/image37.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(76, 38, 'deadrock/chapitre1/image38.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(77, 39, 'deadrock/chapitre1/image39.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15'),
(78, 40, 'deadrock/chapitre1/image40.png', 58, '2023-10-11 09:22:15', '2023-10-11 09:22:15');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(180) NOT NULL,
  `remember_me_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_tokens_user_id_foreign` (`user_id`);

--
-- Index pour la table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapters_manga_id_foreign` (`manga_id`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_chapter_id_foreign` (`chapter_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `api_tokens`
--
ALTER TABLE `api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD CONSTRAINT `api_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_manga_id_foreign` FOREIGN KEY (`manga_id`) REFERENCES `manga` (`id`);

--
-- Contraintes pour la table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
