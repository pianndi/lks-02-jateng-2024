-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2024 pada 09.26
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"portal\",\"table\":\"personal_access_tokens\"},{\"db\":\"portal\",\"table\":\"users\"},{\"db\":\"portal\",\"table\":\"games\"},{\"db\":\"portal\",\"table\":\"game_versions\"},{\"db\":\"portal\",\"table\":\"administrators\"},{\"db\":\"formify2\",\"table\":\"forms\"},{\"db\":\"formify\",\"table\":\"forms\"},{\"db\":\"formify\",\"table\":\"users\"},{\"db\":\"formify\",\"table\":\"responses\"},{\"db\":\"formify\",\"table\":\"answers\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-03 04:03:46', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0,\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `portal`
--
CREATE DATABASE IF NOT EXISTS `portal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portal`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrators`
--

CREATE TABLE `administrators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `administrators`
--

INSERT INTO `administrators` (`id`, `username`, `password`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 'admin1', '$2y$10$gdMnWclgEBgDpJmmeJzVhuDEgX7sXcIAI/v/QvPaI28QRPHwrEKPK', NULL, '2022-10-05 13:55:40', '2022-10-05 13:55:40'),
(2, 'admin2', '$2y$10$Hyij3PAlYMV/0brQpIhwF.ptKIaDexuWeQoofY6xmrRCMIR5jleG6', NULL, '2022-10-05 15:27:52', '2022-10-05 15:27:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `games`
--

INSERT INTO `games` (`id`, `title`, `slug`, `description`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Demo Game 1', 'demo-game-1', 'This is demo game 1', 3, '2022-10-09 15:32:41', '2022-10-09 15:32:41', NULL),
(2, 'Demo Game 2', 'demo-game-2', 'This is demo game 2', 4, '2022-10-09 16:50:36', '2022-10-09 16:50:36', NULL),
(3, 'Demo Game 3', 'demo-game-3', 'This is demo game 3', 4, '2022-10-09 16:45:29', '2022-10-09 16:45:29', NULL),
(4, 'Demo Game 4', 'demo-game-4', 'This is demo game 4', 4, '2022-10-09 17:43:25', '2022-10-09 17:43:25', NULL),
(5, 'Demo Game 5', 'demo-game-5', 'This is demo game 5', 4, '2022-10-09 17:41:21', '2022-10-09 17:41:21', NULL),
(6, 'Demo Game 6', 'demo-game-6', 'This is demo game 6', 4, '2022-10-09 17:39:17', '2022-10-09 17:39:17', NULL),
(7, 'Demo Game 7', 'demo-game-7', 'This is demo game 7', 4, '2022-10-09 17:37:13', '2022-10-09 17:37:13', NULL),
(8, 'Demo Game 8', 'demo-game-8', 'This is demo game 8', 4, '2022-10-09 18:35:09', '2022-10-09 18:35:09', NULL),
(9, 'Demo Game 9', 'demo-game-9', 'This is demo game 9', 4, '2022-10-09 18:33:05', '2022-10-09 18:33:05', NULL),
(10, 'Demo Game 10', 'demo-game-10', 'This is demo game 10', 4, '2022-10-09 18:31:01', '2022-10-09 18:31:01', NULL),
(11, 'Demo Game 11', 'demo-game-11', 'This is demo game 11', 4, '2022-10-09 18:28:57', '2022-10-09 18:28:57', NULL),
(12, 'Demo Game 12', 'demo-game-12', 'This is demo game 12', 4, '2022-10-09 19:26:53', '2022-10-09 19:26:53', NULL),
(13, 'Demo Game 13', 'demo-game-13', 'This is demo game 13', 4, '2022-10-09 19:24:49', '2022-10-09 19:24:49', NULL),
(14, 'Demo Game 14', 'demo-game-14', 'This is demo game 14', 4, '2022-10-09 19:22:45', '2022-10-09 19:22:45', NULL),
(15, 'Demo Game 15', 'demo-game-15', 'This is demo game 15', 4, '2022-10-09 19:20:41', '2022-10-09 19:20:41', NULL),
(16, 'Demo Game 16', 'demo-game-16', 'This is demo game 16', 4, '2022-10-09 20:18:37', '2022-10-09 20:18:37', NULL),
(17, 'Demo Game 17', 'demo-game-17', 'This is demo game 17', 4, '2022-10-09 20:16:33', '2022-10-09 20:16:33', NULL),
(18, 'Demo Game 18', 'demo-game-18', 'This is demo game 18', 4, '2022-10-09 20:14:29', '2022-10-09 20:14:29', NULL),
(19, 'Demo Game 19', 'demo-game-19', 'This is demo game 19', 4, '2022-10-09 20:12:25', '2022-10-09 20:12:25', NULL),
(20, 'Demo Game 20', 'demo-game-20', 'This is demo game 20', 4, '2022-10-09 21:10:21', '2022-10-09 21:10:21', NULL),
(21, 'Demo Game 21', 'demo-game-21', 'This is demo game 21', 4, '2022-10-09 21:08:17', '2022-10-09 21:08:17', NULL),
(22, 'Demo Game 22', 'demo-game-22', 'This is demo game 22', 4, '2022-10-09 21:06:13', '2022-10-09 21:06:13', NULL),
(23, 'Demo Game 23', 'demo-game-23', 'This is demo game 23', 4, '2022-10-09 21:04:09', '2022-10-09 21:04:09', NULL),
(24, 'Demo Game 24', 'demo-game-24', 'This is demo game 24', 4, '2022-10-09 22:02:05', '2022-10-09 22:02:05', NULL),
(25, 'Demo Game 25', 'demo-game-25', 'This is demo game 25', 4, '2022-10-09 22:00:01', '2022-10-09 22:00:01', NULL),
(26, 'Demo Game 26', 'demo-game-26', 'This is demo game 26', 4, '2022-10-09 21:57:57', '2022-10-09 21:57:57', NULL),
(27, 'Demo Game 27', 'demo-game-27', 'This is demo game 27', 4, '2022-10-09 21:55:53', '2022-10-09 21:55:53', NULL),
(28, 'Demo Game 28', 'demo-game-28', 'This is demo game 28', 4, '2022-10-09 22:53:49', '2022-10-09 22:53:49', NULL),
(29, 'Demo Game 29', 'demo-game-29', 'This is demo game 29', 4, '2022-10-09 22:51:45', '2022-10-09 22:51:45', NULL),
(30, 'Demo Game 30', 'demo-game-30', 'This is demo game 30', 4, '2022-10-09 22:49:41', '2022-10-09 22:49:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `game_versions`
--

CREATE TABLE `game_versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `storage_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `game_versions`
--

INSERT INTO `game_versions` (`id`, `game_id`, `version`, `storage_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'v1', 'games/1/v1/', '2022-10-09 15:32:41', '2022-10-09 15:32:41', '2022-10-09 15:45:41'),
(2, 1, 'v2', 'games/1/v2/', '2022-10-09 15:45:41', '2022-10-09 15:45:41', NULL),
(3, 2, 'v1', 'games/2/v1/', '2022-10-09 16:50:36', '2022-10-09 16:50:36', NULL),
(4, 3, 'v1', 'games/3/v1/', '2022-10-09 16:45:29', '2022-10-09 16:45:29', NULL),
(5, 4, 'v1', 'games/4/v1/', '2022-10-09 17:43:25', '2022-10-09 17:43:25', NULL),
(6, 5, 'v1', 'games/5/v1/', '2022-10-09 17:41:21', '2022-10-09 17:41:21', NULL),
(7, 6, 'v1', 'games/6/v1/', '2022-10-09 17:39:17', '2022-10-09 17:39:17', NULL),
(8, 7, 'v1', 'games/7/v1/', '2022-10-09 17:37:13', '2022-10-09 17:37:13', NULL),
(9, 8, 'v1', 'games/8/v1/', '2022-10-09 18:35:09', '2022-10-09 18:35:09', NULL),
(10, 9, 'v1', 'games/9/v1/', '2022-10-09 18:33:05', '2022-10-09 18:33:05', NULL),
(11, 10, 'v1', 'games/10/v1/', '2022-10-09 18:31:01', '2022-10-09 18:31:01', NULL),
(12, 11, 'v1', 'games/11/v1/', '2022-10-09 18:28:57', '2022-10-09 18:28:57', NULL),
(13, 12, 'v1', 'games/12/v1/', '2022-10-09 19:26:53', '2022-10-09 19:26:53', NULL),
(14, 13, 'v1', 'games/13/v1/', '2022-10-09 19:24:49', '2022-10-09 19:24:49', NULL),
(15, 14, 'v1', 'games/14/v1/', '2022-10-09 19:22:45', '2022-10-09 19:22:45', NULL),
(16, 15, 'v1', 'games/15/v1/', '2022-10-09 19:20:41', '2022-10-09 19:20:41', NULL),
(17, 16, 'v1', 'games/16/v1/', '2022-10-09 20:18:37', '2022-10-09 20:18:37', NULL),
(18, 17, 'v1', 'games/17/v1/', '2022-10-09 20:16:33', '2022-10-09 20:16:33', NULL),
(19, 18, 'v1', 'games/18/v1/', '2022-10-09 20:14:29', '2022-10-09 20:14:29', NULL),
(20, 19, 'v1', 'games/19/v1/', '2022-10-09 20:12:25', '2022-10-09 20:12:25', NULL),
(21, 20, 'v1', 'games/20/v1/', '2022-10-09 21:10:21', '2022-10-09 21:10:21', NULL),
(22, 21, 'v1', 'games/21/v1/', '2022-10-09 21:08:17', '2022-10-09 21:08:17', NULL),
(23, 22, 'v1', 'games/22/v1/', '2022-10-09 21:06:13', '2022-10-09 21:06:13', NULL),
(24, 23, 'v1', 'games/23/v1/', '2022-10-09 21:04:09', '2022-10-09 21:04:09', NULL),
(25, 24, 'v1', 'games/24/v1/', '2022-10-09 22:02:05', '2022-10-09 22:02:05', NULL),
(26, 25, 'v1', 'games/25/v1/', '2022-10-09 22:00:01', '2022-10-09 22:00:01', NULL),
(27, 26, 'v1', 'games/26/v1/', '2022-10-09 21:57:57', '2022-10-09 21:57:57', NULL),
(28, 27, 'v1', 'games/27/v1/', '2022-10-09 21:55:53', '2022-10-09 21:55:53', NULL),
(29, 28, 'v1', 'games/28/v1/', '2022-10-09 22:53:49', '2022-10-09 22:53:49', NULL),
(30, 29, 'v1', 'games/29/v1/', '2022-10-09 22:51:45', '2022-10-09 22:51:45', NULL),
(31, 30, 'v1', 'games/30/v1/', '2022-10-09 22:49:41', '2022-10-09 22:49:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_10_03_175349_create_administrators_table', 1),
(3, '2022_10_03_200550_create_users_table', 1),
(4, '2022_10_05_185121_create_games_table', 1),
(5, '2022_10_05_190445_create_game_versions_table', 1),
(6, '2022_10_05_191233_create_scores_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `expires_at`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user', '59fd28d18d3b7ff215d1ac1fe08aa54dfdf23f08a6e2c2c1d2049be156d75dd6', '[\"*\"]', '2024-05-03 04:12:31', NULL, '2024-05-02 21:12:31', '2024-05-02 21:12:31'),
(2, 'App\\Models\\User', 33, 'user', 'fd8d1c83a77c98f7b6bb7d2551e6efecd911fbdb615161e93510af97d5bfa6a2', '[\"*\"]', '2024-05-03 06:13:38', NULL, '2024-05-02 23:13:38', '2024-05-02 23:13:38'),
(3, 'App\\Models\\Administrator', 1, 'user', 'cd4fda74dcc0e2e8b48c23ad196db4d81c0ef5ac86c15b5944bbae80810f80d4', '[\"adminToken\"]', '2024-05-03 06:17:44', '2024-05-02 23:17:44', '2024-05-02 23:17:20', '2024-05-02 23:17:44'),
(4, 'App\\Models\\User', 1, 'user', '1a8f408cca1cfecddd457bd46ef09f6ad4a55d038b33d42c58f040e0f0d37ee3', '[\"userToken\"]', '2024-05-03 06:18:13', '2024-05-02 23:18:13', '2024-05-02 23:17:51', '2024-05-02 23:18:13'),
(5, 'App\\Models\\User', 1, 'user', '90bb15fac271e3b7be7660e9f290487d9aea8627105c16dbe17221acf5f41a9a', '[\"userToken\"]', '2024-05-03 06:23:32', NULL, '2024-05-02 23:23:32', '2024-05-02 23:23:32'),
(6, 'App\\Models\\User', 1, 'user', '804d2c56c667e62e4fa80ddef56a520d40f387789e43214f7d58bb002f64d45d', '[\"userToken\"]', '2024-05-03 06:46:43', NULL, '2024-05-02 23:46:43', '2024-05-02 23:46:43'),
(7, 'App\\Models\\User', 34, 'user', 'f7486598cd3c5fafbe6192bab35d8f9c9df86dfe6f21cef05b7ab6a750237e3e', '[\"*\"]', '2024-05-03 06:59:00', NULL, '2024-05-02 23:59:00', '2024-05-02 23:59:00'),
(8, 'App\\Models\\User', 35, 'user', '366f9af2b724c61288679683a3f616c3a1345d81d1ad02ebaa9ccbf2114fea37', '[\"*\"]', '2024-05-03 07:10:02', '2024-05-03 00:10:02', '2024-05-02 23:59:24', '2024-05-03 00:10:02'),
(9, 'App\\Models\\User', 35, 'user', 'acd2a98ad7e9b7376f25609ceb0bbe2070ca4cab8c11fd6d3afc227f289a670c', '[\"userToken\"]', '2024-05-03 07:26:11', '2024-05-03 00:26:11', '2024-05-03 00:12:17', '2024-05-03 00:26:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_version_id` bigint(20) UNSIGNED NOT NULL,
  `score` double(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `game_version_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10.00, '2022-10-09 15:35:41', '2022-10-09 15:35:41'),
(2, 1, 1, 15.00, '2022-10-09 15:36:41', '2022-10-09 15:36:41'),
(3, 1, 2, 12.00, '2022-10-09 15:54:27', '2022-10-09 15:54:27'),
(4, 2, 2, 20.00, '2022-10-09 15:55:39', '2022-10-09 15:55:39'),
(5, 2, 3, 30.00, '2022-10-09 16:53:41', '2022-10-09 16:53:41'),
(6, 3, 2, 1000.00, '2022-10-09 16:53:41', '2022-10-09 16:53:41'),
(7, 3, 2, -300.00, '2022-10-09 16:54:41', '2022-10-09 16:54:41'),
(8, 4, 2, 5.00, '2022-10-09 16:56:41', '2022-10-09 16:56:41'),
(9, 4, 3, 200.00, '2022-10-09 16:57:41', '2022-10-09 16:57:41'),
(10, 5, 4, 135.00, '2022-10-09 16:45:38', '2022-10-09 16:45:38'),
(11, 5, 5, 135.00, '2022-10-09 17:43:34', '2022-10-09 17:43:34'),
(12, 5, 6, 135.00, '2022-10-09 17:41:30', '2022-10-09 17:41:30'),
(13, 5, 7, 135.00, '2022-10-09 17:39:26', '2022-10-09 17:39:26'),
(14, 5, 8, 135.00, '2022-10-09 17:37:22', '2022-10-09 17:37:22'),
(15, 5, 9, 135.00, '2022-10-09 18:35:18', '2022-10-09 18:35:18'),
(16, 5, 10, 135.00, '2022-10-09 18:33:14', '2022-10-09 18:33:14'),
(17, 5, 11, 135.00, '2022-10-09 18:31:10', '2022-10-09 18:31:10'),
(18, 5, 12, 135.00, '2022-10-09 18:29:06', '2022-10-09 18:29:06'),
(19, 5, 13, 135.00, '2022-10-09 19:27:02', '2022-10-09 19:27:02'),
(20, 5, 14, 135.00, '2022-10-09 19:24:58', '2022-10-09 19:24:58'),
(21, 5, 15, 135.00, '2022-10-09 19:22:54', '2022-10-09 19:22:54'),
(22, 5, 16, 135.00, '2022-10-09 19:20:50', '2022-10-09 19:20:50'),
(23, 5, 17, 135.00, '2022-10-09 20:18:46', '2022-10-09 20:18:46'),
(24, 5, 18, 135.00, '2022-10-09 20:16:42', '2022-10-09 20:16:42'),
(25, 5, 19, 135.00, '2022-10-09 20:14:38', '2022-10-09 20:14:38'),
(26, 5, 20, 135.00, '2022-10-09 20:12:34', '2022-10-09 20:12:34'),
(27, 5, 21, 135.00, '2022-10-09 21:10:30', '2022-10-09 21:10:30'),
(28, 5, 22, 135.00, '2022-10-09 21:08:26', '2022-10-09 21:08:26'),
(29, 5, 23, 135.00, '2022-10-09 21:06:22', '2022-10-09 21:06:22'),
(30, 5, 24, 135.00, '2022-10-09 21:04:18', '2022-10-09 21:04:18'),
(31, 5, 25, 135.00, '2022-10-09 22:02:14', '2022-10-09 22:02:14'),
(32, 5, 26, 135.00, '2022-10-09 22:00:10', '2022-10-09 22:00:10'),
(33, 5, 27, 135.00, '2022-10-09 21:58:06', '2022-10-09 21:58:06'),
(34, 5, 28, 135.00, '2022-10-09 21:56:02', '2022-10-09 21:56:02'),
(35, 5, 29, 135.00, '2022-10-09 22:53:58', '2022-10-09 22:53:58'),
(36, 5, 30, 135.00, '2022-10-09 22:51:54', '2022-10-09 22:51:54'),
(37, 5, 31, 135.00, '2022-10-09 22:49:50', '2022-10-09 22:49:50'),
(38, 6, 4, 157.00, '2022-10-09 16:45:41', '2022-10-09 16:45:41'),
(39, 6, 5, 156.00, '2022-10-09 17:43:37', '2022-10-09 17:43:37'),
(40, 6, 6, 155.00, '2022-10-09 17:41:33', '2022-10-09 17:41:33'),
(41, 6, 7, 154.00, '2022-10-09 17:39:29', '2022-10-09 17:39:29'),
(42, 6, 8, 153.00, '2022-10-09 17:37:25', '2022-10-09 17:37:25'),
(43, 6, 9, 152.00, '2022-10-09 18:35:21', '2022-10-09 18:35:21'),
(44, 6, 10, 151.00, '2022-10-09 18:33:17', '2022-10-09 18:33:17'),
(45, 6, 11, 150.00, '2022-10-09 18:31:13', '2022-10-09 18:31:13'),
(46, 6, 12, 149.00, '2022-10-09 18:29:09', '2022-10-09 18:29:09'),
(47, 6, 13, 148.00, '2022-10-09 19:27:05', '2022-10-09 19:27:05'),
(48, 6, 14, 147.00, '2022-10-09 19:25:01', '2022-10-09 19:25:01'),
(49, 6, 15, 146.00, '2022-10-09 19:22:57', '2022-10-09 19:22:57'),
(50, 6, 16, 145.00, '2022-10-09 19:20:53', '2022-10-09 19:20:53'),
(51, 6, 17, 144.00, '2022-10-09 20:18:49', '2022-10-09 20:18:49'),
(52, 6, 18, 143.00, '2022-10-09 20:16:45', '2022-10-09 20:16:45'),
(53, 6, 19, 142.00, '2022-10-09 20:14:41', '2022-10-09 20:14:41'),
(54, 6, 20, 141.00, '2022-10-09 20:12:37', '2022-10-09 20:12:37'),
(55, 6, 21, 140.00, '2022-10-09 21:10:33', '2022-10-09 21:10:33'),
(56, 6, 22, 139.00, '2022-10-09 21:08:29', '2022-10-09 21:08:29'),
(57, 6, 23, 138.00, '2022-10-09 21:06:25', '2022-10-09 21:06:25'),
(58, 6, 24, 137.00, '2022-10-09 21:04:21', '2022-10-09 21:04:21'),
(59, 6, 25, 136.00, '2022-10-09 22:02:17', '2022-10-09 22:02:17'),
(60, 6, 26, 135.00, '2022-10-09 22:00:13', '2022-10-09 22:00:13'),
(61, 6, 27, 134.00, '2022-10-09 21:58:09', '2022-10-09 21:58:09'),
(62, 6, 28, 133.00, '2022-10-09 21:56:05', '2022-10-09 21:56:05'),
(63, 6, 29, 132.00, '2022-10-09 22:54:01', '2022-10-09 22:54:01'),
(64, 6, 30, 131.00, '2022-10-09 22:51:57', '2022-10-09 22:51:57'),
(65, 6, 31, 130.00, '2022-10-09 22:49:53', '2022-10-09 22:49:53'),
(66, 7, 4, 179.00, '2022-10-09 16:45:44', '2022-10-09 16:45:44'),
(67, 7, 5, 177.00, '2022-10-09 17:43:40', '2022-10-09 17:43:40'),
(68, 7, 6, 175.00, '2022-10-09 17:41:36', '2022-10-09 17:41:36'),
(69, 7, 7, 173.00, '2022-10-09 17:39:32', '2022-10-09 17:39:32'),
(70, 7, 8, 171.00, '2022-10-09 17:37:28', '2022-10-09 17:37:28'),
(71, 7, 9, 169.00, '2022-10-09 18:35:24', '2022-10-09 18:35:24'),
(72, 7, 10, 167.00, '2022-10-09 18:33:20', '2022-10-09 18:33:20'),
(73, 7, 11, 165.00, '2022-10-09 18:31:16', '2022-10-09 18:31:16'),
(74, 7, 12, 163.00, '2022-10-09 18:29:12', '2022-10-09 18:29:12'),
(75, 7, 13, 161.00, '2022-10-09 19:27:08', '2022-10-09 19:27:08'),
(76, 7, 14, 159.00, '2022-10-09 19:25:04', '2022-10-09 19:25:04'),
(77, 7, 15, 157.00, '2022-10-09 19:23:00', '2022-10-09 19:23:00'),
(78, 7, 16, 155.00, '2022-10-09 19:20:56', '2022-10-09 19:20:56'),
(79, 7, 17, 153.00, '2022-10-09 20:18:52', '2022-10-09 20:18:52'),
(80, 7, 18, 151.00, '2022-10-09 20:16:48', '2022-10-09 20:16:48'),
(81, 7, 19, 149.00, '2022-10-09 20:14:44', '2022-10-09 20:14:44'),
(82, 7, 20, 147.00, '2022-10-09 20:12:40', '2022-10-09 20:12:40'),
(83, 7, 21, 145.00, '2022-10-09 21:10:36', '2022-10-09 21:10:36'),
(84, 7, 22, 143.00, '2022-10-09 21:08:32', '2022-10-09 21:08:32'),
(85, 7, 23, 141.00, '2022-10-09 21:06:28', '2022-10-09 21:06:28'),
(86, 7, 24, 139.00, '2022-10-09 21:04:24', '2022-10-09 21:04:24'),
(87, 7, 25, 137.00, '2022-10-09 22:02:20', '2022-10-09 22:02:20'),
(88, 7, 26, 135.00, '2022-10-09 22:00:16', '2022-10-09 22:00:16'),
(89, 7, 27, 133.00, '2022-10-09 21:58:12', '2022-10-09 21:58:12'),
(90, 7, 28, 131.00, '2022-10-09 21:56:08', '2022-10-09 21:56:08'),
(91, 7, 29, 129.00, '2022-10-09 22:54:04', '2022-10-09 22:54:04'),
(92, 7, 30, 127.00, '2022-10-09 22:52:00', '2022-10-09 22:52:00'),
(93, 7, 31, 125.00, '2022-10-09 22:49:56', '2022-10-09 22:49:56'),
(94, 8, 4, 120.00, '2022-10-09 16:45:47', '2022-10-09 16:45:47'),
(95, 8, 5, 120.00, '2022-10-09 17:43:43', '2022-10-09 17:43:43'),
(96, 8, 6, 120.00, '2022-10-09 17:41:39', '2022-10-09 17:41:39'),
(97, 8, 7, 120.00, '2022-10-09 17:39:35', '2022-10-09 17:39:35'),
(98, 8, 8, 120.00, '2022-10-09 17:37:31', '2022-10-09 17:37:31'),
(99, 8, 9, 120.00, '2022-10-09 18:35:27', '2022-10-09 18:35:27'),
(100, 8, 10, 120.00, '2022-10-09 18:33:23', '2022-10-09 18:33:23'),
(101, 8, 11, 120.00, '2022-10-09 18:31:19', '2022-10-09 18:31:19'),
(102, 8, 12, 120.00, '2022-10-09 18:29:15', '2022-10-09 18:29:15'),
(103, 8, 13, 120.00, '2022-10-09 19:27:11', '2022-10-09 19:27:11'),
(104, 8, 14, 120.00, '2022-10-09 19:25:07', '2022-10-09 19:25:07'),
(105, 8, 15, 120.00, '2022-10-09 19:23:03', '2022-10-09 19:23:03'),
(106, 8, 16, 120.00, '2022-10-09 19:20:59', '2022-10-09 19:20:59'),
(107, 8, 17, 120.00, '2022-10-09 20:18:55', '2022-10-09 20:18:55'),
(108, 8, 18, 120.00, '2022-10-09 20:16:51', '2022-10-09 20:16:51'),
(109, 8, 19, 120.00, '2022-10-09 20:14:47', '2022-10-09 20:14:47'),
(110, 8, 20, 120.00, '2022-10-09 20:12:43', '2022-10-09 20:12:43'),
(111, 8, 21, 120.00, '2022-10-09 21:10:39', '2022-10-09 21:10:39'),
(112, 8, 22, 120.00, '2022-10-09 21:08:35', '2022-10-09 21:08:35'),
(113, 8, 23, 120.00, '2022-10-09 21:06:31', '2022-10-09 21:06:31'),
(114, 8, 24, 120.00, '2022-10-09 21:04:27', '2022-10-09 21:04:27'),
(115, 8, 25, 120.00, '2022-10-09 22:02:23', '2022-10-09 22:02:23'),
(116, 8, 26, 120.00, '2022-10-09 22:00:19', '2022-10-09 22:00:19'),
(117, 8, 27, 120.00, '2022-10-09 21:58:15', '2022-10-09 21:58:15'),
(118, 8, 28, 120.00, '2022-10-09 21:56:11', '2022-10-09 21:56:11'),
(119, 8, 29, 120.00, '2022-10-09 22:54:07', '2022-10-09 22:54:07'),
(120, 8, 30, 120.00, '2022-10-09 22:52:03', '2022-10-09 22:52:03'),
(121, 8, 31, 120.00, '2022-10-09 22:49:59', '2022-10-09 22:49:59'),
(122, 9, 4, 142.00, '2022-10-09 16:45:50', '2022-10-09 16:45:50'),
(123, 9, 5, 141.00, '2022-10-09 17:43:46', '2022-10-09 17:43:46'),
(124, 9, 6, 140.00, '2022-10-09 17:41:42', '2022-10-09 17:41:42'),
(125, 9, 7, 139.00, '2022-10-09 17:39:38', '2022-10-09 17:39:38'),
(126, 9, 8, 138.00, '2022-10-09 17:37:34', '2022-10-09 17:37:34'),
(127, 9, 9, 137.00, '2022-10-09 18:35:30', '2022-10-09 18:35:30'),
(128, 9, 10, 136.00, '2022-10-09 18:33:26', '2022-10-09 18:33:26'),
(129, 9, 11, 135.00, '2022-10-09 18:31:22', '2022-10-09 18:31:22'),
(130, 9, 12, 134.00, '2022-10-09 18:29:18', '2022-10-09 18:29:18'),
(131, 9, 13, 133.00, '2022-10-09 19:27:14', '2022-10-09 19:27:14'),
(132, 9, 14, 132.00, '2022-10-09 19:25:10', '2022-10-09 19:25:10'),
(133, 9, 15, 131.00, '2022-10-09 19:23:06', '2022-10-09 19:23:06'),
(134, 9, 16, 130.00, '2022-10-09 19:21:02', '2022-10-09 19:21:02'),
(135, 9, 17, 129.00, '2022-10-09 20:18:58', '2022-10-09 20:18:58'),
(136, 9, 18, 128.00, '2022-10-09 20:16:54', '2022-10-09 20:16:54'),
(137, 9, 19, 127.00, '2022-10-09 20:14:50', '2022-10-09 20:14:50'),
(138, 9, 20, 126.00, '2022-10-09 20:12:46', '2022-10-09 20:12:46'),
(139, 9, 21, 125.00, '2022-10-09 21:10:42', '2022-10-09 21:10:42'),
(140, 9, 22, 124.00, '2022-10-09 21:08:38', '2022-10-09 21:08:38'),
(141, 9, 23, 123.00, '2022-10-09 21:06:34', '2022-10-09 21:06:34'),
(142, 9, 24, 122.00, '2022-10-09 21:04:30', '2022-10-09 21:04:30'),
(143, 9, 25, 121.00, '2022-10-09 22:02:26', '2022-10-09 22:02:26'),
(144, 9, 26, 120.00, '2022-10-09 22:00:22', '2022-10-09 22:00:22'),
(145, 9, 27, 119.00, '2022-10-09 21:58:18', '2022-10-09 21:58:18'),
(146, 9, 28, 118.00, '2022-10-09 21:56:14', '2022-10-09 21:56:14'),
(147, 9, 29, 117.00, '2022-10-09 22:54:10', '2022-10-09 22:54:10'),
(148, 9, 30, 116.00, '2022-10-09 22:52:06', '2022-10-09 22:52:06'),
(149, 9, 31, 115.00, '2022-10-09 22:50:02', '2022-10-09 22:50:02'),
(150, 10, 4, 164.00, '2022-10-09 16:45:53', '2022-10-09 16:45:53'),
(151, 10, 5, 162.00, '2022-10-09 17:43:49', '2022-10-09 17:43:49'),
(152, 10, 6, 160.00, '2022-10-09 17:41:45', '2022-10-09 17:41:45'),
(153, 10, 7, 158.00, '2022-10-09 17:39:41', '2022-10-09 17:39:41'),
(154, 10, 8, 156.00, '2022-10-09 17:37:37', '2022-10-09 17:37:37'),
(155, 10, 9, 154.00, '2022-10-09 18:35:33', '2022-10-09 18:35:33'),
(156, 10, 10, 152.00, '2022-10-09 18:33:29', '2022-10-09 18:33:29'),
(157, 10, 11, 150.00, '2022-10-09 18:31:25', '2022-10-09 18:31:25'),
(158, 10, 12, 148.00, '2022-10-09 18:29:21', '2022-10-09 18:29:21'),
(159, 10, 13, 146.00, '2022-10-09 19:27:17', '2022-10-09 19:27:17'),
(160, 10, 14, 144.00, '2022-10-09 19:25:13', '2022-10-09 19:25:13'),
(161, 10, 15, 142.00, '2022-10-09 19:23:09', '2022-10-09 19:23:09'),
(162, 10, 16, 140.00, '2022-10-09 19:21:05', '2022-10-09 19:21:05'),
(163, 10, 17, 138.00, '2022-10-09 20:19:01', '2022-10-09 20:19:01'),
(164, 10, 18, 136.00, '2022-10-09 20:16:57', '2022-10-09 20:16:57'),
(165, 10, 19, 134.00, '2022-10-09 20:14:53', '2022-10-09 20:14:53'),
(166, 10, 20, 132.00, '2022-10-09 20:12:49', '2022-10-09 20:12:49'),
(167, 10, 21, 130.00, '2022-10-09 21:10:45', '2022-10-09 21:10:45'),
(168, 10, 22, 128.00, '2022-10-09 21:08:41', '2022-10-09 21:08:41'),
(169, 10, 23, 126.00, '2022-10-09 21:06:37', '2022-10-09 21:06:37'),
(170, 10, 24, 124.00, '2022-10-09 21:04:33', '2022-10-09 21:04:33'),
(171, 10, 25, 122.00, '2022-10-09 22:02:29', '2022-10-09 22:02:29'),
(172, 10, 26, 120.00, '2022-10-09 22:00:25', '2022-10-09 22:00:25'),
(173, 10, 27, 118.00, '2022-10-09 21:58:21', '2022-10-09 21:58:21'),
(174, 10, 28, 116.00, '2022-10-09 21:56:17', '2022-10-09 21:56:17'),
(175, 10, 29, 114.00, '2022-10-09 22:54:13', '2022-10-09 22:54:13'),
(176, 10, 30, 112.00, '2022-10-09 22:52:09', '2022-10-09 22:52:09'),
(177, 10, 31, 110.00, '2022-10-09 22:50:05', '2022-10-09 22:50:05'),
(178, 11, 4, 105.00, '2022-10-09 16:45:56', '2022-10-09 16:45:56'),
(179, 11, 5, 105.00, '2022-10-09 17:43:52', '2022-10-09 17:43:52'),
(180, 11, 6, 105.00, '2022-10-09 17:41:48', '2022-10-09 17:41:48'),
(181, 11, 7, 105.00, '2022-10-09 17:39:44', '2022-10-09 17:39:44'),
(182, 11, 8, 105.00, '2022-10-09 17:37:40', '2022-10-09 17:37:40'),
(183, 11, 9, 105.00, '2022-10-09 18:35:36', '2022-10-09 18:35:36'),
(184, 11, 10, 105.00, '2022-10-09 18:33:32', '2022-10-09 18:33:32'),
(185, 11, 11, 105.00, '2022-10-09 18:31:28', '2022-10-09 18:31:28'),
(186, 11, 12, 105.00, '2022-10-09 18:29:24', '2022-10-09 18:29:24'),
(187, 11, 13, 105.00, '2022-10-09 19:27:20', '2022-10-09 19:27:20'),
(188, 11, 14, 105.00, '2022-10-09 19:25:16', '2022-10-09 19:25:16'),
(189, 11, 15, 105.00, '2022-10-09 19:23:12', '2022-10-09 19:23:12'),
(190, 11, 16, 105.00, '2022-10-09 19:21:08', '2022-10-09 19:21:08'),
(191, 11, 17, 105.00, '2022-10-09 20:19:04', '2022-10-09 20:19:04'),
(192, 11, 18, 105.00, '2022-10-09 20:17:00', '2022-10-09 20:17:00'),
(193, 11, 19, 105.00, '2022-10-09 20:14:56', '2022-10-09 20:14:56'),
(194, 11, 20, 105.00, '2022-10-09 20:12:52', '2022-10-09 20:12:52'),
(195, 11, 21, 105.00, '2022-10-09 21:10:48', '2022-10-09 21:10:48'),
(196, 11, 22, 105.00, '2022-10-09 21:08:44', '2022-10-09 21:08:44'),
(197, 11, 23, 105.00, '2022-10-09 21:06:40', '2022-10-09 21:06:40'),
(198, 11, 24, 105.00, '2022-10-09 21:04:36', '2022-10-09 21:04:36'),
(199, 11, 25, 105.00, '2022-10-09 22:02:32', '2022-10-09 22:02:32'),
(200, 11, 26, 105.00, '2022-10-09 22:00:28', '2022-10-09 22:00:28'),
(201, 11, 27, 105.00, '2022-10-09 21:58:24', '2022-10-09 21:58:24'),
(202, 11, 28, 105.00, '2022-10-09 21:56:20', '2022-10-09 21:56:20'),
(203, 11, 29, 105.00, '2022-10-09 22:54:16', '2022-10-09 22:54:16'),
(204, 11, 30, 105.00, '2022-10-09 22:52:12', '2022-10-09 22:52:12'),
(205, 11, 31, 105.00, '2022-10-09 22:50:08', '2022-10-09 22:50:08'),
(206, 12, 4, 127.00, '2022-10-09 16:45:59', '2022-10-09 16:45:59'),
(207, 12, 5, 126.00, '2022-10-09 17:43:55', '2022-10-09 17:43:55'),
(208, 12, 6, 125.00, '2022-10-09 17:41:51', '2022-10-09 17:41:51'),
(209, 12, 7, 124.00, '2022-10-09 17:39:47', '2022-10-09 17:39:47'),
(210, 12, 8, 123.00, '2022-10-09 17:37:43', '2022-10-09 17:37:43'),
(211, 12, 9, 122.00, '2022-10-09 18:35:39', '2022-10-09 18:35:39'),
(212, 12, 10, 121.00, '2022-10-09 18:33:35', '2022-10-09 18:33:35'),
(213, 12, 11, 120.00, '2022-10-09 18:31:31', '2022-10-09 18:31:31'),
(214, 12, 12, 119.00, '2022-10-09 18:29:27', '2022-10-09 18:29:27'),
(215, 12, 13, 118.00, '2022-10-09 19:27:23', '2022-10-09 19:27:23'),
(216, 12, 14, 117.00, '2022-10-09 19:25:19', '2022-10-09 19:25:19'),
(217, 12, 15, 116.00, '2022-10-09 19:23:15', '2022-10-09 19:23:15'),
(218, 12, 16, 115.00, '2022-10-09 19:21:11', '2022-10-09 19:21:11'),
(219, 12, 17, 114.00, '2022-10-09 20:19:07', '2022-10-09 20:19:07'),
(220, 12, 18, 113.00, '2022-10-09 20:17:03', '2022-10-09 20:17:03'),
(221, 12, 19, 112.00, '2022-10-09 20:14:59', '2022-10-09 20:14:59'),
(222, 12, 20, 111.00, '2022-10-09 20:12:55', '2022-10-09 20:12:55'),
(223, 12, 21, 110.00, '2022-10-09 21:10:51', '2022-10-09 21:10:51'),
(224, 12, 22, 109.00, '2022-10-09 21:08:47', '2022-10-09 21:08:47'),
(225, 12, 23, 108.00, '2022-10-09 21:06:43', '2022-10-09 21:06:43'),
(226, 12, 24, 107.00, '2022-10-09 21:04:39', '2022-10-09 21:04:39'),
(227, 12, 25, 106.00, '2022-10-09 22:02:35', '2022-10-09 22:02:35'),
(228, 12, 26, 105.00, '2022-10-09 22:00:31', '2022-10-09 22:00:31'),
(229, 12, 27, 104.00, '2022-10-09 21:58:27', '2022-10-09 21:58:27'),
(230, 12, 28, 103.00, '2022-10-09 21:56:23', '2022-10-09 21:56:23'),
(231, 12, 29, 102.00, '2022-10-09 22:54:19', '2022-10-09 22:54:19'),
(232, 12, 30, 101.00, '2022-10-09 22:52:15', '2022-10-09 22:52:15'),
(233, 12, 31, 100.00, '2022-10-09 22:50:11', '2022-10-09 22:50:11'),
(234, 13, 4, 149.00, '2022-10-09 16:46:02', '2022-10-09 16:46:02'),
(235, 13, 5, 147.00, '2022-10-09 17:43:58', '2022-10-09 17:43:58'),
(236, 13, 6, 145.00, '2022-10-09 17:41:54', '2022-10-09 17:41:54'),
(237, 13, 7, 143.00, '2022-10-09 17:39:50', '2022-10-09 17:39:50'),
(238, 13, 8, 141.00, '2022-10-09 17:37:46', '2022-10-09 17:37:46'),
(239, 13, 9, 139.00, '2022-10-09 18:35:42', '2022-10-09 18:35:42'),
(240, 13, 10, 137.00, '2022-10-09 18:33:38', '2022-10-09 18:33:38'),
(241, 13, 11, 135.00, '2022-10-09 18:31:34', '2022-10-09 18:31:34'),
(242, 13, 12, 133.00, '2022-10-09 18:29:30', '2022-10-09 18:29:30'),
(243, 13, 13, 131.00, '2022-10-09 19:27:26', '2022-10-09 19:27:26'),
(244, 13, 14, 129.00, '2022-10-09 19:25:22', '2022-10-09 19:25:22'),
(245, 13, 15, 127.00, '2022-10-09 19:23:18', '2022-10-09 19:23:18'),
(246, 13, 16, 125.00, '2022-10-09 19:21:14', '2022-10-09 19:21:14'),
(247, 13, 17, 123.00, '2022-10-09 20:19:10', '2022-10-09 20:19:10'),
(248, 13, 18, 121.00, '2022-10-09 20:17:06', '2022-10-09 20:17:06'),
(249, 13, 19, 119.00, '2022-10-09 20:15:02', '2022-10-09 20:15:02'),
(250, 13, 20, 117.00, '2022-10-09 20:12:58', '2022-10-09 20:12:58'),
(251, 13, 21, 115.00, '2022-10-09 21:10:54', '2022-10-09 21:10:54'),
(252, 13, 22, 113.00, '2022-10-09 21:08:50', '2022-10-09 21:08:50'),
(253, 13, 23, 111.00, '2022-10-09 21:06:46', '2022-10-09 21:06:46'),
(254, 13, 24, 109.00, '2022-10-09 21:04:42', '2022-10-09 21:04:42'),
(255, 13, 25, 107.00, '2022-10-09 22:02:38', '2022-10-09 22:02:38'),
(256, 13, 26, 105.00, '2022-10-09 22:00:34', '2022-10-09 22:00:34'),
(257, 13, 27, 103.00, '2022-10-09 21:58:30', '2022-10-09 21:58:30'),
(258, 13, 28, 101.00, '2022-10-09 21:56:26', '2022-10-09 21:56:26'),
(259, 13, 29, 99.00, '2022-10-09 22:54:22', '2022-10-09 22:54:22'),
(260, 13, 30, 97.00, '2022-10-09 22:52:18', '2022-10-09 22:52:18'),
(261, 13, 31, 95.00, '2022-10-09 22:50:14', '2022-10-09 22:50:14'),
(262, 14, 4, 90.00, '2022-10-09 16:46:05', '2022-10-09 16:46:05'),
(263, 14, 5, 90.00, '2022-10-09 17:44:01', '2022-10-09 17:44:01'),
(264, 14, 6, 90.00, '2022-10-09 17:41:57', '2022-10-09 17:41:57'),
(265, 14, 7, 90.00, '2022-10-09 17:39:53', '2022-10-09 17:39:53'),
(266, 14, 8, 90.00, '2022-10-09 17:37:49', '2022-10-09 17:37:49'),
(267, 14, 9, 90.00, '2022-10-09 18:35:45', '2022-10-09 18:35:45'),
(268, 14, 10, 90.00, '2022-10-09 18:33:41', '2022-10-09 18:33:41'),
(269, 14, 11, 90.00, '2022-10-09 18:31:37', '2022-10-09 18:31:37'),
(270, 14, 12, 90.00, '2022-10-09 18:29:33', '2022-10-09 18:29:33'),
(271, 14, 13, 90.00, '2022-10-09 19:27:29', '2022-10-09 19:27:29'),
(272, 14, 14, 90.00, '2022-10-09 19:25:25', '2022-10-09 19:25:25'),
(273, 14, 15, 90.00, '2022-10-09 19:23:21', '2022-10-09 19:23:21'),
(274, 14, 16, 90.00, '2022-10-09 19:21:17', '2022-10-09 19:21:17'),
(275, 14, 17, 90.00, '2022-10-09 20:19:13', '2022-10-09 20:19:13'),
(276, 14, 18, 90.00, '2022-10-09 20:17:09', '2022-10-09 20:17:09'),
(277, 14, 19, 90.00, '2022-10-09 20:15:05', '2022-10-09 20:15:05'),
(278, 14, 20, 90.00, '2022-10-09 20:13:01', '2022-10-09 20:13:01'),
(279, 14, 21, 90.00, '2022-10-09 21:10:57', '2022-10-09 21:10:57'),
(280, 14, 22, 90.00, '2022-10-09 21:08:53', '2022-10-09 21:08:53'),
(281, 14, 23, 90.00, '2022-10-09 21:06:49', '2022-10-09 21:06:49'),
(282, 14, 24, 90.00, '2022-10-09 21:04:45', '2022-10-09 21:04:45'),
(283, 14, 25, 90.00, '2022-10-09 22:02:41', '2022-10-09 22:02:41'),
(284, 14, 26, 90.00, '2022-10-09 22:00:37', '2022-10-09 22:00:37'),
(285, 14, 27, 90.00, '2022-10-09 21:58:33', '2022-10-09 21:58:33'),
(286, 14, 28, 90.00, '2022-10-09 21:56:29', '2022-10-09 21:56:29'),
(287, 14, 29, 90.00, '2022-10-09 22:54:25', '2022-10-09 22:54:25'),
(288, 14, 30, 90.00, '2022-10-09 22:52:21', '2022-10-09 22:52:21'),
(289, 14, 31, 90.00, '2022-10-09 22:50:17', '2022-10-09 22:50:17'),
(290, 15, 4, 112.00, '2022-10-09 16:46:08', '2022-10-09 16:46:08'),
(291, 15, 5, 111.00, '2022-10-09 17:44:04', '2022-10-09 17:44:04'),
(292, 15, 6, 110.00, '2022-10-09 17:42:00', '2022-10-09 17:42:00'),
(293, 15, 7, 109.00, '2022-10-09 17:39:56', '2022-10-09 17:39:56'),
(294, 15, 8, 108.00, '2022-10-09 17:37:52', '2022-10-09 17:37:52'),
(295, 15, 9, 107.00, '2022-10-09 18:35:48', '2022-10-09 18:35:48'),
(296, 15, 10, 106.00, '2022-10-09 18:33:44', '2022-10-09 18:33:44'),
(297, 15, 11, 105.00, '2022-10-09 18:31:40', '2022-10-09 18:31:40'),
(298, 15, 12, 104.00, '2022-10-09 18:29:36', '2022-10-09 18:29:36'),
(299, 15, 13, 103.00, '2022-10-09 19:27:32', '2022-10-09 19:27:32'),
(300, 15, 14, 102.00, '2022-10-09 19:25:28', '2022-10-09 19:25:28'),
(301, 15, 15, 101.00, '2022-10-09 19:23:24', '2022-10-09 19:23:24'),
(302, 15, 16, 100.00, '2022-10-09 19:21:20', '2022-10-09 19:21:20'),
(303, 15, 17, 99.00, '2022-10-09 20:19:16', '2022-10-09 20:19:16'),
(304, 15, 18, 98.00, '2022-10-09 20:17:12', '2022-10-09 20:17:12'),
(305, 15, 19, 97.00, '2022-10-09 20:15:08', '2022-10-09 20:15:08'),
(306, 15, 20, 96.00, '2022-10-09 20:13:04', '2022-10-09 20:13:04'),
(307, 15, 21, 95.00, '2022-10-09 21:11:00', '2022-10-09 21:11:00'),
(308, 15, 22, 94.00, '2022-10-09 21:08:56', '2022-10-09 21:08:56'),
(309, 15, 23, 93.00, '2022-10-09 21:06:52', '2022-10-09 21:06:52'),
(310, 15, 24, 92.00, '2022-10-09 21:04:48', '2022-10-09 21:04:48'),
(311, 15, 25, 91.00, '2022-10-09 22:02:44', '2022-10-09 22:02:44'),
(312, 15, 26, 90.00, '2022-10-09 22:00:40', '2022-10-09 22:00:40'),
(313, 15, 27, 89.00, '2022-10-09 21:58:36', '2022-10-09 21:58:36'),
(314, 15, 28, 88.00, '2022-10-09 21:56:32', '2022-10-09 21:56:32'),
(315, 15, 29, 87.00, '2022-10-09 22:54:28', '2022-10-09 22:54:28'),
(316, 15, 30, 86.00, '2022-10-09 22:52:24', '2022-10-09 22:52:24'),
(317, 15, 31, 85.00, '2022-10-09 22:50:20', '2022-10-09 22:50:20'),
(318, 16, 4, 134.00, '2022-10-09 16:46:11', '2022-10-09 16:46:11'),
(319, 16, 5, 132.00, '2022-10-09 17:44:07', '2022-10-09 17:44:07'),
(320, 16, 6, 130.00, '2022-10-09 17:42:03', '2022-10-09 17:42:03'),
(321, 16, 7, 128.00, '2022-10-09 17:39:59', '2022-10-09 17:39:59'),
(322, 16, 8, 126.00, '2022-10-09 17:37:55', '2022-10-09 17:37:55'),
(323, 16, 9, 124.00, '2022-10-09 18:35:51', '2022-10-09 18:35:51'),
(324, 16, 10, 122.00, '2022-10-09 18:33:47', '2022-10-09 18:33:47'),
(325, 16, 11, 120.00, '2022-10-09 18:31:43', '2022-10-09 18:31:43'),
(326, 16, 12, 118.00, '2022-10-09 18:29:39', '2022-10-09 18:29:39'),
(327, 16, 13, 116.00, '2022-10-09 19:27:35', '2022-10-09 19:27:35'),
(328, 16, 14, 114.00, '2022-10-09 19:25:31', '2022-10-09 19:25:31'),
(329, 16, 15, 112.00, '2022-10-09 19:23:27', '2022-10-09 19:23:27'),
(330, 16, 16, 110.00, '2022-10-09 19:21:23', '2022-10-09 19:21:23'),
(331, 16, 17, 108.00, '2022-10-09 20:19:19', '2022-10-09 20:19:19'),
(332, 16, 18, 106.00, '2022-10-09 20:17:15', '2022-10-09 20:17:15'),
(333, 16, 19, 104.00, '2022-10-09 20:15:11', '2022-10-09 20:15:11'),
(334, 16, 20, 102.00, '2022-10-09 20:13:07', '2022-10-09 20:13:07'),
(335, 16, 21, 100.00, '2022-10-09 21:11:03', '2022-10-09 21:11:03'),
(336, 16, 22, 98.00, '2022-10-09 21:08:59', '2022-10-09 21:08:59'),
(337, 16, 23, 96.00, '2022-10-09 21:06:55', '2022-10-09 21:06:55'),
(338, 16, 24, 94.00, '2022-10-09 21:04:51', '2022-10-09 21:04:51'),
(339, 16, 25, 92.00, '2022-10-09 22:02:47', '2022-10-09 22:02:47'),
(340, 16, 26, 90.00, '2022-10-09 22:00:43', '2022-10-09 22:00:43'),
(341, 16, 27, 88.00, '2022-10-09 21:58:39', '2022-10-09 21:58:39'),
(342, 16, 28, 86.00, '2022-10-09 21:56:35', '2022-10-09 21:56:35'),
(343, 16, 29, 84.00, '2022-10-09 22:54:31', '2022-10-09 22:54:31'),
(344, 16, 30, 82.00, '2022-10-09 22:52:27', '2022-10-09 22:52:27'),
(345, 16, 31, 80.00, '2022-10-09 22:50:23', '2022-10-09 22:50:23'),
(346, 17, 4, 75.00, '2022-10-09 16:46:14', '2022-10-09 16:46:14'),
(347, 17, 5, 75.00, '2022-10-09 17:44:10', '2022-10-09 17:44:10'),
(348, 17, 6, 75.00, '2022-10-09 17:42:06', '2022-10-09 17:42:06'),
(349, 17, 7, 75.00, '2022-10-09 17:40:02', '2022-10-09 17:40:02'),
(350, 17, 8, 75.00, '2022-10-09 17:37:58', '2022-10-09 17:37:58'),
(351, 17, 9, 75.00, '2022-10-09 18:35:54', '2022-10-09 18:35:54'),
(352, 17, 10, 75.00, '2022-10-09 18:33:50', '2022-10-09 18:33:50'),
(353, 17, 11, 75.00, '2022-10-09 18:31:46', '2022-10-09 18:31:46'),
(354, 17, 12, 75.00, '2022-10-09 18:29:42', '2022-10-09 18:29:42'),
(355, 17, 13, 75.00, '2022-10-09 19:27:38', '2022-10-09 19:27:38'),
(356, 17, 14, 75.00, '2022-10-09 19:25:34', '2022-10-09 19:25:34'),
(357, 17, 15, 75.00, '2022-10-09 19:23:30', '2022-10-09 19:23:30'),
(358, 17, 16, 75.00, '2022-10-09 19:21:26', '2022-10-09 19:21:26'),
(359, 17, 17, 75.00, '2022-10-09 20:19:22', '2022-10-09 20:19:22'),
(360, 17, 18, 75.00, '2022-10-09 20:17:18', '2022-10-09 20:17:18'),
(361, 17, 19, 75.00, '2022-10-09 20:15:14', '2022-10-09 20:15:14'),
(362, 17, 20, 75.00, '2022-10-09 20:13:10', '2022-10-09 20:13:10'),
(363, 17, 21, 75.00, '2022-10-09 21:11:06', '2022-10-09 21:11:06'),
(364, 17, 22, 75.00, '2022-10-09 21:09:02', '2022-10-09 21:09:02'),
(365, 17, 23, 75.00, '2022-10-09 21:06:58', '2022-10-09 21:06:58'),
(366, 17, 24, 75.00, '2022-10-09 21:04:54', '2022-10-09 21:04:54'),
(367, 17, 25, 75.00, '2022-10-09 22:02:50', '2022-10-09 22:02:50'),
(368, 17, 26, 75.00, '2022-10-09 22:00:46', '2022-10-09 22:00:46'),
(369, 17, 27, 75.00, '2022-10-09 21:58:42', '2022-10-09 21:58:42'),
(370, 17, 28, 75.00, '2022-10-09 21:56:38', '2022-10-09 21:56:38'),
(371, 17, 29, 75.00, '2022-10-09 22:54:34', '2022-10-09 22:54:34'),
(372, 17, 30, 75.00, '2022-10-09 22:52:30', '2022-10-09 22:52:30'),
(373, 17, 31, 75.00, '2022-10-09 22:50:26', '2022-10-09 22:50:26'),
(374, 18, 4, 97.00, '2022-10-09 16:46:17', '2022-10-09 16:46:17'),
(375, 18, 5, 96.00, '2022-10-09 17:44:13', '2022-10-09 17:44:13'),
(376, 18, 6, 95.00, '2022-10-09 17:42:09', '2022-10-09 17:42:09'),
(377, 18, 7, 94.00, '2022-10-09 17:40:05', '2022-10-09 17:40:05'),
(378, 18, 8, 93.00, '2022-10-09 17:38:01', '2022-10-09 17:38:01'),
(379, 18, 9, 92.00, '2022-10-09 18:35:57', '2022-10-09 18:35:57'),
(380, 18, 10, 91.00, '2022-10-09 18:33:53', '2022-10-09 18:33:53'),
(381, 18, 11, 90.00, '2022-10-09 18:31:49', '2022-10-09 18:31:49'),
(382, 18, 12, 89.00, '2022-10-09 18:29:45', '2022-10-09 18:29:45'),
(383, 18, 13, 88.00, '2022-10-09 19:27:41', '2022-10-09 19:27:41'),
(384, 18, 14, 87.00, '2022-10-09 19:25:37', '2022-10-09 19:25:37'),
(385, 18, 15, 86.00, '2022-10-09 19:23:33', '2022-10-09 19:23:33'),
(386, 18, 16, 85.00, '2022-10-09 19:21:29', '2022-10-09 19:21:29'),
(387, 18, 17, 84.00, '2022-10-09 20:19:25', '2022-10-09 20:19:25'),
(388, 18, 18, 83.00, '2022-10-09 20:17:21', '2022-10-09 20:17:21'),
(389, 18, 19, 82.00, '2022-10-09 20:15:17', '2022-10-09 20:15:17'),
(390, 18, 20, 81.00, '2022-10-09 20:13:13', '2022-10-09 20:13:13'),
(391, 18, 21, 80.00, '2022-10-09 21:11:09', '2022-10-09 21:11:09'),
(392, 18, 22, 79.00, '2022-10-09 21:09:05', '2022-10-09 21:09:05'),
(393, 18, 23, 78.00, '2022-10-09 21:07:01', '2022-10-09 21:07:01'),
(394, 18, 24, 77.00, '2022-10-09 21:04:57', '2022-10-09 21:04:57'),
(395, 18, 25, 76.00, '2022-10-09 22:02:53', '2022-10-09 22:02:53'),
(396, 18, 26, 75.00, '2022-10-09 22:00:49', '2022-10-09 22:00:49'),
(397, 18, 27, 74.00, '2022-10-09 21:58:45', '2022-10-09 21:58:45'),
(398, 18, 28, 73.00, '2022-10-09 21:56:41', '2022-10-09 21:56:41'),
(399, 18, 29, 72.00, '2022-10-09 22:54:37', '2022-10-09 22:54:37'),
(400, 18, 30, 71.00, '2022-10-09 22:52:33', '2022-10-09 22:52:33'),
(401, 18, 31, 70.00, '2022-10-09 22:50:29', '2022-10-09 22:50:29'),
(402, 19, 4, 119.00, '2022-10-09 16:46:20', '2022-10-09 16:46:20'),
(403, 19, 5, 117.00, '2022-10-09 17:44:16', '2022-10-09 17:44:16'),
(404, 19, 6, 115.00, '2022-10-09 17:42:12', '2022-10-09 17:42:12'),
(405, 19, 7, 113.00, '2022-10-09 17:40:08', '2022-10-09 17:40:08'),
(406, 19, 8, 111.00, '2022-10-09 17:38:04', '2022-10-09 17:38:04'),
(407, 19, 9, 109.00, '2022-10-09 18:36:00', '2022-10-09 18:36:00'),
(408, 19, 10, 107.00, '2022-10-09 18:33:56', '2022-10-09 18:33:56'),
(409, 19, 11, 105.00, '2022-10-09 18:31:52', '2022-10-09 18:31:52'),
(410, 19, 12, 103.00, '2022-10-09 18:29:48', '2022-10-09 18:29:48'),
(411, 19, 13, 101.00, '2022-10-09 19:27:44', '2022-10-09 19:27:44'),
(412, 19, 14, 99.00, '2022-10-09 19:25:40', '2022-10-09 19:25:40'),
(413, 19, 15, 97.00, '2022-10-09 19:23:36', '2022-10-09 19:23:36'),
(414, 19, 16, 95.00, '2022-10-09 19:21:32', '2022-10-09 19:21:32'),
(415, 19, 17, 93.00, '2022-10-09 20:19:28', '2022-10-09 20:19:28'),
(416, 19, 18, 91.00, '2022-10-09 20:17:24', '2022-10-09 20:17:24'),
(417, 19, 19, 89.00, '2022-10-09 20:15:20', '2022-10-09 20:15:20'),
(418, 19, 20, 87.00, '2022-10-09 20:13:16', '2022-10-09 20:13:16'),
(419, 19, 21, 85.00, '2022-10-09 21:11:12', '2022-10-09 21:11:12'),
(420, 19, 22, 83.00, '2022-10-09 21:09:08', '2022-10-09 21:09:08'),
(421, 19, 23, 81.00, '2022-10-09 21:07:04', '2022-10-09 21:07:04'),
(422, 19, 24, 79.00, '2022-10-09 21:05:00', '2022-10-09 21:05:00'),
(423, 19, 25, 77.00, '2022-10-09 22:02:56', '2022-10-09 22:02:56'),
(424, 19, 26, 75.00, '2022-10-09 22:00:52', '2022-10-09 22:00:52'),
(425, 19, 27, 73.00, '2022-10-09 21:58:48', '2022-10-09 21:58:48'),
(426, 19, 28, 71.00, '2022-10-09 21:56:44', '2022-10-09 21:56:44'),
(427, 19, 29, 69.00, '2022-10-09 22:54:40', '2022-10-09 22:54:40'),
(428, 19, 30, 67.00, '2022-10-09 22:52:36', '2022-10-09 22:52:36'),
(429, 19, 31, 65.00, '2022-10-09 22:50:32', '2022-10-09 22:50:32'),
(430, 20, 4, 60.00, '2022-10-09 16:46:23', '2022-10-09 16:46:23'),
(431, 20, 5, 60.00, '2022-10-09 17:44:19', '2022-10-09 17:44:19'),
(432, 20, 6, 60.00, '2022-10-09 17:42:15', '2022-10-09 17:42:15'),
(433, 20, 7, 60.00, '2022-10-09 17:40:11', '2022-10-09 17:40:11'),
(434, 20, 8, 60.00, '2022-10-09 17:38:07', '2022-10-09 17:38:07'),
(435, 20, 9, 60.00, '2022-10-09 18:36:03', '2022-10-09 18:36:03'),
(436, 20, 10, 60.00, '2022-10-09 18:33:59', '2022-10-09 18:33:59'),
(437, 20, 11, 60.00, '2022-10-09 18:31:55', '2022-10-09 18:31:55'),
(438, 20, 12, 60.00, '2022-10-09 18:29:51', '2022-10-09 18:29:51'),
(439, 20, 13, 60.00, '2022-10-09 19:27:47', '2022-10-09 19:27:47'),
(440, 20, 14, 60.00, '2022-10-09 19:25:43', '2022-10-09 19:25:43'),
(441, 20, 15, 60.00, '2022-10-09 19:23:39', '2022-10-09 19:23:39'),
(442, 20, 16, 60.00, '2022-10-09 19:21:35', '2022-10-09 19:21:35'),
(443, 20, 17, 60.00, '2022-10-09 20:19:31', '2022-10-09 20:19:31'),
(444, 20, 18, 60.00, '2022-10-09 20:17:27', '2022-10-09 20:17:27'),
(445, 20, 19, 60.00, '2022-10-09 20:15:23', '2022-10-09 20:15:23'),
(446, 20, 20, 60.00, '2022-10-09 20:13:19', '2022-10-09 20:13:19'),
(447, 20, 21, 60.00, '2022-10-09 21:11:15', '2022-10-09 21:11:15'),
(448, 20, 22, 60.00, '2022-10-09 21:09:11', '2022-10-09 21:09:11'),
(449, 20, 23, 60.00, '2022-10-09 21:07:07', '2022-10-09 21:07:07'),
(450, 20, 24, 60.00, '2022-10-09 21:05:03', '2022-10-09 21:05:03'),
(451, 20, 25, 60.00, '2022-10-09 22:02:59', '2022-10-09 22:02:59'),
(452, 20, 26, 60.00, '2022-10-09 22:00:55', '2022-10-09 22:00:55'),
(453, 20, 27, 60.00, '2022-10-09 21:58:51', '2022-10-09 21:58:51'),
(454, 20, 28, 60.00, '2022-10-09 21:56:47', '2022-10-09 21:56:47'),
(455, 20, 29, 60.00, '2022-10-09 22:54:43', '2022-10-09 22:54:43'),
(456, 20, 30, 60.00, '2022-10-09 22:52:39', '2022-10-09 22:52:39'),
(457, 20, 31, 60.00, '2022-10-09 22:50:35', '2022-10-09 22:50:35'),
(458, 21, 4, 82.00, '2022-10-09 16:46:26', '2022-10-09 16:46:26'),
(459, 21, 5, 81.00, '2022-10-09 17:44:22', '2022-10-09 17:44:22'),
(460, 21, 6, 80.00, '2022-10-09 17:42:18', '2022-10-09 17:42:18'),
(461, 21, 7, 79.00, '2022-10-09 17:40:14', '2022-10-09 17:40:14'),
(462, 21, 8, 78.00, '2022-10-09 17:38:10', '2022-10-09 17:38:10'),
(463, 21, 9, 77.00, '2022-10-09 18:36:06', '2022-10-09 18:36:06'),
(464, 21, 10, 76.00, '2022-10-09 18:34:02', '2022-10-09 18:34:02'),
(465, 21, 11, 75.00, '2022-10-09 18:31:58', '2022-10-09 18:31:58'),
(466, 21, 12, 74.00, '2022-10-09 18:29:54', '2022-10-09 18:29:54'),
(467, 21, 13, 73.00, '2022-10-09 19:27:50', '2022-10-09 19:27:50'),
(468, 21, 14, 72.00, '2022-10-09 19:25:46', '2022-10-09 19:25:46'),
(469, 21, 15, 71.00, '2022-10-09 19:23:42', '2022-10-09 19:23:42'),
(470, 21, 16, 70.00, '2022-10-09 19:21:38', '2022-10-09 19:21:38'),
(471, 21, 17, 69.00, '2022-10-09 20:19:34', '2022-10-09 20:19:34'),
(472, 21, 18, 68.00, '2022-10-09 20:17:30', '2022-10-09 20:17:30'),
(473, 21, 19, 67.00, '2022-10-09 20:15:26', '2022-10-09 20:15:26'),
(474, 21, 20, 66.00, '2022-10-09 20:13:22', '2022-10-09 20:13:22'),
(475, 21, 21, 65.00, '2022-10-09 21:11:18', '2022-10-09 21:11:18'),
(476, 21, 22, 64.00, '2022-10-09 21:09:14', '2022-10-09 21:09:14'),
(477, 21, 23, 63.00, '2022-10-09 21:07:10', '2022-10-09 21:07:10'),
(478, 21, 24, 62.00, '2022-10-09 21:05:06', '2022-10-09 21:05:06'),
(479, 21, 25, 61.00, '2022-10-09 22:03:02', '2022-10-09 22:03:02'),
(480, 21, 26, 60.00, '2022-10-09 22:00:58', '2022-10-09 22:00:58'),
(481, 21, 27, 59.00, '2022-10-09 21:58:54', '2022-10-09 21:58:54'),
(482, 21, 28, 58.00, '2022-10-09 21:56:50', '2022-10-09 21:56:50'),
(483, 21, 29, 57.00, '2022-10-09 22:54:46', '2022-10-09 22:54:46'),
(484, 21, 30, 56.00, '2022-10-09 22:52:42', '2022-10-09 22:52:42'),
(485, 21, 31, 55.00, '2022-10-09 22:50:38', '2022-10-09 22:50:38'),
(486, 22, 4, 104.00, '2022-10-09 16:46:29', '2022-10-09 16:46:29'),
(487, 22, 5, 102.00, '2022-10-09 17:44:25', '2022-10-09 17:44:25'),
(488, 22, 6, 100.00, '2022-10-09 17:42:21', '2022-10-09 17:42:21'),
(489, 22, 7, 98.00, '2022-10-09 17:40:17', '2022-10-09 17:40:17'),
(490, 22, 8, 96.00, '2022-10-09 17:38:13', '2022-10-09 17:38:13'),
(491, 22, 9, 94.00, '2022-10-09 18:36:09', '2022-10-09 18:36:09'),
(492, 22, 10, 92.00, '2022-10-09 18:34:05', '2022-10-09 18:34:05'),
(493, 22, 11, 90.00, '2022-10-09 18:32:01', '2022-10-09 18:32:01'),
(494, 22, 12, 88.00, '2022-10-09 18:29:57', '2022-10-09 18:29:57'),
(495, 22, 13, 86.00, '2022-10-09 19:27:53', '2022-10-09 19:27:53'),
(496, 22, 14, 84.00, '2022-10-09 19:25:49', '2022-10-09 19:25:49'),
(497, 22, 15, 82.00, '2022-10-09 19:23:45', '2022-10-09 19:23:45'),
(498, 22, 16, 80.00, '2022-10-09 19:21:41', '2022-10-09 19:21:41'),
(499, 22, 17, 78.00, '2022-10-09 20:19:37', '2022-10-09 20:19:37'),
(500, 22, 18, 76.00, '2022-10-09 20:17:33', '2022-10-09 20:17:33'),
(501, 22, 19, 74.00, '2022-10-09 20:15:29', '2022-10-09 20:15:29'),
(502, 22, 20, 72.00, '2022-10-09 20:13:25', '2022-10-09 20:13:25'),
(503, 22, 21, 70.00, '2022-10-09 21:11:21', '2022-10-09 21:11:21'),
(504, 22, 22, 68.00, '2022-10-09 21:09:17', '2022-10-09 21:09:17'),
(505, 22, 23, 66.00, '2022-10-09 21:07:13', '2022-10-09 21:07:13'),
(506, 22, 24, 64.00, '2022-10-09 21:05:09', '2022-10-09 21:05:09'),
(507, 22, 25, 62.00, '2022-10-09 22:03:05', '2022-10-09 22:03:05'),
(508, 22, 26, 60.00, '2022-10-09 22:01:01', '2022-10-09 22:01:01'),
(509, 22, 27, 58.00, '2022-10-09 21:58:57', '2022-10-09 21:58:57'),
(510, 22, 28, 56.00, '2022-10-09 21:56:53', '2022-10-09 21:56:53'),
(511, 22, 29, 54.00, '2022-10-09 22:54:49', '2022-10-09 22:54:49'),
(512, 22, 30, 52.00, '2022-10-09 22:52:45', '2022-10-09 22:52:45'),
(513, 22, 31, 50.00, '2022-10-09 22:50:41', '2022-10-09 22:50:41'),
(514, 23, 4, 45.00, '2022-10-09 16:46:32', '2022-10-09 16:46:32'),
(515, 23, 5, 45.00, '2022-10-09 17:44:28', '2022-10-09 17:44:28'),
(516, 23, 6, 45.00, '2022-10-09 17:42:24', '2022-10-09 17:42:24'),
(517, 23, 7, 45.00, '2022-10-09 17:40:20', '2022-10-09 17:40:20'),
(518, 23, 8, 45.00, '2022-10-09 17:38:16', '2022-10-09 17:38:16'),
(519, 23, 9, 45.00, '2022-10-09 18:36:12', '2022-10-09 18:36:12'),
(520, 23, 10, 45.00, '2022-10-09 18:34:08', '2022-10-09 18:34:08'),
(521, 23, 11, 45.00, '2022-10-09 18:32:04', '2022-10-09 18:32:04'),
(522, 23, 12, 45.00, '2022-10-09 18:30:00', '2022-10-09 18:30:00'),
(523, 23, 13, 45.00, '2022-10-09 19:27:56', '2022-10-09 19:27:56'),
(524, 23, 14, 45.00, '2022-10-09 19:25:52', '2022-10-09 19:25:52'),
(525, 23, 15, 45.00, '2022-10-09 19:23:48', '2022-10-09 19:23:48'),
(526, 23, 16, 45.00, '2022-10-09 19:21:44', '2022-10-09 19:21:44'),
(527, 23, 17, 45.00, '2022-10-09 20:19:40', '2022-10-09 20:19:40'),
(528, 23, 18, 45.00, '2022-10-09 20:17:36', '2022-10-09 20:17:36'),
(529, 23, 19, 45.00, '2022-10-09 20:15:32', '2022-10-09 20:15:32'),
(530, 23, 20, 45.00, '2022-10-09 20:13:28', '2022-10-09 20:13:28'),
(531, 23, 21, 45.00, '2022-10-09 21:11:24', '2022-10-09 21:11:24'),
(532, 23, 22, 45.00, '2022-10-09 21:09:20', '2022-10-09 21:09:20'),
(533, 23, 23, 45.00, '2022-10-09 21:07:16', '2022-10-09 21:07:16'),
(534, 23, 24, 45.00, '2022-10-09 21:05:12', '2022-10-09 21:05:12'),
(535, 23, 25, 45.00, '2022-10-09 22:03:08', '2022-10-09 22:03:08'),
(536, 23, 26, 45.00, '2022-10-09 22:01:04', '2022-10-09 22:01:04'),
(537, 23, 27, 45.00, '2022-10-09 21:59:00', '2022-10-09 21:59:00'),
(538, 23, 28, 45.00, '2022-10-09 21:56:56', '2022-10-09 21:56:56'),
(539, 23, 29, 45.00, '2022-10-09 22:54:52', '2022-10-09 22:54:52'),
(540, 23, 30, 45.00, '2022-10-09 22:52:48', '2022-10-09 22:52:48'),
(541, 23, 31, 45.00, '2022-10-09 22:50:44', '2022-10-09 22:50:44'),
(542, 24, 4, 67.00, '2022-10-09 16:46:35', '2022-10-09 16:46:35'),
(543, 24, 5, 66.00, '2022-10-09 17:44:31', '2022-10-09 17:44:31'),
(544, 24, 6, 65.00, '2022-10-09 17:42:27', '2022-10-09 17:42:27'),
(545, 24, 7, 64.00, '2022-10-09 17:40:23', '2022-10-09 17:40:23'),
(546, 24, 8, 63.00, '2022-10-09 17:38:19', '2022-10-09 17:38:19'),
(547, 24, 9, 62.00, '2022-10-09 18:36:15', '2022-10-09 18:36:15'),
(548, 24, 10, 61.00, '2022-10-09 18:34:11', '2022-10-09 18:34:11'),
(549, 24, 11, 60.00, '2022-10-09 18:32:07', '2022-10-09 18:32:07'),
(550, 24, 12, 59.00, '2022-10-09 18:30:03', '2022-10-09 18:30:03'),
(551, 24, 13, 58.00, '2022-10-09 19:27:59', '2022-10-09 19:27:59'),
(552, 24, 14, 57.00, '2022-10-09 19:25:55', '2022-10-09 19:25:55'),
(553, 24, 15, 56.00, '2022-10-09 19:23:51', '2022-10-09 19:23:51'),
(554, 24, 16, 55.00, '2022-10-09 19:21:47', '2022-10-09 19:21:47'),
(555, 24, 17, 54.00, '2022-10-09 20:19:43', '2022-10-09 20:19:43'),
(556, 24, 18, 53.00, '2022-10-09 20:17:39', '2022-10-09 20:17:39'),
(557, 24, 19, 52.00, '2022-10-09 20:15:35', '2022-10-09 20:15:35'),
(558, 24, 20, 51.00, '2022-10-09 20:13:31', '2022-10-09 20:13:31'),
(559, 24, 21, 50.00, '2022-10-09 21:11:27', '2022-10-09 21:11:27'),
(560, 24, 22, 49.00, '2022-10-09 21:09:23', '2022-10-09 21:09:23'),
(561, 24, 23, 48.00, '2022-10-09 21:07:19', '2022-10-09 21:07:19'),
(562, 24, 24, 47.00, '2022-10-09 21:05:15', '2022-10-09 21:05:15'),
(563, 24, 25, 46.00, '2022-10-09 22:03:11', '2022-10-09 22:03:11'),
(564, 24, 26, 45.00, '2022-10-09 22:01:07', '2022-10-09 22:01:07'),
(565, 24, 27, 44.00, '2022-10-09 21:59:03', '2022-10-09 21:59:03'),
(566, 24, 28, 43.00, '2022-10-09 21:56:59', '2022-10-09 21:56:59'),
(567, 24, 29, 42.00, '2022-10-09 22:54:55', '2022-10-09 22:54:55'),
(568, 24, 30, 41.00, '2022-10-09 22:52:51', '2022-10-09 22:52:51'),
(569, 24, 31, 40.00, '2022-10-09 22:50:47', '2022-10-09 22:50:47'),
(570, 25, 4, 89.00, '2022-10-09 16:46:38', '2022-10-09 16:46:38'),
(571, 25, 5, 87.00, '2022-10-09 17:44:34', '2022-10-09 17:44:34'),
(572, 25, 6, 85.00, '2022-10-09 17:42:30', '2022-10-09 17:42:30'),
(573, 25, 7, 83.00, '2022-10-09 17:40:26', '2022-10-09 17:40:26'),
(574, 25, 8, 81.00, '2022-10-09 17:38:22', '2022-10-09 17:38:22'),
(575, 25, 9, 79.00, '2022-10-09 18:36:18', '2022-10-09 18:36:18'),
(576, 25, 10, 77.00, '2022-10-09 18:34:14', '2022-10-09 18:34:14'),
(577, 25, 11, 75.00, '2022-10-09 18:32:10', '2022-10-09 18:32:10'),
(578, 25, 12, 73.00, '2022-10-09 18:30:06', '2022-10-09 18:30:06'),
(579, 25, 13, 71.00, '2022-10-09 19:28:02', '2022-10-09 19:28:02'),
(580, 25, 14, 69.00, '2022-10-09 19:25:58', '2022-10-09 19:25:58'),
(581, 25, 15, 67.00, '2022-10-09 19:23:54', '2022-10-09 19:23:54'),
(582, 25, 16, 65.00, '2022-10-09 19:21:50', '2022-10-09 19:21:50'),
(583, 25, 17, 63.00, '2022-10-09 20:19:46', '2022-10-09 20:19:46'),
(584, 25, 18, 61.00, '2022-10-09 20:17:42', '2022-10-09 20:17:42'),
(585, 25, 19, 59.00, '2022-10-09 20:15:38', '2022-10-09 20:15:38'),
(586, 25, 20, 57.00, '2022-10-09 20:13:34', '2022-10-09 20:13:34'),
(587, 25, 21, 55.00, '2022-10-09 21:11:30', '2022-10-09 21:11:30'),
(588, 25, 22, 53.00, '2022-10-09 21:09:26', '2022-10-09 21:09:26'),
(589, 25, 23, 51.00, '2022-10-09 21:07:22', '2022-10-09 21:07:22'),
(590, 25, 24, 49.00, '2022-10-09 21:05:18', '2022-10-09 21:05:18'),
(591, 25, 25, 47.00, '2022-10-09 22:03:14', '2022-10-09 22:03:14'),
(592, 25, 26, 45.00, '2022-10-09 22:01:10', '2022-10-09 22:01:10'),
(593, 25, 27, 43.00, '2022-10-09 21:59:06', '2022-10-09 21:59:06'),
(594, 25, 28, 41.00, '2022-10-09 21:57:02', '2022-10-09 21:57:02'),
(595, 25, 29, 39.00, '2022-10-09 22:54:58', '2022-10-09 22:54:58'),
(596, 25, 30, 37.00, '2022-10-09 22:52:54', '2022-10-09 22:52:54'),
(597, 25, 31, 35.00, '2022-10-09 22:50:50', '2022-10-09 22:50:50'),
(598, 26, 4, 30.00, '2022-10-09 16:46:41', '2022-10-09 16:46:41'),
(599, 26, 5, 30.00, '2022-10-09 17:44:37', '2022-10-09 17:44:37'),
(600, 26, 6, 30.00, '2022-10-09 17:42:33', '2022-10-09 17:42:33'),
(601, 26, 7, 30.00, '2022-10-09 17:40:29', '2022-10-09 17:40:29'),
(602, 26, 8, 30.00, '2022-10-09 17:38:25', '2022-10-09 17:38:25'),
(603, 26, 9, 30.00, '2022-10-09 18:36:21', '2022-10-09 18:36:21'),
(604, 26, 10, 30.00, '2022-10-09 18:34:17', '2022-10-09 18:34:17'),
(605, 26, 11, 30.00, '2022-10-09 18:32:13', '2022-10-09 18:32:13'),
(606, 26, 12, 30.00, '2022-10-09 18:30:09', '2022-10-09 18:30:09'),
(607, 26, 13, 30.00, '2022-10-09 19:28:05', '2022-10-09 19:28:05'),
(608, 26, 14, 30.00, '2022-10-09 19:26:01', '2022-10-09 19:26:01'),
(609, 26, 15, 30.00, '2022-10-09 19:23:57', '2022-10-09 19:23:57'),
(610, 26, 16, 30.00, '2022-10-09 19:21:53', '2022-10-09 19:21:53'),
(611, 26, 17, 30.00, '2022-10-09 20:19:49', '2022-10-09 20:19:49'),
(612, 26, 18, 30.00, '2022-10-09 20:17:45', '2022-10-09 20:17:45'),
(613, 26, 19, 30.00, '2022-10-09 20:15:41', '2022-10-09 20:15:41'),
(614, 26, 20, 30.00, '2022-10-09 20:13:37', '2022-10-09 20:13:37'),
(615, 26, 21, 30.00, '2022-10-09 21:11:33', '2022-10-09 21:11:33'),
(616, 26, 22, 30.00, '2022-10-09 21:09:29', '2022-10-09 21:09:29'),
(617, 26, 23, 30.00, '2022-10-09 21:07:25', '2022-10-09 21:07:25'),
(618, 26, 24, 30.00, '2022-10-09 21:05:21', '2022-10-09 21:05:21'),
(619, 26, 25, 30.00, '2022-10-09 22:03:17', '2022-10-09 22:03:17'),
(620, 26, 26, 30.00, '2022-10-09 22:01:13', '2022-10-09 22:01:13'),
(621, 26, 27, 30.00, '2022-10-09 21:59:09', '2022-10-09 21:59:09'),
(622, 26, 28, 30.00, '2022-10-09 21:57:05', '2022-10-09 21:57:05'),
(623, 26, 29, 30.00, '2022-10-09 22:55:01', '2022-10-09 22:55:01'),
(624, 26, 30, 30.00, '2022-10-09 22:52:57', '2022-10-09 22:52:57'),
(625, 26, 31, 30.00, '2022-10-09 22:50:53', '2022-10-09 22:50:53'),
(626, 27, 4, 52.00, '2022-10-09 16:46:44', '2022-10-09 16:46:44'),
(627, 27, 5, 51.00, '2022-10-09 17:44:40', '2022-10-09 17:44:40'),
(628, 27, 6, 50.00, '2022-10-09 17:42:36', '2022-10-09 17:42:36'),
(629, 27, 7, 49.00, '2022-10-09 17:40:32', '2022-10-09 17:40:32'),
(630, 27, 8, 48.00, '2022-10-09 17:38:28', '2022-10-09 17:38:28'),
(631, 27, 9, 47.00, '2022-10-09 18:36:24', '2022-10-09 18:36:24'),
(632, 27, 10, 46.00, '2022-10-09 18:34:20', '2022-10-09 18:34:20'),
(633, 27, 11, 45.00, '2022-10-09 18:32:16', '2022-10-09 18:32:16'),
(634, 27, 12, 44.00, '2022-10-09 18:30:12', '2022-10-09 18:30:12'),
(635, 27, 13, 43.00, '2022-10-09 19:28:08', '2022-10-09 19:28:08'),
(636, 27, 14, 42.00, '2022-10-09 19:26:04', '2022-10-09 19:26:04'),
(637, 27, 15, 41.00, '2022-10-09 19:24:00', '2022-10-09 19:24:00'),
(638, 27, 16, 40.00, '2022-10-09 19:21:56', '2022-10-09 19:21:56'),
(639, 27, 17, 39.00, '2022-10-09 20:19:52', '2022-10-09 20:19:52'),
(640, 27, 18, 38.00, '2022-10-09 20:17:48', '2022-10-09 20:17:48'),
(641, 27, 19, 37.00, '2022-10-09 20:15:44', '2022-10-09 20:15:44'),
(642, 27, 20, 36.00, '2022-10-09 20:13:40', '2022-10-09 20:13:40'),
(643, 27, 21, 35.00, '2022-10-09 21:11:36', '2022-10-09 21:11:36'),
(644, 27, 22, 34.00, '2022-10-09 21:09:32', '2022-10-09 21:09:32'),
(645, 27, 23, 33.00, '2022-10-09 21:07:28', '2022-10-09 21:07:28'),
(646, 27, 24, 32.00, '2022-10-09 21:05:24', '2022-10-09 21:05:24'),
(647, 27, 25, 31.00, '2022-10-09 22:03:20', '2022-10-09 22:03:20'),
(648, 27, 26, 30.00, '2022-10-09 22:01:16', '2022-10-09 22:01:16'),
(649, 27, 27, 29.00, '2022-10-09 21:59:12', '2022-10-09 21:59:12'),
(650, 27, 28, 28.00, '2022-10-09 21:57:08', '2022-10-09 21:57:08'),
(651, 27, 29, 27.00, '2022-10-09 22:55:04', '2022-10-09 22:55:04'),
(652, 27, 30, 26.00, '2022-10-09 22:53:00', '2022-10-09 22:53:00'),
(653, 27, 31, 25.00, '2022-10-09 22:50:56', '2022-10-09 22:50:56'),
(654, 28, 4, 74.00, '2022-10-09 16:46:47', '2022-10-09 16:46:47'),
(655, 28, 5, 72.00, '2022-10-09 17:44:43', '2022-10-09 17:44:43'),
(656, 28, 6, 70.00, '2022-10-09 17:42:39', '2022-10-09 17:42:39'),
(657, 28, 7, 68.00, '2022-10-09 17:40:35', '2022-10-09 17:40:35'),
(658, 28, 8, 66.00, '2022-10-09 17:38:31', '2022-10-09 17:38:31'),
(659, 28, 9, 64.00, '2022-10-09 18:36:27', '2022-10-09 18:36:27'),
(660, 28, 10, 62.00, '2022-10-09 18:34:23', '2022-10-09 18:34:23'),
(661, 28, 11, 60.00, '2022-10-09 18:32:19', '2022-10-09 18:32:19'),
(662, 28, 12, 58.00, '2022-10-09 18:30:15', '2022-10-09 18:30:15'),
(663, 28, 13, 56.00, '2022-10-09 19:28:11', '2022-10-09 19:28:11'),
(664, 28, 14, 54.00, '2022-10-09 19:26:07', '2022-10-09 19:26:07'),
(665, 28, 15, 52.00, '2022-10-09 19:24:03', '2022-10-09 19:24:03'),
(666, 28, 16, 50.00, '2022-10-09 19:21:59', '2022-10-09 19:21:59'),
(667, 28, 17, 48.00, '2022-10-09 20:19:55', '2022-10-09 20:19:55'),
(668, 28, 18, 46.00, '2022-10-09 20:17:51', '2022-10-09 20:17:51'),
(669, 28, 19, 44.00, '2022-10-09 20:15:47', '2022-10-09 20:15:47'),
(670, 28, 20, 42.00, '2022-10-09 20:13:43', '2022-10-09 20:13:43'),
(671, 28, 21, 40.00, '2022-10-09 21:11:39', '2022-10-09 21:11:39'),
(672, 28, 22, 38.00, '2022-10-09 21:09:35', '2022-10-09 21:09:35'),
(673, 28, 23, 36.00, '2022-10-09 21:07:31', '2022-10-09 21:07:31'),
(674, 28, 24, 34.00, '2022-10-09 21:05:27', '2022-10-09 21:05:27'),
(675, 28, 25, 32.00, '2022-10-09 22:03:23', '2022-10-09 22:03:23'),
(676, 28, 26, 30.00, '2022-10-09 22:01:19', '2022-10-09 22:01:19'),
(677, 28, 27, 28.00, '2022-10-09 21:59:15', '2022-10-09 21:59:15'),
(678, 28, 28, 26.00, '2022-10-09 21:57:11', '2022-10-09 21:57:11'),
(679, 28, 29, 24.00, '2022-10-09 22:55:07', '2022-10-09 22:55:07'),
(680, 28, 30, 22.00, '2022-10-09 22:53:03', '2022-10-09 22:53:03'),
(681, 28, 31, 20.00, '2022-10-09 22:50:59', '2022-10-09 22:50:59'),
(682, 29, 4, 15.00, '2022-10-09 16:46:50', '2022-10-09 16:46:50'),
(683, 29, 5, 15.00, '2022-10-09 17:44:46', '2022-10-09 17:44:46'),
(684, 29, 6, 15.00, '2022-10-09 17:42:42', '2022-10-09 17:42:42'),
(685, 29, 7, 15.00, '2022-10-09 17:40:38', '2022-10-09 17:40:38'),
(686, 29, 8, 15.00, '2022-10-09 17:38:34', '2022-10-09 17:38:34'),
(687, 29, 9, 15.00, '2022-10-09 18:36:30', '2022-10-09 18:36:30'),
(688, 29, 10, 15.00, '2022-10-09 18:34:26', '2022-10-09 18:34:26'),
(689, 29, 11, 15.00, '2022-10-09 18:32:22', '2022-10-09 18:32:22'),
(690, 29, 12, 15.00, '2022-10-09 18:30:18', '2022-10-09 18:30:18'),
(691, 29, 13, 15.00, '2022-10-09 19:28:14', '2022-10-09 19:28:14'),
(692, 29, 14, 15.00, '2022-10-09 19:26:10', '2022-10-09 19:26:10'),
(693, 29, 15, 15.00, '2022-10-09 19:24:06', '2022-10-09 19:24:06'),
(694, 29, 16, 15.00, '2022-10-09 19:22:02', '2022-10-09 19:22:02'),
(695, 29, 17, 15.00, '2022-10-09 20:19:58', '2022-10-09 20:19:58'),
(696, 29, 18, 15.00, '2022-10-09 20:17:54', '2022-10-09 20:17:54'),
(697, 29, 19, 15.00, '2022-10-09 20:15:50', '2022-10-09 20:15:50'),
(698, 29, 20, 15.00, '2022-10-09 20:13:46', '2022-10-09 20:13:46'),
(699, 29, 21, 15.00, '2022-10-09 21:11:42', '2022-10-09 21:11:42'),
(700, 29, 22, 15.00, '2022-10-09 21:09:38', '2022-10-09 21:09:38'),
(701, 29, 23, 15.00, '2022-10-09 21:07:34', '2022-10-09 21:07:34'),
(702, 29, 24, 15.00, '2022-10-09 21:05:30', '2022-10-09 21:05:30'),
(703, 29, 25, 15.00, '2022-10-09 22:03:26', '2022-10-09 22:03:26'),
(704, 29, 26, 15.00, '2022-10-09 22:01:22', '2022-10-09 22:01:22'),
(705, 29, 27, 15.00, '2022-10-09 21:59:18', '2022-10-09 21:59:18'),
(706, 29, 28, 15.00, '2022-10-09 21:57:14', '2022-10-09 21:57:14'),
(707, 29, 29, 15.00, '2022-10-09 22:55:10', '2022-10-09 22:55:10'),
(708, 29, 30, 15.00, '2022-10-09 22:53:06', '2022-10-09 22:53:06'),
(709, 29, 31, 15.00, '2022-10-09 22:51:02', '2022-10-09 22:51:02'),
(710, 30, 4, 37.00, '2022-10-09 16:46:53', '2022-10-09 16:46:53'),
(711, 30, 5, 36.00, '2022-10-09 17:44:49', '2022-10-09 17:44:49'),
(712, 30, 6, 35.00, '2022-10-09 17:42:45', '2022-10-09 17:42:45'),
(713, 30, 7, 34.00, '2022-10-09 17:40:41', '2022-10-09 17:40:41'),
(714, 30, 8, 33.00, '2022-10-09 17:38:37', '2022-10-09 17:38:37'),
(715, 30, 9, 32.00, '2022-10-09 18:36:33', '2022-10-09 18:36:33'),
(716, 30, 10, 31.00, '2022-10-09 18:34:29', '2022-10-09 18:34:29'),
(717, 30, 11, 30.00, '2022-10-09 18:32:25', '2022-10-09 18:32:25'),
(718, 30, 12, 29.00, '2022-10-09 18:30:21', '2022-10-09 18:30:21'),
(719, 30, 13, 28.00, '2022-10-09 19:28:17', '2022-10-09 19:28:17'),
(720, 30, 14, 27.00, '2022-10-09 19:26:13', '2022-10-09 19:26:13'),
(721, 30, 15, 26.00, '2022-10-09 19:24:09', '2022-10-09 19:24:09'),
(722, 30, 16, 25.00, '2022-10-09 19:22:05', '2022-10-09 19:22:05'),
(723, 30, 17, 24.00, '2022-10-09 20:20:01', '2022-10-09 20:20:01'),
(724, 30, 18, 23.00, '2022-10-09 20:17:57', '2022-10-09 20:17:57'),
(725, 30, 19, 22.00, '2022-10-09 20:15:53', '2022-10-09 20:15:53'),
(726, 30, 20, 21.00, '2022-10-09 20:13:49', '2022-10-09 20:13:49'),
(727, 30, 21, 20.00, '2022-10-09 21:11:45', '2022-10-09 21:11:45'),
(728, 30, 22, 19.00, '2022-10-09 21:09:41', '2022-10-09 21:09:41'),
(729, 30, 23, 18.00, '2022-10-09 21:07:37', '2022-10-09 21:07:37'),
(730, 30, 24, 17.00, '2022-10-09 21:05:33', '2022-10-09 21:05:33'),
(731, 30, 25, 16.00, '2022-10-09 22:03:29', '2022-10-09 22:03:29'),
(732, 30, 26, 15.00, '2022-10-09 22:01:25', '2022-10-09 22:01:25'),
(733, 30, 27, 14.00, '2022-10-09 21:59:21', '2022-10-09 21:59:21'),
(734, 30, 28, 13.00, '2022-10-09 21:57:17', '2022-10-09 21:57:17'),
(735, 30, 29, 12.00, '2022-10-09 22:55:13', '2022-10-09 22:55:13'),
(736, 30, 30, 11.00, '2022-10-09 22:53:09', '2022-10-09 22:53:09'),
(737, 30, 31, 10.00, '2022-10-09 22:51:05', '2022-10-09 22:51:05'),
(738, 31, 4, 59.00, '2022-10-09 16:46:56', '2022-10-09 16:46:56'),
(739, 31, 5, 57.00, '2022-10-09 17:44:52', '2022-10-09 17:44:52'),
(740, 31, 6, 55.00, '2022-10-09 17:42:48', '2022-10-09 17:42:48'),
(741, 31, 7, 53.00, '2022-10-09 17:40:44', '2022-10-09 17:40:44'),
(742, 31, 8, 51.00, '2022-10-09 17:38:40', '2022-10-09 17:38:40'),
(743, 31, 9, 49.00, '2022-10-09 18:36:36', '2022-10-09 18:36:36'),
(744, 31, 10, 47.00, '2022-10-09 18:34:32', '2022-10-09 18:34:32'),
(745, 31, 11, 45.00, '2022-10-09 18:32:28', '2022-10-09 18:32:28'),
(746, 31, 12, 43.00, '2022-10-09 18:30:24', '2022-10-09 18:30:24'),
(747, 31, 13, 41.00, '2022-10-09 19:28:20', '2022-10-09 19:28:20'),
(748, 31, 14, 39.00, '2022-10-09 19:26:16', '2022-10-09 19:26:16'),
(749, 31, 15, 37.00, '2022-10-09 19:24:12', '2022-10-09 19:24:12'),
(750, 31, 16, 35.00, '2022-10-09 19:22:08', '2022-10-09 19:22:08'),
(751, 31, 17, 33.00, '2022-10-09 20:20:04', '2022-10-09 20:20:04'),
(752, 31, 18, 31.00, '2022-10-09 20:18:00', '2022-10-09 20:18:00'),
(753, 31, 19, 29.00, '2022-10-09 20:15:56', '2022-10-09 20:15:56'),
(754, 31, 20, 27.00, '2022-10-09 20:13:52', '2022-10-09 20:13:52'),
(755, 31, 21, 25.00, '2022-10-09 21:11:48', '2022-10-09 21:11:48'),
(756, 31, 22, 23.00, '2022-10-09 21:09:44', '2022-10-09 21:09:44'),
(757, 31, 23, 21.00, '2022-10-09 21:07:40', '2022-10-09 21:07:40'),
(758, 31, 24, 19.00, '2022-10-09 21:05:36', '2022-10-09 21:05:36');
INSERT INTO `scores` (`id`, `user_id`, `game_version_id`, `score`, `created_at`, `updated_at`) VALUES
(759, 31, 25, 17.00, '2022-10-09 22:03:32', '2022-10-09 22:03:32'),
(760, 31, 26, 15.00, '2022-10-09 22:01:28', '2022-10-09 22:01:28'),
(761, 31, 27, 13.00, '2022-10-09 21:59:24', '2022-10-09 21:59:24'),
(762, 31, 28, 11.00, '2022-10-09 21:57:20', '2022-10-09 21:57:20'),
(763, 31, 29, 9.00, '2022-10-09 22:55:16', '2022-10-09 22:55:16'),
(764, 31, 30, 7.00, '2022-10-09 22:53:12', '2022-10-09 22:53:12'),
(765, 31, 31, 5.00, '2022-10-09 22:51:08', '2022-10-09 22:51:08'),
(766, 32, 4, 0.00, '2022-10-09 16:46:59', '2022-10-09 16:46:59'),
(767, 32, 5, 0.00, '2022-10-09 17:44:55', '2022-10-09 17:44:55'),
(768, 32, 6, 0.00, '2022-10-09 17:42:51', '2022-10-09 17:42:51'),
(769, 32, 7, 0.00, '2022-10-09 17:40:47', '2022-10-09 17:40:47'),
(770, 32, 8, 0.00, '2022-10-09 17:38:43', '2022-10-09 17:38:43'),
(771, 32, 9, 0.00, '2022-10-09 18:36:39', '2022-10-09 18:36:39'),
(772, 32, 10, 0.00, '2022-10-09 18:34:35', '2022-10-09 18:34:35'),
(773, 32, 11, 0.00, '2022-10-09 18:32:31', '2022-10-09 18:32:31'),
(774, 32, 12, 0.00, '2022-10-09 18:30:27', '2022-10-09 18:30:27'),
(775, 32, 13, 0.00, '2022-10-09 19:28:23', '2022-10-09 19:28:23'),
(776, 32, 14, 0.00, '2022-10-09 19:26:19', '2022-10-09 19:26:19'),
(777, 32, 15, 0.00, '2022-10-09 19:24:15', '2022-10-09 19:24:15'),
(778, 32, 16, 0.00, '2022-10-09 19:22:11', '2022-10-09 19:22:11'),
(779, 32, 17, 0.00, '2022-10-09 20:20:07', '2022-10-09 20:20:07'),
(780, 32, 18, 0.00, '2022-10-09 20:18:03', '2022-10-09 20:18:03'),
(781, 32, 19, 0.00, '2022-10-09 20:15:59', '2022-10-09 20:15:59'),
(782, 32, 20, 0.00, '2022-10-09 20:13:55', '2022-10-09 20:13:55'),
(783, 32, 21, 0.00, '2022-10-09 21:11:51', '2022-10-09 21:11:51'),
(784, 32, 22, 0.00, '2022-10-09 21:09:47', '2022-10-09 21:09:47'),
(785, 32, 23, 0.00, '2022-10-09 21:07:43', '2022-10-09 21:07:43'),
(786, 32, 24, 0.00, '2022-10-09 21:05:39', '2022-10-09 21:05:39'),
(787, 32, 25, 0.00, '2022-10-09 22:03:35', '2022-10-09 22:03:35'),
(788, 32, 26, 0.00, '2022-10-09 22:01:31', '2022-10-09 22:01:31'),
(789, 32, 27, 0.00, '2022-10-09 21:59:27', '2022-10-09 21:59:27'),
(790, 32, 28, 0.00, '2022-10-09 21:57:23', '2022-10-09 21:57:23'),
(791, 32, 29, 0.00, '2022-10-09 22:55:19', '2022-10-09 22:55:19'),
(792, 32, 30, 0.00, '2022-10-09 22:53:15', '2022-10-09 22:53:15'),
(793, 32, 31, 0.00, '2022-10-09 22:51:11', '2022-10-09 22:51:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HMZ2NoVI6NtYavTvyN33qZhZNl3HmwCvCfl14nEc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieldiSVZDT1pSc3lad3p5bVFPdmd6a3I1cWFreFFxaVZ0OHhLQVpmSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714700103);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `delete_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `last_login_at`, `created_at`, `updated_at`, `deleted_at`, `delete_reason`) VALUES
(1, 'player1', '$2y$12$BPaBXbzfNQFzofvhOab6vugyNfYosWazl9bur8Gw.S.JlcMUM96eu', NULL, '2022-10-07 05:42:51', '2024-05-02 21:11:42', NULL, NULL),
(2, 'player2', '$2y$10$f1Ko3n8NFkDei41lPIBvV.b/Go5zsJZZS4o.zjMm3qWqsirw0lTTG', NULL, '2022-10-07 05:58:19', '2022-10-07 05:58:19', NULL, NULL),
(3, 'dev1', '$2y$10$lTBPJzGIEN22JWffrN/z/O9TpEtvqOmksir8mYllwZwEF.oY3nWdC', NULL, '2022-10-07 07:22:07', '2022-10-07 07:22:07', NULL, NULL),
(4, 'dev2', '$2y$10$cgzke2hcNEuwxMzqjpY4JeJstoGf/2S3DyKcqhhblWhH6spN7IBfC', NULL, '2022-10-07 08:50:35', '2022-10-07 08:50:35', NULL, NULL),
(5, 'player3', '$2y$10$Z/S9CSM7SHSCGhio.oVkceRoD0jPBMBH4NZ.ysm1soBI6L.nGyEc.', NULL, '2022-10-07 10:49:37', '2022-10-07 10:49:37', NULL, NULL),
(6, 'player4', '$2y$10$ZYrQeeMSKJ0unpQpdVNmSOgQgdX/FyOc2FrAmxyaj09KQFP0vV7e.', NULL, '2022-10-07 11:47:36', '2022-10-07 11:47:36', NULL, NULL),
(7, 'player5', '$2y$10$.xXqXzQlPGcQ4u1W8aH1/uXVC6k74k4GAEtuzXF53uQc.0GHRH/8u', NULL, '2022-10-07 12:45:35', '2022-10-07 12:45:35', NULL, NULL),
(8, 'player6', '$2y$10$1GWG3W4HglmWoMkibJZCuOc4VrPeC6Ey8vPLqskoQVErYv3oL30Ru', NULL, '2022-10-07 13:43:34', '2022-10-07 13:43:34', NULL, NULL),
(9, 'player7', '$2y$10$KfhrHOd79t49UCtMRsd6q.HiTjNFq/eg3V3dAvU2HMoudXteIewF.', NULL, '2022-10-07 14:41:33', '2022-10-07 14:41:33', NULL, NULL),
(10, 'player8', '$2y$10$At8cLnRftkQ9BTO96XXSkOH7hjB0HAiBJlccxp1v73cVXZianwscy', NULL, '2022-10-07 15:39:32', '2022-10-07 15:39:32', NULL, NULL),
(11, 'player9', '$2y$10$lz77g8fSrB0BxihKQx/0keTOQwEvi9g.KmnQi30Vr2gMFkQiyvNEu', NULL, '2022-10-07 16:37:31', '2022-10-07 16:37:31', NULL, NULL),
(12, 'player10', '$2y$10$K0GwYCK7OzFs/57aGvgkOusDJ8qhyXX22IBewEnmmkMIbIEa1cHym', NULL, '2022-10-07 17:35:30', '2022-10-07 17:35:30', NULL, NULL),
(13, 'player11', '$2y$10$sQkLaB/D1tHB7udRZ8U8zOFfBc1KHSlwcu3JP63fkpvWwAERYfwOW', NULL, '2022-10-07 18:33:29', '2022-10-07 18:33:29', NULL, NULL),
(14, 'player12', '$2y$10$dm6l4m5fHqmufPy/VgUD6eRrZZcPC5FdLOAl8vilSyaGuWzABAHEq', NULL, '2022-10-07 19:31:29', '2022-10-07 19:31:29', NULL, NULL),
(15, 'player13', '$2y$10$VAlA0bRVBoopGAz2ujGWE.ihiYoKL1u/AKdALWjTXEl.1gHXjLe/S', NULL, '2022-10-07 20:29:28', '2022-10-07 20:29:28', NULL, NULL),
(16, 'player14', '$2y$10$OF83nD6kBhDeK0Pi8oAzSu2QvnO7QSEgsoIwifR4gE4qY4FpcFT4.', NULL, '2022-10-07 21:27:27', '2022-10-07 21:27:27', NULL, NULL),
(17, 'player15', '$2y$10$NwEU0p3xPHKmrE8Z1JNunOKo2cJOUtMPUghJf0CY4ONysK8IKB9ym', NULL, '2022-10-07 22:25:26', '2022-10-07 22:25:26', NULL, NULL),
(18, 'player16', '$2y$10$Wsr7enKuIpd8aydZxWgG6Ow0s5rBLBMUwtpszBmYNJwfoj9cUKqSC', NULL, '2022-10-07 23:23:25', '2022-10-07 23:23:25', NULL, NULL),
(19, 'player17', '$2y$10$EtztI6/8h3KOsf0eOCbtveeVj3mUQkzvZOOLCp/ML11EuBLUMbZPW', NULL, '2022-10-08 00:21:24', '2022-10-08 00:21:24', NULL, NULL),
(20, 'player18', '$2y$10$SsMpXtAUbk.MirzJgW.NeOLqgx4zYocdh0eroYUJvHOKqX/W6cDwe', NULL, '2022-10-08 01:19:23', '2022-10-08 01:19:23', NULL, NULL),
(21, 'player19', '$2y$10$khPFElMcU1SHZwE5PJmS8eg5dr2XvDol9VPs.gB2akbqZ8ed/XU3.', NULL, '2022-10-08 02:17:22', '2022-10-08 02:17:22', NULL, NULL),
(22, 'player20', '$2y$10$J2V.PoC2ozA5oU2HGRkAVObq4iL7nQ6qbTAmoQm4Yl.9Zk9yFHdaq', NULL, '2022-10-08 03:15:21', '2022-10-08 03:15:21', NULL, NULL),
(23, 'player21', '$2y$10$CH0u8kRhGkbnJxDordGzbOgWjuGjcw1cMw/3nGa88NHos8FO4HcRa', NULL, '2022-10-08 04:13:20', '2022-10-08 04:13:20', NULL, NULL),
(24, 'player22', '$2y$10$PwYpzI/kC/CLKdxkiYd1DeQkNNVHNRre01as.WVk9/nXHI9aATH0a', NULL, '2022-10-08 05:11:19', '2022-10-08 05:11:19', NULL, NULL),
(25, 'player23', '$2y$10$kVWEvAgNeo5HD7nceMTmyeYva1woBL.oSeozrabDEKgZbOh4dOCXS', NULL, '2022-10-08 06:09:18', '2022-10-08 06:09:18', NULL, NULL),
(26, 'player24', '$2y$10$4JXdrdr2lijTu1A.c/1qSufDah3jdqux0oltoOJbDFF4s.o.v6l2m', NULL, '2022-10-08 07:07:17', '2022-10-08 07:07:17', NULL, NULL),
(27, 'player25', '$2y$10$UfGSu9asQrpRxyGx.NbnL.Bwvs.LCYNB70IL8UjlYyEoYHKUe2ati', NULL, '2022-10-08 08:05:16', '2022-10-08 08:05:16', NULL, NULL),
(28, 'player26', '$2y$10$fTCf9JUPR6R7C6JaByClNeOcgzRn2vck1hY1Ar5B9IsHGB4CYkPIO', NULL, '2022-10-08 09:03:15', '2022-10-08 09:03:15', NULL, NULL),
(29, 'player27', '$2y$10$5cZK1GxkFWWkuYYdQVeRMOFdd4p/gPyLMUHsA/JRiQh1fCyqkSp/G', NULL, '2022-10-08 10:01:14', '2022-10-08 10:01:14', NULL, NULL),
(30, 'player28', '$2y$10$O8RsTQ4lMxWbyk/hFRNj1uZsBmh4e7KBh8FdcVBahIUFqzIjiRgDq', NULL, '2022-10-08 10:59:13', '2022-10-08 10:59:13', NULL, NULL),
(31, 'player29', '$2y$10$0MBNB/g/3.g8iAlV6t.Ate3T7cgX92yuSGlraeROnwrb5uq.TQK8K', NULL, '2022-10-08 11:57:12', '2022-10-08 11:57:12', NULL, NULL),
(32, 'player30', '$2y$10$3TTI8Ba1svk4g09.IHNVK.RQpO9Pf5hzZsZ8WJypRnwugrRqyTXum', NULL, '2022-10-08 12:55:11', '2022-10-08 12:55:11', NULL, NULL),
(33, 'new-player3', '$2y$12$mA.vlsdXn/3xEMqt/mAzP.dQ/qwCAfXVOTJRYL5iJx/Yl/a3o2vEy', NULL, '2024-05-02 23:13:38', '2024-05-02 23:13:38', NULL, NULL),
(34, 'testing', '$2y$12$fsHEVHJtitW4WR1oSPF8euFISRneKXEW8RM24Q.p1qSNLWIHfL7Bm', NULL, '2024-05-02 23:59:00', '2024-05-02 23:59:00', NULL, NULL),
(35, 'piantod', '$2y$12$kIFViLBv9f57ZbryHFcGlOj6EyKtFzMxkl0AcS9W.I6Xv5W3HHDtC', NULL, '2024-05-02 23:59:24', '2024-05-02 23:59:24', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administrators_username_unique` (`username`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `games_slug_unique` (`slug`),
  ADD KEY `games_created_by_foreign` (`created_by`);

--
-- Indeks untuk tabel `game_versions`
--
ALTER TABLE `game_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `game_versions`
--
ALTER TABLE `game_versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=794;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
