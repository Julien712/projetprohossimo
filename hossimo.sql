-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 24 juin 2021 à 21:31
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hossimo`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` bigint(20) NOT NULL,
  `telephone_user` varchar(20) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `telephone_user`, `adresse`, `user_id`) VALUES
(1, '04.91.78.85.01', '45 Rue du Périgord, 16390 Saint-Séverin', 1),
(2, '03.55.59.66.29', '99, Place Charles de Gaulle 59650 VILLENEUVE-D\'ASC', 2),
(3, '05.74.42.96.96', '81, rue des Dunes 33160 SAINT-MÉDARD-EN-JALLES', 3);

-- --------------------------------------------------------

--
-- Structure de la table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `css` longtext NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `css`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`) VALUES
(1, 'Django', 1, 'Administration Hoslo', 1, 'admin-interface/logo/logo-hossimo_AT4QK2m.png', 1, '#0A1841', '#FFFFFF', '#4CB4C7', '#FFFFFF', '#7CD1C0', '#374668', '#FFFFFF', '#FFFFFF', '#7ABECC', 1, '#374668', '#7ABECC', '#17A2B8', '#374668', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', '', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFFF', '#FFFFFF');

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Boutique');

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add accessoires', 8, 'add_accessoires'),
(30, 'Can change accessoires', 8, 'change_accessoires'),
(31, 'Can delete accessoires', 8, 'delete_accessoires'),
(32, 'Can view accessoires', 8, 'view_accessoires'),
(33, 'Can add com', 9, 'add_com'),
(34, 'Can change com', 9, 'change_com'),
(35, 'Can delete com', 9, 'delete_com'),
(36, 'Can view com', 9, 'view_com'),
(37, 'Can add gilet', 10, 'add_gilet'),
(38, 'Can change gilet', 10, 'change_gilet'),
(39, 'Can delete gilet', 10, 'delete_gilet'),
(40, 'Can view gilet', 10, 'view_gilet'),
(41, 'Can add pantalon', 11, 'add_pantalon'),
(42, 'Can change pantalon', 11, 'change_pantalon'),
(43, 'Can delete pantalon', 11, 'delete_pantalon'),
(44, 'Can view pantalon', 11, 'view_pantalon'),
(45, 'Can add veston', 12, 'add_veston'),
(46, 'Can change veston', 12, 'change_veston'),
(47, 'Can delete veston', 12, 'delete_veston'),
(48, 'Can view veston', 12, 'view_veston'),
(49, 'Can add entete', 13, 'add_entete'),
(50, 'Can change entete', 13, 'change_entete'),
(51, 'Can delete entete', 13, 'delete_entete'),
(52, 'Can view entete', 13, 'view_entete'),
(53, 'Can add profile', 14, 'add_profile'),
(54, 'Can change profile', 14, 'change_profile'),
(55, 'Can delete profile', 14, 'delete_profile'),
(56, 'Can view profile', 14, 'view_profile');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$GvhLhkTaZbtFTKW5PBOV2W$zas7u0AKGtTUSTdIac0DJn9R654u94SsSOHkiVsmVnA=', '2021-06-24 12:13:21.834205', 1, 'Hoslo', 'Sébastien', 'Desage', '', 1, 1, '2021-06-07 11:26:53.000000'),
(2, 'pbkdf2_sha256$260000$psF3DAdv9FN6AoSRRBGMHw$peomHA90P5kqe8Cq5/pCwMHRuxDqLNL12Ef0zD47K4U=', '2021-06-24 07:59:10.580180', 0, 'Boutique', '', '', '', 0, 1, '2021-06-07 11:49:49.000000'),
(3, 'pbkdf2_sha256$260000$DPNJ9DKMWfa90fs89yTxTv$6sFX7Igy34aZy7kndP8JsuVSvAdtIF286NeSu7uHFcY=', '2021-06-22 15:13:07.039421', 0, 'Hossimo', '', '', '', 0, 1, '2021-06-14 09:52:48.000000');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-07 11:49:49.944006', '2', 'Boutique', 1, '[{\"added\": {}}]', 5, 1),
(2, '2021-06-08 08:49:53.852882', '1', 'Admin', 1, '[{\"added\": {}}]', 4, 1),
(3, '2021-06-08 08:50:00.993086', '2', 'Boutique', 1, '[{\"added\": {}}]', 4, 1),
(4, '2021-06-08 08:50:46.093019', '1', 'ju', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(5, '2021-06-08 08:50:52.693284', '2', 'Boutique', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(6, '2021-06-14 09:52:04.344119', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 1, 1),
(7, '2021-06-14 09:52:48.914030', '3', 'Hossimo', 1, '[{\"added\": {}}]', 5, 1),
(8, '2021-06-14 09:54:30.104746', '3', 'Hossimo', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}, {\"added\": {\"name\": \"profile\", \"object\": \"Hossimo\"}}]', 5, 1),
(9, '2021-06-14 09:55:02.612953', '2', 'Boutique', 2, '[{\"changed\": {\"name\": \"profile\", \"object\": \"Boutique\", \"fields\": [\"Telephone user\", \"Adresse\"]}}]', 5, 1),
(10, '2021-06-14 10:02:03.547131', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 1, 1),
(11, '2021-06-14 10:03:44.907956', '1', 'Hoslo', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}, {\"changed\": {\"name\": \"profile\", \"object\": \"Hoslo\", \"fields\": [\"Telephone user\", \"Adresse\"]}}]', 5, 1),
(12, '2021-06-15 11:41:45.343903', '1', 'Hoslo', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 5, 1),
(13, '2021-06-23 20:11:40.455631', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 1, 1),
(14, '2021-06-23 20:14:46.259021', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Logo\", \"Color\", \"Background color\"]}}]', 1, 1),
(15, '2021-06-23 20:17:59.323881', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Text color\", \"Link hover color\", \"Background color\", \"Background selected color\", \"Link hover color\", \"Background color\", \"Background hover color\"]}}]', 1, 1),
(16, '2021-06-23 20:19:08.114516', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Link color\", \"Link hover color\", \"Background hover color\"]}}]', 1, 1),
(17, '2021-06-23 20:20:37.653265', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 1, 1),
(18, '2021-06-23 21:10:45.248240', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 1, 1),
(19, '2021-06-23 21:27:14.618995', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Logo\", \"Favicon\"]}}]', 1, 1),
(20, '2021-06-23 21:27:45.979308', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Logo\", \"Favicon\"]}}]', 1, 1),
(21, '2021-06-23 21:28:04.312637', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(14, 'accounts', 'profile'),
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(8, 'fiche', 'accessoires'),
(9, 'fiche', 'com'),
(13, 'fiche', 'entete'),
(10, 'fiche', 'gilet'),
(11, 'fiche', 'pantalon'),
(12, 'fiche', 'veston'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-07 11:24:54.715034'),
(2, 'auth', '0001_initial', '2021-06-07 11:24:55.817325'),
(3, 'accounts', '0001_initial', '2021-06-07 11:24:55.964459'),
(4, 'admin', '0001_initial', '2021-06-07 11:24:56.208096'),
(5, 'admin', '0002_logentry_remove_auto_add', '2021-06-07 11:24:56.223718'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-07 11:24:56.239343'),
(7, 'admin_interface', '0001_initial', '2021-06-07 11:24:56.308369'),
(8, 'admin_interface', '0002_add_related_modal', '2021-06-07 11:24:56.693537'),
(9, 'admin_interface', '0003_add_logo_color', '2021-06-07 11:24:56.778240'),
(10, 'admin_interface', '0004_rename_title_color', '2021-06-07 11:24:56.809432'),
(11, 'admin_interface', '0005_add_recent_actions_visible', '2021-06-07 11:24:56.909699'),
(12, 'admin_interface', '0006_bytes_to_str', '2021-06-07 11:24:56.956581'),
(13, 'admin_interface', '0007_add_favicon', '2021-06-07 11:24:57.041245'),
(14, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2021-06-07 11:24:57.210563'),
(15, 'admin_interface', '0009_add_enviroment', '2021-06-07 11:24:57.395515'),
(16, 'admin_interface', '0010_add_localization', '2021-06-07 11:24:57.411147'),
(17, 'admin_interface', '0011_add_environment_options', '2021-06-07 11:24:57.658601'),
(18, 'admin_interface', '0012_update_verbose_names', '2021-06-07 11:24:57.665109'),
(19, 'admin_interface', '0013_add_related_modal_close_button', '2021-06-07 11:24:58.065968'),
(20, 'admin_interface', '0014_name_unique', '2021-06-07 11:24:58.112904'),
(21, 'admin_interface', '0015_add_language_chooser_active', '2021-06-07 11:24:58.212758'),
(22, 'admin_interface', '0016_add_language_chooser_display', '2021-06-07 11:24:58.413041'),
(23, 'admin_interface', '0017_change_list_filter_dropdown', '2021-06-07 11:24:58.428662'),
(24, 'admin_interface', '0018_theme_list_filter_sticky', '2021-06-07 11:24:58.513325'),
(25, 'admin_interface', '0019_add_form_sticky', '2021-06-07 11:24:58.697863'),
(26, 'admin_interface', '0020_module_selected_colors', '2021-06-07 11:24:59.145508'),
(27, 'admin_interface', '0021_file_extension_validator', '2021-06-07 11:24:59.268043'),
(28, 'contenttypes', '0002_remove_content_type_name', '2021-06-07 11:24:59.546692'),
(29, 'auth', '0002_alter_permission_name_max_length', '2021-06-07 11:24:59.669114'),
(30, 'auth', '0003_alter_user_email_max_length', '2021-06-07 11:24:59.785050'),
(31, 'auth', '0004_alter_user_username_opts', '2021-06-07 11:24:59.800675'),
(32, 'auth', '0005_alter_user_last_login_null', '2021-06-07 11:24:59.901350'),
(33, 'auth', '0006_require_contenttypes_0002', '2021-06-07 11:24:59.901350'),
(34, 'auth', '0007_alter_validators_add_error_messages', '2021-06-07 11:24:59.916988'),
(35, 'auth', '0008_alter_user_username_max_length', '2021-06-07 11:25:00.001616'),
(36, 'auth', '0009_alter_user_last_name_max_length', '2021-06-07 11:25:00.094282'),
(37, 'auth', '0010_alter_group_name_max_length', '2021-06-07 11:25:00.201602'),
(38, 'auth', '0011_update_proxy_permissions', '2021-06-07 11:25:00.217228'),
(39, 'auth', '0012_alter_user_first_name_max_length', '2021-06-07 11:25:00.317521'),
(40, 'fiche', '0001_initial', '2021-06-07 11:25:00.972702'),
(41, 'sessions', '0001_initial', '2021-06-07 11:25:01.050848');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0akek0wnvgpkc38m23f3pb0c7in25szg', 'e30:1lsTZY:FYjng9dQMaSAJ5EODQps57UtLWm9lbBNYa1o6BfPzWY', '2021-06-27 17:06:56.595231'),
('0az1061otkq6bsreddkp2ekfnho6zr5h', 'e30:1lsT86:QTnfTmhFBipMWt1FRADmKOm3ee5rw_CZ_uYAG_J4wJ8', '2021-06-27 16:38:34.057635'),
('0zbaszaix6ui8ghk7kb32mxdiv1ovwic', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1ltwFY:jC8HGGkfeNvgYrTCGho1volv4RhwoStK1xsmLsEii0o', '2021-07-01 17:56:20.677587'),
('2l0uj1gsw2gqpsvzwj0ntc4mw86cjdm1', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1lw9Cj:MHpHc_vgv1w848rJkc5OBK77yQJ1Mm73FGMQ4NeReW0', '2021-07-07 20:10:33.017008'),
('3esrdn671myq9sh9ftoo6js0fbren683', 'e30:1lsTuJ:m-Fn976R-vWHBeR2J2lAXGhe2JkuIh7PqVZHzU4fWb0', '2021-06-27 17:28:23.014457'),
('5mg7ou9tsr4xvey5dn9bmyav37i1yfcn', 'e30:1lsQFK:gDTMwY7DecuGQ8IWofeblHl90tYyZ8Rqhxd3EmYY83E', '2021-06-27 13:33:50.665657'),
('5oo5wmdq3z0h7bj1tprpp27zr9dr8728', 'e30:1lqEGJ:j-udSjrRmZ0O4DpmubXnU2NRs8KqnMmvY4HHrduyoZ8', '2021-06-21 12:21:47.958984'),
('5pbthh86cojxqqr9zlq7f9sceaqxc271', 'e30:1lqF1r:MisJIQdHXbHPv8xKiESzwn9_CkDVTDRXHc6gwO24clo', '2021-06-21 13:10:55.361367'),
('66onik6g6ihe6qwiq8plvrfe1fa64jbd', 'e30:1lsQ4F:gjoSFH01BjOar0t_wYPzbOowcfjhpccNOVZfN0BPNvg', '2021-06-27 13:22:23.157521'),
('7se5srw5aficwm7c87xcear9fdw281ou', 'e30:1lsU3o:0LHiFubDZWD3vLqV8MhLf4krtiwfHhP3i6NBxwTUkbg', '2021-06-27 17:38:12.204280'),
('7zzjbu6dlkofrnqtwv7kxczxe8wnodj5', 'e30:1lsTOq:CfyDuDihoVJ7Wv9riIokDBNoV5AXS4PgoyUToeGY3Yk', '2021-06-27 16:55:52.063225'),
('8u6kmm379k153fouci00tbcpujhkzl1z', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1lvhou:IKA5ix4fdx0LVY94jAmYkCQeHai2A3IBmMUvdcUHh_c', '2021-07-06 14:56:08.740357'),
('ad4bs7u6oj5dkasat735w9lqbgr1e7ui', 'e30:1lsRdV:9MrxK51C9y_Hp9tA6iprkKr9kViZMgej9tZNsRl__C8', '2021-06-27 15:02:53.545333'),
('aiqil579jgi9rwrfxlt3km8kd9hkozhh', 'e30:1lsTtT:J4vy991vw_DEOlrzf6DrR4aKSJebxsPqKIaL-Jf29HQ', '2021-06-27 17:27:31.217237'),
('ak5k4xqsw3b73ky77oanao6jm59a17ru', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1ludXp:YtAWa1cGPM_GmrVkBIuMRUYJl8iCIpMDDeFrytZcHuI', '2021-07-03 16:10:05.778520'),
('apmewemnac3dbzm10ueu5xwx7rx7k978', 'e30:1lsTR4:ZQv77GhM6puz9BP-rJbd1LGeamVc3WuyczRqnx24Rxs', '2021-06-27 16:58:10.858872'),
('bv89jjjo6lceorn8619ubihlubza8ho8', '.eJxVjEsOwjAMBe-SNYqaj0PNkn3PENmxQwuolfpZIe4OlbqA7ZuZ9zKZtrXP26JzHsRcjDen342pPHTcgdxpvE22TOM6D2x3xR50sd0k-rwe7t9BT0v_rbmyqkteHIHT0CRuEGptFf0ZBRBi60IQ8lwxlOowoaijBmIBhhjN-wPw0Tfb:1ls3ZH:kFxpY2QfCIRJ1V_uXror9A8bNTAlVlaLVHWxAE_UU-M', '2021-06-26 13:20:55.324902'),
('c3omc9l0o3px1wcgdbkjur2pgev9s1bo', 'e30:1lsTZy:DpvXKSVe2winJwCK9wN4mO5qm4hff8UQBkvdsLA59BI', '2021-06-27 17:07:22.954723'),
('cu0txrxeex2yertbyzuwgpxf560ku7im', 'e30:1lsi07:Qnch2ymh_83IUVzfjzAF2druLDIhaV7D69_5ID_b9A4', '2021-06-28 08:31:19.532700'),
('d5rbxokq5x7asxxszrvs16nb0716b158', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1lqd0i:CKaulYRnQOUCT8Y_TSW3cMzsFNUtZpUKr8CykvRcktk', '2021-06-22 14:47:20.150771'),
('damdapis3u5appcozsq7q5njgny7vq9l', '.eJxVjMsOwiAQRf-FtSHDU3Dpvt9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxC5MsdPvliI-ctsB3WO7dY69rcuc-K7wgw4-dcrP6-H-HdQ46rc2CQBIWKcKIGDSLgoU0nokNKBRCpskCemsV2QcFBez1qpIOlvwUrD3B8tCNvY:1lv1nj:rxzem80rOBwlJuXHHFS6gLVXnO9Pbpnb0wPuKtvhxKQ', '2021-07-04 18:04:07.372948'),
('df94tey93ky22dhbxh3ukdc5sdfva7kp', 'e30:1lsUJ5:5ANWIKLnPDYvBKtW6GqDFnHX32UWI2sT5FqCmt7zNOw', '2021-06-27 17:53:59.368574'),
('dvwvxkzk291ypwxqgf2xiunnenm2y3z2', 'e30:1lsi5t:ZhpBKxbU99AoYZ210b8EB5oK6VwxNmi-uI-dOgM5YI4', '2021-06-28 08:37:17.183067'),
('ef5c1ols050p1ifdk8lwj448z7b9pb3c', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1lud64:vtLCNgU48LapF9-0ZAUhAWbYPYzfRC2NYEHYD8PcTpE', '2021-07-03 15:41:24.776067'),
('faoy562gycrtgl7dtfkatqcmtdolljhx', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1lt9II:cbuRhS-w3UcUWcT8VyPjewXUDeoapOt8ipHoA6MnQh8', '2021-06-29 13:39:54.249697'),
('ih8jbqcmhqc93jsyjlh5ej89zu9ddpnz', 'e30:1lsQEk:iPiMb3SdSgrgsxvHOVDQnrELTUSS0ha19SNLqM17Nxk', '2021-06-27 13:33:14.301861'),
('iuyxxq2ieqzrgux7rgcrq90w2zs9srxi', 'e30:1lsSPJ:rRuOyJ-rd0g4J5CqSvb2NRqnXnjAAgOJJpP8gmrnyRw', '2021-06-27 15:52:17.997615'),
('iy9txfq93hwevakvj4nfzt1vpqmaicsb', 'e30:1lsi6F:mrHsk62Zi1vOBtx4LDlUh76jVDcr5qe_RD4jW0iNnoQ', '2021-06-28 08:37:39.382115'),
('jbwi2ln1s6t1ewgznfck40dvq5evuabm', 'e30:1lsSx1:EqfGIX7NTbsTl5ZamFo_VjlTRqgn0Qu9OepZVKtvTu4', '2021-06-27 16:27:07.154174'),
('joh4m3rl8h6lmboblf35j3fqwfyhx1gb', 'e30:1lsULg:v8G88RIZolTZ5NcWzKA8D-ftcTTdIQjLV1ARjIw3DEE', '2021-06-27 17:56:40.375170'),
('jwa3704sdgy95c776fxvcqgpnx5wo1mp', 'e30:1lsTtw:m7o56pjI4gKwfhSzUkyp3Z-AVSrE2v-6_X2OQKMA5Xg', '2021-06-27 17:28:00.729441'),
('k297kszxhohyr7yj1nzw3dsgqscelvjg', 'e30:1lsTEM:M9W27PmtcM4JYq8frvLzo2VN3pM7gs3jQ-m9ftUXdj4', '2021-06-27 16:45:02.428020'),
('kl7ayyu6shbq0yqmon7n6owaxgpywtyz', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1luf17:LM__AOt3hCN2luPO58m4sZdiNITigAtOo2iMq6XCy7o', '2021-07-03 17:44:25.724294'),
('l6i2c567munwc1y8gin3k9jkdmgns8um', 'e30:1lsRZT:Kwjc6ibLPdX_NKcmdXpZSjwHCkruA1g_nCUkAWbpems', '2021-06-27 14:58:43.610385'),
('o01q5yhimpfp5lupfwf99fjco6d9imcf', 'e30:1lsUOo:OsxldaHBa2_bHTTSwwgeCQ9Mrt4Ld9w30jg5daHGtLU', '2021-06-27 17:59:54.940401'),
('r1fwrnu2a9elqomfasrd08fbudde0x8o', '.eJxVjEEOwiAQRe_C2pDCUAou3XsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uzMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmrzPL83K4fwcFW_nWOITgfciYjRstdtANLBaBIULgGIVYKAIy9cZl6wKBRByNNcJ98FG9P-43ODw:1lqY3x:Yq_QqxfhE3lxjAcLK0o5HL4DtugmJvT7g1MDjpdQdt8', '2021-06-22 09:30:21.415854'),
('rrpuo5k6k0t7g71mkan4aksbhulgpg2p', 'e30:1lsTwX:l5k_cewBua6-1JUY5r4CdIffhz14FQU30tGsDKsGqLM', '2021-06-27 17:30:41.167126'),
('tuvdy3g4tlfomkfqjmgqge0phxclqshl', 'e30:1lsSo2:Eil4HhVyTiqLmIrESd2k0CiqEdfSOObVE1rR8J0bXNc', '2021-06-27 16:17:50.616795'),
('ujwiyg966on5zhljmmdetszj08rwk1qt', 'e30:1lsUSr:opncL7-ffhcpJxE5TNu0lYofF-hYIwxittBr4udA3uE', '2021-06-27 18:04:05.411509'),
('wpo506dh2jy3iohegoxxhw3o2jwyi4w0', 'e30:1lsPxU:NQLb4c85LvIzX80NUfQol8j-4lVl-7rLjkWGpHJwHDM', '2021-06-27 13:15:24.999937'),
('y0vbrv1e3xgwkwh8e8eghgfkdu57a5fw', 'e30:1lsRz8:FnOqOuSQVm9OZCjqmfZoeP8JMz60hGWBcGpCj8haoSE', '2021-06-27 15:25:14.622042'),
('ypbrkjw6polym67gch4l5cjldrx6hzff', 'e30:1lsQIB:1CyitKgTRaz93Jw-5fiNHuIqCt0hUwQ-j5Cotd2KhoI', '2021-06-27 13:36:47.570939'),
('zbagurezutec4xenvyq7xy94qknr1b9d', 'e30:1lsQzN:v503pkggOwBXjxZqI6NRTNK0zLX5gEXJLX14gfisXao', '2021-06-27 14:21:25.198039');

-- --------------------------------------------------------

--
-- Structure de la table `fiche_accessoires`
--

CREATE TABLE `fiche_accessoires` (
  `id_accessoires` int(11) NOT NULL,
  `pantalon` tinyint(1) DEFAULT NULL,
  `veste` tinyint(1) DEFAULT NULL,
  `manteau` tinyint(1) DEFAULT NULL,
  `costume` tinyint(1) DEFAULT NULL,
  `troispiece` tinyint(1) DEFAULT NULL,
  `gilet` tinyint(1) DEFAULT NULL,
  `tissu` varchar(50) DEFAULT NULL,
  `doublure` varchar(50) DEFAULT NULL,
  `boutonsnumero` varchar(50) DEFAULT NULL,
  `fournisseurtissu` varchar(50) DEFAULT NULL,
  `naturetissu` varchar(50) DEFAULT NULL,
  `feutrenumero` varchar(50) DEFAULT NULL,
  `griffe` tinyint(1) DEFAULT NULL,
  `vignette` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fiche_accessoires`
--

INSERT INTO `fiche_accessoires` (`id_accessoires`, `pantalon`, `veste`, `manteau`, `costume`, `troispiece`, `gilet`, `tissu`, `doublure`, `boutonsnumero`, `fournisseurtissu`, `naturetissu`, `feutrenumero`, `griffe`, `vignette`) VALUES
(1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(8, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(11, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fiche_com`
--

CREATE TABLE `fiche_com` (
  `id_com` int(11) NOT NULL,
  `commentaireveston` varchar(255) DEFAULT NULL,
  `commentairegilet` varchar(255) DEFAULT NULL,
  `commentairepantalon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fiche_com`
--

INSERT INTO `fiche_com` (`id_com`, `commentaireveston`, `commentairegilet`, `commentairepantalon`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL),
(7, NULL, NULL, NULL),
(8, NULL, NULL, NULL),
(9, NULL, NULL, NULL),
(10, NULL, NULL, NULL),
(11, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fiche_entete`
--

CREATE TABLE `fiche_entete` (
  `id_entete` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `curdate` date NOT NULL,
  `reception` date NOT NULL,
  `mesurenumero` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `societe_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fiche_entete`
--

INSERT INTO `fiche_entete` (`id_entete`, `nom`, `curdate`, `reception`, `mesurenumero`, `phone`, `mail`, `adresse`, `societe_id`) VALUES
(1, 'Amedee Lemaître', '2021-06-07', '2021-07-21', NULL, '01.22.76.3', 'AmedeeLemaitre@dayrep.com', '10, rue du Fossé des Tanneurs 77200 TORCY', 1),
(2, 'Eulalie Deblois', '2021-06-07', '2021-07-13', NULL, '04.90.48.5', 'EulalieDeblois@teleworm.us', '87, Rue Marie De Médicis 11000 CARCASSONNE', 2),
(4, 'Orva Leclerc', '2021-06-07', '2021-07-29', NULL, '01.24.71.0', 'OrvaLeclerc@rhyta.com', '60, Rue de la Pompe 78200 MANTES-LA-JOLIE', 2),
(5, 'Aimé Giroux', '2021-06-07', '2021-07-19', NULL, '01.22.73.5', 'AimeGiroux@rhyta.com', '54, rue de l\'Epeule 92500 RUEIL-MALMAISON', 1),
(7, 'Ruby Lepage', '2021-06-14', '2021-07-02', NULL, '03.03.08.3', 'RubyLepage@jourrapide.com', '11, rue des Chaligny 58000 NEVERS', 1),
(8, 'Cinderella Pouffe', '2021-06-14', '2021-06-25', NULL, '04.46.12.9', 'PomeroyPitre@dayrep.com', '63, rue Porte d\'Orange 84200 CARPENTRAS', 3),
(9, 'Lucille Boisvert', '2021-06-14', '2021-06-18', NULL, '0395176701', 'LucilleBoisvert@jourrapide.com', '40, rue du Faubourg National 57100 THIONVILLE', 3),
(10, 'Xarles Séguin', '2021-06-15', '2021-06-24', NULL, '01.17.43.5', 'XarlesSeguin@armyspy.com', '24, rue du Roosevelt 77176 SAVIGNY', 2),
(11, 'Thiery Veilleux', '2021-06-15', '2021-06-24', NULL, '05.99.49.4', 'ThieryVeilleux@jourrapide.com', '36, rue de l\'Aigle 17000 LA ROCHELLE', 3);

-- --------------------------------------------------------

--
-- Structure de la table `fiche_gilet`
--

CREATE TABLE `fiche_gilet` (
  `id_gilet` int(11) NOT NULL,
  `giletmodeltailleessaye` varchar(50) DEFAULT NULL,
  `giletmodeltaillechoisi` varchar(50) DEFAULT NULL,
  `largeuralataille` double DEFAULT NULL,
  `giletpoitrine` double DEFAULT NULL,
  `giletestomac` double DEFAULT NULL,
  `giletouverture` double DEFAULT NULL,
  `giletlongueurdevant` double DEFAULT NULL,
  `emboiterdevant` tinyint(1) DEFAULT NULL,
  `pincealemmanchure` tinyint(1) DEFAULT NULL,
  `boutonn` varchar(20) DEFAULT NULL,
  `bordspique` tinyint(1) DEFAULT NULL,
  `bordsnonpique` tinyint(1) DEFAULT NULL,
  `giletsansboutonniere` tinyint(1) DEFAULT NULL,
  `giletboutonnierecouleur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fiche_gilet`
--

INSERT INTO `fiche_gilet` (`id_gilet`, `giletmodeltailleessaye`, `giletmodeltaillechoisi`, `largeuralataille`, `giletpoitrine`, `giletestomac`, `giletouverture`, `giletlongueurdevant`, `emboiterdevant`, `pincealemmanchure`, `boutonn`, `bordspique`, `bordsnonpique`, `giletsansboutonniere`, `giletboutonnierecouleur`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fiche_pantalon`
--

CREATE TABLE `fiche_pantalon` (
  `id_pantalon` int(11) NOT NULL,
  `modeltailleessaye` varchar(20) DEFAULT NULL,
  `modeltaillechoisi` varchar(20) DEFAULT NULL,
  `ceinture` double DEFAULT NULL,
  `bassin` double DEFAULT NULL,
  `longueurcotegauche` double DEFAULT NULL,
  `longueurcotedroite` double DEFAULT NULL,
  `longueurentrejambegauche` double DEFAULT NULL,
  `longueurentrejambedroite` double DEFAULT NULL,
  `ardillon` tinyint(1) DEFAULT NULL,
  `basfinirevers` double DEFAULT NULL,
  `basnonfinirevers` tinyint(1) DEFAULT NULL,
  `basfinisimple` tinyint(1) DEFAULT NULL,
  `basnonfinisimple` tinyint(1) DEFAULT NULL,
  `largeurgenoux` double DEFAULT NULL,
  `largeurbras` double DEFAULT NULL,
  `montantdevantplus` double DEFAULT NULL,
  `montantdevantmoins` double DEFAULT NULL,
  `montantdosplus` double DEFAULT NULL,
  `montantdosmoins` double DEFAULT NULL,
  `passanttunnel` tinyint(1) DEFAULT NULL,
  `sanspassant` tinyint(1) DEFAULT NULL,
  `avecpatteserrage` tinyint(1) DEFAULT NULL,
  `sansagrafe` tinyint(1) DEFAULT NULL,
  `sanspatteprolongee` tinyint(1) DEFAULT NULL,
  `smokingbaguettesoie` tinyint(1) DEFAULT NULL,
  `surpiqueecouturecote` tinyint(1) DEFAULT NULL,
  `nondouble` tinyint(1) DEFAULT NULL,
  `doubledosgenoux` tinyint(1) DEFAULT NULL,
  `doubleentierementbas` tinyint(1) DEFAULT NULL,
  `fournituresnoires` tinyint(1) DEFAULT NULL,
  `ceintureantiglisse` tinyint(1) DEFAULT NULL,
  `btsbretelle` tinyint(1) DEFAULT NULL,
  `forteethautegauche` double DEFAULT NULL,
  `forteethautedroite` double DEFAULT NULL,
  `largeurcuisseplus` double DEFAULT NULL,
  `largeurcuissemoins` double DEFAULT NULL,
  `fessierplat` double DEFAULT NULL,
  `saillante` tinyint(1) DEFAULT NULL,
  `pointeentrejambeplus` double DEFAULT NULL,
  `pointeentrejambemoins` double DEFAULT NULL,
  `braguetteglissiere` tinyint(1) DEFAULT NULL,
  `braguetteboutons` tinyint(1) DEFAULT NULL,
  `pocherevolver` varchar(20) DEFAULT NULL,
  `avecrabat` tinyint(1) DEFAULT NULL,
  `enleverrondsurhanches` double DEFAULT NULL,
  `enleverrondsurhanchesmoins` double DEFAULT NULL,
  `creuserfondplus` double DEFAULT NULL,
  `creuserfondmoins` double DEFAULT NULL,
  `portepoignardgauche` double DEFAULT NULL,
  `portepoignarddroite` double DEFAULT NULL,
  `pocheenbiais` tinyint(1) DEFAULT NULL,
  `pochedanslacouture` tinyint(1) DEFAULT NULL,
  `pochepassepoileesenbiais` tinyint(1) DEFAULT NULL,
  `cavalieres` tinyint(1) DEFAULT NULL,
  `sanspli` tinyint(1) DEFAULT NULL,
  `unplisversexterieur` tinyint(1) DEFAULT NULL,
  `unplisversinterieur` tinyint(1) DEFAULT NULL,
  `deuxplisversexterieur` tinyint(1) DEFAULT NULL,
  `deuxplisversinterieur` tinyint(1) DEFAULT NULL,
  `unepochemontre` tinyint(1) DEFAULT NULL,
  `pocheavecrabat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fiche_pantalon`
--

INSERT INTO `fiche_pantalon` (`id_pantalon`, `modeltailleessaye`, `modeltaillechoisi`, `ceinture`, `bassin`, `longueurcotegauche`, `longueurcotedroite`, `longueurentrejambegauche`, `longueurentrejambedroite`, `ardillon`, `basfinirevers`, `basnonfinirevers`, `basfinisimple`, `basnonfinisimple`, `largeurgenoux`, `largeurbras`, `montantdevantplus`, `montantdevantmoins`, `montantdosplus`, `montantdosmoins`, `passanttunnel`, `sanspassant`, `avecpatteserrage`, `sansagrafe`, `sanspatteprolongee`, `smokingbaguettesoie`, `surpiqueecouturecote`, `nondouble`, `doubledosgenoux`, `doubleentierementbas`, `fournituresnoires`, `ceintureantiglisse`, `btsbretelle`, `forteethautegauche`, `forteethautedroite`, `largeurcuisseplus`, `largeurcuissemoins`, `fessierplat`, `saillante`, `pointeentrejambeplus`, `pointeentrejambemoins`, `braguetteglissiere`, `braguetteboutons`, `pocherevolver`, `avecrabat`, `enleverrondsurhanches`, `enleverrondsurhanchesmoins`, `creuserfondplus`, `creuserfondmoins`, `portepoignardgauche`, `portepoignarddroite`, `pocheenbiais`, `pochedanslacouture`, `pochepassepoileesenbiais`, `cavalieres`, `sanspli`, `unplisversexterieur`, `unplisversinterieur`, `deuxplisversexterieur`, `deuxplisversinterieur`, `unepochemontre`, `pocheavecrabat`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fiche_veston`
--

CREATE TABLE `fiche_veston` (
  `id_veston` int(11) NOT NULL,
  `veston_taille_essaye` varchar(50) DEFAULT NULL,
  `veston_taille_choisi` varchar(50) DEFAULT NULL,
  `nombre_de_boutons` double DEFAULT NULL,
  `demipoitrine` double DEFAULT NULL,
  `demiestomac` double DEFAULT NULL,
  `demibassin` double DEFAULT NULL,
  `largeurepaule` double DEFAULT NULL,
  `undemicarrure` double DEFAULT NULL,
  `longueur_dos_finie` double DEFAULT NULL,
  `longueurmanchegauche` double DEFAULT NULL,
  `longueurmanchedroite` double DEFAULT NULL,
  `undemilargeurtaille` double DEFAULT NULL,
  `veston_normal` double DEFAULT NULL,
  `reins_creux` double DEFAULT NULL,
  `renverse` double DEFAULT NULL,
  `dos_rond` double DEFAULT NULL,
  `voute_penche` double DEFAULT NULL,
  `ventru` double DEFAULT NULL,
  `athletique` double DEFAULT NULL,
  `premierbouton` double DEFAULT NULL,
  `undemicroisureplus` double DEFAULT NULL,
  `undemicroisuremoins` double DEFAULT NULL,
  `decrocherdevant` double DEFAULT NULL,
  `poitrineplate` double DEFAULT NULL,
  `poitrineforte` tinyint(1) DEFAULT NULL,
  `largeurbassindosplus` double DEFAULT NULL,
  `largeurbassindosmoin` double DEFAULT NULL,
  `manteauavecsouspatte` tinyint(1) DEFAULT NULL,
  `manteauavecsousceinture` tinyint(1) DEFAULT NULL,
  `droitesarabat` tinyint(1) DEFAULT NULL,
  `sansrabat` tinyint(1) DEFAULT NULL,
  `pocheticketexterieure` tinyint(1) DEFAULT NULL,
  `sanspochepoitrine` tinyint(1) DEFAULT NULL,
  `deuxpochesplaquees` tinyint(1) DEFAULT NULL,
  `troispochesplaquees` tinyint(1) DEFAULT NULL,
  `pochelunette` tinyint(1) DEFAULT NULL,
  `brasenavant` double DEFAULT NULL,
  `brasenarriere` double DEFAULT NULL,
  `emmanchurecombler` double DEFAULT NULL,
  `emmanchurecreuser` double DEFAULT NULL,
  `brasfort` double DEFAULT NULL,
  `brasmince` double DEFAULT NULL,
  `basdemanche` double DEFAULT NULL,
  `hautdemancheplus` double DEFAULT NULL,
  `hautdemanchemoins` double DEFAULT NULL,
  `sansgarde` tinyint(1) DEFAULT NULL,
  `preparerboutonniere` tinyint(1) DEFAULT NULL,
  `executerboutonniere` tinyint(1) DEFAULT NULL,
  `executerboutonnierenpo` tinyint(1) DEFAULT NULL,
  `boutonchevauchant` tinyint(1) DEFAULT NULL,
  `colorismanche` varchar(50) DEFAULT NULL,
  `doublagemignonette` tinyint(1) DEFAULT NULL,
  `coudesencuir` tinyint(1) DEFAULT NULL,
  `nepasmonterlesmanches` tinyint(1) DEFAULT NULL,
  `coucourt` double DEFAULT NULL,
  `coulong` double DEFAULT NULL,
  `coumince` double DEFAULT NULL,
  `plissouscol` double DEFAULT NULL,
  `ephautesgauche` double DEFAULT NULL,
  `ephautesdroite` double DEFAULT NULL,
  `epnormalgauche` double DEFAULT NULL,
  `epnormaldroite` double DEFAULT NULL,
  `epbassesgauche` double DEFAULT NULL,
  `epbassesdroite` double DEFAULT NULL,
  `epsemidouble` tinyint(1) DEFAULT NULL,
  `epsansepaulettes` tinyint(1) DEFAULT NULL,
  `epaulettesplusfines` tinyint(1) DEFAULT NULL,
  `epsanscigarette` tinyint(1) DEFAULT NULL,
  `osgauche` double DEFAULT NULL,
  `osdroite` double DEFAULT NULL,
  `monogrammecoloris` varchar(20) DEFAULT NULL,
  `monogrammestyle` varchar(20) DEFAULT NULL,
  `dosfentes` varchar(20) DEFAULT NULL,
  `boutondevantcoloris` varchar(20) DEFAULT NULL,
  `boutonreverscoloris` varchar(20) DEFAULT NULL,
  `sansboutonniererevers` tinyint(1) DEFAULT NULL,
  `filboutons` varchar(20) DEFAULT NULL,
  `colombiacoloris` varchar(20) DEFAULT NULL,
  `amftoutescoutures` double DEFAULT NULL,
  `amf` double DEFAULT NULL,
  `bordsnonpiques` tinyint(1) DEFAULT NULL,
  `biaispassepoilscoloris` varchar(20) DEFAULT NULL,
  `colorisboutonnieres` varchar(20) DEFAULT NULL,
  `coloris2boutonnieres` varchar(20) DEFAULT NULL,
  `coloris1boutonnieres` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `fiche_veston`
--

INSERT INTO `fiche_veston` (`id_veston`, `veston_taille_essaye`, `veston_taille_choisi`, `nombre_de_boutons`, `demipoitrine`, `demiestomac`, `demibassin`, `largeurepaule`, `undemicarrure`, `longueur_dos_finie`, `longueurmanchegauche`, `longueurmanchedroite`, `undemilargeurtaille`, `veston_normal`, `reins_creux`, `renverse`, `dos_rond`, `voute_penche`, `ventru`, `athletique`, `premierbouton`, `undemicroisureplus`, `undemicroisuremoins`, `decrocherdevant`, `poitrineplate`, `poitrineforte`, `largeurbassindosplus`, `largeurbassindosmoin`, `manteauavecsouspatte`, `manteauavecsousceinture`, `droitesarabat`, `sansrabat`, `pocheticketexterieure`, `sanspochepoitrine`, `deuxpochesplaquees`, `troispochesplaquees`, `pochelunette`, `brasenavant`, `brasenarriere`, `emmanchurecombler`, `emmanchurecreuser`, `brasfort`, `brasmince`, `basdemanche`, `hautdemancheplus`, `hautdemanchemoins`, `sansgarde`, `preparerboutonniere`, `executerboutonniere`, `executerboutonnierenpo`, `boutonchevauchant`, `colorismanche`, `doublagemignonette`, `coudesencuir`, `nepasmonterlesmanches`, `coucourt`, `coulong`, `coumince`, `plissouscol`, `ephautesgauche`, `ephautesdroite`, `epnormalgauche`, `epnormaldroite`, `epbassesgauche`, `epbassesdroite`, `epsemidouble`, `epsansepaulettes`, `epaulettesplusfines`, `epsanscigarette`, `osgauche`, `osdroite`, `monogrammecoloris`, `monogrammestyle`, `dosfentes`, `boutondevantcoloris`, `boutonreverscoloris`, `sansboutonniererevers`, `filboutons`, `colombiacoloris`, `amftoutescoutures`, `amf`, `bordsnonpiques`, `biaispassepoilscoloris`, `colorisboutonnieres`, `coloris2boutonnieres`, `coloris1boutonnieres`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Index pour la table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `fiche_accessoires`
--
ALTER TABLE `fiche_accessoires`
  ADD PRIMARY KEY (`id_accessoires`);

--
-- Index pour la table `fiche_com`
--
ALTER TABLE `fiche_com`
  ADD PRIMARY KEY (`id_com`);

--
-- Index pour la table `fiche_entete`
--
ALTER TABLE `fiche_entete`
  ADD PRIMARY KEY (`id_entete`),
  ADD KEY `fiche_entete_societe_id_150a4380_fk_accounts_profile_id` (`societe_id`);

--
-- Index pour la table `fiche_gilet`
--
ALTER TABLE `fiche_gilet`
  ADD PRIMARY KEY (`id_gilet`);

--
-- Index pour la table `fiche_pantalon`
--
ALTER TABLE `fiche_pantalon`
  ADD PRIMARY KEY (`id_pantalon`);

--
-- Index pour la table `fiche_veston`
--
ALTER TABLE `fiche_veston`
  ADD PRIMARY KEY (`id_veston`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `fiche_accessoires`
--
ALTER TABLE `fiche_accessoires`
  MODIFY `id_accessoires` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `fiche_com`
--
ALTER TABLE `fiche_com`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `fiche_entete`
--
ALTER TABLE `fiche_entete`
  MODIFY `id_entete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `fiche_gilet`
--
ALTER TABLE `fiche_gilet`
  MODIFY `id_gilet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `fiche_pantalon`
--
ALTER TABLE `fiche_pantalon`
  MODIFY `id_pantalon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `fiche_veston`
--
ALTER TABLE `fiche_veston`
  MODIFY `id_veston` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `fiche_entete`
--
ALTER TABLE `fiche_entete`
  ADD CONSTRAINT `fiche_entete_societe_id_150a4380_fk_accounts_profile_id` FOREIGN KEY (`societe_id`) REFERENCES `accounts_profile` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
