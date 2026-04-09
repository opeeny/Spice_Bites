-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2026 at 05:44 PM
-- Server version: 11.8.6-MariaDB
-- PHP Version: 8.5.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spice_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sb_action_logs`
--

CREATE TABLE `sb_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_action_logs`
--

INSERT INTO `sb_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-04-09 06:48:57', 'com_users', 57, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURCOMPLETED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"completed\",\"step\":6,\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 06:49:32', 'com_guidedtours.state', 57, 12, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:04:21', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"general\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:05:41', 'com_categories.category', 57, 8, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:05:41', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 07:05:41', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:27:16', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 07:27:16', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:27:51', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 07:27:51', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"welcome\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:29:02', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 07:29:02', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"welcome\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:29:10', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 07:29:10', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"index\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:31:22', 'com_menus.item', 57, 102, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"index\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:32:30', 'com_menus.item', 57, 102, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:41:05', 'com_config.application', 57, 0, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:41:39', 'com_config.application', 57, 0, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__menu\"}', '2026-04-09 07:45:48', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"welcome\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 07:48:32', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 07:48:32', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":false,\"name\":\"jl_bruno_free\",\"extension_name\":\"jl_bruno_free\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 08:41:30', 'com_installer', 57, 0, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":251,\"name\":\"COM_RESTAURANTMANAGER\",\"extension_name\":\"COM_RESTAURANTMANAGER\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 08:53:10', 'com_installer', 57, 251, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":251,\"name\":\"COM_RESTAURANTMANAGER\",\"extension_name\":\"COM_RESTAURANTMANAGER\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:00:11', 'com_installer', 57, 251, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":252,\"name\":\"theme-200120-j4\",\"extension_name\":\"theme-200120-j4\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:36:05', 'com_installer', 57, 252, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":253,\"name\":\"Import Content\",\"extension_name\":\"Import Content\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:36:05', 'com_installer', 57, 253, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":254,\"name\":\"mod_jdsimplecontactform\",\"extension_name\":\"mod_jdsimplecontactform\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:36:05', 'com_installer', 57, 254, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":256,\"name\":\"plg_system_gantry5\",\"extension_name\":\"plg_system_gantry5\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:09', 'com_installer', 57, 256, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":257,\"name\":\"plg_quickicon_gantry5\",\"extension_name\":\"plg_quickicon_gantry5\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:09', 'com_installer', 57, 257, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":258,\"name\":\"plg_gantry5_preset\",\"extension_name\":\"plg_gantry5_preset\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:09', 'com_installer', 57, 258, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":259,\"name\":\"mod_gantry5_particle\",\"extension_name\":\"mod_gantry5_particle\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:09', 'com_installer', 57, 259, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":260,\"name\":\"Gantry 5 Framework\",\"extension_name\":\"Gantry 5 Framework\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:09', 'com_installer', 57, 260, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_FILE\",\"id\":261,\"name\":\"gantry5_nucleus\",\"extension_name\":\"gantry5_nucleus\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:09', 'com_installer', 57, 261, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":262,\"name\":\"com_gantry5\",\"extension_name\":\"com_gantry5\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:09', 'com_installer', 57, 262, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":263,\"name\":\"pkg_gantry5\",\"extension_name\":\"pkg_gantry5\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:09', 'com_installer', 57, 263, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":264,\"name\":\"jl_bruno_free\",\"extension_name\":\"jl_bruno_free\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:37:43', 'com_installer', 57, 264, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED', '{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"title\":\"Bruno Free - Home\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:43:03', 'com_templates.style', 57, 0, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":265,\"name\":\"jl_redchili\",\"extension_name\":\"jl_redchili\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 09:59:23', 'com_installer', 57, 265, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 10:25:36', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"about-us\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 10:27:26', 'com_menus.item', 57, 115, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-04-09 11:11:08', 'com_users', 57, 0, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:13:21', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:13:21', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:14:26', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:14:26', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:19:32', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:19:32', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:20:16', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:20:16', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:21:07', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:21:07', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:27:59', 'com_config.application', 57, 0, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"117\",\"title\":\"plg_editors_tinymce\",\"extension_name\":\"plg_editors_tinymce\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=117\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:37:43', 'com_plugins.plugin', 57, 117, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__extensions\"}', '2026-04-09 11:37:43', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"117\",\"title\":\"plg_editors_tinymce\",\"extension_name\":\"plg_editors_tinymce\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=117\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:38:09', 'com_plugins.plugin', 57, 117, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__extensions\"}', '2026-04-09 11:38:09', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:39:15', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:39:15', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"117\",\"title\":\"plg_editors_tinymce\",\"extension_name\":\"plg_editors_tinymce\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=117\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:41:51', 'com_plugins.plugin', 57, 117, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__extensions\"}', '2026-04-09 11:41:51', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"117\",\"title\":\"plg_editors_tinymce\",\"extension_name\":\"plg_editors_tinymce\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=117\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:42:08', 'com_plugins.plugin', 57, 117, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__extensions\"}', '2026-04-09 11:42:08', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:43:00', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:43:00', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:44:16', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:44:16', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"117\",\"title\":\"plg_editors_tinymce\",\"extension_name\":\"plg_editors_tinymce\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=117\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:45:21', 'com_plugins.plugin', 57, 117, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__extensions\"}', '2026-04-09 11:45:21', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"contact\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:48:52', 'com_content.article', 57, 3, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"contact\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:49:45', 'com_content.article', 57, 3, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:49:45', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"contact-us\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:52:56', 'com_menus.item', 57, 116, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:57:29', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"contact-us\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:58:12', 'com_content.article', 57, 4, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"contact-us\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 11:58:29', 'com_content.article', 57, 4, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:58:29', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 11:59:24', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:00:44', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"contact-us\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:00:44', 'com_content.article', 57, 4, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"contact\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:01:42', 'com_content.article', 57, 3, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:01:42', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-04-09 12:14:38', 'com_users', 57, 0, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"OKOL BEN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:17:47', 'com_users', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"OKOL BEN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:17:51', 'com_users', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"contact\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:18:59', 'com_content.article', 57, 3, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:18:59', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"contact\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:19:54', 'com_content.article', 57, 3, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:19:54', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:21:06', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:22:16', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:22:16', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:25:13', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:25:13', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"about\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:27:42', 'com_content.article', 57, 2, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:27:42', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:29:20', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"welcome\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:37:22', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:37:22', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"welcome\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:38:54', 'com_content.article', 57, 1, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:38:54', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:40:49', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__content\"}', '2026-04-09 12:41:36', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__menu\"}', '2026-04-09 12:42:16', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:42:16', 'com_menus.item', 57, 101, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:43:44', 'com_menus.item', 57, 102, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__menu\"}', '2026-04-09 12:43:44', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 12:44:00', 'com_menus.item', 57, 102, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__modules\"}', '2026-04-09 13:55:20', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Breadcrumbs\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 13:55:20', 'com_modules.module', 57, 17, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":113,\"title\":\"gallery\",\"extension_name\":\"gallery\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=113\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 14:01:22', 'com_modules.module', 57, 113, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":113,\"title\":\"gallery\",\"extension_name\":\"gallery\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=113\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 14:05:59', 'com_modules.module', 57, 113, 'COM_ACTIONLOGS_DISABLED'),
(112, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__modules\"}', '2026-04-09 14:05:59', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(113, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":113,\"title\":\"gallery\",\"extension_name\":\"gallery\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=113\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 14:07:18', 'com_modules.module', 57, 113, 'COM_ACTIONLOGS_DISABLED'),
(114, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__modules\"}', '2026-04-09 14:07:18', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(115, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":113,\"title\":\"gallery\",\"extension_name\":\"gallery\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=113\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 14:11:00', 'com_modules.module', 57, 113, 'COM_ACTIONLOGS_DISABLED'),
(116, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__modules\"}', '2026-04-09 14:11:00', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(117, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__modules\"}', '2026-04-09 14:35:33', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(118, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__modules\"}', '2026-04-09 14:36:32', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(119, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"ABOUT\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 14:38:01', 'com_menus.item', 57, 115, 'COM_ACTIONLOGS_DISABLED'),
(120, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__menu\"}', '2026-04-09 14:38:01', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED'),
(121, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"ABOUT\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 14:38:05', 'com_menus.item', 57, 115, 'COM_ACTIONLOGS_DISABLED'),
(122, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"HOME\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 14:38:17', 'com_menus.item', 57, 102, 'COM_ACTIONLOGS_DISABLED'),
(123, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__menu\"}', '2026-04-09 14:38:17', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `sb_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(124, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"CONTACT\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\"}', '2026-04-09 14:38:27', 'com_menus.item', 57, 116, 'COM_ACTIONLOGS_DISABLED'),
(125, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":57,\"title\":\"ben\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"userid\":57,\"username\":\"ben\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=57\",\"table\":\"#__menu\"}', '2026-04-09 14:38:27', 'com_checkin', 57, 57, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Table structure for table `sb_action_logs_extensions`
--

CREATE TABLE `sb_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_action_logs_extensions`
--

INSERT INTO `sb_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin'),
(19, 'com_scheduler'),
(20, 'com_fields'),
(21, 'com_guidedtours');

-- --------------------------------------------------------

--
-- Table structure for table `sb_action_logs_users`
--

CREATE TABLE `sb_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_action_logs_users`
--

INSERT INTO `sb_action_logs_users` (`user_id`, `notify`, `extensions`) VALUES
(57, 0, '[\"com_content\"]');

-- --------------------------------------------------------

--
-- Table structure for table `sb_action_log_config`
--

CREATE TABLE `sb_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_action_log_config`
--

INSERT INTO `sb_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(20, 'task', 'com_scheduler.task', 'id', 'title', '#__scheduler_tasks', 'PLG_ACTIONLOG_JOOMLA'),
(21, 'field', 'com_fields.field', 'id', 'title', '#__fields', 'PLG_ACTIONLOG_JOOMLA'),
(22, 'guidedtour', 'com_guidedtours.state', 'id', 'title', '#__guidedtours', 'PLG_ACTIONLOG_JOOMLA'),
(23, 'contact', 'com_contact.form', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `sb_assets`
--

CREATE TABLE `sb_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_assets`
--

INSERT INTO `sb_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 207, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 48, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9, 1, 49, 50, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 51, 52, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 53, 56, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 11, 54, 55, 2, 'com_languages.language.1', 'English (en-GB)', '{}'),
(13, 1, 57, 58, 1, 'com_login', 'com_login', '{}'),
(14, 1, 59, 60, 1, 'com_mails', 'com_mails', '{}'),
(15, 1, 61, 62, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 63, 68, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 69, 70, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 71, 152, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 153, 156, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 157, 158, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 159, 160, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(23, 1, 161, 162, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 167, 170, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 171, 172, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 154, 155, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 168, 169, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 173, 174, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 175, 176, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 177, 178, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 179, 180, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 181, 182, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 183, 184, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 72, 73, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 74, 75, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 76, 77, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 78, 79, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 80, 81, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 82, 83, 2, 'com_modules.module.9', 'Notifications', '{}'),
(45, 18, 84, 85, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 86, 87, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(49, 18, 92, 93, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 94, 95, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 96, 97, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 98, 99, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 102, 103, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 64, 65, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 106, 107, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 8, 26, 43, 2, 'com_content.workflow.1', 'COM_WORKFLOW_BASIC_WORKFLOW', '{}'),
(57, 56, 27, 28, 3, 'com_content.stage.1', 'COM_WORKFLOW_BASIC_STAGE', '{}'),
(58, 56, 29, 30, 3, 'com_content.transition.1', 'UNPUBLISH', '{}'),
(59, 56, 31, 32, 3, 'com_content.transition.2', 'PUBLISH', '{}'),
(60, 56, 33, 34, 3, 'com_content.transition.3', 'TRASH', '{}'),
(61, 56, 35, 36, 3, 'com_content.transition.4', 'ARCHIVE', '{}'),
(62, 56, 37, 38, 3, 'com_content.transition.5', 'FEATURE', '{}'),
(63, 56, 39, 40, 3, 'com_content.transition.6', 'UNFEATURE', '{}'),
(64, 56, 41, 42, 3, 'com_content.transition.7', 'PUBLISH_AND_FEATURE', '{}'),
(65, 1, 163, 164, 1, 'com_privacy', 'com_privacy', '{}'),
(66, 1, 165, 166, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(67, 18, 88, 89, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(68, 18, 90, 91, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(70, 18, 100, 101, 2, 'com_modules.module.103', 'Site', '{}'),
(71, 18, 104, 105, 2, 'com_modules.module.104', 'System', '{}'),
(72, 18, 108, 109, 2, 'com_modules.module.91', 'System Dashboard', '{}'),
(73, 18, 110, 111, 2, 'com_modules.module.92', 'Content Dashboard', '{}'),
(74, 18, 112, 113, 2, 'com_modules.module.93', 'Menus Dashboard', '{}'),
(75, 18, 114, 115, 2, 'com_modules.module.94', 'Components Dashboard', '{}'),
(76, 18, 116, 117, 2, 'com_modules.module.95', 'Users Dashboard', '{}'),
(77, 18, 118, 119, 2, 'com_modules.module.99', 'Frontend Link', '{}'),
(78, 18, 120, 121, 2, 'com_modules.module.100', 'Messages', '{}'),
(79, 18, 122, 123, 2, 'com_modules.module.101', 'Post Install Messages', '{}'),
(80, 18, 124, 125, 2, 'com_modules.module.102', 'User Status', '{}'),
(82, 18, 126, 127, 2, 'com_modules.module.105', '3rd Party', '{}'),
(83, 18, 128, 129, 2, 'com_modules.module.106', 'Help Dashboard', '{}'),
(84, 18, 130, 131, 2, 'com_modules.module.107', 'Privacy Requests', '{}'),
(85, 18, 132, 133, 2, 'com_modules.module.108', 'Privacy Status', '{}'),
(86, 18, 134, 135, 2, 'com_modules.module.96', 'Popular Articles', '{}'),
(87, 18, 136, 137, 2, 'com_modules.module.97', 'Recently Added Articles', '{}'),
(88, 18, 138, 139, 2, 'com_modules.module.98', 'Logged-in Users', '{}'),
(89, 18, 140, 141, 2, 'com_modules.module.90', 'Login Support', '{}'),
(90, 1, 185, 192, 1, 'com_scheduler', 'com_scheduler', '{}'),
(91, 1, 193, 194, 1, 'com_associations', 'com_associations', '{}'),
(92, 1, 195, 196, 1, 'com_categories', 'com_categories', '{}'),
(93, 1, 197, 198, 1, 'com_fields', 'com_fields', '{}'),
(94, 1, 199, 200, 1, 'com_workflow', 'com_workflow', '{}'),
(95, 1, 201, 202, 1, 'com_guidedtours', 'com_guidedtours', '{}'),
(96, 18, 142, 143, 2, 'com_modules.module.109', 'Guided Tours', '{}'),
(97, 90, 186, 187, 2, 'com_scheduler.task.1', 'Rotate Logs', '{}'),
(98, 90, 188, 189, 2, 'com_scheduler.task.2', 'Session GC', '{}'),
(99, 90, 190, 191, 2, 'com_scheduler.task.3', 'Update Notification', '{}'),
(100, 101, 45, 46, 3, 'com_content.article.1', 'welcome', '{}'),
(101, 8, 44, 47, 2, 'com_content.category.8', 'general', '{}'),
(102, 1, 203, 204, 1, 'com_restaurantmanager', 'COM_RESTAURANTMANAGER', '{}'),
(103, 18, 144, 145, 2, 'com_modules.module.110', 'Import Content', '{}'),
(104, 18, 146, 147, 2, 'com_modules.module.111', 'mod_jdsimplecontactform', '{}'),
(105, 18, 148, 149, 2, 'com_modules.module.112', 'Gantry 5 Particle', '{}'),
(106, 1, 205, 206, 1, 'com_gantry5', 'com_gantry5', '{}'),
(107, 16, 66, 67, 2, 'com_menus.menu.2', 'Redchili Theme', '{}'),
(108, 27, 19, 20, 3, 'com_content.article.2', 'about', '{}'),
(109, 27, 21, 22, 3, 'com_content.article.3', 'contact', '{}'),
(110, 27, 23, 24, 3, 'com_content.article.4', 'contact-us', '{}'),
(111, 18, 150, 151, 2, 'com_modules.module.113', 'gallery', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `sb_associations`
--

CREATE TABLE `sb_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_banners`
--

CREATE TABLE `sb_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_banner_clients`
--

CREATE TABLE `sb_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_banner_tracks`
--

CREATE TABLE `sb_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_categories`
--

CREATE TABLE `sb_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_categories`
--

INSERT INTO `sb_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 57, '2026-04-09 06:47:41', 57, '2026-04-09 06:47:41', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 57, '2026-04-09 06:47:41', 57, '2026-04-09 06:47:41', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 57, '2026-04-09 06:47:41', 57, '2026-04-09 06:47:41', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 57, '2026-04-09 06:47:41', 57, '2026-04-09 06:47:41', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 57, '2026-04-09 06:47:41', 57, '2026-04-09 06:47:41', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 57, '2026-04-09 06:47:41', 57, '2026-04-09 06:47:41', 0, '*', 1),
(8, 101, 1, 11, 12, 1, 'general', 'com_content', 'general', 'general', '', NULL, 1, NULL, NULL, 1, NULL, '', '', '', 57, '2026-04-09 07:05:41', 57, '2026-04-09 07:05:41', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sb_contact_details`
--

CREATE TABLE `sb_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_content`
--

CREATE TABLE `sb_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_content`
--

INSERT INTO `sb_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `note`) VALUES
(1, 100, 'welcome', 'welcome', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n<meta charset=\"UTF-8\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n<title>Spice Bites Restaurant</title>\r\n<link href=\"https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400;1,600&family=Outfit:wght@300;400;500;600&display=swap\" rel=\"stylesheet\">\r\n<style>\r\n  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }\r\n\r\n  :root {\r\n    --spice: #e67e22;\r\n    --spice-dark: #cf6d17;\r\n    --spice-light: #fdf0e4;\r\n    --cream: #fdf8f2;\r\n    --dark: #1a1208;\r\n    --dark-mid: #2d200e;\r\n    --text: #3a2a10;\r\n    --text-muted: #7a6248;\r\n    --border: rgba(230,126,34,0.18);\r\n    --font-display: \'Playfair Display\', Georgia, serif;\r\n    --font-body: \'Outfit\', sans-serif;\r\n  }\r\n\r\n  html { scroll-behavior: smooth; }\r\n\r\n  body {\r\n    font-family: var(--font-body);\r\n    background: var(--cream);\r\n    color: var(--text);\r\n    overflow-x: hidden;\r\n  }\r\n\r\n  /* ── HERO ─────────────────────────────── */\r\n  .hero {\r\n    position: relative;\r\n    min-height: 100vh;\r\n    display: flex;\r\n    flex-direction: column;\r\n    justify-content: center;\r\n    align-items: center;\r\n    text-align: center;\r\n    padding: 80px 24px 60px;\r\n    overflow: hidden;\r\n    background: var(--dark);\r\n  }\r\n\r\n  .hero-bg {\r\n    position: absolute; inset: 0;\r\n    background: url(\'images/restaurant/hero.png\') center/cover no-repeat;\r\n    opacity: 0.38;\r\n    transform: scale(1.04);\r\n    animation: slowzoom 18s ease-in-out infinite alternate;\r\n  }\r\n\r\n  @keyframes slowzoom { from { transform: scale(1.04); } to { transform: scale(1.12); } }\r\n\r\n  .hero-overlay {\r\n    position: absolute; inset: 0;\r\n    background: radial-gradient(ellipse at center top, rgba(26,18,8,0.3) 0%, rgba(26,18,8,0.78) 70%),\r\n                linear-gradient(to bottom, transparent 40%, var(--dark) 100%);\r\n  }\r\n\r\n  /* decorative spice ring */\r\n  .hero-ring {\r\n    position: absolute;\r\n    width: 520px; height: 520px;\r\n    border-radius: 50%;\r\n    border: 1px solid rgba(230,126,34,0.18);\r\n    top: 50%; left: 50%;\r\n    transform: translate(-50%, -50%);\r\n    animation: ringpulse 4s ease-in-out infinite;\r\n  }\r\n  .hero-ring:nth-child(3) { width: 700px; height: 700px; border-color: rgba(230,126,34,0.09); animation-delay: 1s; }\r\n  .hero-ring:nth-child(4) { width: 900px; height: 900px; border-color: rgba(230,126,34,0.05); animation-delay: 2s; }\r\n\r\n  @keyframes ringpulse {\r\n    0%, 100% { opacity: 0.6; transform: translate(-50%, -50%) scale(1); }\r\n    50% { opacity: 1; transform: translate(-50%, -50%) scale(1.015); }\r\n  }\r\n\r\n  .hero-content { position: relative; z-index: 2; max-width: 760px; }\r\n\r\n  .hero-badge {\r\n    display: inline-flex; align-items: center; gap: 8px;\r\n    background: rgba(230,126,34,0.18);\r\n    border: 1px solid rgba(230,126,34,0.4);\r\n    color: #f5b96e;\r\n    font-size: 11px; letter-spacing: 0.15em; text-transform: uppercase; font-weight: 500;\r\n    padding: 6px 18px; border-radius: 30px;\r\n    margin-bottom: 28px;\r\n    animation: fadein 1s ease both;\r\n  }\r\n  .hero-badge::before { content: \'\'; width: 6px; height: 6px; border-radius: 50%; background: #e67e22; display: inline-block; }\r\n\r\n  .hero h1 {\r\n    font-family: var(--font-display);\r\n    font-size: clamp(40px, 7vw, 72px);\r\n    font-weight: 700;\r\n    color: #fff;\r\n    line-height: 1.1;\r\n    margin-bottom: 20px;\r\n    animation: fadein 1s 0.2s ease both;\r\n  }\r\n\r\n  .hero h1 em {\r\n    font-style: italic;\r\n    color: #f5a623;\r\n  }\r\n\r\n  .hero-sub {\r\n    font-size: clamp(16px, 2.2vw, 20px);\r\n    color: rgba(255,255,255,0.72);\r\n    font-weight: 300;\r\n    margin-bottom: 44px;\r\n    letter-spacing: 0.03em;\r\n    animation: fadein 1s 0.4s ease both;\r\n  }\r\n\r\n  .hero-actions {\r\n    display: flex; gap: 14px; justify-content: center; flex-wrap: wrap;\r\n    animation: fadein 1s 0.6s ease both;\r\n  }\r\n\r\n  .btn-primary {\r\n    background: var(--spice);\r\n    color: #fff; font-family: var(--font-body); font-size: 15px; font-weight: 500;\r\n    padding: 15px 34px; border-radius: 50px; text-decoration: none;\r\n    display: inline-flex; align-items: center; gap: 8px;\r\n    transition: background 0.25s, transform 0.2s, box-shadow 0.25s;\r\n    box-shadow: 0 6px 28px rgba(230,126,34,0.45);\r\n  }\r\n  .btn-primary:hover { background: var(--spice-dark); transform: translateY(-2px); box-shadow: 0 12px 36px rgba(230,126,34,0.5); }\r\n\r\n  .btn-ghost {\r\n    background: transparent; color: rgba(255,255,255,0.85);\r\n    font-family: var(--font-body); font-size: 15px; font-weight: 400;\r\n    padding: 15px 34px; border-radius: 50px; text-decoration: none;\r\n    border: 1px solid rgba(255,255,255,0.3);\r\n    display: inline-flex; align-items: center; gap: 8px;\r\n    transition: border-color 0.25s, background 0.25s, transform 0.2s;\r\n  }\r\n  .btn-ghost:hover { border-color: rgba(255,255,255,0.7); background: rgba(255,255,255,0.07); transform: translateY(-2px); }\r\n\r\n  .hero-stats {\r\n    display: flex; justify-content: center; gap: 0;\r\n    margin-top: 68px; border-top: 1px solid rgba(255,255,255,0.1);\r\n    padding-top: 32px;\r\n    animation: fadein 1s 0.8s ease both;\r\n  }\r\n  .hero-stat {\r\n    padding: 0 40px;\r\n    border-right: 1px solid rgba(255,255,255,0.1);\r\n    text-align: center;\r\n  }\r\n  .hero-stat:last-child { border-right: none; }\r\n  .hero-stat strong { display: block; font-family: var(--font-display); font-size: 34px; font-weight: 600; color: var(--spice); line-height: 1; }\r\n  .hero-stat span { font-size: 12px; color: rgba(255,255,255,0.55); text-transform: uppercase; letter-spacing: 0.1em; margin-top: 6px; display: block; }\r\n\r\n  @keyframes fadein { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: none; } }\r\n\r\n  /* ── SCROLL ARROW ──────────────────── */\r\n  .scroll-hint {\r\n    position: absolute; bottom: 28px; left: 50%; transform: translateX(-50%);\r\n    z-index: 2; display: flex; flex-direction: column; align-items: center; gap: 6px;\r\n  }\r\n  .scroll-hint span { font-size: 10px; letter-spacing: 0.15em; text-transform: uppercase; color: rgba(255,255,255,0.4); }\r\n  .scroll-arrow { width: 24px; height: 24px; border-right: 1.5px solid rgba(255,255,255,0.35); border-bottom: 1.5px solid rgba(255,255,255,0.35); transform: rotate(45deg); animation: bounce 2s infinite; }\r\n  @keyframes bounce { 0%,100%{transform:rotate(45deg) translateY(0)} 50%{transform:rotate(45deg) translateY(5px)} }\r\n\r\n  /* ── SECTION SHARED ─────────────────── */\r\n  .section-label {\r\n    display: inline-flex; align-items: center; gap: 10px;\r\n    font-size: 11px; letter-spacing: 0.16em; text-transform: uppercase; color: var(--spice);\r\n    font-weight: 600; margin-bottom: 14px;\r\n  }\r\n  .section-label::before, .section-label::after { content: \'\'; display: block; width: 28px; height: 1px; background: var(--spice); }\r\n\r\n  .section-title {\r\n    font-family: var(--font-display);\r\n    font-size: clamp(28px, 4vw, 44px);\r\n    font-weight: 600;\r\n    color: var(--dark);\r\n    line-height: 1.2;\r\n  }\r\n\r\n  .section-title em { font-style: italic; color: var(--spice); }\r\n\r\n  /* ── ABOUT ─────────────────────────── */\r\n  .about {\r\n    padding: 100px 24px;\r\n    max-width: 1100px; margin: auto;\r\n    display: grid; grid-template-columns: 1fr 1fr; gap: 72px; align-items: center;\r\n  }\r\n\r\n  @media(max-width: 720px) { .about { grid-template-columns: 1fr; gap: 40px; } }\r\n\r\n  .about-image-wrap {\r\n    position: relative; border-radius: 24px; overflow: hidden;\r\n    aspect-ratio: 4/5; background: var(--dark-mid);\r\n  }\r\n  .about-image-wrap img { width: 100%; height: 100%; object-fit: cover; display: block; }\r\n  .about-image-badge {\r\n    position: absolute; bottom: 24px; left: 24px; right: 24px;\r\n    background: rgba(26,18,8,0.85);\r\n    backdrop-filter: blur(8px);\r\n    border: 1px solid rgba(230,126,34,0.25);\r\n    border-radius: 14px; padding: 18px 20px;\r\n    display: flex; align-items: center; gap: 16px;\r\n  }\r\n  .badge-icon { font-size: 28px; line-height: 1; }\r\n  .badge-text strong { display: block; color: #fff; font-size: 15px; font-weight: 500; }\r\n  .badge-text span { color: rgba(255,255,255,0.55); font-size: 12px; }\r\n\r\n  .about-text .section-label { margin-bottom: 16px; }\r\n  .about-text .section-title { margin-bottom: 20px; }\r\n  .about-desc { font-size: 16px; line-height: 1.8; color: var(--text-muted); margin-bottom: 36px; }\r\n\r\n  .about-features { display: flex; flex-direction: column; gap: 18px; }\r\n  .about-feature {\r\n    display: flex; align-items: flex-start; gap: 16px;\r\n    padding: 18px 20px;\r\n    background: #fff;\r\n    border: 1px solid var(--border);\r\n    border-radius: 14px;\r\n    transition: border-color 0.25s, box-shadow 0.25s;\r\n  }\r\n  .about-feature:hover { border-color: rgba(230,126,34,0.4); box-shadow: 0 4px 20px rgba(230,126,34,0.1); }\r\n  .feature-icon {\r\n    width: 42px; height: 42px; border-radius: 10px;\r\n    background: var(--spice-light); display: flex; align-items: center; justify-content: center;\r\n    flex-shrink: 0; font-size: 18px;\r\n  }\r\n  .feature-text strong { display: block; font-size: 14px; font-weight: 500; color: var(--dark); margin-bottom: 3px; }\r\n  .feature-text span { font-size: 13px; color: var(--text-muted); line-height: 1.5; }\r\n\r\n  /* ── SPECIALTIES ───────────────────── */\r\n  .specialties {\r\n    background: var(--dark);\r\n    padding: 100px 24px;\r\n    position: relative; overflow: hidden;\r\n  }\r\n  .specialties::before {\r\n    content: \'MENU\';\r\n    position: absolute; top: -20px; right: -30px;\r\n    font-family: var(--font-display); font-size: 180px; font-weight: 700;\r\n    color: rgba(255,255,255,0.025); line-height: 1; pointer-events: none;\r\n    user-select: none;\r\n  }\r\n\r\n  .spec-header {\r\n    text-align: center; max-width: 560px; margin: 0 auto 60px;\r\n  }\r\n  .spec-header .section-title { color: #fff; }\r\n  .spec-header p { color: rgba(255,255,255,0.55); font-size: 16px; margin-top: 12px; line-height: 1.7; }\r\n\r\n  .spec-grid {\r\n    display: grid;\r\n    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));\r\n    gap: 24px; max-width: 1000px; margin: auto;\r\n  }\r\n\r\n  .spec-card {\r\n    background: rgba(255,255,255,0.04);\r\n    border: 1px solid rgba(255,255,255,0.08);\r\n    border-radius: 20px; overflow: hidden;\r\n    transition: transform 0.3s, border-color 0.3s, box-shadow 0.3s;\r\n    cursor: default;\r\n  }\r\n  .spec-card:hover {\r\n    transform: translateY(-8px);\r\n    border-color: rgba(230,126,34,0.4);\r\n    box-shadow: 0 20px 50px rgba(0,0,0,0.4), 0 0 0 1px rgba(230,126,34,0.15);\r\n  }\r\n\r\n  .spec-img {\r\n    width: 100%; aspect-ratio: 4/3;\r\n    object-fit: cover; display: block;\r\n    background: var(--dark-mid);\r\n    filter: brightness(0.9);\r\n    transition: filter 0.3s, transform 0.4s;\r\n  }\r\n  .spec-card:hover .spec-img { filter: brightness(1.05); transform: scale(1.03); }\r\n\r\n  .spec-img-wrap { overflow: hidden; }\r\n\r\n  .spec-body { padding: 20px 22px 24px; }\r\n  .spec-tag {\r\n    display: inline-block;\r\n    background: rgba(230,126,34,0.18); color: #f5a623;\r\n    font-size: 10px; letter-spacing: 0.12em; text-transform: uppercase; font-weight: 600;\r\n    padding: 4px 10px; border-radius: 20px; margin-bottom: 10px;\r\n  }\r\n  .spec-name { font-family: var(--font-display); font-size: 20px; font-weight: 600; color: #fff; margin-bottom: 8px; }\r\n  .spec-desc { font-size: 13px; color: rgba(255,255,255,0.5); line-height: 1.6; }\r\n\r\n  /* ── WHY ───────────────────────────── */\r\n  .why {\r\n    padding: 100px 24px;\r\n    max-width: 1100px; margin: auto;\r\n  }\r\n  .why-header { text-align: center; margin-bottom: 60px; }\r\n  .why-header .section-title { margin-top: 12px; }\r\n  .why-header p { color: var(--text-muted); font-size: 16px; margin-top: 12px; }\r\n\r\n  .why-grid {\r\n    display: grid;\r\n    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));\r\n    gap: 20px;\r\n  }\r\n\r\n  .why-card {\r\n    background: #fff;\r\n    border: 1px solid var(--border);\r\n    border-radius: 20px; padding: 30px 26px 32px;\r\n    transition: transform 0.3s, box-shadow 0.3s, border-color 0.3s;\r\n    position: relative; overflow: hidden;\r\n  }\r\n  .why-card::after {\r\n    content: \'\';\r\n    position: absolute; bottom: 0; left: 0; right: 0; height: 3px;\r\n    background: var(--spice); transform: scaleX(0); transform-origin: left;\r\n    transition: transform 0.35s ease;\r\n  }\r\n  .why-card:hover { transform: translateY(-6px); box-shadow: 0 16px 40px rgba(230,126,34,0.12); border-color: rgba(230,126,34,0.3); }\r\n  .why-card:hover::after { transform: scaleX(1); }\r\n\r\n  .why-icon-wrap {\r\n    width: 54px; height: 54px; border-radius: 14px;\r\n    background: var(--spice-light);\r\n    display: flex; align-items: center; justify-content: center;\r\n    margin-bottom: 20px;\r\n  }\r\n  .why-icon-wrap svg { width: 24px; height: 24px; }\r\n  .why-card-title { font-family: var(--font-display); font-size: 19px; font-weight: 600; color: var(--dark); margin-bottom: 10px; }\r\n  .why-card-desc { font-size: 14px; color: var(--text-muted); line-height: 1.7; }\r\n\r\n  /* ── TESTIMONIAL STRIP ─────────────── */\r\n  .testimonials {\r\n    background: var(--spice-light);\r\n    border-top: 1px solid var(--border);\r\n    border-bottom: 1px solid var(--border);\r\n    padding: 60px 24px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n  }\r\n  .testimonials blockquote {\r\n    font-family: var(--font-display); font-style: italic;\r\n    font-size: clamp(20px, 3vw, 30px);\r\n    color: var(--dark); max-width: 700px; margin: 0 auto 20px;\r\n    line-height: 1.5;\r\n  }\r\n  .testimonials cite {\r\n    font-size: 13px; color: var(--text-muted); font-style: normal; letter-spacing: 0.08em;\r\n  }\r\n  .stars { color: var(--spice); font-size: 16px; letter-spacing: 3px; margin-bottom: 18px; }\r\n\r\n  /* ── CTA ───────────────────────────── */\r\n  .cta-section { padding: 24px 24px 72px; }\r\n  .cta-inner {\r\n    max-width: 1000px; margin: auto;\r\n    background: var(--dark);\r\n    border-radius: 28px;\r\n    padding: 80px 48px;\r\n    text-align: center;\r\n    position: relative; overflow: hidden;\r\n  }\r\n  .cta-inner::before {\r\n    content: \'\';\r\n    position: absolute; top: -120px; right: -120px;\r\n    width: 400px; height: 400px; border-radius: 50%;\r\n    background: radial-gradient(circle, rgba(230,126,34,0.18) 0%, transparent 70%);\r\n  }\r\n  .cta-inner::after {\r\n    content: \'\';\r\n    position: absolute; bottom: -100px; left: -80px;\r\n    width: 350px; height: 350px; border-radius: 50%;\r\n    background: radial-gradient(circle, rgba(230,126,34,0.1) 0%, transparent 70%);\r\n  }\r\n  .cta-inner .section-label { justify-content: center; margin-bottom: 18px; }\r\n  .cta-inner .section-label::before, .cta-inner .section-label::after { background: rgba(230,126,34,0.5); }\r\n  .cta-inner h2 {\r\n    font-family: var(--font-display);\r\n    font-size: clamp(30px, 5vw, 52px);\r\n    font-weight: 700; color: #fff; line-height: 1.15;\r\n    margin-bottom: 16px; position: relative; z-index: 1;\r\n  }\r\n  .cta-inner h2 em { font-style: italic; color: var(--spice); }\r\n  .cta-inner p { color: rgba(255,255,255,0.6); font-size: 17px; margin-bottom: 40px; position: relative; z-index: 1; }\r\n  .cta-inner .cta-btns { display: flex; gap: 14px; justify-content: center; flex-wrap: wrap; position: relative; z-index: 1; }\r\n\r\n  /* ── FOOTER STRIP ──────────────────── */\r\n  .footer {\r\n    background: var(--dark);\r\n    border-top: 1px solid rgba(255,255,255,0.06);\r\n    padding: 24px;\r\n    text-align: center;\r\n    font-size: 13px;\r\n    color: rgba(255,255,255,0.3);\r\n  }\r\n  .footer strong { color: var(--spice); font-weight: 500; }\r\n\r\n  /* ── RESPONSIVE ───────────────────── */\r\n  @media (max-width: 540px) {\r\n    .hero-stats { gap: 0; }\r\n    .hero-stat { padding: 0 18px; }\r\n    .hero-stat strong { font-size: 24px; }\r\n    .about { padding: 60px 20px; }\r\n    .cta-inner { padding: 50px 24px; }\r\n  }\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<!-- ══════════════ HERO ══════════════ -->\r\n<section class=\"hero\">\r\n  <div class=\"hero-bg\"></div>\r\n  <div class=\"hero-overlay\"></div>\r\n  <div class=\"hero-ring\"></div>\r\n  <div class=\"hero-ring\"></div>\r\n  <div class=\"hero-ring\"></div>\r\n\r\n  <div class=\"hero-content\">\r\n    <div class=\"hero-badge\">Est. 2020 &nbsp;·&nbsp; Kampala, Uganda</div>\r\n    <h1>Welcome to<br><em>Spice Bites</em> Restaurant</h1>\r\n    <p class=\"hero-sub\">A Taste of Flavor in Every Bite</p>\r\n    <div class=\"hero-actions\">\r\n      <a href=\"#reserve\" class=\"btn-primary\">\r\n        <svg width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\"><rect x=\"3\" y=\"4\" width=\"18\" height=\"18\" rx=\"2\"/><line x1=\"16\" y1=\"2\" x2=\"16\" y2=\"6\"/><line x1=\"8\" y1=\"2\" x2=\"8\" y2=\"6\"/><line x1=\"3\" y1=\"10\" x2=\"21\" y2=\"10\"/></svg>\r\n        Reserve a Table\r\n      </a>\r\n      <a href=\"#menu\" class=\"btn-ghost\">\r\n        View Our Menu &rarr;\r\n      </a>\r\n    </div>\r\n\r\n    <div class=\"hero-stats\">\r\n      <div class=\"hero-stat\"><strong>500+</strong><span>Daily Guests</span></div>\r\n      <div class=\"hero-stat\"><strong>40+</strong><span>Signature Dishes</span></div>\r\n      <div class=\"hero-stat\"><strong>5 ★</strong><span>Guest Rating</span></div>\r\n      <div class=\"hero-stat\"><strong>5 yrs</strong><span>Of Excellence</span></div>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"scroll-hint\">\r\n    <span>Explore</span>\r\n    <div class=\"scroll-arrow\"></div>\r\n  </div>\r\n</section>\r\n\r\n<!-- ══════════════ ABOUT ══════════════ -->\r\n<section class=\"about\">\r\n  <div class=\"about-image-wrap\">\r\n    <img src=\"images/restaurant/hero.png\" alt=\"Spice Bites Restaurant interior\" onerror=\"this.style.minHeight=\'400px\';this.style.background=\'#2d200e\'\">\r\n    <div class=\"about-image-badge\">\r\n      <div class=\"badge-icon\">🍽️</div>\r\n      <div class=\"badge-text\">\r\n        <strong>Open Daily</strong>\r\n        <span>11:00 AM – 10:00 PM</span>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\"about-text\">\r\n    <div class=\"section-label\">Our Story</div>\r\n    <h2 class=\"section-title\">Crafted with Passion,<br><em>Served with Heart</em></h2>\r\n    <p class=\"about-desc\">Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest locally sourced ingredients — a love letter to African flavors.</p>\r\n\r\n    <div class=\"about-features\">\r\n      <div class=\"about-feature\">\r\n        <div class=\"feature-icon\">🌿</div>\r\n        <div class=\"feature-text\">\r\n          <strong>Farm-Fresh Ingredients</strong>\r\n          <span>Locally sourced produce, delivered fresh every morning to our kitchen.</span>\r\n        </div>\r\n      </div>\r\n      <div class=\"about-feature\">\r\n        <div class=\"feature-icon\">👨‍🍳</div>\r\n        <div class=\"feature-text\">\r\n          <strong>Master Chefs at Work</strong>\r\n          <span>Culinary artisans with years of expertise in African and continental cuisine.</span>\r\n        </div>\r\n      </div>\r\n      <div class=\"about-feature\">\r\n        <div class=\"feature-icon\">✨</div>\r\n        <div class=\"feature-text\">\r\n          <strong>An Atmosphere That Delights</strong>\r\n          <span>Warm, cozy settings perfect for families, dates, and celebrations alike.</span>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n<!-- ══════════════ SPECIALTIES ══════════════ -->\r\n<section class=\"specialties\" id=\"menu\">\r\n  <div class=\"spec-header\">\r\n    <div class=\"section-label\" style=\"justify-content:center;color:#f5a623;\">\r\n      <span style=\"display:block;width:28px;height:1px;background:#f5a623;\"></span>\r\n      What We Serve\r\n      <span style=\"display:block;width:28px;height:1px;background:#f5a623;\"></span>\r\n    </div>\r\n    <h2 class=\"section-title\">Our <em>Specialties</em></h2>\r\n    <p>Every dish tells a story — prepared fresh daily with bold flavors and the finest spices</p>\r\n  </div>\r\n\r\n  <div class=\"spec-grid\">\r\n    <div class=\"spec-card\">\r\n      <div class=\"spec-img-wrap\">\r\n        <img class=\"spec-img\" src=\"images/restaurant/grilled.png\" alt=\"Grilled Chicken\">\r\n      </div>\r\n      <div class=\"spec-body\">\r\n        <span class=\"spec-tag\">Signature</span>\r\n        <div class=\"spec-name\">Grilled Chicken & BBQ</div>\r\n        <div class=\"spec-desc\">Smoky, tender cuts slow-grilled over charcoal and finished in our house BBQ marinade.</div>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"spec-card\">\r\n      <div class=\"spec-img-wrap\">\r\n        <img class=\"spec-img\" src=\"images/restaurant/african.png\" alt=\"African Dishes\">\r\n      </div>\r\n      <div class=\"spec-body\">\r\n        <span class=\"spec-tag\">Traditional</span>\r\n        <div class=\"spec-name\">African Local Dishes</div>\r\n        <div class=\"spec-desc\">Authentic East African recipes passed down through generations — comforting and deeply flavorful.</div>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"spec-card\">\r\n      <div class=\"spec-img-wrap\">\r\n        <img class=\"spec-img\" src=\"images/restaurant/juice.png\" alt=\"Fresh Juices\">\r\n      </div>\r\n      <div class=\"spec-body\">\r\n        <span class=\"spec-tag\">Beverages</span>\r\n        <div class=\"spec-name\">Fresh Tropical Juices</div>\r\n        <div class=\"spec-desc\">Cold-pressed blends of mango, passion fruit, watermelon and more — seasonal and always fresh.</div>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"spec-card\">\r\n      <div class=\"spec-img-wrap\">\r\n        <img class=\"spec-img\" src=\"images/restaurant/dessert.png\" alt=\"Desserts\">\r\n      </div>\r\n      <div class=\"spec-body\">\r\n        <span class=\"spec-tag\">Desserts</span>\r\n        <div class=\"spec-name\">Indulgent Desserts</div>\r\n        <div class=\"spec-desc\">House-baked sweets and chilled treats crafted to give your meal the perfect sweet finale.</div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n<!-- ══════════════ WHY ══════════════ -->\r\n<section class=\"why\">\r\n  <div class=\"why-header\">\r\n    <div class=\"section-label\" style=\"justify-content:center;\">\r\n      Why Spice Bites\r\n    </div>\r\n    <h2 class=\"section-title\">A Dining Experience<br><em>Like No Other</em></h2>\r\n    <p>From your first visit to your hundredth, we make every meal memorable</p>\r\n  </div>\r\n\r\n  <div class=\"why-grid\">\r\n    <div class=\"why-card\">\r\n      <div class=\"why-icon-wrap\">\r\n        <svg viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#e67e22\" stroke-width=\"1.8\" stroke-linecap=\"round\"><path d=\"M12 2a10 10 0 100 20 10 10 0 000-20z\"/><path d=\"M8 12l3 3 5-5\"/></svg>\r\n      </div>\r\n      <div class=\"why-card-title\">Fresh, Quality Ingredients</div>\r\n      <div class=\"why-card-desc\">We source locally and prepare daily so every dish bursts with natural flavor you can taste in every bite.</div>\r\n    </div>\r\n\r\n    <div class=\"why-card\">\r\n      <div class=\"why-icon-wrap\">\r\n        <svg viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#e67e22\" stroke-width=\"1.8\" stroke-linecap=\"round\"><path d=\"M12 2l3 6.5 7 1-5 5 1.2 7L12 18l-6.2 3.5L7 14.5 2 9.5l7-1z\"/></svg>\r\n      </div>\r\n      <div class=\"why-card-title\">Experienced Chefs</div>\r\n      <div class=\"why-card-desc\">Our culinary team brings years of mastery to every plate — blending tradition with creative flair.</div>\r\n    </div>\r\n\r\n    <div class=\"why-card\">\r\n      <div class=\"why-icon-wrap\">\r\n        <svg viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#e67e22\" stroke-width=\"1.8\" stroke-linecap=\"round\"><path d=\"M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z\"/><polyline points=\"9 22 9 12 15 12 15 22\"/></svg>\r\n      </div>\r\n      <div class=\"why-card-title\">Cozy Atmosphere</div>\r\n      <div class=\"why-card-desc\">A warm, inviting setting designed for intimate dinners, lively family gatherings, and every moment in between.</div>\r\n    </div>\r\n\r\n    <div class=\"why-card\">\r\n      <div class=\"why-icon-wrap\">\r\n        <svg viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"#e67e22\" stroke-width=\"1.8\" stroke-linecap=\"round\"><circle cx=\"12\" cy=\"12\" r=\"10\"/><path d=\"M12 6v6l4 2\"/></svg>\r\n      </div>\r\n      <div class=\"why-card-title\">Fast & Friendly Service</div>\r\n      <div class=\"why-card-desc\">Attentive staff who treat every guest like family, ensuring your experience is seamless from arrival to dessert.</div>\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n<!-- ══════════════ TESTIMONIAL ══════════════ -->\r\n<section class=\"testimonials\">\r\n  <div class=\"stars\">★★★★★</div>\r\n  <blockquote>\"The food took me back home. The flavors, the warmth, the atmosphere — Spice Bites is truly special.\"</blockquote>\r\n  <cite>— Amara N., Kampala</cite>\r\n</section>\r\n\r\n<!-- ══════════════ CTA ══════════════ -->\r\n<section class=\"cta-section\" id=\"reserve\">\r\n  <div class=\"cta-inner\">\r\n    <div class=\"section-label\">Book Your Seat</div>\r\n    <h2>Reserve Your Table <em>Today</em></h2>\r\n    <p>Join hundreds of guests who make Spice Bites their favourite dining destination in Kampala</p>\r\n    <div class=\"cta-btns\">\r\n      <a href=\"#\" class=\"btn-primary\" style=\"font-size:16px;padding:16px 38px;\">\r\n        <svg width=\"16\" height=\"16\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\"><rect x=\"3\" y=\"4\" width=\"18\" height=\"18\" rx=\"2\"/><line x1=\"16\" y1=\"2\" x2=\"16\" y2=\"6\"/><line x1=\"8\" y1=\"2\" x2=\"8\" y2=\"6\"/><line x1=\"3\" y1=\"10\" x2=\"21\" y2=\"10\"/></svg>\r\n        Book a Table\r\n      </a>\r\n      <a href=\"#\" class=\"btn-ghost\" style=\"font-size:16px;padding:16px 38px;border-color:rgba(255,255,255,0.25);\">\r\n        📞 &nbsp;Call Us Now\r\n      </a>\r\n    </div>\r\n  </div>\r\n</section>\r\n</body>\r\n</html>\r\n', '', 1, 8, '2026-04-09 07:04:21', 57, '', '2026-04-09 12:38:54', 57, NULL, NULL, '2026-04-09 07:04:21', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 9, 0, '', '', 1, 65, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(2, 108, 'about', 'us', '<div style=\"font-family: Arial, sans-serif; line-height: 1.6;\">\r\n\r\n    <h1 style=\"text-align:center; color:#c0392b;\">About Spice Bites Restaurant</h1>\r\n\r\n    <p style=\"text-align:center; font-style: italic;\">\r\n        \"A Taste of Flavor in Every Bite\"\r\n    </p>\r\n\r\n    <p>\r\n        Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. \r\n        Our goal is to bring people together through delicious meals and outstanding service.\r\n    </p>\r\n\r\n    <p>\r\n        We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create \r\n        unique and flavorful dishes that satisfy every taste.\r\n    </p>\r\n\r\n    <!-- IMAGE SECTION -->\r\n    <div style=\"text-align:center; margin:20px 0;\">\r\n        <img src=\"images/restaurant.jpg\" alt=\"Spice Bites Restaurant\" style=\"width:80%; border-radius:10px;\">\r\n        <p><em>Our cozy and welcoming dining environment</em></p>\r\n    </div>\r\n\r\n    <!-- MISSION -->\r\n    <h2 style=\"color:#e67e22;\">🎯 Our Mission</h2>\r\n    <p>\r\n        To provide high-quality meals and excellent customer service in a comfortable and welcoming environment \r\n        where every guest feels valued.\r\n    </p>\r\n\r\n    <!-- VISION -->\r\n    <h2 style=\"color:#e67e22;\">🌍 Our Vision</h2>\r\n    <p>\r\n        To become one of the leading restaurants known for quality, taste, and customer satisfaction \r\n        both locally and internationally.\r\n    </p>\r\n\r\n    <!-- TEAM -->\r\n    <h2 style=\"color:#e67e22;\">👨‍🍳 Our Team</h2>\r\n    <p>\r\n        Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. \r\n        From the kitchen to the table, we focus on quality, hygiene, and attention to detail.\r\n    </p>\r\n\r\n    <!-- VIDEO SECTION -->\r\n    <h2 style=\"color:#c0392b;\">🎥 Our Story</h2>\r\n    <div style=\"text-align:center; margin:20px 0;\">\r\n        <iframe width=\"80%\" height=\"400\"\r\nsrc=\"https://www.youtube.com/embed/OHqGQhFaziY\"\r\ntitle=\"Restaurant Video\"\r\nframeborder=\"0\"\r\nallow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\"\r\nallowfullscreen>\r\n</iframe>\r\n    </div>\r\n\r\n    <!-- AUDIO SECTION -->\r\n    <h2 style=\"color:#c0392b;\">🎧 Restaurant Ambience</h2>\r\n    <div style=\"text-align:center; margin:20px;\">\r\n        <audio controls>\r\n            <source src=\"images/restaurant-music.mp3\" type=\"audio/mpeg\">\r\n            Your browser does not support the audio element.\r\n        </audio>\r\n        <p><em>Enjoy the relaxing atmosphere of Spice Bites</em></p>\r\n    </div>\r\n\r\n    <!-- WHY CHOOSE US -->\r\n    <h2 style=\"color:#27ae60;\">⭐ Why Choose Spice Bites?</h2>\r\n    <ul>\r\n        <li>Fresh and locally sourced ingredients</li>\r\n        <li>Experienced and professional chefs</li>\r\n        <li>Clean and comfortable dining environment</li>\r\n        <li>Excellent customer service</li>\r\n        <li>Affordable prices</li>\r\n    </ul>\r\n\r\n    <!-- GOOGLE MAP -->\r\n    <h2 style=\"color:#c0392b;\"> Our Location</h2>\r\n    <div style=\"text-align:center; margin:20px 0;\">\r\n        <iframe \r\n            src=\"https://maps.google.com/maps?q=kampala%20uganda&t=&z=13&ie=UTF8&iwloc=&output=embed\" \r\n            width=\"80%\" height=\"350\" \r\n            style=\"border:0;\" \r\n            allowfullscreen=\"\" \r\n            loading=\"lazy\">\r\n        </iframe>\r\n    </div>\r\n\r\n</div>', '', 1, 2, '2026-04-09 10:25:36', 57, '', '2026-04-09 12:27:42', 57, NULL, NULL, '2026-04-09 10:25:36', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 12, 2, '', '', 1, 17, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(3, 109, 'contact', 'contact', '<div style=\"font-family: Arial, sans-serif; line-height: 1.6;\">\r\n\r\n    <h1 style=\"text-align:center; color:#c0392b;\">Contact Spice Bites Restaurant</h1>\r\n\r\n    <p style=\"text-align:center;\">\r\n        We would love to hear from you! Reach out to us or book a table.\r\n    </p>\r\n\r\n    <!-- CONTACT DETAILS -->\r\n    <div style=\"margin-top:20px;\">\r\n        <h2 style=\"color:#e67e22;\"> Location</h2>\r\n        <p>Kampala, Uganda</p>\r\n\r\n        <h2 style=\"color:#e67e22;\">📞 Phone</h2>\r\n        <p>+256 700 123456</p>\r\n\r\n        <h2 style=\"color:#e67e22;\">📧 Email</h2>\r\n        <p>info@spicebites.com</p>\r\n\r\n        <h2 style=\"color:#e67e22;\">🕒 Opening Hours</h2>\r\n        <p>\r\n            Monday – Friday: 9:00 AM – 10:00 PM<br>\r\n            Saturday – Sunday: 10:00 AM – 11:00 PM\r\n        </p>\r\n    </div>\r\n\r\n    <!-- RESERVATION FORM -->\r\n    <h2 style=\"color:#c0392b; margin-top:30px;\">📅 Reservation</h2>\r\n    <p>Fill out the form below to reserve your table.</p>\r\n\r\n    <div style=\"background:#f9f9f9; padding:20px; border-radius:10px; width:80%; margin:auto;\">\r\n        <form>\r\n            <label>Full Name:</label><br>\r\n            <input type=\"text\" name=\"name\" style=\"width:100%; padding:8px; margin-bottom:10px;\"><br>\r\n\r\n            <label>Email:</label><br>\r\n            <input type=\"email\" name=\"email\" style=\"width:100%; padding:8px; margin-bottom:10px;\"><br>\r\n\r\n            <label>Phone Number:</label><br>\r\n            <input type=\"text\" name=\"phone\" style=\"width:100%; padding:8px; margin-bottom:10px;\"><br>\r\n\r\n            <label>Date:</label><br>\r\n            <input type=\"date\" name=\"date\" style=\"width:100%; padding:8px; margin-bottom:10px;\"><br>\r\n\r\n            <label>Time:</label><br>\r\n            <input type=\"time\" name=\"time\" style=\"width:100%; padding:8px; margin-bottom:10px;\"><br>\r\n\r\n            <label>Number of Guests:</label><br>\r\n            <input type=\"number\" name=\"guests\" style=\"width:100%; padding:8px; margin-bottom:10px;\"><br>\r\n\r\n            <label>Message:</label><br>\r\n            <textarea name=\"message\" rows=\"4\" style=\"width:100%; padding:8px; margin-bottom:10px;\"></textarea><br>\r\n\r\n            <button type=\"submit\" style=\"background:#c0392b; color:white; padding:10px 20px; border:none; border-radius:5px;\">\r\n                Book Now\r\n            </button>\r\n        </form>\r\n    </div>\r\n\r\n    <!-- GOOGLE MAP -->\r\n    <h2 style=\"color:#c0392b; margin-top:40px;\">🗺️ Find Us</h2>\r\n    <div style=\"text-align:center; margin:20px 0;\">\r\n        <iframe \r\n            src=\"https://www.google.com/maps?q=Kampala,Uganda&output=embed\"\r\n            width=\"80%\" \r\n            height=\"350\" \r\n            style=\"border:0;\" \r\n            allowfullscreen \r\n            loading=\"lazy\">\r\n        </iframe>\r\n    </div>\r\n\r\n</div>', '', 1, 2, '2026-04-09 11:48:52', 57, '', '2026-04-09 12:19:54', 57, NULL, NULL, '2026-04-09 11:48:52', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 5, 1, '', '', 1, 14, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(4, 110, 'contact-us', 'contact-us', '<p>&lt;h1&gt;Hello Test&lt;/h1&gt;<br>&lt;p&gt;This should be bold and styled&lt;/p&gt;</p>', '', -2, 2, '2026-04-09 11:58:12', 57, '', '2026-04-09 11:58:29', 57, NULL, NULL, '2026-04-09 11:58:12', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `sb_contentitem_tag_map`
--

CREATE TABLE `sb_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `sb_content_frontpage`
--

CREATE TABLE `sb_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_content_rating`
--

CREATE TABLE `sb_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_content_types`
--

CREATE TABLE `sb_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_content_types`
--

INSERT INTO `sb_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_user_id\":\"created_by\",\"core_created_by_alias\":\"created_by_alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', '', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `sb_extensions`
--

CREATE TABLE `sb_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_extensions`
--

INSERT INTO `sb_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(1, 0, 'com_wrapper', 'component', 'com_wrapper', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(2, 0, 'com_admin', 'component', 'com_admin', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}', '', '', NULL, NULL, 0, 0, NULL),
(3, 0, 'com_banners', 'component', 'com_banners', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', NULL, NULL, 0, 0, NULL),
(4, 0, 'com_cache', 'component', 'com_cache', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}', '', '', NULL, NULL, 0, 0, NULL),
(5, 0, 'com_categories', 'component', 'com_categories', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(6, 0, 'com_checkin', 'component', 'com_checkin', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}', '', '', NULL, NULL, 0, 0, NULL),
(7, 0, 'com_contact', 'component', 'com_contact', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(8, 0, 'com_cpanel', 'component', 'com_cpanel', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}', '', '', NULL, NULL, 0, 0, NULL),
(9, 0, 'com_installer', 'component', 'com_installer', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}', '{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', NULL, NULL, 0, 0, NULL),
(10, 0, 'com_languages', 'component', 'com_languages', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', NULL, NULL, 0, 0, NULL),
(11, 0, 'com_login', 'component', 'com_login', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}', '', '', NULL, NULL, 0, 0, NULL),
(12, 0, 'com_media', 'component', 'com_media', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}', '{\"upload_maxsize\":\"10\",\"file_path\":\"files\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}', '', NULL, NULL, 0, 0, NULL),
(13, 0, 'com_menus', 'component', 'com_menus', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(14, 0, 'com_messages', 'component', 'com_messages', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(15, 0, 'com_modules', 'component', 'com_modules', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}', '', '', NULL, NULL, 0, 0, NULL),
(16, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}', '', NULL, NULL, 0, 0, NULL),
(17, 0, 'com_plugins', 'component', 'com_plugins', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}', '', '', NULL, NULL, 0, 0, NULL),
(18, 0, 'com_templates', 'component', 'com_templates', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json,yaml,twig\",\"font_formats\":\"woff,woff2,ttf,otf,eot,svg\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}', '', NULL, NULL, 0, 0, NULL),
(19, 0, 'com_content', 'component', 'com_content', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(20, 0, 'com_config', 'component', 'com_config', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', NULL, NULL, 0, 0, NULL),
(21, 0, 'com_redirect', 'component', 'com_redirect', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}', '', '', NULL, NULL, 0, 0, NULL),
(22, 0, 'com_users', 'component', 'com_users', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(23, 0, 'com_finder', 'component', 'com_finder', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(24, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}', '{\"updatesource\":\"default\",\"customurl\":\"\",\"autoupdate_status\":0,\"autoupdate\":0,\"minimum_stability\":\"4\",\"update_token\":\"8BYY1KmqHAasdA68q6amQBVzrBqPie1juCwRHH5I\"}', '', NULL, NULL, 0, 0, NULL),
(25, 0, 'com_tags', 'component', 'com_tags', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(26, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}', '', '', NULL, NULL, 0, 0, NULL),
(27, 0, 'com_ajax', 'component', 'com_ajax', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"ajax\"}', '', '', NULL, NULL, 0, 0, NULL),
(28, 0, 'com_postinstall', 'component', 'com_postinstall', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}', '', '', NULL, NULL, 0, 0, NULL),
(29, 0, 'com_fields', 'component', 'com_fields', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 0, 0, NULL),
(30, 0, 'com_associations', 'component', 'com_associations', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}', '', '', NULL, NULL, 0, 0, NULL),
(31, 0, 'com_privacy', 'component', 'com_privacy', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}', '', '', NULL, NULL, 0, 0, NULL),
(32, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_guidedtours\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', NULL, NULL, 0, 0, NULL),
(33, 0, 'com_workflow', 'component', 'com_workflow', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(34, 0, 'com_mails', 'component', 'com_mails', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}', '', '', NULL, NULL, 0, 0, NULL),
(35, 0, 'com_scheduler', 'component', 'com_scheduler', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(36, 0, 'com_guidedtours', 'component', 'com_guidedtours', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(37, 0, 'lib_joomla', 'library', 'joomla', '', '', 0, 1, 1, 1, 1, '{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 0, 0, NULL),
(38, 0, 'lib_phpass', 'library', 'phpass', '', '', 0, 1, 1, 1, 1, '{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.5.1\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"phpass\"}', '', '', NULL, NULL, 0, 0, NULL),
(39, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}', '', '', NULL, NULL, 0, 0, NULL),
(40, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(41, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(42, 0, 'mod_banners', 'module', 'mod_banners', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}', '', '', NULL, NULL, 0, 0, NULL),
(43, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}', '', '', NULL, NULL, 0, 0, NULL),
(44, 0, 'mod_custom', 'module', 'mod_custom', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(45, 0, 'mod_feed', 'module', 'mod_feed', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(46, 0, 'mod_footer', 'module', 'mod_footer', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}', '', '', NULL, NULL, 0, 0, NULL),
(47, 0, 'mod_login', 'module', 'mod_login', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(48, 0, 'mod_menu', 'module', 'mod_menu', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(49, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}', '', '', NULL, NULL, 0, 0, NULL),
(50, 0, 'mod_random_image', 'module', 'mod_random_image', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}', '', '', NULL, NULL, 0, 0, NULL),
(51, 0, 'mod_related_items', 'module', 'mod_related_items', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}', '', '', NULL, NULL, 0, 0, NULL),
(52, 0, 'mod_stats', 'module', 'mod_stats', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}', '', '', NULL, NULL, 0, 0, NULL),
(53, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}', '', '', NULL, NULL, 0, 0, NULL),
(54, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(55, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}', '', '', NULL, NULL, 0, 0, NULL),
(56, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(57, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}', '', '', NULL, NULL, 0, 0, NULL),
(58, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(59, 0, 'mod_languages', 'module', 'mod_languages', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}', '', '', NULL, NULL, 0, 0, NULL),
(60, 0, 'mod_finder', 'module', 'mod_finder', '', '', 0, 1, 0, 0, 1, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}', '', '', NULL, NULL, 0, 0, NULL),
(61, 0, 'mod_articles', 'module', 'mod_articles', '', '', 0, 1, 0, 0, 1, '{\"name\":\"mod_articles\",\"type\":\"module\",\"creationDate\":\"2024-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.0\",\"description\":\"MOD_ARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Articles\",\"filename\":\"mod_articles\"}', '', '', NULL, NULL, 0, 0, NULL),
(62, 0, 'mod_custom', 'module', 'mod_custom', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(63, 0, 'mod_feed', 'module', 'mod_feed', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(64, 0, 'mod_latest', 'module', 'mod_latest', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(65, 0, 'mod_logged', 'module', 'mod_logged', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}', '', '', NULL, NULL, 0, 0, NULL),
(66, 0, 'mod_login', 'module', 'mod_login', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(67, 0, 'mod_loginsupport', 'module', 'mod_loginsupport', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}', '', '', NULL, NULL, 0, 0, NULL),
(68, 0, 'mod_menu', 'module', 'mod_menu', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(69, 0, 'mod_popular', 'module', 'mod_popular', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(70, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}', '', '', NULL, NULL, 0, 0, NULL),
(71, 0, 'mod_frontend', 'module', 'mod_frontend', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}', '', '', NULL, NULL, 0, 0, NULL),
(72, 0, 'mod_messages', 'module', 'mod_messages', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(73, 0, 'mod_post_installation_messages', 'module', 'mod_post_installation_messages', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(74, 0, 'mod_user', 'module', 'mod_user', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}', '', '', NULL, NULL, 0, 0, NULL),
(75, 0, 'mod_title', 'module', 'mod_title', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}', '', '', NULL, NULL, 0, 0, NULL),
(76, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}', '', '', NULL, NULL, 0, 0, NULL);
INSERT INTO `sb_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(77, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(78, 0, 'mod_version', 'module', 'mod_version', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(79, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', NULL, NULL, 0, 0, NULL),
(80, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(81, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(82, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(83, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(84, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(85, 0, 'mod_submenu', 'module', 'mod_submenu', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(86, 0, 'mod_privacy_status', 'module', 'mod_privacy_status', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(87, 0, 'mod_guidedtours', 'module', 'mod_guidedtours', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(88, 0, 'plg_actionlog_joomla', 'plugin', 'joomla', '', 'actionlog', 0, 1, 1, 0, 1, '{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(89, 0, 'plg_api-authentication_basic', 'plugin', 'basic', '', 'api-authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(90, 0, 'plg_api-authentication_token', 'plugin', 'token', '', 'api-authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(91, 0, 'plg_authentication_cookie', 'plugin', 'cookie', '', 'authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}', '', '', NULL, NULL, 1, 0, NULL),
(92, 0, 'plg_authentication_joomla', 'plugin', 'joomla', '', 'authentication', 0, 1, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(93, 0, 'plg_authentication_ldap', 'plugin', 'ldap', '', 'authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', NULL, NULL, 3, 0, NULL),
(94, 0, 'plg_behaviour_compat6', 'plugin', 'compat6', '', 'behaviour', 0, 0, 1, 0, 1, '{\"name\":\"plg_behaviour_compat6\",\"type\":\"plugin\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_COMPAT6_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat6\",\"filename\":\"compat6\"}', '{\"classes_aliases\":\"0\",\"legacy_classes\":\"1\"}', '', NULL, NULL, 1, 0, NULL),
(95, 0, 'plg_behaviour_taggable', 'plugin', 'taggable', '', 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(96, 0, 'plg_behaviour_versionable', 'plugin', 'versionable', '', 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(97, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', '', 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(98, 0, 'plg_content_contact', 'plugin', 'contact', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(99, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(100, 0, 'plg_content_fields', 'plugin', 'fields', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 4, 0, NULL),
(101, 0, 'plg_content_finder', 'plugin', 'finder', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 5, 0, NULL),
(102, 0, 'plg_content_joomla', 'plugin', 'joomla', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 6, 0, NULL),
(103, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', NULL, NULL, 7, 0, NULL),
(104, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', NULL, NULL, 8, 0, NULL),
(105, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', NULL, NULL, 9, 0, NULL),
(106, 0, 'plg_content_vote', 'plugin', 'vote', '', 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}', '', '', NULL, NULL, 10, 0, NULL),
(107, 0, 'plg_editors-xtd_article', 'plugin', 'article', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}', '', '', NULL, NULL, 1, 0, NULL),
(108, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(109, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 3, 0, NULL),
(110, 0, 'plg_editors-xtd_image', 'plugin', 'image', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}', '', '', NULL, NULL, 4, 0, NULL),
(111, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}', '', '', NULL, NULL, 5, 0, NULL),
(112, 0, 'plg_editors-xtd_module', 'plugin', 'module', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}', '', '', NULL, NULL, 6, 0, NULL),
(113, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}', '', '', NULL, NULL, 7, 0, NULL),
(114, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}', '', '', NULL, NULL, 8, 0, NULL),
(115, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', '', 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', NULL, NULL, 1, 0, NULL),
(116, 0, 'plg_editors_none', 'plugin', 'none', '', 'editors', 0, 1, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}', '', '', NULL, NULL, 2, 0, NULL),
(117, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', '', 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"8.1.2\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":[{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]},{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]}],\"setoptions\":[{\"skin\":\"\",\"skin_dark\":\"\",\"skin_admin\":\"\",\"skin_admin_dark\":\"\",\"toolbar_mode\":\"sliding\",\"drag_drop\":\"1\",\"path\":\"\",\"content_template_path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"lang_code\":\"\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"sandbox_iframes\":\"1\",\"sandbox_iframes_exclusions\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"textpattern\":\"0\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"contextmenu\":\"1\",\"paste_as_text\":\"0\",\"sourcecode\":\"1\",\"content_languages\":\"\",\"custom_plugin\":\"\",\"custom_button\":\"\",\"external_plugins\":\"\",\"link_classes_list\":\"\",\"img_classes_list\":\"\"},{\"access\":[\"6\",\"2\"],\"skin\":\"\",\"skin_dark\":\"\",\"skin_admin\":\"\",\"skin_admin_dark\":\"\",\"toolbar_mode\":\"sliding\",\"drag_drop\":\"1\",\"path\":\"\",\"content_template_path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"lang_code\":\"\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"sandbox_iframes\":\"1\",\"sandbox_iframes_exclusions\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"textpattern\":\"0\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"contextmenu\":\"1\",\"paste_as_text\":\"0\",\"sourcecode\":\"1\",\"content_languages\":\"\",\"custom_plugin\":\"\",\"custom_button\":\"\",\"external_plugins\":\"\",\"link_classes_list\":\"\",\"img_classes_list\":\"\"},{\"skin\":\"\",\"skin_dark\":\"\",\"skin_admin\":\"\",\"skin_admin_dark\":\"\",\"toolbar_mode\":\"sliding\",\"drag_drop\":\"1\",\"path\":\"\",\"content_template_path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"lang_code\":\"\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"\",\"valid_elements\":\"*[*]\",\"extended_elements\":\"\",\"sandbox_iframes\":\"1\",\"sandbox_iframes_exclusions\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"textpattern\":\"0\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"contextmenu\":\"1\",\"paste_as_text\":\"0\",\"sourcecode\":\"1\",\"content_languages\":\"\",\"custom_plugin\":\"\",\"custom_button\":\"\",\"external_plugins\":\"\",\"link_classes_list\":\"\",\"img_classes_list\":\"\"}]},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', NULL, NULL, 3, 0, ''),
(118, 0, 'plg_extension_finder', 'plugin', 'finder', '', 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 1, 0, NULL),
(119, 0, 'plg_extension_joomla', 'plugin', 'joomla', '', 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(120, 0, 'plg_extension_joomlaupdate', 'plugin', 'joomlaupdate', '', 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.0\",\"description\":\"PLG_EXTENSION_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 3, 0, NULL),
(121, 0, 'plg_extension_namespacemap', 'plugin', 'namespacemap', '', 'extension', 0, 1, 1, 1, 1, '{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(122, 0, 'plg_fields_calendar', 'plugin', 'calendar', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}', '', '', NULL, NULL, 1, 0, NULL),
(123, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}', '', '', NULL, NULL, 2, 0, NULL),
(124, 0, 'plg_fields_color', 'plugin', 'color', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}', '', '', NULL, NULL, 3, 0, NULL),
(125, 0, 'plg_fields_editor', 'plugin', 'editor', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}', '{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}', '', NULL, NULL, 4, 0, NULL),
(126, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}', '', '', NULL, NULL, 5, 0, NULL),
(127, 0, 'plg_fields_integer', 'plugin', 'integer', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', NULL, NULL, 6, 0, NULL),
(128, 0, 'plg_fields_list', 'plugin', 'list', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}', '', '', NULL, NULL, 7, 0, NULL),
(129, 0, 'plg_fields_media', 'plugin', 'media', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}', '', '', NULL, NULL, 8, 0, NULL),
(130, 0, 'plg_fields_note', 'plugin', 'note', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_note\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_FIELDS_NOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Note\",\"filename\":\"note\"}', '{\"class\":\"alert alert-info\",\"heading\":\"h4\"}', '', NULL, NULL, 9, 0, NULL),
(131, 0, 'plg_fields_number', 'plugin', 'number', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_number\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_FIELDS_NUMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Number\",\"filename\":\"number\"}', '{\"min\":\"1.0\",\"max\":\"100.0\",\"step\":\"0.1\",\"currency\":\"0\",\"symbol\":\"\",\"position\":\"0\",\"decimals\":\"2\"}', '', NULL, NULL, 10, 0, NULL),
(132, 0, 'plg_fields_radio', 'plugin', 'radio', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}', '', '', NULL, NULL, 11, 0, NULL),
(133, 0, 'plg_fields_sql', 'plugin', 'sql', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}', '', '', NULL, NULL, 12, 0, NULL),
(134, 0, 'plg_fields_subform', 'plugin', 'subform', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}', '', '', NULL, NULL, 13, 0, NULL),
(135, 0, 'plg_fields_text', 'plugin', 'text', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}', '', '', NULL, NULL, 14, 0, NULL),
(136, 0, 'plg_fields_textarea', 'plugin', 'textarea', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}', '{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}', '', NULL, NULL, 15, 0, NULL),
(137, 0, 'plg_fields_url', 'plugin', 'url', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}', '', '', NULL, NULL, 16, 0, NULL),
(138, 0, 'plg_fields_user', 'plugin', 'user', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}', '', '', NULL, NULL, 17, 0, NULL),
(139, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}', '', '', NULL, NULL, 18, 0, NULL),
(140, 0, 'plg_filesystem_local', 'plugin', 'local', '', 'filesystem', 0, 1, 1, 0, 1, '{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(141, 0, 'plg_finder_categories', 'plugin', 'categories', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}', '', '', NULL, NULL, 1, 0, NULL),
(142, 0, 'plg_finder_contacts', 'plugin', 'contacts', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}', '', '', NULL, NULL, 2, 0, NULL),
(143, 0, 'plg_finder_content', 'plugin', 'content', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}', '', '', NULL, NULL, 3, 0, NULL),
(144, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '', '', NULL, NULL, 4, 0, NULL),
(145, 0, 'plg_finder_tags', 'plugin', 'tags', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}', '', '', NULL, NULL, 5, 0, NULL),
(146, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}', '', '', NULL, NULL, 2, 0, NULL),
(147, 0, 'plg_installer_override', 'plugin', 'override', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}', '', '', NULL, NULL, 4, 0, NULL),
(148, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}', '', '', NULL, NULL, 1, 0, NULL),
(149, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}', '', '', NULL, NULL, 3, 0, NULL),
(150, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"1\"}', '', NULL, NULL, 5, 0, NULL),
(151, 0, 'plg_media-action_crop', 'plugin', 'crop', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(152, 0, 'plg_media-action_resize', 'plugin', 'resize', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(153, 0, 'plg_media-action_rotate', 'plugin', 'rotate', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(154, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 1, 0, NULL);
INSERT INTO `sb_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(155, 0, 'plg_privacy_consents', 'plugin', 'consents', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(156, 0, 'plg_privacy_contact', 'plugin', 'contact', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(157, 0, 'plg_privacy_content', 'plugin', 'content', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(158, 0, 'plg_privacy_message', 'plugin', 'message', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(159, 0, 'plg_privacy_user', 'plugin', 'user', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(160, 0, 'plg_quickicon_autoupdate', 'plugin', 'autoupdate', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_autoupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.4.0\",\"description\":\"PLG_QUICKICON_AUTOUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Autoupdate\",\"filename\":\"autoupdate\"}', '', '', NULL, NULL, 1, 0, NULL),
(161, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 2, 0, NULL),
(162, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}', '', '', NULL, NULL, 3, 0, NULL),
(163, 0, 'plg_quickicon_overridecheck', 'plugin', 'overridecheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}', '', '', NULL, NULL, 4, 0, NULL),
(164, 0, 'plg_quickicon_downloadkey', 'plugin', 'downloadkey', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}', '', '', NULL, NULL, 5, 0, NULL),
(165, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(166, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}', '', '', NULL, NULL, 7, 0, NULL),
(167, 0, 'plg_quickicon_eos', 'plugin', 'eos', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}', '', '', NULL, NULL, 8, 0, NULL),
(168, 0, 'plg_sampledata_blog', 'plugin', 'blog', '', 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}', '', '', NULL, NULL, 1, 0, NULL),
(169, 0, 'plg_sampledata_multilang', 'plugin', 'multilang', '', 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}', '', '', NULL, NULL, 2, 0, NULL),
(170, 0, 'plg_schemaorg_article', 'plugin', 'article', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(171, 0, 'plg_schemaorg_blogposting', 'plugin', 'blogposting', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(172, 0, 'plg_schemaorg_book', 'plugin', 'book', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(173, 0, 'plg_schemaorg_event', 'plugin', 'event', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(174, 0, 'plg_schemaorg_jobposting', 'plugin', 'jobposting', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(175, 0, 'plg_schemaorg_organization', 'plugin', 'organization', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(176, 0, 'plg_schemaorg_person', 'plugin', 'person', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(177, 0, 'plg_schemaorg_recipe', 'plugin', 'recipe', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(178, 0, 'plg_schemaorg_custom', 'plugin', 'custom', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(179, 0, 'plg_system_accessibility', 'plugin', 'accessibility', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(180, 0, 'plg_system_actionlogs', 'plugin', 'actionlogs', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(181, 0, 'plg_system_cache', 'plugin', 'cache', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', NULL, NULL, 3, 0, NULL),
(182, 0, 'plg_system_debug', 'plugin', 'debug', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', NULL, NULL, 4, 0, NULL),
(183, 0, 'plg_system_fields', 'plugin', 'fields', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 5, 0, NULL),
(184, 0, 'plg_system_highlight', 'plugin', 'highlight', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}', '', '', NULL, NULL, 6, 0, NULL),
(185, 0, 'plg_system_httpheaders', 'plugin', 'httpheaders', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(186, 0, 'plg_system_jooa11y', 'plugin', 'jooa11y', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}', '', '', NULL, NULL, 8, 0, NULL),
(187, 0, 'plg_system_languagecode', 'plugin', 'languagecode', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}', '', '', NULL, NULL, 9, 0, NULL),
(188, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}', '', '', NULL, NULL, 10, 0, NULL),
(189, 0, 'plg_system_log', 'plugin', 'log', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}', '', '', NULL, NULL, 11, 0, NULL),
(190, 0, 'plg_system_logout', 'plugin', 'logout', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}', '', '', NULL, NULL, 12, 0, NULL),
(191, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(192, 0, 'plg_system_redirect', 'plugin', 'redirect', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}', '', '', NULL, NULL, 15, 0, NULL),
(193, 0, 'plg_system_remember', 'plugin', 'remember', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}', '', '', NULL, NULL, 16, 0, NULL),
(194, 0, 'plg_system_schedulerunner', 'plugin', 'schedulerunner', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(195, 0, 'plg_system_schemaorg', 'plugin', 'schemaorg', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}', '{}', '', NULL, NULL, 18, 0, NULL),
(196, 0, 'plg_system_sef', 'plugin', 'sef', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}', '{\"domain\":\"\",\"indexphp\":\"1\",\"trailingslash\":\"0\",\"enforcesuffix\":\"1\",\"strictrouting\":\"1\"}', '', NULL, NULL, 19, 0, NULL),
(197, 0, 'plg_system_shortcut', 'plugin', 'shortcut', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}', '{}', '', NULL, NULL, 21, 0, NULL),
(198, 0, 'plg_system_skipto', 'plugin', 'skipto', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}', '{}', '', NULL, NULL, 22, 0, NULL),
(199, 0, 'plg_system_stats', 'plugin', 'stats', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}', '', '', NULL, NULL, 23, 0, NULL),
(200, 0, 'plg_system_task_notification', 'plugin', 'tasknotification', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}', '', '', NULL, NULL, 24, 0, NULL),
(201, 0, 'plg_system_webauthn', 'plugin', 'webauthn', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}', '{}', '', NULL, NULL, 26, 0, NULL),
(202, 0, 'plg_task_check_files', 'plugin', 'checkfiles', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(203, 0, 'plg_task_deleteactionlogs', 'plugin', 'deleteactionlogs', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(204, 0, 'plg_task_globalcheckin', 'plugin', 'globalcheckin', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(205, 0, 'plg_task_requests', 'plugin', 'requests', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(206, 0, 'plg_task_privacyconsent', 'plugin', 'privacyconsent', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(207, 0, 'plg_task_rotatelogs', 'plugin', 'rotatelogs', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(208, 0, 'plg_task_sessiongc', 'plugin', 'sessiongc', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(209, 0, 'plg_task_site_status', 'plugin', 'sitestatus', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(210, 0, 'plg_task_updatenotification', 'plugin', 'updatenotification', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(211, 0, 'plg_multifactorauth_totp', 'plugin', 'totp', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}', '', '', NULL, NULL, 1, 0, NULL),
(212, 0, 'plg_multifactorauth_yubikey', 'plugin', 'yubikey', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}', '', '', NULL, NULL, 2, 0, NULL),
(213, 0, 'plg_multifactorauth_webauthn', 'plugin', 'webauthn', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}', '', '', NULL, NULL, 3, 0, NULL),
(214, 0, 'plg_multifactorauth_email', 'plugin', 'email', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}', '', '', NULL, NULL, 4, 0, NULL),
(215, 0, 'plg_multifactorauth_fixed', 'plugin', 'fixed', '', 'multifactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}', '', '', NULL, NULL, 5, 0, NULL),
(216, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', NULL, NULL, 1, 0, NULL),
(217, 0, 'plg_user_joomla', 'plugin', 'joomla', '', 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', NULL, NULL, 2, 0, NULL),
(218, 0, 'plg_user_profile', 'plugin', 'profile', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(219, 0, 'plg_user_terms', 'plugin', 'terms', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(220, 0, 'plg_user_token', 'plugin', 'token', '', 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(221, 0, 'plg_webservices_banners', 'plugin', 'banners', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(222, 0, 'plg_webservices_config', 'plugin', 'config', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(223, 0, 'plg_webservices_contact', 'plugin', 'contact', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(224, 0, 'plg_webservices_content', 'plugin', 'content', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(225, 0, 'plg_webservices_installer', 'plugin', 'installer', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(226, 0, 'plg_webservices_joomlaupdate', 'plugin', 'joomlaupdate', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.4.0\",\"description\":\"PLG_WEBSERVICES_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(227, 0, 'plg_webservices_languages', 'plugin', 'languages', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(228, 0, 'plg_webservices_media', 'plugin', 'media', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(229, 0, 'plg_webservices_menus', 'plugin', 'menus', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(230, 0, 'plg_webservices_messages', 'plugin', 'messages', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}', '{}', '', NULL, NULL, 10, 0, NULL),
(231, 0, 'plg_webservices_modules', 'plugin', 'modules', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}', '{}', '', NULL, NULL, 11, 0, NULL),
(232, 0, 'plg_webservices_newsfeeds', 'plugin', 'newsfeeds', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{}', '', NULL, NULL, 12, 0, NULL),
(233, 0, 'plg_webservices_plugins', 'plugin', 'plugins', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}', '{}', '', NULL, NULL, 13, 0, NULL),
(234, 0, 'plg_webservices_privacy', 'plugin', 'privacy', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(235, 0, 'plg_webservices_redirect', 'plugin', 'redirect', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(236, 0, 'plg_webservices_tags', 'plugin', 'tags', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}', '{}', '', NULL, NULL, 16, 0, NULL),
(237, 0, 'plg_webservices_templates', 'plugin', 'templates', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(238, 0, 'plg_webservices_users', 'plugin', 'users', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}', '{}', '', NULL, NULL, 18, 0, NULL),
(239, 0, 'plg_workflow_featuring', 'plugin', 'featuring', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}', '{}', '', NULL, NULL, 1, 0, NULL);
INSERT INTO `sb_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(240, 0, 'plg_workflow_notification', 'plugin', 'notification', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(241, 0, 'plg_workflow_publishing', 'plugin', 'publishing', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(242, 0, 'plg_system_guidedtours', 'plugin', 'guidedtours', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(243, 0, 'atum', 'template', 'atum', '', '', 1, 1, 1, 0, 1, '{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '', '', NULL, NULL, 0, 0, NULL),
(244, 0, 'cassiopeia', 'template', 'cassiopeia', '', '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}', '', NULL, NULL, 0, 0, NULL),
(245, 0, 'cassiopeia_extended', 'template', 'cassiopeia_extended', '', '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia_extended\",\"type\":\"template\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_EXTENDED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":false,\"parent\":\"cassiopeia\",\"filename\":\"templateDetails\"}', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\",\"colorSettings\":\"0\",\"headerbg\":\"rgb(193, 205, 207)\",\"headercolor\":\"rgb(23, 23, 23)\",\"bodybg\":\"rgb(254, 254, 254)\",\"bodycolor\":\"rgb(23, 23, 23)\",\"linkcolor\":\"rgb(29, 121, 137)\",\"linkcolorh\":\"rgb(14, 59, 67)\",\"btnbg\":\"rgb(206, 60, 55)\",\"btnbgh\":\"rgb(131, 35, 32)\",\"btncolor\":\"rgb(254, 254, 254)\",\"btncolorh\":\"rgb(254, 254, 254)\",\"footerbg\":\"rgb(29, 121, 137)\",\"footercolor\":\"rgb(254, 254, 254)\",\"fontSettings\":\"0\",\"bodysize\":\"1\",\"h1size\":\"2\",\"h2size\":\"1.7\",\"h3size\":\"1.5\"}', '', NULL, NULL, 0, 0, NULL),
(246, 0, 'files_joomla', 'file', 'joomla', '', '', 0, 1, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2026-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(247, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2026-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', NULL, NULL, 0, 0, NULL),
(248, 247, 'English (en-GB)', 'language', 'en-GB', '', '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.4\",\"description\":\"en-GB site language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(249, 247, 'English (en-GB)', 'language', 'en-GB', '', '', 1, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.4\",\"description\":\"en-GB administrator language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(250, 247, 'English (en-GB)', 'language', 'en-GB', '', '', 3, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.4\",\"description\":\"en-GB api language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(251, 0, 'COM_RESTAURANTMANAGER', 'component', 'com_restaurantmanager', '', '', 1, 1, 0, 0, 0, '{\"name\":\"COM_RESTAURANTMANAGER\",\"type\":\"component\",\"creationDate\":\"February 2026\",\"author\":\"Michele Bruno\",\"copyright\":\"Copyright (C) 2026 FreeCMSPlugins.com. All rights reserved.\",\"authorEmail\":\"info@freecmsplugins.com\",\"authorUrl\":\"https:\\/\\/freecmsplugins.com\",\"version\":\"1.0.0\",\"description\":\"COM_RESTAURANTMANAGER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\RestaurantManager\",\"filename\":\"restaurantmanager\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(252, 0, 'theme-200120-j4', 'template', 'theme-200120-j4', '', '', 0, 1, 1, 0, 0, '{\"name\":\"theme-200120-j4\",\"type\":\"template\",\"creationDate\":\"08\\/02\\/2021 00:00:00\",\"author\":\"TemplateToaster\",\"copyright\":\"Copyright 2012http:\\/\\/templatetoaster.comAll Rights Reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/TemplateToaster.com\",\"version\":\"1.0\",\"description\":\"Theme Description\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"templateDetails\"}', '{\"horizontal_align0\":\"center\",\"vertical_align0\":\"center\",\"stretch0\":\"Fill\",\"horizontal_align1\":\"center\",\"vertical_align1\":\"center\",\"stretch1\":\"Fill\",\"horizontal_align2\":\"center\",\"vertical_align2\":\"center\",\"stretch2\":\"Fill\",\"enable_slide\":\"1\",\"enable_facebook_icon\":\"1\",\"facebook_Url\":\"http:\\/\\/www.facebook.com\\/TemplateToaster\",\"enable_Twitter_icon\":\"1\",\"twitter_Url\":\"http:\\/\\/twitter.com\\/templatetoaster\",\"enable_Designed_By\":\"1\",\"Designed_By\":\"http:\\/\\/templatetoaster.com\",\"Designed_By_Link_FontSize\":\"12\",\"Designed_By_FontSize\":\"12\",\"footer_designed_by_color\":\"#E1E1E1\",\"footer_designed_by_link_color\":\"#E1E1E1\",\"sidebar_menu_font_size\":\"14\",\"block_heading_font_size\":\"14\",\"custom_css\":\"\",\"enable_read_more_button\":\"1\",\"mbmoduleposition00\":\"block\",\"mbmoduleposition01\":\"block\",\"mbmoduleposition02\":\"block\",\"mbmoduleposition03\":\"block\",\"mamoduleposition00\":\"block\",\"mamoduleposition01\":\"block\",\"mamoduleposition02\":\"block\",\"mamoduleposition03\":\"block\",\"sbmoduleposition00\":\"block\",\"sbmoduleposition01\":\"block\",\"sbmoduleposition02\":\"block\",\"sbmoduleposition03\":\"block\",\"samoduleposition00\":\"block\",\"samoduleposition01\":\"block\",\"samoduleposition02\":\"block\",\"samoduleposition03\":\"block\",\"camoduleposition00\":\"block\",\"camoduleposition01\":\"block\",\"camoduleposition02\":\"block\",\"camoduleposition03\":\"block\",\"cbmoduleposition00\":\"block\",\"cbmoduleposition01\":\"block\",\"cbmoduleposition02\":\"block\",\"cbmoduleposition03\":\"block\",\"menu\":\"block\",\"famoduleposition00\":\"block\",\"famoduleposition01\":\"block\",\"famoduleposition02\":\"block\",\"famoduleposition03\":\"block\",\"fbmoduleposition00\":\"block\",\"fbmoduleposition01\":\"block\",\"fbmoduleposition02\":\"block\",\"fbmoduleposition03\":\"block\",\"leftfooterarea\":\"block\",\"centerfooterarea\":\"block\",\"rightfooterarea\":\"block\",\"debug\":\"block\",\"enable_click_on_menu\":\"h_menu_hover\",\"enable_click_on_sidebar_menu\":\"v_menu_hover\",\"mbmoduleposition00ms\":\"h_menu\",\"mbmoduleposition01ms\":\"h_menu\",\"mbmoduleposition02ms\":\"h_menu\",\"mbmoduleposition03ms\":\"h_menu\",\"mamoduleposition00ms\":\"h_menu\",\"mamoduleposition01ms\":\"h_menu\",\"mamoduleposition02ms\":\"h_menu\",\"mamoduleposition03ms\":\"h_menu\",\"sbmoduleposition00ms\":\"h_menu\",\"sbmoduleposition01ms\":\"h_menu\",\"sbmoduleposition02ms\":\"h_menu\",\"sbmoduleposition03ms\":\"h_menu\",\"samoduleposition00ms\":\"h_menu\",\"samoduleposition01ms\":\"h_menu\",\"samoduleposition02ms\":\"h_menu\",\"samoduleposition03ms\":\"h_menu\",\"camoduleposition00ms\":\"h_menu\",\"camoduleposition01ms\":\"h_menu\",\"camoduleposition02ms\":\"h_menu\",\"camoduleposition03ms\":\"h_menu\",\"cbmoduleposition00ms\":\"h_menu\",\"cbmoduleposition01ms\":\"h_menu\",\"cbmoduleposition02ms\":\"h_menu\",\"cbmoduleposition03ms\":\"h_menu\",\"menums\":\"h_menu\",\"famoduleposition00ms\":\"h_menu\",\"famoduleposition01ms\":\"h_menu\",\"famoduleposition02ms\":\"h_menu\",\"famoduleposition03ms\":\"h_menu\",\"fbmoduleposition00ms\":\"h_menu\",\"fbmoduleposition01ms\":\"h_menu\",\"fbmoduleposition02ms\":\"h_menu\",\"fbmoduleposition03ms\":\"h_menu\",\"leftfooterareams\":\"h_menu\",\"centerfooterareams\":\"h_menu\",\"rightfooterareams\":\"h_menu\"}', '', NULL, NULL, 0, 0, NULL),
(253, 0, 'Import Content', 'module', 'mod_ttcontent', '', '', 1, 1, 2, 0, 0, '{\"name\":\"Import Content\",\"type\":\"module\",\"creationDate\":\"8\\/2\\/2021 12:00:00 AM\",\"author\":\"TemplateToaster\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/TemplateToaster.com\",\"version\":\"1.0\",\"description\":\"This module is a product of TemplateToaster to import content\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"mod_ttcontent\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(254, 0, 'mod_jdsimplecontactform', 'module', 'mod_jdsimplecontactform', '', '', 0, 1, 0, 0, 0, '{\"name\":\"mod_jdsimplecontactform\",\"type\":\"module\",\"creationDate\":\"Apr 2019\",\"author\":\"JoomDev\",\"copyright\":\"Copyright (C) 2019 Joomdev, Inc. All rights reserved.\",\"authorEmail\":\"info@joomdev.com\",\"authorUrl\":\"https:\\/\\/www.joomdev.com\",\"version\":\"1.3\",\"description\":\"MOD_JDSIMPLECONTACTFORM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"mod_jdsimplecontactform\"}', '{\"ajaxsubmit\":\"0\",\"captcha\":\"0\",\"submittext\":\"Submit\",\"submitclass\":\"btn-primary\",\"single_sendcopy_email\":\"0\",\"singleSendCopyEmail_field\":\"\",\"singleSendCopyEmailField_title\":\"\",\"sendcopy_email\":\"0\",\"sendcopyemail_field\":\"\",\"sendcopyemailfield_title\":\"\",\"email_template\":\"\",\"email_custom\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(255, 0, 'PLG_CONTENT_TTMENUSTYLE', 'plugin', 'ttmenustyle', '', 'content', 0, 0, 1, 0, 0, '{\"name\":\"PLG_CONTENT_TTMENUSTYLE\",\"type\":\"plugin\",\"creationDate\":\"August 2020\",\"author\":\"Unknown\",\"copyright\":\"Copyright (c) 2020 TTMENUSTYLE. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0.0\",\"description\":\"PLG_CONTENT_TTMENUSTYLE_DESC\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"ttmenustyle\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(256, 263, 'plg_system_gantry5', 'plugin', 'gantry5', '', 'system', 0, 1, 1, 0, 0, '{\"name\":\"plg_system_gantry5\",\"type\":\"plugin\",\"creationDate\":\"February 24, 2026\",\"author\":\"Tiger12, LLC\",\"copyright\":\"(C) 2005 - 2021 Tiger12, LLC. All rights reserved.\",\"authorEmail\":\"gantry@tiger12.com\",\"authorUrl\":\"http:\\/\\/tiger12.com\",\"version\":\"5.6.0\",\"description\":\"PLG_SYSTEM_GANTRY5_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"gantry5\"}', '{\"production\":\"0\",\"use_assignments\":\"1\",\"use_media_folder\":\"0\",\"asset_timestamps\":\"1\",\"asset_timestamps_period\":\"7\",\"compile_yaml\":\"1\",\"compile_twig\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(257, 263, 'plg_quickicon_gantry5', 'plugin', 'gantry5', '', 'quickicon', 0, 1, 1, 0, 0, '{\"name\":\"plg_quickicon_gantry5\",\"type\":\"plugin\",\"creationDate\":\"February 24, 2026\",\"author\":\"Tiger12, LLC\",\"copyright\":\"(C) 2005 - 2021 Tiger12, LLC. All rights reserved.\",\"authorEmail\":\"gantry@tiger12.com\",\"authorUrl\":\"http:\\/\\/tiger12.com\",\"version\":\"5.6.0\",\"description\":\"PLG_QUICKICON_GANTRY5_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"gantry5\"}', '{\"context\":\"mod_quickicon\"}', '', NULL, NULL, 0, 0, NULL),
(258, 263, 'plg_gantry5_preset', 'plugin', 'preset', '', 'gantry5', 0, 0, 1, 0, 0, '{\"name\":\"plg_gantry5_preset\",\"type\":\"plugin\",\"creationDate\":\"February 24, 2026\",\"author\":\"Tiger12, LLC\",\"copyright\":\"(C) 2005 - 2021 Tiger12, LLC. All rights reserved.\",\"authorEmail\":\"gantry@tiger12.com\",\"authorUrl\":\"http:\\/\\/tiger12.com\",\"version\":\"5.6.0\",\"description\":\"PLG_GANTRY5_PRESET_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"preset\"}', '{\"preset\":\"presets\",\"reset\":\"reset-settings\"}', '', NULL, NULL, 0, 0, NULL),
(259, 263, 'mod_gantry5_particle', 'module', 'mod_gantry5_particle', '', '', 0, 1, 0, 0, 0, '{\"name\":\"mod_gantry5_particle\",\"type\":\"module\",\"creationDate\":\"February 24, 2026\",\"author\":\"Tiger12, LLC\",\"copyright\":\"(C) 2005 - 2022 Tiger12, LLC. All rights reserved.\",\"authorEmail\":\"gantry@tiger12.com\",\"authorUrl\":\"http:\\/\\/tiger12.com\",\"version\":\"5.6.0\",\"description\":\"MOD_GANTRY5_PARTICLE_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"mod_gantry5_particle\"}', '{\"owncache\":\"0\",\"cache_time\":\"900\"}', '', NULL, NULL, 0, 0, NULL),
(260, 263, 'Gantry 5 Framework', 'library', 'gantry5', '', '', 0, 1, 1, 0, 0, '{\"name\":\"Gantry 5 Framework\",\"type\":\"library\",\"creationDate\":\"February 24, 2026\",\"author\":\"Tiger12, LLC\",\"copyright\":\"(C) 2005 - 2021 Tiger12, LLC. All rights reserved.\",\"authorEmail\":\"gantry@tiger12.com\",\"authorUrl\":\"http:\\/\\/tiger12.com\",\"version\":\"5.6.0\",\"description\":\"LIB_GANTRY5_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"gantry5\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(261, 263, 'gantry5_nucleus', 'file', 'gantry5_nucleus', '', '', 0, 1, 0, 0, 0, '{\"name\":\"gantry5_nucleus\",\"type\":\"file\",\"creationDate\":\"February 24, 2026\",\"author\":\"Tiger12, LLC\",\"copyright\":\"(C) 2005 - 2021 Tiger12, LLC. All rights reserved.\",\"authorEmail\":\"gantry@tiger12.com\",\"authorUrl\":\"http:\\/\\/tiger12.com\",\"version\":\"5.6.0\",\"description\":\"GANTRY5_NUCLEUS_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(262, 263, 'com_gantry5', 'component', 'com_gantry5', '', '', 1, 1, 0, 0, 0, '{\"name\":\"com_gantry5\",\"type\":\"component\",\"creationDate\":\"February 24, 2026\",\"author\":\"Tiger12, LLC\",\"copyright\":\"(C) 2005 - 2021 Tiger12, LLC. All rights reserved.\",\"authorEmail\":\"gantry@tiger12.com\",\"authorUrl\":\"http:\\/\\/tiger12.com\",\"version\":\"5.6.0\",\"description\":\"COM_GANTRY5_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"gantry5\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(263, 0, 'pkg_gantry5', 'package', 'pkg_gantry5', '', '', 0, 1, 1, 0, 0, '{\"name\":\"pkg_gantry5\",\"type\":\"package\",\"creationDate\":\"February 24, 2026\",\"author\":\"Tiger12, LLC\",\"copyright\":\"(C) 2005 - 2021 Tiger12, LLC. All rights reserved.\",\"authorEmail\":\"gantry@tiger12.com\",\"authorUrl\":\"http:\\/\\/tiger12.com\",\"version\":\"5.6.0\",\"description\":\"PKG_GANTRY5_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_gantry5\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(264, 0, 'jl_bruno_free', 'template', 'jl_bruno_free', '', '', 0, 1, 1, 0, 0, '{\"name\":\"jl_bruno_free\",\"type\":\"template\",\"creationDate\":\"March 10, 2026\",\"author\":\"JoomLead\",\"copyright\":\"(C) 2026 JoomLead. All rights reserved.\",\"authorEmail\":\"support@joomlead.com\",\"authorUrl\":\"https:\\/\\/www.joomlead.com\",\"version\":\"1.2.5\",\"description\":\"TPL_JL_BRUNO_FREE_DESC\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"templateDetails\"}', '[]', '', NULL, NULL, 0, 0, NULL),
(265, 0, 'jl_redchili', 'template', 'jl_redchili', '', '', 0, 1, 1, 0, 0, '{\"name\":\"jl_redchili\",\"type\":\"template\",\"creationDate\":\"March 10, 2026\",\"author\":\"JoomLead\",\"copyright\":\"(C) 2026 JoomLead. All rights reserved.\",\"authorEmail\":\"support@joomlead.com\",\"authorUrl\":\"http:\\/\\/www.joomlead.com\",\"version\":\"2.1.0\",\"description\":\"TPL_JL_REDCHILI_DESC\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"templateDetails\"}', '[]', '', NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_fields`
--

CREATE TABLE `sb_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` mediumtext NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_fields_categories`
--

CREATE TABLE `sb_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_fields_groups`
--

CREATE TABLE `sb_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_fields_values`
--

CREATE TABLE `sb_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_filters`
--

CREATE TABLE `sb_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_links`
--

CREATE TABLE `sb_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_finder_links`
--

INSERT INTO `sb_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:welcome&catid=8', 'welcome', ' Est. 2020 · Kampala, Uganda Welcome to Spice Bites Restaurant A Taste of Flavor in Every Bite Reserve a Table View Our Menu → 500+Daily Guests 40+Signature Dishes 5 ★Guest Rating 5 yrsOf Excellence Explore 🍽️ Open Daily 11:00 AM – 10:00 PM Our Story Crafted with Passion, Served with Heart Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest locally sourced ingredients — a love letter to African flavors. 🌿 Farm-Fresh Ingredients Locally sourced produce, delivered fresh every morning to our kitchen. 👨‍🍳 Master Chefs at Work Culinary artisans with years of expertise in African and continental cuisine. ✨ An Atmosphere That Delights Warm, cozy settings perfect for families, dates, and celebrations alike. What We Serve Our Specialties Every dish tells a story — prepared fresh daily with bold flavors and the finest spices Signature Grilled Chicken & BBQ Smoky, tender cuts slow-grilled over charcoal and finished in our house BBQ marinade. Traditional African Local Dishes Authentic East African recipes passed down through generations — comforting and deeply flavorful. Beverages Fresh Tropical Juices Cold-pressed blends of mango, passion fruit, watermelon and more — seasonal and always fresh. Desserts Indulgent Desserts House-baked sweets and chilled treats crafted to give your meal the perfect sweet finale. Why Spice Bites A Dining Experience Like No Other From your first visit to your hundredth, we make every meal memorable Fresh, Quality Ingredients We source locally and prepare daily so every dish bursts with natural flavor you can taste in every bite. Experienced Chefs Our culinary team brings years of mastery to every plate — blending tradition with creative flair. Cozy Atmosphere A warm, inviting setting designed for intimate dinners, lively family gatherings, and every moment in between. Fast & Friendly Service Attentive staff who treat every guest like family, ensuring your experience is seamless from arrival to dessert. ★★★★★ \"The food took me back home. The flavors, the warmth, the atmosphere — Spice Bites is truly special.\" — Amara N., Kampala Book Your Seat Reserve Your Table Today Join hundreds of guests who make Spice Bites their favourite dining destination in Kampala Book a Table 📞 Call Us Now ', '2026-04-09 12:38:54', 'a5d45b8104d9439bf8aa52f04722d6d6', 1, 1, 1, '*', '2026-04-09 07:04:21', NULL, '2026-04-09 07:04:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a323432303a22204573742e203230323020c2b7204b616d70616c612c205567616e64612057656c636f6d6520746f2053706963652042697465732052657374617572616e742041205461737465206f6620466c61766f7220696e204576657279204269746520526573657276652061205461626c652056696577204f7572204d656e7520e28692203530302b4461696c79204775657374732034302b5369676e617475726520446973686573203520e29885477565737420526174696e672035207972734f6620457863656c6c656e6365204578706c6f726520f09f8dbdefb88f204f70656e204461696c792031313a303020414d20e280932031303a303020504d204f75722053746f7279204372616674656420776974682050617373696f6e2c20536572766564207769746820486561727420457870657269656e636520746865207065726665637420626c656e64206f662074617374652c2061726f6d612c20616e642061746d6f7370686572652061742053706963652042697465732052657374617572616e742e205765206272696e6720796f75206120726963682073656c656374696f6e206f662066726573686c79207072657061726564206d65616c73206372616674656420776974682070617373696f6e20616e64207468652066696e657374206c6f63616c6c7920736f757263656420696e6772656469656e747320e280942061206c6f7665206c657474657220746f204166726963616e20666c61766f72732e20f09f8cbf204661726d2d467265736820496e6772656469656e7473204c6f63616c6c7920736f75726365642070726f647563652c2064656c697665726564206672657368206576657279206d6f726e696e6720746f206f7572206b69746368656e2e20f09f91a8e2808df09f8db3204d617374657220436865667320617420576f726b2043756c696e617279206172746973616e732077697468207965617273206f662065787065727469736520696e204166726963616e20616e6420636f6e74696e656e74616c2063756973696e652e20e29ca820416e2041746d6f73706865726520546861742044656c6967687473205761726d2c20636f7a792073657474696e6773207065726665637420666f722066616d696c6965732c2064617465732c20616e642063656c6562726174696f6e7320616c696b652e2057686174205765205365727665204f7572205370656369616c7469657320457665727920646973682074656c6c7320612073746f727920e28094207072657061726564206672657368206461696c79207769746820626f6c6420666c61766f727320616e64207468652066696e65737420737069636573205369676e6174757265204772696c6c656420436869636b656e20262042425120536d6f6b792c2074656e646572206375747320736c6f772d6772696c6c6564206f7665722063686172636f616c20616e642066696e697368656420696e206f757220686f75736520424251206d6172696e6164652e20547261646974696f6e616c204166726963616e204c6f63616c204469736865732041757468656e7469632045617374204166726963616e20726563697065732070617373656420646f776e207468726f7567682067656e65726174696f6e7320e2809420636f6d666f7274696e6720616e6420646565706c7920666c61766f7266756c2e204265766572616765732046726573682054726f706963616c204a756963657320436f6c642d7072657373656420626c656e6473206f66206d616e676f2c2070617373696f6e2066727569742c2077617465726d656c6f6e20616e64206d6f726520e2809420736561736f6e616c20616e6420616c776179732066726573682e20446573736572747320496e64756c67656e7420446573736572747320486f7573652d62616b65642073776565747320616e64206368696c6c656420747265617473206372616674656420746f206769766520796f7572206d65616c2074686520706572666563742073776565742066696e616c652e2057687920537069636520426974657320412044696e696e6720457870657269656e6365204c696b65204e6f204f746865722046726f6d20796f757220666972737420766973697420746f20796f75722068756e6472656474682c207765206d616b65206576657279206d65616c206d656d6f7261626c652046726573682c205175616c69747920496e6772656469656e747320576520736f75726365206c6f63616c6c7920616e642070726570617265206461696c7920736f2065766572792064697368206275727374732077697468206e61747572616c20666c61766f7220796f752063616e20746173746520696e20657665727920626974652e20457870657269656e636564204368656673204f75722063756c696e617279207465616d206272696e6773207965617273206f66206d61737465727920746f20657665727920706c61746520e2809420626c656e64696e6720747261646974696f6e207769746820637265617469766520666c6169722e20436f7a792041746d6f7370686572652041207761726d2c20696e766974696e672073657474696e672064657369676e656420666f7220696e74696d6174652064696e6e6572732c206c6976656c792066616d696c7920676174686572696e67732c20616e64206576657279206d6f6d656e7420696e206265747765656e2e2046617374202620467269656e646c79205365727669636520417474656e746976652073746166662077686f207472656174206576657279206775657374206c696b652066616d696c792c20656e737572696e6720796f757220657870657269656e6365206973207365616d6c6573732066726f6d206172726976616c20746f20646573736572742e20e29885e29885e29885e29885e29885202254686520666f6f6420746f6f6b206d65206261636b20686f6d652e2054686520666c61766f72732c20746865207761726d74682c207468652061746d6f73706865726520e28094205370696365204269746573206973207472756c79207370656369616c2e2220e2809420416d617261204e2e2c204b616d70616c6120426f6f6b20596f75722053656174205265736572766520596f7572205461626c6520546f646179204a6f696e2068756e6472656473206f66206775657374732077686f206d616b65205370696365204269746573207468656972206661766f75726974652064696e696e672064657374696e6174696f6e20696e204b616d70616c6120426f6f6b2061205461626c6520f09f939e2043616c6c205573204e6f7720223b693a333b613a32353a7b733a323a226964223b693a313b733a353a22616c696173223b733a373a2277656c636f6d65223b733a373a2273756d6d617279223b733a32353935383a223c21444f43545950452068746d6c3e0d0a3c68746d6c206c616e673d22656e223e0d0a3c686561643e0d0a3c6d65746120636861727365743d225554462d38223e0d0a3c6d657461206e616d653d2276696577706f72742220636f6e74656e743d2277696474683d6465766963652d77696474682c20696e697469616c2d7363616c653d312e30223e0d0a3c7469746c653e53706963652042697465732052657374617572616e743c2f7469746c653e0d0a3c6c696e6b20687265663d2268747470733a2f2f666f6e74732e676f6f676c65617069732e636f6d2f637373323f66616d696c793d506c6179666169722b446973706c61793a6974616c2c7767687440302c3430303b302c3630303b302c3730303b312c3430303b312c3630302666616d696c793d4f75746669743a77676874403330303b3430303b3530303b36303026646973706c61793d73776170222072656c3d227374796c657368656574223e0d0a3c7374796c653e0d0a20202a2c202a3a3a6265666f72652c202a3a3a6166746572207b20626f782d73697a696e673a20626f726465722d626f783b206d617267696e3a20303b2070616464696e673a20303b207d0d0a0d0a20203a726f6f74207b0d0a202020202d2d73706963653a20236536376532323b0d0a202020202d2d73706963652d6461726b3a20236366366431373b0d0a202020202d2d73706963652d6c696768743a20236664663065343b0d0a202020202d2d637265616d3a20236664663866323b0d0a202020202d2d6461726b3a20233161313230383b0d0a202020202d2d6461726b2d6d69643a20233264323030653b0d0a202020202d2d746578743a20233361326131303b0d0a202020202d2d746578742d6d757465643a20233761363234383b0d0a202020202d2d626f726465723a2072676261283233302c3132362c33342c302e3138293b0d0a202020202d2d666f6e742d646973706c61793a2027506c61796661697220446973706c6179272c2047656f726769612c2073657269663b0d0a202020202d2d666f6e742d626f64793a20274f7574666974272c2073616e732d73657269663b0d0a20207d0d0a0d0a202068746d6c207b207363726f6c6c2d6265686176696f723a20736d6f6f74683b207d0d0a0d0a2020626f6479207b0d0a20202020666f6e742d66616d696c793a20766172282d2d666f6e742d626f6479293b0d0a202020206261636b67726f756e643a20766172282d2d637265616d293b0d0a20202020636f6c6f723a20766172282d2d74657874293b0d0a202020206f766572666c6f772d783a2068696464656e3b0d0a20207d0d0a0d0a20202f2a20e29480e29480204845524f20e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e6865726f207b0d0a20202020706f736974696f6e3a2072656c61746976653b0d0a202020206d696e2d6865696768743a2031303076683b0d0a20202020646973706c61793a20666c65783b0d0a20202020666c65782d646972656374696f6e3a20636f6c756d6e3b0d0a202020206a7573746966792d636f6e74656e743a2063656e7465723b0d0a20202020616c69676e2d6974656d733a2063656e7465723b0d0a20202020746578742d616c69676e3a2063656e7465723b0d0a2020202070616464696e673a2038307078203234707820363070783b0d0a202020206f766572666c6f773a2068696464656e3b0d0a202020206261636b67726f756e643a20766172282d2d6461726b293b0d0a20207d0d0a0d0a20202e6865726f2d6267207b0d0a20202020706f736974696f6e3a206162736f6c7574653b20696e7365743a20303b0d0a202020206261636b67726f756e643a2075726c2827696d616765732f72657374617572616e742f6865726f2e706e6727292063656e7465722f636f766572206e6f2d7265706561743b0d0a202020206f7061636974793a20302e33383b0d0a202020207472616e73666f726d3a207363616c6528312e3034293b0d0a20202020616e696d6174696f6e3a20736c6f777a6f6f6d2031387320656173652d696e2d6f757420696e66696e69746520616c7465726e6174653b0d0a20207d0d0a0d0a2020406b65796672616d657320736c6f777a6f6f6d207b2066726f6d207b207472616e73666f726d3a207363616c6528312e3034293b207d20746f207b207472616e73666f726d3a207363616c6528312e3132293b207d207d0d0a0d0a20202e6865726f2d6f7665726c6179207b0d0a20202020706f736974696f6e3a206162736f6c7574653b20696e7365743a20303b0d0a202020206261636b67726f756e643a2072616469616c2d6772616469656e7428656c6c697073652061742063656e74657220746f702c20726762612832362c31382c382c302e33292030252c20726762612832362c31382c382c302e37382920373025292c0d0a202020202020202020202020202020206c696e6561722d6772616469656e7428746f20626f74746f6d2c207472616e73706172656e74203430252c20766172282d2d6461726b292031303025293b0d0a20207d0d0a0d0a20202f2a206465636f7261746976652073706963652072696e67202a2f0d0a20202e6865726f2d72696e67207b0d0a20202020706f736974696f6e3a206162736f6c7574653b0d0a2020202077696474683a2035323070783b206865696768743a2035323070783b0d0a20202020626f726465722d7261646975733a203530253b0d0a20202020626f726465723a2031707820736f6c69642072676261283233302c3132362c33342c302e3138293b0d0a20202020746f703a203530253b206c6566743a203530253b0d0a202020207472616e73666f726d3a207472616e736c617465282d3530252c202d353025293b0d0a20202020616e696d6174696f6e3a2072696e6770756c736520347320656173652d696e2d6f757420696e66696e6974653b0d0a20207d0d0a20202e6865726f2d72696e673a6e74682d6368696c64283329207b2077696474683a2037303070783b206865696768743a2037303070783b20626f726465722d636f6c6f723a2072676261283233302c3132362c33342c302e3039293b20616e696d6174696f6e2d64656c61793a2031733b207d0d0a20202e6865726f2d72696e673a6e74682d6368696c64283429207b2077696474683a2039303070783b206865696768743a2039303070783b20626f726465722d636f6c6f723a2072676261283233302c3132362c33342c302e3035293b20616e696d6174696f6e2d64656c61793a2032733b207d0d0a0d0a2020406b65796672616d65732072696e6770756c7365207b0d0a2020202030252c2031303025207b206f7061636974793a20302e363b207472616e73666f726d3a207472616e736c617465282d3530252c202d35302529207363616c652831293b207d0d0a20202020353025207b206f7061636974793a20313b207472616e73666f726d3a207472616e736c617465282d3530252c202d35302529207363616c6528312e303135293b207d0d0a20207d0d0a0d0a20202e6865726f2d636f6e74656e74207b20706f736974696f6e3a2072656c61746976653b207a2d696e6465783a20323b206d61782d77696474683a2037363070783b207d0d0a0d0a20202e6865726f2d6261646765207b0d0a20202020646973706c61793a20696e6c696e652d666c65783b20616c69676e2d6974656d733a2063656e7465723b206761703a203870783b0d0a202020206261636b67726f756e643a2072676261283233302c3132362c33342c302e3138293b0d0a20202020626f726465723a2031707820736f6c69642072676261283233302c3132362c33342c302e34293b0d0a20202020636f6c6f723a20236635623936653b0d0a20202020666f6e742d73697a653a20313170783b206c65747465722d73706163696e673a20302e3135656d3b20746578742d7472616e73666f726d3a207570706572636173653b20666f6e742d7765696768743a203530303b0d0a2020202070616464696e673a2036707820313870783b20626f726465722d7261646975733a20333070783b0d0a202020206d617267696e2d626f74746f6d3a20323870783b0d0a20202020616e696d6174696f6e3a2066616465696e203173206561736520626f74683b0d0a20207d0d0a20202e6865726f2d62616467653a3a6265666f7265207b20636f6e74656e743a2027273b2077696474683a203670783b206865696768743a203670783b20626f726465722d7261646975733a203530253b206261636b67726f756e643a20236536376532323b20646973706c61793a20696e6c696e652d626c6f636b3b207d0d0a0d0a20202e6865726f206831207b0d0a20202020666f6e742d66616d696c793a20766172282d2d666f6e742d646973706c6179293b0d0a20202020666f6e742d73697a653a20636c616d7028343070782c203776772c2037327078293b0d0a20202020666f6e742d7765696768743a203730303b0d0a20202020636f6c6f723a20236666663b0d0a202020206c696e652d6865696768743a20312e313b0d0a202020206d617267696e2d626f74746f6d3a20323070783b0d0a20202020616e696d6174696f6e3a2066616465696e20317320302e3273206561736520626f74683b0d0a20207d0d0a0d0a20202e6865726f20683120656d207b0d0a20202020666f6e742d7374796c653a206974616c69633b0d0a20202020636f6c6f723a20236635613632333b0d0a20207d0d0a0d0a20202e6865726f2d737562207b0d0a20202020666f6e742d73697a653a20636c616d7028313670782c20322e3276772c2032307078293b0d0a20202020636f6c6f723a2072676261283235352c3235352c3235352c302e3732293b0d0a20202020666f6e742d7765696768743a203330303b0d0a202020206d617267696e2d626f74746f6d3a20343470783b0d0a202020206c65747465722d73706163696e673a20302e3033656d3b0d0a20202020616e696d6174696f6e3a2066616465696e20317320302e3473206561736520626f74683b0d0a20207d0d0a0d0a20202e6865726f2d616374696f6e73207b0d0a20202020646973706c61793a20666c65783b206761703a20313470783b206a7573746966792d636f6e74656e743a2063656e7465723b20666c65782d777261703a20777261703b0d0a20202020616e696d6174696f6e3a2066616465696e20317320302e3673206561736520626f74683b0d0a20207d0d0a0d0a20202e62746e2d7072696d617279207b0d0a202020206261636b67726f756e643a20766172282d2d7370696365293b0d0a20202020636f6c6f723a20236666663b20666f6e742d66616d696c793a20766172282d2d666f6e742d626f6479293b20666f6e742d73697a653a20313570783b20666f6e742d7765696768743a203530303b0d0a2020202070616464696e673a203135707820333470783b20626f726465722d7261646975733a20353070783b20746578742d6465636f726174696f6e3a206e6f6e653b0d0a20202020646973706c61793a20696e6c696e652d666c65783b20616c69676e2d6974656d733a2063656e7465723b206761703a203870783b0d0a202020207472616e736974696f6e3a206261636b67726f756e6420302e3235732c207472616e73666f726d20302e32732c20626f782d736861646f7720302e3235733b0d0a20202020626f782d736861646f773a20302036707820323870782072676261283233302c3132362c33342c302e3435293b0d0a20207d0d0a20202e62746e2d7072696d6172793a686f766572207b206261636b67726f756e643a20766172282d2d73706963652d6461726b293b207472616e73666f726d3a207472616e736c61746559282d327078293b20626f782d736861646f773a2030203132707820333670782072676261283233302c3132362c33342c302e35293b207d0d0a0d0a20202e62746e2d67686f7374207b0d0a202020206261636b67726f756e643a207472616e73706172656e743b20636f6c6f723a2072676261283235352c3235352c3235352c302e3835293b0d0a20202020666f6e742d66616d696c793a20766172282d2d666f6e742d626f6479293b20666f6e742d73697a653a20313570783b20666f6e742d7765696768743a203430303b0d0a2020202070616464696e673a203135707820333470783b20626f726465722d7261646975733a20353070783b20746578742d6465636f726174696f6e3a206e6f6e653b0d0a20202020626f726465723a2031707820736f6c69642072676261283235352c3235352c3235352c302e33293b0d0a20202020646973706c61793a20696e6c696e652d666c65783b20616c69676e2d6974656d733a2063656e7465723b206761703a203870783b0d0a202020207472616e736974696f6e3a20626f726465722d636f6c6f7220302e3235732c206261636b67726f756e6420302e3235732c207472616e73666f726d20302e32733b0d0a20207d0d0a20202e62746e2d67686f73743a686f766572207b20626f726465722d636f6c6f723a2072676261283235352c3235352c3235352c302e37293b206261636b67726f756e643a2072676261283235352c3235352c3235352c302e3037293b207472616e73666f726d3a207472616e736c61746559282d327078293b207d0d0a0d0a20202e6865726f2d7374617473207b0d0a20202020646973706c61793a20666c65783b206a7573746966792d636f6e74656e743a2063656e7465723b206761703a20303b0d0a202020206d617267696e2d746f703a20363870783b20626f726465722d746f703a2031707820736f6c69642072676261283235352c3235352c3235352c302e31293b0d0a2020202070616464696e672d746f703a20333270783b0d0a20202020616e696d6174696f6e3a2066616465696e20317320302e3873206561736520626f74683b0d0a20207d0d0a20202e6865726f2d73746174207b0d0a2020202070616464696e673a203020343070783b0d0a20202020626f726465722d72696768743a2031707820736f6c69642072676261283235352c3235352c3235352c302e31293b0d0a20202020746578742d616c69676e3a2063656e7465723b0d0a20207d0d0a20202e6865726f2d737461743a6c6173742d6368696c64207b20626f726465722d72696768743a206e6f6e653b207d0d0a20202e6865726f2d73746174207374726f6e67207b20646973706c61793a20626c6f636b3b20666f6e742d66616d696c793a20766172282d2d666f6e742d646973706c6179293b20666f6e742d73697a653a20333470783b20666f6e742d7765696768743a203630303b20636f6c6f723a20766172282d2d7370696365293b206c696e652d6865696768743a20313b207d0d0a20202e6865726f2d73746174207370616e207b20666f6e742d73697a653a20313270783b20636f6c6f723a2072676261283235352c3235352c3235352c302e3535293b20746578742d7472616e73666f726d3a207570706572636173653b206c65747465722d73706163696e673a20302e31656d3b206d617267696e2d746f703a203670783b20646973706c61793a20626c6f636b3b207d0d0a0d0a2020406b65796672616d65732066616465696e207b2066726f6d207b206f7061636974793a20303b207472616e73666f726d3a207472616e736c617465592832307078293b207d20746f207b206f7061636974793a20313b207472616e73666f726d3a206e6f6e653b207d207d0d0a0d0a20202f2a20e29480e29480205343524f4c4c204152524f5720e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e7363726f6c6c2d68696e74207b0d0a20202020706f736974696f6e3a206162736f6c7574653b20626f74746f6d3a20323870783b206c6566743a203530253b207472616e73666f726d3a207472616e736c61746558282d353025293b0d0a202020207a2d696e6465783a20323b20646973706c61793a20666c65783b20666c65782d646972656374696f6e3a20636f6c756d6e3b20616c69676e2d6974656d733a2063656e7465723b206761703a203670783b0d0a20207d0d0a20202e7363726f6c6c2d68696e74207370616e207b20666f6e742d73697a653a20313070783b206c65747465722d73706163696e673a20302e3135656d3b20746578742d7472616e73666f726d3a207570706572636173653b20636f6c6f723a2072676261283235352c3235352c3235352c302e34293b207d0d0a20202e7363726f6c6c2d6172726f77207b2077696474683a20323470783b206865696768743a20323470783b20626f726465722d72696768743a20312e35707820736f6c69642072676261283235352c3235352c3235352c302e3335293b20626f726465722d626f74746f6d3a20312e35707820736f6c69642072676261283235352c3235352c3235352c302e3335293b207472616e73666f726d3a20726f74617465283435646567293b20616e696d6174696f6e3a20626f756e636520327320696e66696e6974653b207d0d0a2020406b65796672616d657320626f756e6365207b2030252c313030257b7472616e73666f726d3a726f7461746528343564656729207472616e736c617465592830297d203530257b7472616e73666f726d3a726f7461746528343564656729207472616e736c6174655928357078297d207d0d0a0d0a20202f2a20e29480e294802053454354494f4e2053484152454420e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e73656374696f6e2d6c6162656c207b0d0a20202020646973706c61793a20696e6c696e652d666c65783b20616c69676e2d6974656d733a2063656e7465723b206761703a20313070783b0d0a20202020666f6e742d73697a653a20313170783b206c65747465722d73706163696e673a20302e3136656d3b20746578742d7472616e73666f726d3a207570706572636173653b20636f6c6f723a20766172282d2d7370696365293b0d0a20202020666f6e742d7765696768743a203630303b206d617267696e2d626f74746f6d3a20313470783b0d0a20207d0d0a20202e73656374696f6e2d6c6162656c3a3a6265666f72652c202e73656374696f6e2d6c6162656c3a3a6166746572207b20636f6e74656e743a2027273b20646973706c61793a20626c6f636b3b2077696474683a20323870783b206865696768743a203170783b206261636b67726f756e643a20766172282d2d7370696365293b207d0d0a0d0a20202e73656374696f6e2d7469746c65207b0d0a20202020666f6e742d66616d696c793a20766172282d2d666f6e742d646973706c6179293b0d0a20202020666f6e742d73697a653a20636c616d7028323870782c203476772c2034347078293b0d0a20202020666f6e742d7765696768743a203630303b0d0a20202020636f6c6f723a20766172282d2d6461726b293b0d0a202020206c696e652d6865696768743a20312e323b0d0a20207d0d0a0d0a20202e73656374696f6e2d7469746c6520656d207b20666f6e742d7374796c653a206974616c69633b20636f6c6f723a20766172282d2d7370696365293b207d0d0a0d0a20202f2a20e29480e294802041424f555420e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e61626f7574207b0d0a2020202070616464696e673a20313030707820323470783b0d0a202020206d61782d77696474683a203131303070783b206d617267696e3a206175746f3b0d0a20202020646973706c61793a20677269643b20677269642d74656d706c6174652d636f6c756d6e733a20316672203166723b206761703a20373270783b20616c69676e2d6974656d733a2063656e7465723b0d0a20207d0d0a0d0a2020406d65646961286d61782d77696474683a20373230707829207b202e61626f7574207b20677269642d74656d706c6174652d636f6c756d6e733a203166723b206761703a20343070783b207d207d0d0a0d0a20202e61626f75742d696d6167652d77726170207b0d0a20202020706f736974696f6e3a2072656c61746976653b20626f726465722d7261646975733a20323470783b206f766572666c6f773a2068696464656e3b0d0a202020206173706563742d726174696f3a20342f353b206261636b67726f756e643a20766172282d2d6461726b2d6d6964293b0d0a20207d0d0a20202e61626f75742d696d6167652d7772617020696d67207b2077696474683a20313030253b206865696768743a20313030253b206f626a6563742d6669743a20636f7665723b20646973706c61793a20626c6f636b3b207d0d0a20202e61626f75742d696d6167652d6261646765207b0d0a20202020706f736974696f6e3a206162736f6c7574653b20626f74746f6d3a20323470783b206c6566743a20323470783b2072696768743a20323470783b0d0a202020206261636b67726f756e643a20726762612832362c31382c382c302e3835293b0d0a202020206261636b64726f702d66696c7465723a20626c757228387078293b0d0a20202020626f726465723a2031707820736f6c69642072676261283233302c3132362c33342c302e3235293b0d0a20202020626f726465722d7261646975733a20313470783b2070616464696e673a203138707820323070783b0d0a20202020646973706c61793a20666c65783b20616c69676e2d6974656d733a2063656e7465723b206761703a20313670783b0d0a20207d0d0a20202e62616467652d69636f6e207b20666f6e742d73697a653a20323870783b206c696e652d6865696768743a20313b207d0d0a20202e62616467652d74657874207374726f6e67207b20646973706c61793a20626c6f636b3b20636f6c6f723a20236666663b20666f6e742d73697a653a20313570783b20666f6e742d7765696768743a203530303b207d0d0a20202e62616467652d74657874207370616e207b20636f6c6f723a2072676261283235352c3235352c3235352c302e3535293b20666f6e742d73697a653a20313270783b207d0d0a0d0a20202e61626f75742d74657874202e73656374696f6e2d6c6162656c207b206d617267696e2d626f74746f6d3a20313670783b207d0d0a20202e61626f75742d74657874202e73656374696f6e2d7469746c65207b206d617267696e2d626f74746f6d3a20323070783b207d0d0a20202e61626f75742d64657363207b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20312e383b20636f6c6f723a20766172282d2d746578742d6d75746564293b206d617267696e2d626f74746f6d3a20333670783b207d0d0a0d0a20202e61626f75742d6665617475726573207b20646973706c61793a20666c65783b20666c65782d646972656374696f6e3a20636f6c756d6e3b206761703a20313870783b207d0d0a20202e61626f75742d66656174757265207b0d0a20202020646973706c61793a20666c65783b20616c69676e2d6974656d733a20666c65782d73746172743b206761703a20313670783b0d0a2020202070616464696e673a203138707820323070783b0d0a202020206261636b67726f756e643a20236666663b0d0a20202020626f726465723a2031707820736f6c696420766172282d2d626f72646572293b0d0a20202020626f726465722d7261646975733a20313470783b0d0a202020207472616e736974696f6e3a20626f726465722d636f6c6f7220302e3235732c20626f782d736861646f7720302e3235733b0d0a20207d0d0a20202e61626f75742d666561747572653a686f766572207b20626f726465722d636f6c6f723a2072676261283233302c3132362c33342c302e34293b20626f782d736861646f773a20302034707820323070782072676261283233302c3132362c33342c302e31293b207d0d0a20202e666561747572652d69636f6e207b0d0a2020202077696474683a20343270783b206865696768743a20343270783b20626f726465722d7261646975733a20313070783b0d0a202020206261636b67726f756e643a20766172282d2d73706963652d6c69676874293b20646973706c61793a20666c65783b20616c69676e2d6974656d733a2063656e7465723b206a7573746966792d636f6e74656e743a2063656e7465723b0d0a20202020666c65782d736872696e6b3a20303b20666f6e742d73697a653a20313870783b0d0a20207d0d0a20202e666561747572652d74657874207374726f6e67207b20646973706c61793a20626c6f636b3b20666f6e742d73697a653a20313470783b20666f6e742d7765696768743a203530303b20636f6c6f723a20766172282d2d6461726b293b206d617267696e2d626f74746f6d3a203370783b207d0d0a20202e666561747572652d74657874207370616e207b20666f6e742d73697a653a20313370783b20636f6c6f723a20766172282d2d746578742d6d75746564293b206c696e652d6865696768743a20312e353b207d0d0a0d0a20202f2a20e29480e29480205350454349414c5449455320e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e7370656369616c74696573207b0d0a202020206261636b67726f756e643a20766172282d2d6461726b293b0d0a2020202070616464696e673a20313030707820323470783b0d0a20202020706f736974696f6e3a2072656c61746976653b206f766572666c6f773a2068696464656e3b0d0a20207d0d0a20202e7370656369616c746965733a3a6265666f7265207b0d0a20202020636f6e74656e743a20274d454e55273b0d0a20202020706f736974696f6e3a206162736f6c7574653b20746f703a202d323070783b2072696768743a202d333070783b0d0a20202020666f6e742d66616d696c793a20766172282d2d666f6e742d646973706c6179293b20666f6e742d73697a653a2031383070783b20666f6e742d7765696768743a203730303b0d0a20202020636f6c6f723a2072676261283235352c3235352c3235352c302e303235293b206c696e652d6865696768743a20313b20706f696e7465722d6576656e74733a206e6f6e653b0d0a20202020757365722d73656c6563743a206e6f6e653b0d0a20207d0d0a0d0a20202e737065632d686561646572207b0d0a20202020746578742d616c69676e3a2063656e7465723b206d61782d77696474683a2035363070783b206d617267696e3a2030206175746f20363070783b0d0a20207d0d0a20202e737065632d686561646572202e73656374696f6e2d7469746c65207b20636f6c6f723a20236666663b207d0d0a20202e737065632d6865616465722070207b20636f6c6f723a2072676261283235352c3235352c3235352c302e3535293b20666f6e742d73697a653a20313670783b206d617267696e2d746f703a20313270783b206c696e652d6865696768743a20312e373b207d0d0a0d0a20202e737065632d67726964207b0d0a20202020646973706c61793a20677269643b0d0a20202020677269642d74656d706c6174652d636f6c756d6e733a20726570656174286175746f2d6669742c206d696e6d61782832323070782c2031667229293b0d0a202020206761703a20323470783b206d61782d77696474683a203130303070783b206d617267696e3a206175746f3b0d0a20207d0d0a0d0a20202e737065632d63617264207b0d0a202020206261636b67726f756e643a2072676261283235352c3235352c3235352c302e3034293b0d0a20202020626f726465723a2031707820736f6c69642072676261283235352c3235352c3235352c302e3038293b0d0a20202020626f726465722d7261646975733a20323070783b206f766572666c6f773a2068696464656e3b0d0a202020207472616e736974696f6e3a207472616e73666f726d20302e33732c20626f726465722d636f6c6f7220302e33732c20626f782d736861646f7720302e33733b0d0a20202020637572736f723a2064656661756c743b0d0a20207d0d0a20202e737065632d636172643a686f766572207b0d0a202020207472616e73666f726d3a207472616e736c61746559282d387078293b0d0a20202020626f726465722d636f6c6f723a2072676261283233302c3132362c33342c302e34293b0d0a20202020626f782d736861646f773a203020323070782035307078207267626128302c302c302c302e34292c203020302030203170782072676261283233302c3132362c33342c302e3135293b0d0a20207d0d0a0d0a20202e737065632d696d67207b0d0a2020202077696474683a20313030253b206173706563742d726174696f3a20342f333b0d0a202020206f626a6563742d6669743a20636f7665723b20646973706c61793a20626c6f636b3b0d0a202020206261636b67726f756e643a20766172282d2d6461726b2d6d6964293b0d0a2020202066696c7465723a206272696768746e65737328302e39293b0d0a202020207472616e736974696f6e3a2066696c74657220302e33732c207472616e73666f726d20302e34733b0d0a20207d0d0a20202e737065632d636172643a686f766572202e737065632d696d67207b2066696c7465723a206272696768746e65737328312e3035293b207472616e73666f726d3a207363616c6528312e3033293b207d0d0a0d0a20202e737065632d696d672d77726170207b206f766572666c6f773a2068696464656e3b207d0d0a0d0a20202e737065632d626f6479207b2070616464696e673a2032307078203232707820323470783b207d0d0a20202e737065632d746167207b0d0a20202020646973706c61793a20696e6c696e652d626c6f636b3b0d0a202020206261636b67726f756e643a2072676261283233302c3132362c33342c302e3138293b20636f6c6f723a20236635613632333b0d0a20202020666f6e742d73697a653a20313070783b206c65747465722d73706163696e673a20302e3132656d3b20746578742d7472616e73666f726d3a207570706572636173653b20666f6e742d7765696768743a203630303b0d0a2020202070616464696e673a2034707820313070783b20626f726465722d7261646975733a20323070783b206d617267696e2d626f74746f6d3a20313070783b0d0a20207d0d0a20202e737065632d6e616d65207b20666f6e742d66616d696c793a20766172282d2d666f6e742d646973706c6179293b20666f6e742d73697a653a20323070783b20666f6e742d7765696768743a203630303b20636f6c6f723a20236666663b206d617267696e2d626f74746f6d3a203870783b207d0d0a20202e737065632d64657363207b20666f6e742d73697a653a20313370783b20636f6c6f723a2072676261283235352c3235352c3235352c302e35293b206c696e652d6865696768743a20312e363b207d0d0a0d0a20202f2a20e29480e294802057485920e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e776879207b0d0a2020202070616464696e673a20313030707820323470783b0d0a202020206d61782d77696474683a203131303070783b206d617267696e3a206175746f3b0d0a20207d0d0a20202e7768792d686561646572207b20746578742d616c69676e3a2063656e7465723b206d617267696e2d626f74746f6d3a20363070783b207d0d0a20202e7768792d686561646572202e73656374696f6e2d7469746c65207b206d617267696e2d746f703a20313270783b207d0d0a20202e7768792d6865616465722070207b20636f6c6f723a20766172282d2d746578742d6d75746564293b20666f6e742d73697a653a20313670783b206d617267696e2d746f703a20313270783b207d0d0a0d0a20202e7768792d67726964207b0d0a20202020646973706c61793a20677269643b0d0a20202020677269642d74656d706c6174652d636f6c756d6e733a20726570656174286175746f2d6669742c206d696e6d61782832323070782c2031667229293b0d0a202020206761703a20323070783b0d0a20207d0d0a0d0a20202e7768792d63617264207b0d0a202020206261636b67726f756e643a20236666663b0d0a20202020626f726465723a2031707820736f6c696420766172282d2d626f72646572293b0d0a20202020626f726465722d7261646975733a20323070783b2070616464696e673a2033307078203236707820333270783b0d0a202020207472616e736974696f6e3a207472616e73666f726d20302e33732c20626f782d736861646f7720302e33732c20626f726465722d636f6c6f7220302e33733b0d0a20202020706f736974696f6e3a2072656c61746976653b206f766572666c6f773a2068696464656e3b0d0a20207d0d0a20202e7768792d636172643a3a6166746572207b0d0a20202020636f6e74656e743a2027273b0d0a20202020706f736974696f6e3a206162736f6c7574653b20626f74746f6d3a20303b206c6566743a20303b2072696768743a20303b206865696768743a203370783b0d0a202020206261636b67726f756e643a20766172282d2d7370696365293b207472616e73666f726d3a207363616c65582830293b207472616e73666f726d2d6f726967696e3a206c6566743b0d0a202020207472616e736974696f6e3a207472616e73666f726d20302e33357320656173653b0d0a20207d0d0a20202e7768792d636172643a686f766572207b207472616e73666f726d3a207472616e736c61746559282d367078293b20626f782d736861646f773a2030203136707820343070782072676261283233302c3132362c33342c302e3132293b20626f726465722d636f6c6f723a2072676261283233302c3132362c33342c302e33293b207d0d0a20202e7768792d636172643a686f7665723a3a6166746572207b207472616e73666f726d3a207363616c65582831293b207d0d0a0d0a20202e7768792d69636f6e2d77726170207b0d0a2020202077696474683a20353470783b206865696768743a20353470783b20626f726465722d7261646975733a20313470783b0d0a202020206261636b67726f756e643a20766172282d2d73706963652d6c69676874293b0d0a20202020646973706c61793a20666c65783b20616c69676e2d6974656d733a2063656e7465723b206a7573746966792d636f6e74656e743a2063656e7465723b0d0a202020206d617267696e2d626f74746f6d3a20323070783b0d0a20207d0d0a20202e7768792d69636f6e2d7772617020737667207b2077696474683a20323470783b206865696768743a20323470783b207d0d0a20202e7768792d636172642d7469746c65207b20666f6e742d66616d696c793a20766172282d2d666f6e742d646973706c6179293b20666f6e742d73697a653a20313970783b20666f6e742d7765696768743a203630303b20636f6c6f723a20766172282d2d6461726b293b206d617267696e2d626f74746f6d3a20313070783b207d0d0a20202e7768792d636172642d64657363207b20666f6e742d73697a653a20313470783b20636f6c6f723a20766172282d2d746578742d6d75746564293b206c696e652d6865696768743a20312e373b207d0d0a0d0a20202f2a20e29480e294802054455354494d4f4e49414c20535452495020e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e74657374696d6f6e69616c73207b0d0a202020206261636b67726f756e643a20766172282d2d73706963652d6c69676874293b0d0a20202020626f726465722d746f703a2031707820736f6c696420766172282d2d626f72646572293b0d0a20202020626f726465722d626f74746f6d3a2031707820736f6c696420766172282d2d626f72646572293b0d0a2020202070616464696e673a203630707820323470783b0d0a20202020746578742d616c69676e3a2063656e7465723b0d0a202020206f766572666c6f773a2068696464656e3b0d0a20207d0d0a20202e74657374696d6f6e69616c7320626c6f636b71756f7465207b0d0a20202020666f6e742d66616d696c793a20766172282d2d666f6e742d646973706c6179293b20666f6e742d7374796c653a206974616c69633b0d0a20202020666f6e742d73697a653a20636c616d7028323070782c203376772c2033307078293b0d0a20202020636f6c6f723a20766172282d2d6461726b293b206d61782d77696474683a2037303070783b206d617267696e3a2030206175746f20323070783b0d0a202020206c696e652d6865696768743a20312e353b0d0a20207d0d0a20202e74657374696d6f6e69616c732063697465207b0d0a20202020666f6e742d73697a653a20313370783b20636f6c6f723a20766172282d2d746578742d6d75746564293b20666f6e742d7374796c653a206e6f726d616c3b206c65747465722d73706163696e673a20302e3038656d3b0d0a20207d0d0a20202e7374617273207b20636f6c6f723a20766172282d2d7370696365293b20666f6e742d73697a653a20313670783b206c65747465722d73706163696e673a203370783b206d617267696e2d626f74746f6d3a20313870783b207d0d0a0d0a20202f2a20e29480e294802043544120e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e6374612d73656374696f6e207b2070616464696e673a2032347078203234707820373270783b207d0d0a20202e6374612d696e6e6572207b0d0a202020206d61782d77696474683a203130303070783b206d617267696e3a206175746f3b0d0a202020206261636b67726f756e643a20766172282d2d6461726b293b0d0a20202020626f726465722d7261646975733a20323870783b0d0a2020202070616464696e673a203830707820343870783b0d0a20202020746578742d616c69676e3a2063656e7465723b0d0a20202020706f736974696f6e3a2072656c61746976653b206f766572666c6f773a2068696464656e3b0d0a20207d0d0a20202e6374612d696e6e65723a3a6265666f7265207b0d0a20202020636f6e74656e743a2027273b0d0a20202020706f736974696f6e3a206162736f6c7574653b20746f703a202d31323070783b2072696768743a202d31323070783b0d0a2020202077696474683a2034303070783b206865696768743a2034303070783b20626f726465722d7261646975733a203530253b0d0a202020206261636b67726f756e643a2072616469616c2d6772616469656e7428636972636c652c2072676261283233302c3132362c33342c302e3138292030252c207472616e73706172656e7420373025293b0d0a20207d0d0a20202e6374612d696e6e65723a3a6166746572207b0d0a20202020636f6e74656e743a2027273b0d0a20202020706f736974696f6e3a206162736f6c7574653b20626f74746f6d3a202d31303070783b206c6566743a202d383070783b0d0a2020202077696474683a2033353070783b206865696768743a2033353070783b20626f726465722d7261646975733a203530253b0d0a202020206261636b67726f756e643a2072616469616c2d6772616469656e7428636972636c652c2072676261283233302c3132362c33342c302e31292030252c207472616e73706172656e7420373025293b0d0a20207d0d0a20202e6374612d696e6e6572202e73656374696f6e2d6c6162656c207b206a7573746966792d636f6e74656e743a2063656e7465723b206d617267696e2d626f74746f6d3a20313870783b207d0d0a20202e6374612d696e6e6572202e73656374696f6e2d6c6162656c3a3a6265666f72652c202e6374612d696e6e6572202e73656374696f6e2d6c6162656c3a3a6166746572207b206261636b67726f756e643a2072676261283233302c3132362c33342c302e35293b207d0d0a20202e6374612d696e6e6572206832207b0d0a20202020666f6e742d66616d696c793a20766172282d2d666f6e742d646973706c6179293b0d0a20202020666f6e742d73697a653a20636c616d7028333070782c203576772c2035327078293b0d0a20202020666f6e742d7765696768743a203730303b20636f6c6f723a20236666663b206c696e652d6865696768743a20312e31353b0d0a202020206d617267696e2d626f74746f6d3a20313670783b20706f736974696f6e3a2072656c61746976653b207a2d696e6465783a20313b0d0a20207d0d0a20202e6374612d696e6e657220683220656d207b20666f6e742d7374796c653a206974616c69633b20636f6c6f723a20766172282d2d7370696365293b207d0d0a20202e6374612d696e6e65722070207b20636f6c6f723a2072676261283235352c3235352c3235352c302e36293b20666f6e742d73697a653a20313770783b206d617267696e2d626f74746f6d3a20343070783b20706f736974696f6e3a2072656c61746976653b207a2d696e6465783a20313b207d0d0a20202e6374612d696e6e6572202e6374612d62746e73207b20646973706c61793a20666c65783b206761703a20313470783b206a7573746966792d636f6e74656e743a2063656e7465723b20666c65782d777261703a20777261703b20706f736974696f6e3a2072656c61746976653b207a2d696e6465783a20313b207d0d0a0d0a20202f2a20e29480e2948020464f4f54455220535452495020e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a20202e666f6f746572207b0d0a202020206261636b67726f756e643a20766172282d2d6461726b293b0d0a20202020626f726465722d746f703a2031707820736f6c69642072676261283235352c3235352c3235352c302e3036293b0d0a2020202070616464696e673a20323470783b0d0a20202020746578742d616c69676e3a2063656e7465723b0d0a20202020666f6e742d73697a653a20313370783b0d0a20202020636f6c6f723a2072676261283235352c3235352c3235352c302e33293b0d0a20207d0d0a20202e666f6f746572207374726f6e67207b20636f6c6f723a20766172282d2d7370696365293b20666f6e742d7765696768743a203530303b207d0d0a0d0a20202f2a20e29480e2948020524553504f4e5349564520e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480e29480202a2f0d0a2020406d6564696120286d61782d77696474683a20353430707829207b0d0a202020202e6865726f2d7374617473207b206761703a20303b207d0d0a202020202e6865726f2d73746174207b2070616464696e673a203020313870783b207d0d0a202020202e6865726f2d73746174207374726f6e67207b20666f6e742d73697a653a20323470783b207d0d0a202020202e61626f7574207b2070616464696e673a203630707820323070783b207d0d0a202020202e6374612d696e6e6572207b2070616464696e673a203530707820323470783b207d0d0a20207d0d0a3c2f7374796c653e0d0a3c2f686561643e0d0a3c626f64793e0d0a0d0a3c212d2d20e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590204845524f20e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590202d2d3e0d0a3c73656374696f6e20636c6173733d226865726f223e0d0a20203c64697620636c6173733d226865726f2d6267223e3c2f6469763e0d0a20203c64697620636c6173733d226865726f2d6f7665726c6179223e3c2f6469763e0d0a20203c64697620636c6173733d226865726f2d72696e67223e3c2f6469763e0d0a20203c64697620636c6173733d226865726f2d72696e67223e3c2f6469763e0d0a20203c64697620636c6173733d226865726f2d72696e67223e3c2f6469763e0d0a0d0a20203c64697620636c6173733d226865726f2d636f6e74656e74223e0d0a202020203c64697620636c6173733d226865726f2d6261646765223e4573742e203230323020266e6273703bc2b7266e6273703b204b616d70616c612c205567616e64613c2f6469763e0d0a202020203c68313e57656c636f6d6520746f3c62723e3c656d3e53706963652042697465733c2f656d3e2052657374617572616e743c2f68313e0d0a202020203c7020636c6173733d226865726f2d737562223e41205461737465206f6620466c61766f7220696e20457665727920426974653c2f703e0d0a202020203c64697620636c6173733d226865726f2d616374696f6e73223e0d0a2020202020203c6120687265663d2223726573657276652220636c6173733d2262746e2d7072696d617279223e0d0a20202020202020203c7376672077696474683d22313622206865696768743d223136222076696577426f783d22302030203234203234222066696c6c3d226e6f6e6522207374726f6b653d2263757272656e74436f6c6f7222207374726f6b652d77696474683d2232223e3c7265637420783d22332220793d2234222077696474683d22313822206865696768743d223138222072783d2232222f3e3c6c696e652078313d223136222079313d2232222078323d223136222079323d2236222f3e3c6c696e652078313d2238222079313d2232222078323d2238222079323d2236222f3e3c6c696e652078313d2233222079313d223130222078323d223231222079323d223130222f3e3c2f7376673e0d0a2020202020202020526573657276652061205461626c650d0a2020202020203c2f613e0d0a2020202020203c6120687265663d22236d656e752220636c6173733d2262746e2d67686f7374223e0d0a202020202020202056696577204f7572204d656e752026726172723b0d0a2020202020203c2f613e0d0a202020203c2f6469763e0d0a0d0a202020203c64697620636c6173733d226865726f2d7374617473223e0d0a2020202020203c64697620636c6173733d226865726f2d73746174223e3c7374726f6e673e3530302b3c2f7374726f6e673e3c7370616e3e4461696c79204775657374733c2f7370616e3e3c2f6469763e0d0a2020202020203c64697620636c6173733d226865726f2d73746174223e3c7374726f6e673e34302b3c2f7374726f6e673e3c7370616e3e5369676e6174757265204469736865733c2f7370616e3e3c2f6469763e0d0a2020202020203c64697620636c6173733d226865726f2d73746174223e3c7374726f6e673e3520e298853c2f7374726f6e673e3c7370616e3e477565737420526174696e673c2f7370616e3e3c2f6469763e0d0a2020202020203c64697620636c6173733d226865726f2d73746174223e3c7374726f6e673e35207972733c2f7374726f6e673e3c7370616e3e4f6620457863656c6c656e63653c2f7370616e3e3c2f6469763e0d0a202020203c2f6469763e0d0a20203c2f6469763e0d0a0d0a20203c64697620636c6173733d227363726f6c6c2d68696e74223e0d0a202020203c7370616e3e4578706c6f72653c2f7370616e3e0d0a202020203c64697620636c6173733d227363726f6c6c2d6172726f77223e3c2f6469763e0d0a20203c2f6469763e0d0a3c2f73656374696f6e3e0d0a0d0a3c212d2d20e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e295902041424f555420e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590202d2d3e0d0a3c73656374696f6e20636c6173733d2261626f7574223e0d0a20203c64697620636c6173733d2261626f75742d696d6167652d77726170223e0d0a202020203c696d67207372633d22696d616765732f72657374617572616e742f6865726f2e706e672220616c743d2253706963652042697465732052657374617572616e7420696e746572696f7222206f6e6572726f723d22746869732e7374796c652e6d696e4865696768743d273430307078273b746869732e7374796c652e6261636b67726f756e643d272332643230306527223e0d0a202020203c64697620636c6173733d2261626f75742d696d6167652d6261646765223e0d0a2020202020203c64697620636c6173733d2262616467652d69636f6e223ef09f8dbdefb88f3c2f6469763e0d0a2020202020203c64697620636c6173733d2262616467652d74657874223e0d0a20202020202020203c7374726f6e673e4f70656e204461696c793c2f7374726f6e673e0d0a20202020202020203c7370616e3e31313a303020414d20e280932031303a303020504d3c2f7370616e3e0d0a2020202020203c2f6469763e0d0a202020203c2f6469763e0d0a20203c2f6469763e0d0a0d0a20203c64697620636c6173733d2261626f75742d74657874223e0d0a202020203c64697620636c6173733d2273656374696f6e2d6c6162656c223e4f75722053746f72793c2f6469763e0d0a202020203c683220636c6173733d2273656374696f6e2d7469746c65223e4372616674656420776974682050617373696f6e2c3c62723e3c656d3e53657276656420776974682048656172743c2f656d3e3c2f68323e0d0a202020203c7020636c6173733d2261626f75742d64657363223e457870657269656e636520746865207065726665637420626c656e64206f662074617374652c2061726f6d612c20616e642061746d6f7370686572652061742053706963652042697465732052657374617572616e742e205765206272696e6720796f75206120726963682073656c656374696f6e206f662066726573686c79207072657061726564206d65616c73206372616674656420776974682070617373696f6e20616e64207468652066696e657374206c6f63616c6c7920736f757263656420696e6772656469656e747320e280942061206c6f7665206c657474657220746f204166726963616e20666c61766f72732e3c2f703e0d0a0d0a202020203c64697620636c6173733d2261626f75742d6665617475726573223e0d0a2020202020203c64697620636c6173733d2261626f75742d66656174757265223e0d0a20202020202020203c64697620636c6173733d22666561747572652d69636f6e223ef09f8cbf3c2f6469763e0d0a20202020202020203c64697620636c6173733d22666561747572652d74657874223e0d0a202020202020202020203c7374726f6e673e4661726d2d467265736820496e6772656469656e74733c2f7374726f6e673e0d0a202020202020202020203c7370616e3e4c6f63616c6c7920736f75726365642070726f647563652c2064656c697665726564206672657368206576657279206d6f726e696e6720746f206f7572206b69746368656e2e3c2f7370616e3e0d0a20202020202020203c2f6469763e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d2261626f75742d66656174757265223e0d0a20202020202020203c64697620636c6173733d22666561747572652d69636f6e223ef09f91a8e2808df09f8db33c2f6469763e0d0a20202020202020203c64697620636c6173733d22666561747572652d74657874223e0d0a202020202020202020203c7374726f6e673e4d617374657220436865667320617420576f726b3c2f7374726f6e673e0d0a202020202020202020203c7370616e3e43756c696e617279206172746973616e732077697468207965617273206f662065787065727469736520696e204166726963616e20616e6420636f6e74696e656e74616c2063756973696e652e3c2f7370616e3e0d0a20202020202020203c2f6469763e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d2261626f75742d66656174757265223e0d0a20202020202020203c64697620636c6173733d22666561747572652d69636f6e223ee29ca83c2f6469763e0d0a20202020202020203c64697620636c6173733d22666561747572652d74657874223e0d0a202020202020202020203c7374726f6e673e416e2041746d6f73706865726520546861742044656c69676874733c2f7374726f6e673e0d0a202020202020202020203c7370616e3e5761726d2c20636f7a792073657474696e6773207065726665637420666f722066616d696c6965732c2064617465732c20616e642063656c6562726174696f6e7320616c696b652e3c2f7370616e3e0d0a20202020202020203c2f6469763e0d0a2020202020203c2f6469763e0d0a202020203c2f6469763e0d0a20203c2f6469763e0d0a3c2f73656374696f6e3e0d0a0d0a3c212d2d20e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590205350454349414c5449455320e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590202d2d3e0d0a3c73656374696f6e20636c6173733d227370656369616c74696573222069643d226d656e75223e0d0a20203c64697620636c6173733d22737065632d686561646572223e0d0a202020203c64697620636c6173733d2273656374696f6e2d6c6162656c22207374796c653d226a7573746966792d636f6e74656e743a63656e7465723b636f6c6f723a236635613632333b223e0d0a2020202020203c7370616e207374796c653d22646973706c61793a626c6f636b3b77696474683a323870783b6865696768743a3170783b6261636b67726f756e643a236635613632333b223e3c2f7370616e3e0d0a202020202020576861742057652053657276650d0a2020202020203c7370616e207374796c653d22646973706c61793a626c6f636b3b77696474683a323870783b6865696768743a3170783b6261636b67726f756e643a236635613632333b223e3c2f7370616e3e0d0a202020203c2f6469763e0d0a202020203c683220636c6173733d2273656374696f6e2d7469746c65223e4f7572203c656d3e5370656369616c746965733c2f656d3e3c2f68323e0d0a202020203c703e457665727920646973682074656c6c7320612073746f727920e28094207072657061726564206672657368206461696c79207769746820626f6c6420666c61766f727320616e64207468652066696e657374207370696365733c2f703e0d0a20203c2f6469763e0d0a0d0a20203c64697620636c6173733d22737065632d67726964223e0d0a202020203c64697620636c6173733d22737065632d63617264223e0d0a2020202020203c64697620636c6173733d22737065632d696d672d77726170223e0d0a20202020202020203c696d6720636c6173733d22737065632d696d6722207372633d22696d616765732f72657374617572616e742f6772696c6c65642e706e672220616c743d224772696c6c656420436869636b656e223e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d22737065632d626f6479223e0d0a20202020202020203c7370616e20636c6173733d22737065632d746167223e5369676e61747572653c2f7370616e3e0d0a20202020202020203c64697620636c6173733d22737065632d6e616d65223e4772696c6c656420436869636b656e2026204242513c2f6469763e0d0a20202020202020203c64697620636c6173733d22737065632d64657363223e536d6f6b792c2074656e646572206375747320736c6f772d6772696c6c6564206f7665722063686172636f616c20616e642066696e697368656420696e206f757220686f75736520424251206d6172696e6164652e3c2f6469763e0d0a2020202020203c2f6469763e0d0a202020203c2f6469763e0d0a0d0a202020203c64697620636c6173733d22737065632d63617264223e0d0a2020202020203c64697620636c6173733d22737065632d696d672d77726170223e0d0a20202020202020203c696d6720636c6173733d22737065632d696d6722207372633d22696d616765732f72657374617572616e742f6166726963616e2e706e672220616c743d224166726963616e20446973686573223e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d22737065632d626f6479223e0d0a20202020202020203c7370616e20636c6173733d22737065632d746167223e547261646974696f6e616c3c2f7370616e3e0d0a20202020202020203c64697620636c6173733d22737065632d6e616d65223e4166726963616e204c6f63616c204469736865733c2f6469763e0d0a20202020202020203c64697620636c6173733d22737065632d64657363223e41757468656e7469632045617374204166726963616e20726563697065732070617373656420646f776e207468726f7567682067656e65726174696f6e7320e2809420636f6d666f7274696e6720616e6420646565706c7920666c61766f7266756c2e3c2f6469763e0d0a2020202020203c2f6469763e0d0a202020203c2f6469763e0d0a0d0a202020203c64697620636c6173733d22737065632d63617264223e0d0a2020202020203c64697620636c6173733d22737065632d696d672d77726170223e0d0a20202020202020203c696d6720636c6173733d22737065632d696d6722207372633d22696d616765732f72657374617572616e742f6a756963652e706e672220616c743d224672657368204a7569636573223e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d22737065632d626f6479223e0d0a20202020202020203c7370616e20636c6173733d22737065632d746167223e4265766572616765733c2f7370616e3e0d0a20202020202020203c64697620636c6173733d22737065632d6e616d65223e46726573682054726f706963616c204a75696365733c2f6469763e0d0a20202020202020203c64697620636c6173733d22737065632d64657363223e436f6c642d7072657373656420626c656e6473206f66206d616e676f2c2070617373696f6e2066727569742c2077617465726d656c6f6e20616e64206d6f726520e2809420736561736f6e616c20616e6420616c776179732066726573682e3c2f6469763e0d0a2020202020203c2f6469763e0d0a202020203c2f6469763e0d0a0d0a202020203c64697620636c6173733d22737065632d63617264223e0d0a2020202020203c64697620636c6173733d22737065632d696d672d77726170223e0d0a20202020202020203c696d6720636c6173733d22737065632d696d6722207372633d22696d616765732f72657374617572616e742f646573736572742e706e672220616c743d224465737365727473223e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d22737065632d626f6479223e0d0a20202020202020203c7370616e20636c6173733d22737065632d746167223e44657373657274733c2f7370616e3e0d0a20202020202020203c64697620636c6173733d22737065632d6e616d65223e496e64756c67656e742044657373657274733c2f6469763e0d0a20202020202020203c64697620636c6173733d22737065632d64657363223e486f7573652d62616b65642073776565747320616e64206368696c6c656420747265617473206372616674656420746f206769766520796f7572206d65616c2074686520706572666563742073776565742066696e616c652e3c2f6469763e0d0a2020202020203c2f6469763e0d0a202020203c2f6469763e0d0a20203c2f6469763e0d0a3c2f73656374696f6e3e0d0a0d0a3c212d2d20e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e295902057485920e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590202d2d3e0d0a3c73656374696f6e20636c6173733d22776879223e0d0a20203c64697620636c6173733d227768792d686561646572223e0d0a202020203c64697620636c6173733d2273656374696f6e2d6c6162656c22207374796c653d226a7573746966792d636f6e74656e743a63656e7465723b223e0d0a2020202020205768792053706963652042697465730d0a202020203c2f6469763e0d0a202020203c683220636c6173733d2273656374696f6e2d7469746c65223e412044696e696e6720457870657269656e63653c62723e3c656d3e4c696b65204e6f204f746865723c2f656d3e3c2f68323e0d0a202020203c703e46726f6d20796f757220666972737420766973697420746f20796f75722068756e6472656474682c207765206d616b65206576657279206d65616c206d656d6f7261626c653c2f703e0d0a20203c2f6469763e0d0a0d0a20203c64697620636c6173733d227768792d67726964223e0d0a202020203c64697620636c6173733d227768792d63617264223e0d0a2020202020203c64697620636c6173733d227768792d69636f6e2d77726170223e0d0a20202020202020203c7376672076696577426f783d22302030203234203234222066696c6c3d226e6f6e6522207374726f6b653d222365363765323222207374726f6b652d77696474683d22312e3822207374726f6b652d6c696e656361703d22726f756e64223e3c7061746820643d224d313220326131302031302030203130302032302031302031302030203030302d32307a222f3e3c7061746820643d224d382031326c33203320352d35222f3e3c2f7376673e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d227768792d636172642d7469746c65223e46726573682c205175616c69747920496e6772656469656e74733c2f6469763e0d0a2020202020203c64697620636c6173733d227768792d636172642d64657363223e576520736f75726365206c6f63616c6c7920616e642070726570617265206461696c7920736f2065766572792064697368206275727374732077697468206e61747572616c20666c61766f7220796f752063616e20746173746520696e20657665727920626974652e3c2f6469763e0d0a202020203c2f6469763e0d0a0d0a202020203c64697620636c6173733d227768792d63617264223e0d0a2020202020203c64697620636c6173733d227768792d69636f6e2d77726170223e0d0a20202020202020203c7376672076696577426f783d22302030203234203234222066696c6c3d226e6f6e6522207374726f6b653d222365363765323222207374726f6b652d77696474683d22312e3822207374726f6b652d6c696e656361703d22726f756e64223e3c7061746820643d224d313220326c3320362e35203720312d35203520312e3220374c31322031386c2d362e3220332e354c372031342e35203220392e356c372d317a222f3e3c2f7376673e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d227768792d636172642d7469746c65223e457870657269656e6365642043686566733c2f6469763e0d0a2020202020203c64697620636c6173733d227768792d636172642d64657363223e4f75722063756c696e617279207465616d206272696e6773207965617273206f66206d61737465727920746f20657665727920706c61746520e2809420626c656e64696e6720747261646974696f6e207769746820637265617469766520666c6169722e3c2f6469763e0d0a202020203c2f6469763e0d0a0d0a202020203c64697620636c6173733d227768792d63617264223e0d0a2020202020203c64697620636c6173733d227768792d69636f6e2d77726170223e0d0a20202020202020203c7376672076696577426f783d22302030203234203234222066696c6c3d226e6f6e6522207374726f6b653d222365363765323222207374726f6b652d77696474683d22312e3822207374726f6b652d6c696e656361703d22726f756e64223e3c7061746820643d224d3320396c392d37203920377631316132203220302030312d32203248356132203220302030312d322d327a222f3e3c706f6c796c696e6520706f696e74733d22392032322039203132203135203132203135203232222f3e3c2f7376673e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d227768792d636172642d7469746c65223e436f7a792041746d6f7370686572653c2f6469763e0d0a2020202020203c64697620636c6173733d227768792d636172642d64657363223e41207761726d2c20696e766974696e672073657474696e672064657369676e656420666f7220696e74696d6174652064696e6e6572732c206c6976656c792066616d696c7920676174686572696e67732c20616e64206576657279206d6f6d656e7420696e206265747765656e2e3c2f6469763e0d0a202020203c2f6469763e0d0a0d0a202020203c64697620636c6173733d227768792d63617264223e0d0a2020202020203c64697620636c6173733d227768792d69636f6e2d77726170223e0d0a20202020202020203c7376672076696577426f783d22302030203234203234222066696c6c3d226e6f6e6522207374726f6b653d222365363765323222207374726f6b652d77696474683d22312e3822207374726f6b652d6c696e656361703d22726f756e64223e3c636972636c652063783d223132222063793d2231322220723d223130222f3e3c7061746820643d224d3132203676366c342032222f3e3c2f7376673e0d0a2020202020203c2f6469763e0d0a2020202020203c64697620636c6173733d227768792d636172642d7469746c65223e46617374202620467269656e646c7920536572766963653c2f6469763e0d0a2020202020203c64697620636c6173733d227768792d636172642d64657363223e417474656e746976652073746166662077686f207472656174206576657279206775657374206c696b652066616d696c792c20656e737572696e6720796f757220657870657269656e6365206973207365616d6c6573732066726f6d206172726976616c20746f20646573736572742e3c2f6469763e0d0a202020203c2f6469763e0d0a20203c2f6469763e0d0a3c2f73656374696f6e3e0d0a0d0a3c212d2d20e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e295902054455354494d4f4e49414c20e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590202d2d3e0d0a3c73656374696f6e20636c6173733d2274657374696d6f6e69616c73223e0d0a20203c64697620636c6173733d227374617273223ee29885e29885e29885e29885e298853c2f6469763e0d0a20203c626c6f636b71756f74653e2254686520666f6f6420746f6f6b206d65206261636b20686f6d652e2054686520666c61766f72732c20746865207761726d74682c207468652061746d6f73706865726520e28094205370696365204269746573206973207472756c79207370656369616c2e223c2f626c6f636b71756f74653e0d0a20203c636974653ee2809420416d617261204e2e2c204b616d70616c613c2f636974653e0d0a3c2f73656374696f6e3e0d0a0d0a3c212d2d20e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e295902043544120e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590e29590202d2d3e0d0a3c73656374696f6e20636c6173733d226374612d73656374696f6e222069643d2272657365727665223e0d0a20203c64697620636c6173733d226374612d696e6e6572223e0d0a202020203c64697620636c6173733d2273656374696f6e2d6c6162656c223e426f6f6b20596f757220536561743c2f6469763e0d0a202020203c68323e5265736572766520596f7572205461626c65203c656d3e546f6461793c2f656d3e3c2f68323e0d0a202020203c703e4a6f696e2068756e6472656473206f66206775657374732077686f206d616b65205370696365204269746573207468656972206661766f75726974652064696e696e672064657374696e6174696f6e20696e204b616d70616c613c2f703e0d0a202020203c64697620636c6173733d226374612d62746e73223e0d0a2020202020203c6120687265663d22232220636c6173733d2262746e2d7072696d61727922207374796c653d22666f6e742d73697a653a313670783b70616464696e673a3136707820333870783b223e0d0a20202020202020203c7376672077696474683d22313622206865696768743d223136222076696577426f783d22302030203234203234222066696c6c3d226e6f6e6522207374726f6b653d2263757272656e74436f6c6f7222207374726f6b652d77696474683d2232223e3c7265637420783d22332220793d2234222077696474683d22313822206865696768743d223138222072783d2232222f3e3c6c696e652078313d223136222079313d2232222078323d223136222079323d2236222f3e3c6c696e652078313d2238222079313d2232222078323d2238222079323d2236222f3e3c6c696e652078313d2233222079313d223130222078323d223231222079323d223130222f3e3c2f7376673e0d0a2020202020202020426f6f6b2061205461626c650d0a2020202020203c2f613e0d0a2020202020203c6120687265663d22232220636c6173733d2262746e2d67686f737422207374796c653d22666f6e742d73697a653a313670783b70616464696e673a3136707820333870783b626f726465722d636f6c6f723a72676261283235352c3235352c3235352c302e3235293b223e0d0a2020202020202020f09f939e20266e6273703b43616c6c205573204e6f770d0a2020202020203c2f613e0d0a202020203c2f6469763e0d0a20203c2f6469763e0d0a3c2f73656374696f6e3e0d0a3c2f626f64793e0d0a3c2f68746d6c3e0d0a223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a383b733a31303a22637265617465645f6279223b693a35373b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032362d30342d30392031323a33383a3534223b733a31313a226d6f6469666965645f6279223b693a35373b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a393b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a373a2267656e6572616c223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a393a22313a77656c636f6d65223b733a373a22636174736c7567223b733a393a22383a67656e6572616c223b733a363a22617574686f72223b733a383a224f4b4f4c2042454e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032362d30342d30392030373a30343a3231223b693a31303b4e3b693a31313b733a36323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a77656c636f6d652663617469643d38223b693a31323b4e3b693a31333b733a31393a22323032362d30342d30392030373a30343a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a224f4b4f4c2042454e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2267656e6572616c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31313b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a373a2277656c636f6d65223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b7d);
INSERT INTO `sb_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(2, 'index.php?option=com_content&view=category&id=8', 'index.php?option=com_content&view=category&id=8', 'general', '', '2026-04-09 07:05:41', 'ced373eb66e1f7e8ea052e0180d6963b', 1, 1, 1, '*', NULL, NULL, '2026-04-09 07:05:41', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a383b733a353a22616c696173223b733a373a2267656e6572616c223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a303b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31313b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a303a7b7d733a31343a22002a00696e697469616c697a6564223b623a303b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b4e3b733a31303a22637265617465645f6279223b693a35373b733a383a226d6f646966696564223b733a31393a22323032362d30342d30392030373a30353a3431223b733a31313a226d6f6469666965645f6279223b693a35373b733a343a22736c7567223b733a393a22383a67656e6572616c223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b693a31323b4e3b693a31333b733a31393a22323032362d30342d30392030373a30353a3431223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a373a2267656e6572616c223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b7d),
(3, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:us&catid=2', 'about', ' About Spice Bites Restaurant \"A Taste of Flavor in Every Bite\" Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. Our goal is to bring people together through delicious meals and outstanding service. We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create unique and flavorful dishes that satisfy every taste. Our cozy and welcoming dining environment 🎯 Our Mission To provide high-quality meals and excellent customer service in a comfortable and welcoming environment where every guest feels valued. 🌍 Our Vision To become one of the leading restaurants known for quality, taste, and customer satisfaction both locally and internationally. 👨‍🍳 Our Team Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. From the kitchen to the table, we focus on quality, hygiene, and attention to detail. 🎥 Our Story 🎧 Restaurant Ambience Your browser does not support the audio element. Enjoy the relaxing atmosphere of Spice Bites ⭐ Why Choose Spice Bites? Fresh and locally sourced ingredients Experienced and professional chefs Clean and comfortable dining environment Excellent customer service Affordable prices Our Location ', '2026-04-09 12:27:42', 'd3dd8f48f97c21e6ee6ff71dbf931605', 1, 1, 1, '*', '2026-04-09 10:25:36', NULL, '2026-04-09 10:25:36', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a313332363a222041626f75742053706963652042697465732052657374617572616e74202241205461737465206f6620466c61766f7220696e2045766572792042697465222053706963652042697465732052657374617572616e74207761732065737461626c6973686564207769746820612070617373696f6e20666f722064656c69766572696e6720657863657074696f6e616c20666f6f6420616e64206d656d6f7261626c652064696e696e6720657870657269656e6365732e204f757220676f616c20697320746f206272696e672070656f706c6520746f676574686572207468726f7567682064656c6963696f7573206d65616c7320616e64206f75747374616e64696e6720736572766963652e205765207370656369616c697a6520696e20612076617269657479206f662063756973696e65732c20636f6d62696e696e6720747261646974696f6e616c20726563697065732077697468206d6f6465726e2063756c696e61727920746563686e697175657320746f2063726561746520756e6971756520616e6420666c61766f7266756c20646973686573207468617420736174697366792065766572792074617374652e204f757220636f7a7920616e642077656c636f6d696e672064696e696e6720656e7669726f6e6d656e7420f09f8eaf204f7572204d697373696f6e20546f2070726f7669646520686967682d7175616c697479206d65616c7320616e6420657863656c6c656e7420637573746f6d6572207365727669636520696e206120636f6d666f727461626c6520616e642077656c636f6d696e6720656e7669726f6e6d656e74207768657265206576657279206775657374206665656c732076616c7565642e20f09f8c8d204f757220566973696f6e20546f206265636f6d65206f6e65206f6620746865206c656164696e672072657374617572616e7473206b6e6f776e20666f72207175616c6974792c2074617374652c20616e6420637573746f6d657220736174697366616374696f6e20626f7468206c6f63616c6c7920616e6420696e7465726e6174696f6e616c6c792e20f09f91a8e2808df09f8db3204f7572205465616d204f7572207465616d20636f6e7369737473206f6620736b696c6c656420636865667320616e6420667269656e646c792073746166662064656469636174656420746f20656e737572696e6720657665727920637573746f6d657220656e6a6f79732074686569722076697369742e2046726f6d20746865206b69746368656e20746f20746865207461626c652c20776520666f637573206f6e207175616c6974792c2068796769656e652c20616e6420617474656e74696f6e20746f2064657461696c2e20f09f8ea5204f75722053746f727920f09f8ea72052657374617572616e7420416d6269656e636520596f75722062726f7773657220646f6573206e6f7420737570706f72742074686520617564696f20656c656d656e742e20456e6a6f79207468652072656c6178696e672061746d6f737068657265206f6620537069636520426974657320e2ad90205768792043686f6f73652053706963652042697465733f20467265736820616e64206c6f63616c6c7920736f757263656420696e6772656469656e747320457870657269656e63656420616e642070726f66657373696f6e616c20636865667320436c65616e20616e6420636f6d666f727461626c652064696e696e6720656e7669726f6e6d656e7420457863656c6c656e7420637573746f6d65722073657276696365204166666f726461626c6520707269636573204f7572204c6f636174696f6e20223b693a333b613a32353a7b733a323a226964223b693a323b733a353a22616c696173223b733a323a227573223b733a373a2273756d6d617279223b733a333339383a223c646976207374796c653d22666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b206c696e652d6865696768743a20312e363b223e0d0a0d0a202020203c6831207374796c653d22746578742d616c69676e3a63656e7465723b20636f6c6f723a236330333932623b223e41626f75742053706963652042697465732052657374617572616e743c2f68313e0d0a0d0a202020203c70207374796c653d22746578742d616c69676e3a63656e7465723b20666f6e742d7374796c653a206974616c69633b223e0d0a20202020202020202241205461737465206f6620466c61766f7220696e2045766572792042697465220d0a202020203c2f703e0d0a0d0a202020203c703e0d0a202020202020202053706963652042697465732052657374617572616e74207761732065737461626c6973686564207769746820612070617373696f6e20666f722064656c69766572696e6720657863657074696f6e616c20666f6f6420616e64206d656d6f7261626c652064696e696e6720657870657269656e6365732e200d0a20202020202020204f757220676f616c20697320746f206272696e672070656f706c6520746f676574686572207468726f7567682064656c6963696f7573206d65616c7320616e64206f75747374616e64696e6720736572766963652e0d0a202020203c2f703e0d0a0d0a202020203c703e0d0a20202020202020205765207370656369616c697a6520696e20612076617269657479206f662063756973696e65732c20636f6d62696e696e6720747261646974696f6e616c20726563697065732077697468206d6f6465726e2063756c696e61727920746563686e697175657320746f20637265617465200d0a2020202020202020756e6971756520616e6420666c61766f7266756c20646973686573207468617420736174697366792065766572792074617374652e0d0a202020203c2f703e0d0a0d0a202020203c212d2d20494d4147452053454354494f4e202d2d3e0d0a202020203c646976207374796c653d22746578742d616c69676e3a63656e7465723b206d617267696e3a3230707820303b223e0d0a20202020202020203c696d67207372633d22696d616765732f72657374617572616e742e6a70672220616c743d2253706963652042697465732052657374617572616e7422207374796c653d2277696474683a3830253b20626f726465722d7261646975733a313070783b223e0d0a20202020202020203c703e3c656d3e4f757220636f7a7920616e642077656c636f6d696e672064696e696e6720656e7669726f6e6d656e743c2f656d3e3c2f703e0d0a202020203c2f6469763e0d0a0d0a202020203c212d2d204d495353494f4e202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a236536376532323b223ef09f8eaf204f7572204d697373696f6e3c2f68323e0d0a202020203c703e0d0a2020202020202020546f2070726f7669646520686967682d7175616c697479206d65616c7320616e6420657863656c6c656e7420637573746f6d6572207365727669636520696e206120636f6d666f727461626c6520616e642077656c636f6d696e6720656e7669726f6e6d656e74200d0a20202020202020207768657265206576657279206775657374206665656c732076616c7565642e0d0a202020203c2f703e0d0a0d0a202020203c212d2d20564953494f4e202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a236536376532323b223ef09f8c8d204f757220566973696f6e3c2f68323e0d0a202020203c703e0d0a2020202020202020546f206265636f6d65206f6e65206f6620746865206c656164696e672072657374617572616e7473206b6e6f776e20666f72207175616c6974792c2074617374652c20616e6420637573746f6d657220736174697366616374696f6e200d0a2020202020202020626f7468206c6f63616c6c7920616e6420696e7465726e6174696f6e616c6c792e0d0a202020203c2f703e0d0a0d0a202020203c212d2d205445414d202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a236536376532323b223ef09f91a8e2808df09f8db3204f7572205465616d3c2f68323e0d0a202020203c703e0d0a20202020202020204f7572207465616d20636f6e7369737473206f6620736b696c6c656420636865667320616e6420667269656e646c792073746166662064656469636174656420746f20656e737572696e6720657665727920637573746f6d657220656e6a6f79732074686569722076697369742e200d0a202020202020202046726f6d20746865206b69746368656e20746f20746865207461626c652c20776520666f637573206f6e207175616c6974792c2068796769656e652c20616e6420617474656e74696f6e20746f2064657461696c2e0d0a202020203c2f703e0d0a0d0a202020203c212d2d20564944454f2053454354494f4e202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a236330333932623b223ef09f8ea5204f75722053746f72793c2f68323e0d0a202020203c646976207374796c653d22746578742d616c69676e3a63656e7465723b206d617267696e3a3230707820303b223e0d0a20202020202020203c696672616d652077696474683d2238302522206865696768743d22343030220d0a7372633d2268747470733a2f2f7777772e796f75747562652e636f6d2f656d6265642f4f487147516846617a6959220d0a7469746c653d2252657374617572616e7420566964656f220d0a6672616d65626f726465723d2230220d0a616c6c6f773d22616363656c65726f6d657465723b206175746f706c61793b20636c6970626f6172642d77726974653b20656e637279707465642d6d656469613b206779726f73636f70653b20706963747572652d696e2d70696374757265220d0a616c6c6f7766756c6c73637265656e3e0d0a3c2f696672616d653e0d0a202020203c2f6469763e0d0a0d0a202020203c212d2d20415544494f2053454354494f4e202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a236330333932623b223ef09f8ea72052657374617572616e7420416d6269656e63653c2f68323e0d0a202020203c646976207374796c653d22746578742d616c69676e3a63656e7465723b206d617267696e3a323070783b223e0d0a20202020202020203c617564696f20636f6e74726f6c733e0d0a2020202020202020202020203c736f75726365207372633d22696d616765732f72657374617572616e742d6d757369632e6d70332220747970653d22617564696f2f6d706567223e0d0a202020202020202020202020596f75722062726f7773657220646f6573206e6f7420737570706f72742074686520617564696f20656c656d656e742e0d0a20202020202020203c2f617564696f3e0d0a20202020202020203c703e3c656d3e456e6a6f79207468652072656c6178696e672061746d6f737068657265206f662053706963652042697465733c2f656d3e3c2f703e0d0a202020203c2f6469763e0d0a0d0a202020203c212d2d205748592043484f4f5345205553202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a233237616536303b223ee2ad90205768792043686f6f73652053706963652042697465733f3c2f68323e0d0a202020203c756c3e0d0a20202020202020203c6c693e467265736820616e64206c6f63616c6c7920736f757263656420696e6772656469656e74733c2f6c693e0d0a20202020202020203c6c693e457870657269656e63656420616e642070726f66657373696f6e616c2063686566733c2f6c693e0d0a20202020202020203c6c693e436c65616e20616e6420636f6d666f727461626c652064696e696e6720656e7669726f6e6d656e743c2f6c693e0d0a20202020202020203c6c693e457863656c6c656e7420637573746f6d657220736572766963653c2f6c693e0d0a20202020202020203c6c693e4166666f726461626c65207072696365733c2f6c693e0d0a202020203c2f756c3e0d0a0d0a202020203c212d2d20474f4f474c45204d4150202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a236330333932623b223e204f7572204c6f636174696f6e3c2f68323e0d0a202020203c646976207374796c653d22746578742d616c69676e3a63656e7465723b206d617267696e3a3230707820303b223e0d0a20202020202020203c696672616d65200d0a2020202020202020202020207372633d2268747470733a2f2f6d6170732e676f6f676c652e636f6d2f6d6170733f713d6b616d70616c612532307567616e646126743d267a3d31332669653d555446382669776c6f633d266f75747075743d656d62656422200d0a20202020202020202020202077696474683d2238302522206865696768743d2233353022200d0a2020202020202020202020207374796c653d22626f726465723a303b22200d0a202020202020202020202020616c6c6f7766756c6c73637265656e3d2222200d0a2020202020202020202020206c6f6164696e673d226c617a79223e0d0a20202020202020203c2f696672616d653e0d0a202020203c2f6469763e0d0a0d0a3c2f6469763e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a35373b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032362d30342d30392031323a32373a3432223b733a31313a226d6f6469666965645f6279223b693a35373b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a31323b733a383a226f72646572696e67223b693a323b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a343a22323a7573223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a383a224f4b4f4c2042454e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032362d30342d30392031303a32353a3336223b693a31303b4e3b693a31313b733a35373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a75732663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032362d30342d30392031303a32353a3336223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a224f4b4f4c2042454e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31323b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a353a2261626f7574223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b7d),
(4, 'index.php?option=com_content&view=article&id=3', 'index.php?option=com_content&view=article&id=3:contact&catid=2', 'contact', ' Contact Spice Bites Restaurant We would love to hear from you! Reach out to us or book a table. Location Kampala, Uganda 📞 Phone +256 700 123456 📧 Email info@spicebites.com 🕒 Opening Hours Monday – Friday: 9:00 AM – 10:00 PM Saturday – Sunday: 10:00 AM – 11:00 PM 📅 Reservation Fill out the form below to reserve your table. Full Name: Email: Phone Number: Date: Time: Number of Guests: Message: Book Now 🗺️ Find Us ', '2026-04-09 12:19:54', '881527cda9c5abad3a7a36c6dfe2dc54', 1, 1, 1, '*', '2026-04-09 11:48:52', NULL, '2026-04-09 11:48:52', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a3434323a2220436f6e746163742053706963652042697465732052657374617572616e7420576520776f756c64206c6f766520746f20686561722066726f6d20796f7521205265616368206f757420746f207573206f7220626f6f6b2061207461626c652e204c6f636174696f6e204b616d70616c612c205567616e646120f09f939e2050686f6e65202b323536203730302031323334353620f09f93a720456d61696c20696e666f40737069636562697465732e636f6d20f09f9592204f70656e696e6720486f757273204d6f6e64617920e28093204672696461793a20393a303020414d20e280932031303a303020504d20536174757264617920e280932053756e6461793a2031303a303020414d20e280932031313a303020504d20f09f9385205265736572766174696f6e2046696c6c206f75742074686520666f726d2062656c6f7720746f207265736572766520796f7572207461626c652e2046756c6c204e616d653a20456d61696c3a2050686f6e65204e756d6265723a20446174653a2054696d653a204e756d626572206f66204775657374733a204d6573736167653a20426f6f6b204e6f7720f09f97baefb88f2046696e6420557320223b693a333b613a32353a7b733a323a226964223b693a333b733a353a22616c696173223b733a373a22636f6e74616374223b733a373a2273756d6d617279223b733a323737333a223c646976207374796c653d22666f6e742d66616d696c793a20417269616c2c2073616e732d73657269663b206c696e652d6865696768743a20312e363b223e0d0a0d0a202020203c6831207374796c653d22746578742d616c69676e3a63656e7465723b20636f6c6f723a236330333932623b223e436f6e746163742053706963652042697465732052657374617572616e743c2f68313e0d0a0d0a202020203c70207374796c653d22746578742d616c69676e3a63656e7465723b223e0d0a2020202020202020576520776f756c64206c6f766520746f20686561722066726f6d20796f7521205265616368206f757420746f207573206f7220626f6f6b2061207461626c652e0d0a202020203c2f703e0d0a0d0a202020203c212d2d20434f4e544143542044455441494c53202d2d3e0d0a202020203c646976207374796c653d226d617267696e2d746f703a323070783b223e0d0a20202020202020203c6832207374796c653d22636f6c6f723a236536376532323b223e204c6f636174696f6e3c2f68323e0d0a20202020202020203c703e4b616d70616c612c205567616e64613c2f703e0d0a0d0a20202020202020203c6832207374796c653d22636f6c6f723a236536376532323b223ef09f939e2050686f6e653c2f68323e0d0a20202020202020203c703e2b32353620373030203132333435363c2f703e0d0a0d0a20202020202020203c6832207374796c653d22636f6c6f723a236536376532323b223ef09f93a720456d61696c3c2f68323e0d0a20202020202020203c703e696e666f40737069636562697465732e636f6d3c2f703e0d0a0d0a20202020202020203c6832207374796c653d22636f6c6f723a236536376532323b223ef09f9592204f70656e696e6720486f7572733c2f68323e0d0a20202020202020203c703e0d0a2020202020202020202020204d6f6e64617920e28093204672696461793a20393a303020414d20e280932031303a303020504d3c62723e0d0a202020202020202020202020536174757264617920e280932053756e6461793a2031303a303020414d20e280932031313a303020504d0d0a20202020202020203c2f703e0d0a202020203c2f6469763e0d0a0d0a202020203c212d2d205245534552564154494f4e20464f524d202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a236330333932623b206d617267696e2d746f703a333070783b223ef09f9385205265736572766174696f6e3c2f68323e0d0a202020203c703e46696c6c206f75742074686520666f726d2062656c6f7720746f207265736572766520796f7572207461626c652e3c2f703e0d0a0d0a202020203c646976207374796c653d226261636b67726f756e643a236639663966393b2070616464696e673a323070783b20626f726465722d7261646975733a313070783b2077696474683a3830253b206d617267696e3a6175746f3b223e0d0a20202020202020203c666f726d3e0d0a2020202020202020202020203c6c6162656c3e46756c6c204e616d653a3c2f6c6162656c3e3c62723e0d0a2020202020202020202020203c696e70757420747970653d227465787422206e616d653d226e616d6522207374796c653d2277696474683a313030253b2070616464696e673a3870783b206d617267696e2d626f74746f6d3a313070783b223e3c62723e0d0a0d0a2020202020202020202020203c6c6162656c3e456d61696c3a3c2f6c6162656c3e3c62723e0d0a2020202020202020202020203c696e70757420747970653d22656d61696c22206e616d653d22656d61696c22207374796c653d2277696474683a313030253b2070616464696e673a3870783b206d617267696e2d626f74746f6d3a313070783b223e3c62723e0d0a0d0a2020202020202020202020203c6c6162656c3e50686f6e65204e756d6265723a3c2f6c6162656c3e3c62723e0d0a2020202020202020202020203c696e70757420747970653d227465787422206e616d653d2270686f6e6522207374796c653d2277696474683a313030253b2070616464696e673a3870783b206d617267696e2d626f74746f6d3a313070783b223e3c62723e0d0a0d0a2020202020202020202020203c6c6162656c3e446174653a3c2f6c6162656c3e3c62723e0d0a2020202020202020202020203c696e70757420747970653d226461746522206e616d653d226461746522207374796c653d2277696474683a313030253b2070616464696e673a3870783b206d617267696e2d626f74746f6d3a313070783b223e3c62723e0d0a0d0a2020202020202020202020203c6c6162656c3e54696d653a3c2f6c6162656c3e3c62723e0d0a2020202020202020202020203c696e70757420747970653d2274696d6522206e616d653d2274696d6522207374796c653d2277696474683a313030253b2070616464696e673a3870783b206d617267696e2d626f74746f6d3a313070783b223e3c62723e0d0a0d0a2020202020202020202020203c6c6162656c3e4e756d626572206f66204775657374733a3c2f6c6162656c3e3c62723e0d0a2020202020202020202020203c696e70757420747970653d226e756d62657222206e616d653d2267756573747322207374796c653d2277696474683a313030253b2070616464696e673a3870783b206d617267696e2d626f74746f6d3a313070783b223e3c62723e0d0a0d0a2020202020202020202020203c6c6162656c3e4d6573736167653a3c2f6c6162656c3e3c62723e0d0a2020202020202020202020203c7465787461726561206e616d653d226d6573736167652220726f77733d223422207374796c653d2277696474683a313030253b2070616464696e673a3870783b206d617267696e2d626f74746f6d3a313070783b223e3c2f74657874617265613e3c62723e0d0a0d0a2020202020202020202020203c627574746f6e20747970653d227375626d697422207374796c653d226261636b67726f756e643a236330333932623b20636f6c6f723a77686974653b2070616464696e673a3130707820323070783b20626f726465723a6e6f6e653b20626f726465722d7261646975733a3570783b223e0d0a20202020202020202020202020202020426f6f6b204e6f770d0a2020202020202020202020203c2f627574746f6e3e0d0a20202020202020203c2f666f726d3e0d0a202020203c2f6469763e0d0a0d0a202020203c212d2d20474f4f474c45204d4150202d2d3e0d0a202020203c6832207374796c653d22636f6c6f723a236330333932623b206d617267696e2d746f703a343070783b223ef09f97baefb88f2046696e642055733c2f68323e0d0a202020203c646976207374796c653d22746578742d616c69676e3a63656e7465723b206d617267696e3a3230707820303b223e0d0a20202020202020203c696672616d65200d0a2020202020202020202020207372633d2268747470733a2f2f7777772e676f6f676c652e636f6d2f6d6170733f713d4b616d70616c612c5567616e6461266f75747075743d656d626564220d0a20202020202020202020202077696474683d2238302522200d0a2020202020202020202020206865696768743d2233353022200d0a2020202020202020202020207374796c653d22626f726465723a303b22200d0a202020202020202020202020616c6c6f7766756c6c73637265656e200d0a2020202020202020202020206c6f6164696e673d226c617a79223e0d0a20202020202020203c2f696672616d653e0d0a202020203c2f6469763e0d0a0d0a3c2f6469763e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a35373b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032362d30342d30392031323a31393a3534223b733a31313a226d6f6469666965645f6279223b693a35373b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a353b733a383a226f72646572696e67223b693a313b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a393a22333a636f6e74616374223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a383a224f4b4f4c2042454e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032362d30342d30392031313a34383a3532223b693a31303b4e3b693a31313b733a36323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d333a636f6e746163742663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032362d30342d30392031313a34383a3532223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a224f4b4f4c2042454e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31323b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a373a22636f6e74616374223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d33223b7d);
INSERT INTO `sb_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(5, 'index.php?option=com_content&view=article&id=4', 'index.php?option=com_content&view=article&id=4:contact-us&catid=2', 'contact-us', ' Hello Test This should be bold and styled ', '2026-04-09 11:58:29', 'ae35dd80d19e265fb360af8475d63284', 1, 0, 1, '*', '2026-04-09 11:58:12', NULL, '2026-04-09 11:58:12', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a34333a222048656c6c6f205465737420546869732073686f756c6420626520626f6c6420616e64207374796c656420223b693a333b613a32353a7b733a323a226964223b693a343b733a353a22616c696173223b733a31303a22636f6e74616374207573223b733a373a2273756d6d617279223b733a39313a223c703e266c743b68312667743b48656c6c6f2054657374266c743b2f68312667743b3c62723e266c743b702667743b546869732073686f756c6420626520626f6c6420616e64207374796c6564266c743b2f702667743b3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a35373b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032362d30342d30392031313a35383a3239223b733a31313a226d6f6469666965645f6279223b693a35373b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a323b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31323a22343a636f6e746163742d7573223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a383a224f4b4f4c2042454e223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032362d30342d30392031313a35383a3132223b693a31303b4e3b693a31313b733a36353a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d343a636f6e746163742d75732663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032362d30342d30392031313a35383a3132223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a224f4b4f4c2042454e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31323b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a31303a22636f6e746163742d7573223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d34223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_links_terms`
--

CREATE TABLE `sb_finder_links_terms` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_finder_links_terms`
--

INSERT INTO `sb_finder_links_terms` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0.17),
(4, 2, 0.04669),
(3, 2, 0.18676),
(1, 2, 0.37352),
(1, 3, 1.30676),
(1, 4, 0.09331),
(5, 5, 0.14),
(1, 5, 1.68),
(3, 5, 1.82),
(1, 6, 0.23331),
(1, 7, 0.18662),
(3, 8, 0.46669),
(1, 8, 1.86676),
(1, 9, 0.28),
(1, 10, 0.24),
(3, 10, 0.24),
(4, 10, 0.24),
(5, 10, 0.24),
(4, 11, 0.23331),
(3, 11, 0.93324),
(1, 11, 1.16655),
(1, 13, 0.23331),
(1, 14, 0.23331),
(3, 14, 0.23331),
(1, 16, 0.46662),
(3, 16, 0.46662),
(1, 17, 0.32669),
(3, 18, 0.28),
(3, 19, 0.18669),
(1, 19, 0.37338),
(1, 20, 0.98007),
(3, 21, 0.42),
(1, 22, 0.74662),
(1, 23, 0.56),
(3, 23, 0.84),
(3, 25, 0.28),
(1, 25, 0.56),
(3, 26, 0.23331),
(3, 27, 1.53993),
(3, 28, 0.93324),
(1, 28, 2.09979),
(1, 29, 1.40007),
(1, 30, 0.51331),
(3, 30, 0.51331),
(1, 31, 0.56),
(1, 32, 0.18669),
(1, 33, 0.56),
(3, 34, 0.28),
(1, 34, 0.56),
(1, 35, 0.28),
(3, 35, 0.28),
(3, 36, 0.23331),
(1, 36, 1.16655),
(1, 37, 0.32669),
(1, 38, 0.37331),
(3, 38, 0.37331),
(1, 39, 0.32669),
(3, 40, 0.56),
(1, 41, 0.18669),
(3, 42, 0.27993),
(1, 42, 0.55986),
(3, 43, 0.51331),
(1, 43, 1.53993),
(1, 44, 0.37331),
(1, 45, 0.28),
(1, 46, 0.23331),
(1, 49, 0.23331),
(3, 49, 0.46662),
(4, 53, 0.09331),
(3, 53, 0.46655),
(1, 53, 0.65317),
(1, 55, 0.32004),
(3, 55, 0.32004),
(4, 55, 0.32004),
(5, 55, 0.32004),
(4, 56, 0.09331),
(1, 57, 0.84),
(3, 57, 1.12),
(3, 58, 0.32669),
(1, 58, 0.98007),
(1, 59, 0.98007),
(1, 61, 0.74662),
(3, 63, 0.37331),
(4, 64, 0.32669),
(1, 64, 0.65338),
(4, 65, 0.46669),
(1, 65, 0.93338),
(3, 65, 1.40007),
(1, 66, 0.18669),
(1, 67, 0.42),
(1, 68, 0.32669),
(3, 68, 0.98007),
(1, 69, 0.32669),
(1, 70, 0.51331),
(4, 71, 0.23331),
(3, 71, 0.93324),
(1, 71, 1.16655),
(3, 73, 0.23331),
(4, 73, 0.46662),
(1, 73, 0.69993),
(1, 74, 0.69993),
(3, 74, 0.69993),
(4, 75, 0.14),
(3, 75, 0.7),
(1, 75, 1.12),
(4, 76, 0.27993),
(1, 76, 0.65317),
(3, 76, 0.65317),
(1, 77, 0.23331),
(1, 79, 0.09331),
(4, 79, 0.18662),
(3, 79, 0.2666),
(5, 79, 0.2666),
(1, 80, 0.37338),
(4, 81, 0.09331),
(3, 81, 0.18662),
(1, 81, 0.37324),
(1, 82, 2.05348),
(1, 84, 0.14),
(3, 84, 0.14),
(3, 85, 0.37338),
(1, 85, 1.30683),
(4, 86, 0.14),
(1, 86, 0.28),
(3, 88, 0.18669),
(4, 88, 0.18669),
(1, 88, 1.12014),
(1, 90, 0.04669),
(4, 90, 0.04669),
(2, 128, 0.17),
(2, 129, 1.72679),
(3, 131, 0.79992),
(3, 132, 0.18669),
(1, 132, 0.37338),
(1, 133, 0.37338),
(4, 133, 0.37338),
(1, 134, 0.14),
(4, 134, 0.14),
(3, 138, 0.17),
(3, 139, 0.46669),
(3, 140, 0.37331),
(3, 141, 0.42),
(3, 142, 0.23331),
(3, 143, 0.28),
(3, 144, 0.18669),
(3, 145, 0.32669),
(3, 146, 0.23331),
(3, 147, 0.42),
(3, 148, 1.02662),
(3, 149, 0.37331),
(3, 150, 0.28),
(3, 151, 0.37331),
(3, 152, 0.37331),
(1, 152, 0.74662),
(3, 153, 1.49324),
(3, 154, 0.42),
(3, 155, 0.46669),
(3, 156, 0.28),
(3, 157, 0.18669),
(3, 158, 0.32669),
(3, 159, 0.28),
(1, 160, 0.37331),
(3, 160, 0.37331),
(3, 161, 0.51331),
(3, 162, 0.84),
(3, 163, 0.51331),
(3, 164, 0.51331),
(3, 165, 0.23331),
(1, 166, 0.42),
(3, 166, 0.42),
(3, 167, 0.23331),
(1, 168, 0.18669),
(3, 168, 0.18669),
(3, 169, 0.18669),
(4, 169, 0.18669),
(1, 169, 0.37338),
(3, 170, 0.18669),
(3, 171, 0.23331),
(1, 171, 0.46662),
(3, 172, 0.32669),
(3, 173, 0.7),
(3, 174, 0.09331),
(1, 174, 0.18662),
(1, 175, 0.32669),
(3, 175, 0.32669),
(3, 176, 0.23331),
(3, 177, 0.32669),
(3, 178, 0.65338),
(1, 178, 0.98007),
(3, 179, 0.37331),
(4, 179, 0.37331),
(1, 180, 0.42),
(3, 180, 0.42),
(3, 181, 0.32669),
(3, 182, 0.28),
(3, 183, 0.14),
(3, 184, 0.09331),
(3, 185, 0.14),
(3, 186, 0.51331),
(3, 187, 0.28),
(3, 188, 0.28),
(3, 189, 0.56),
(3, 190, 0.32669),
(1, 191, 0.32669),
(3, 191, 0.65338),
(1, 192, 0.32669),
(3, 192, 0.32669),
(3, 193, 0.51331),
(3, 194, 0.56),
(3, 195, 0.32669),
(3, 196, 0.32669),
(3, 197, 0.32669),
(1, 197, 0.65338),
(3, 198, 0.46669),
(1, 199, 0.23331),
(3, 199, 0.23331),
(3, 200, 0.23331),
(1, 200, 0.46662),
(3, 201, 0.32669),
(1, 202, 0.18669),
(3, 202, 0.37338),
(3, 203, 0.46669),
(1, 204, 0.18669),
(3, 204, 0.18669),
(1, 205, 0.23331),
(3, 205, 0.23331),
(1, 206, 0.32669),
(3, 206, 0.32669),
(3, 207, 0.37331),
(1, 208, 0.51331),
(3, 208, 0.51331),
(3, 209, 0.28),
(3, 210, 0.28),
(3, 211, 0.32669),
(3, 212, 0.28),
(1, 213, 0.23331),
(3, 213, 0.23331),
(3, 214, 0.14),
(3, 215, 0.84),
(3, 216, 0.23331),
(4, 265, 0.28),
(1, 266, 0.28),
(4, 266, 0.56),
(1, 267, 0.14),
(4, 267, 0.28),
(1, 268, 0.14),
(4, 268, 0.14),
(4, 269, 0.42),
(4, 270, 0.17),
(4, 271, 0.21),
(4, 272, 0.07),
(1, 273, 0.09331),
(4, 273, 0.18662),
(4, 274, 0.23331),
(4, 275, 0.14),
(5, 276, 0.9334),
(4, 276, 2.05348),
(4, 277, 0.18669),
(4, 278, 0.46662),
(4, 279, 0.18669),
(4, 280, 0.18669),
(4, 281, 0.18669),
(4, 282, 0.28),
(4, 283, 0.18669),
(4, 284, 0.28),
(1, 284, 0.56),
(4, 285, 0.18669),
(4, 286, 0.23331),
(4, 287, 0.18669),
(4, 288, 0.32669),
(1, 288, 0.98007),
(1, 289, 0.18669),
(4, 289, 0.18669),
(4, 290, 0.32669),
(4, 291, 0.28),
(4, 292, 0.18669),
(4, 293, 0.56),
(4, 294, 0.32669),
(4, 295, 0.28),
(4, 296, 0.46662),
(1, 297, 0.09331),
(4, 297, 0.18662),
(4, 298, 0.23331),
(4, 299, 0.51331),
(4, 300, 0.37331),
(4, 301, 0.46669),
(4, 302, 0.28),
(4, 303, 0.18669),
(1, 304, 0.28),
(4, 304, 0.28),
(4, 305, 0.23331),
(5, 328, 0.17),
(5, 329, 0.09331),
(1, 330, 0.18669),
(5, 330, 0.18669),
(5, 331, 1.13339),
(5, 332, 0.23331),
(5, 333, 0.28),
(5, 334, 0.28),
(5, 335, 0.18669),
(5, 336, 0.18669),
(1, 337, 0.28),
(1, 339, 0.56),
(1, 340, 0.14),
(1, 341, 0.42),
(1, 342, 0.23331),
(1, 344, 0.28),
(1, 345, 0.23331),
(1, 346, 0.32669),
(1, 347, 0.37331),
(1, 348, 0.42),
(1, 349, 0.42),
(1, 350, 0.18669),
(1, 351, 0.32669),
(1, 352, 0.42),
(1, 353, 0.37331),
(1, 354, 0.28),
(1, 355, 0.28),
(1, 356, 0.28),
(1, 357, 0.18669),
(1, 358, 0.14),
(1, 359, 0.56),
(1, 360, 0.37331),
(1, 361, 0.32669),
(1, 362, 0.56),
(1, 363, 0.46669),
(1, 364, 0.51331),
(1, 365, 0.37331),
(1, 366, 0.32669),
(1, 367, 0.18669),
(1, 368, 0.69993),
(1, 369, 0.23331),
(1, 370, 0.28),
(1, 371, 0.37331),
(1, 372, 0.42),
(1, 373, 0.37331),
(1, 374, 0.32669),
(1, 375, 0.51331),
(1, 376, 0.32669),
(1, 377, 0.37338),
(1, 378, 0.18669),
(1, 379, 0.18669),
(1, 380, 0.14),
(1, 381, 0.46669),
(1, 382, 0.42),
(1, 383, 0.32669),
(1, 384, 0.37331),
(1, 385, 0.46669),
(1, 386, 0.42),
(1, 387, 0.28),
(1, 388, 0.37331),
(1, 389, 0.23331),
(1, 390, 0.23331),
(1, 391, 0.98007),
(1, 392, 0.23331),
(1, 393, 0.46669),
(1, 394, 0.51331),
(1, 395, 0.18669),
(1, 396, 0.23331),
(1, 397, 0.23331),
(1, 398, 0.51331),
(1, 399, 0.37331),
(1, 400, 0.42),
(1, 401, 0.42),
(1, 402, 0.37331),
(1, 403, 0.18669),
(1, 404, 0.28),
(1, 405, 0.37338),
(1, 406, 0.28),
(1, 407, 0.37338),
(1, 408, 0.23331),
(1, 409, 0.37331),
(1, 410, 0.28),
(1, 411, 0.32669),
(1, 412, 0.09331),
(1, 413, 0.37338),
(1, 414, 0.18669),
(1, 415, 0.28),
(1, 416, 0.18669),
(1, 417, 0.32669),
(1, 418, 0.04669),
(1, 419, 0.32669),
(1, 420, 0.09331),
(1, 421, 0.18669),
(1, 422, 0.23331),
(1, 423, 0.18669),
(1, 424, 0.28),
(1, 425, 0.23331),
(1, 426, 0.32669),
(1, 427, 0.32669),
(1, 428, 0.28),
(1, 431, 0.37331),
(1, 432, 0.37331),
(1, 433, 0.18669),
(1, 434, 0.23331),
(1, 435, 0.28),
(1, 436, 0.32669),
(1, 437, 0.37331),
(1, 438, 0.42),
(1, 439, 0.56),
(1, 440, 0.23331),
(1, 441, 0.09331),
(1, 442, 0.28),
(1, 443, 0.28),
(1, 444, 0.23331),
(1, 445, 0.28),
(1, 446, 0.23331),
(1, 447, 0.28),
(1, 448, 0.18669),
(1, 449, 0.42),
(1, 450, 0.23331),
(1, 451, 0.28),
(1, 452, 0.37331),
(1, 453, 0.23331),
(1, 454, 0.18669),
(1, 455, 0.28),
(1, 456, 0.46669),
(1, 457, 0.18669),
(1, 458, 0.28),
(1, 459, 0.18669),
(1, 460, 0.46662),
(1, 461, 0.23331);

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_logging`
--

CREATE TABLE `sb_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_taxonomy`
--

CREATE TABLE `sb_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_finder_taxonomy`
--

INSERT INTO `sb_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1, 0, 0, 21, 0, '', 'ROOT', 'root', 1, 1, '*'),
(2, 1, 1, 6, 1, 'type', 'Type', 'type', 1, 1, '*'),
(3, 2, 2, 3, 2, 'type/article', 'Article', 'article', 1, 1, '*'),
(4, 1, 7, 10, 1, 'author', 'Author', 'author', 1, 1, '*'),
(5, 4, 8, 9, 2, 'author/okol-ben', 'OKOL BEN', 'okol-ben', 1, 1, '*'),
(6, 1, 11, 16, 1, 'category', 'Category', 'category', 1, 1, '*'),
(8, 1, 17, 20, 1, 'language', 'Language', 'language', 1, 1, '*'),
(9, 8, 18, 19, 2, 'language/4086f6336014c75439f87cbda42d9c51', '*', '4086f6336014c75439f87cbda42d9c51', 1, 1, '*'),
(10, 2, 4, 5, 2, 'type/category', 'Category', 'category', 1, 1, '*'),
(11, 6, 12, 13, 2, 'category/general', 'general', 'general', 1, 1, '*'),
(12, 6, 14, 15, 2, 'category/uncategorised', 'Uncategorised', 'uncategorised', 1, 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_taxonomy_map`
--

CREATE TABLE `sb_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_finder_taxonomy_map`
--

INSERT INTO `sb_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(1, 9),
(1, 11),
(2, 9),
(2, 10),
(3, 3),
(3, 5),
(3, 9),
(3, 12),
(4, 3),
(4, 5),
(4, 9),
(4, 12),
(5, 3),
(5, 5),
(5, 9),
(5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_terms`
--

CREATE TABLE `sb_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_finder_terms`
--

INSERT INTO `sb_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, '1', '1', 0, 0, 0.1, '', 9, '*'),
(2, 'a', 'a', 0, 0, 0.0667, 'A000', 25, '*'),
(3, 'african', 'african', 0, 0, 0.4667, 'A1625', 9, '*'),
(4, 'an', 'an', 0, 0, 0.1333, 'A500', 9, '*'),
(5, 'and', 'and', 0, 0, 0.2, 'A530', 24, '*'),
(6, 'aroma', 'aroma', 0, 0, 0.3333, 'A650', 9, '*'),
(7, 'at', 'at', 0, 0, 0.1333, 'A300', 9, '*'),
(8, 'atmosphere', 'atmosphere', 0, 0, 0.6667, 'A35216', 21, '*'),
(9, 'bbq', 'bbq', 0, 0, 0.2, 'B200', 9, '*'),
(10, 'ben', 'ben', 0, 0, 0.2, 'B500', 28, '*'),
(11, 'bites', 'bites', 0, 0, 0.3333, 'B320', 25, '*'),
(12, 'bite”', 'bite”', 0, 0, 0.3333, 'B300', 6, '*'),
(13, 'blend', 'blend', 0, 0, 0.3333, 'B453', 9, '*'),
(14, 'bring', 'bring', 0, 0, 0.3333, 'B652', 21, '*'),
(15, 'celebrate', 'celebrate', 0, 0, 0.6, 'C4163', 6, '*'),
(16, 'chefs', 'chefs', 0, 0, 0.3333, 'C120', 21, '*'),
(17, 'chicken', 'chicken', 0, 0, 0.4667, 'C500', 9, '*'),
(18, 'choose', 'choose', 0, 0, 0.4, 'C000', 19, '*'),
(19, 'cozy', 'cozy', 0, 0, 0.2667, 'C000', 21, '*'),
(20, 'crafted', 'crafted', 0, 0, 0.4667, 'C613', 9, '*'),
(21, 'delicious', 'delicious', 0, 0, 0.6, 'D420', 19, '*'),
(22, 'desserts', 'desserts', 0, 0, 0.5333, 'D2632', 9, '*'),
(23, 'dining', 'dining', 0, 0, 0.4, 'D520', 21, '*'),
(24, 'dinner', 'dinner', 0, 0, 0.4, 'D560', 6, '*'),
(25, 'dishes', 'dishes', 0, 0, 0.4, 'D200', 21, '*'),
(26, 'enjoy', 'enjoy', 0, 0, 0.3333, 'E520', 19, '*'),
(27, 'environment', 'environment', 0, 0, 0.7333, 'E51653', 18, '*'),
(28, 'every', 'every', 0, 0, 0.3333, 'E160', 21, '*'),
(29, 'experience', 'experience', 0, 0, 0.6667, 'E21652', 9, '*'),
(30, 'experienced', 'experienced', 0, 0, 0.7333, 'E216523', 21, '*'),
(31, 'family', 'family', 0, 0, 0.4, 'F540', 8, '*'),
(32, 'fast', 'fast', 0, 0, 0.2667, 'F230', 9, '*'),
(33, 'finest', 'finest', 0, 0, 0.4, 'F523', 9, '*'),
(34, 'flavor', 'flavor', 0, 0, 0.4, 'F416', 21, '*'),
(35, 'for', 'for', 0, 0, 0.2, 'F600', 20, '*'),
(36, 'fresh', 'fresh', 0, 0, 0.3333, 'F620', 21, '*'),
(37, 'freshly', 'freshly', 0, 0, 0.4667, 'F624', 9, '*'),
(38, 'friendly', 'friendly', 0, 0, 0.5333, 'F6534', 21, '*'),
(39, 'grilled', 'grilled', 0, 0, 0.4667, 'G643', 9, '*'),
(40, 'high-quality', 'high-quality', 0, 0, 0.8, 'H243', 19, '*'),
(41, 'home', 'home', 0, 0, 0.2667, 'H500', 6, '*'),
(42, 'in', 'in', 0, 0, 0.1333, 'I500', 21, '*'),
(43, 'ingredients', 'ingredients', 0, 0, 0.7333, 'I5263532', 21, '*'),
(44, 'inviting', 'inviting', 0, 0, 0.5333, 'I51352', 8, '*'),
(45, 'juices', 'juices', 0, 0, 0.4, 'J000', 9, '*'),
(46, 'local', 'local', 0, 0, 0.3333, 'L240', 9, '*'),
(47, 'looking', 'looking', 0, 0, 0.4667, 'L252', 6, '*'),
(48, 'lunch', 'lunch', 0, 0, 0.3333, 'L520', 6, '*'),
(49, 'meals', 'meals', 0, 0, 0.3333, 'M420', 21, '*'),
(50, 'mocktails', 'mocktails', 0, 0, 0.6, 'M2342', 6, '*'),
(51, 'moments', 'moments', 0, 0, 0.4667, 'M320', 6, '*'),
(52, 'occasion', 'occasion', 0, 0, 0.5333, 'O250', 6, '*'),
(53, 'of', 'of', 0, 0, 0.1333, 'O100', 25, '*'),
(54, 'offers', 'offers', 0, 0, 0.4, 'O162', 6, '*'),
(55, 'okol', 'okol', 0, 0, 0.2667, 'O240', 28, '*'),
(56, 'or', 'or', 0, 0, 0.1333, 'O600', 10, '*'),
(57, 'our', 'our', 0, 0, 0.2, 'O600', 21, '*'),
(58, 'passion', 'passion', 0, 0, 0.4667, 'P250', 21, '*'),
(59, 'perfect', 'perfect', 0, 0, 0.4667, 'P6123', 9, '*'),
(60, 'place', 'place', 0, 0, 0.3333, 'P420', 6, '*'),
(61, 'prepared', 'prepared', 0, 0, 0.5333, 'P6163', 9, '*'),
(62, 'quick', 'quick', 0, 0, 0.3333, 'Q000', 6, '*'),
(63, 'relaxing', 'relaxing', 0, 0, 0.5333, 'R4252', 19, '*'),
(64, 'reserve', 'reserve', 0, 0, 0.4667, 'R261', 13, '*'),
(65, 'restaurant', 'restaurant', 0, 0, 0.6667, 'R23653', 25, '*'),
(66, 'rich', 'rich', 0, 0, 0.2667, 'R200', 9, '*'),
(67, 'selection', 'selection', 0, 0, 0.6, 'S4235', 9, '*'),
(68, 'service', 'service', 0, 0, 0.4667, 'S612', 21, '*'),
(69, 'special', 'special', 0, 0, 0.4667, 'S124', 8, '*'),
(70, 'specialties', 'specialties', 0, 0, 0.7333, 'S12432', 9, '*'),
(71, 'spice', 'spice', 0, 0, 0.3333, 'S120', 25, '*'),
(72, 'spicy', 'spicy', 0, 0, 0.3333, 'S120', 6, '*'),
(73, 'table', 'table', 0, 0, 0.3333, 'T140', 25, '*'),
(74, 'taste', 'taste', 0, 0, 0.3333, 'T230', 21, '*'),
(75, 'the', 'the', 0, 0, 0.2, 'T000', 25, '*'),
(76, 'to', 'to', 0, 0, 0.1333, 'T000', 25, '*'),
(77, 'today', 'today', 0, 0, 0.3333, 'T000', 9, '*'),
(78, 'unforgettable', 'unforgettable', 0, 0, 0.8667, 'U5162314', 7, '*'),
(79, 'us', 'us', 0, 0, 0.1333, 'U200', 27, '*'),
(80, 'warm', 'warm', 0, 0, 0.2667, 'W650', 8, '*'),
(81, 'we', 'we', 0, 0, 0.1333, 'W000', 25, '*'),
(82, 'welcome', 'welcome', 0, 0, 0.4667, 'W425', 9, '*'),
(83, 'whether', 'whether', 0, 0, 0.4667, 'W360', 6, '*'),
(84, 'why', 'why', 0, 0, 0.2, 'W000', 21, '*'),
(85, 'with', 'with', 0, 0, 0.2667, 'W300', 21, '*'),
(86, 'you', 'you', 0, 0, 0.2, 'Y000', 13, '*'),
(87, 'you\'re', 'you\'re', 0, 0, 0.4, 'Y600', 6, '*'),
(88, 'your', 'your', 0, 0, 0.2667, 'Y600', 25, '*'),
(89, '“a', '“a', 0, 0, 0.1333, '“000', 6, '*'),
(90, '️', '️', 0, 0, 0.0667, '️000', 12, '*'),
(128, '8', '8', 0, 0, 0.1, '', 1, '*'),
(129, 'general', 'general', 0, 0, 0.4667, 'G564', 1, '*'),
(131, 'about', 'about', 0, 0, 0.3333, 'A130', 13, '*'),
(132, 'bite', 'bite', 0, 0, 0.2667, 'B300', 15, '*'),
(133, 'book', 'book', 0, 0, 0.2667, 'B200', 7, '*'),
(134, 'now', 'now', 0, 0, 0.2, 'N000', 7, '*'),
(138, '2', '2', 0, 0, 0.1, '', 12, '*'),
(139, 'affordable', 'affordable', 0, 0, 0.6667, 'A16314', 12, '*'),
(140, 'ambience', 'ambience', 0, 0, 0.5333, 'A5152', 12, '*'),
(141, 'attention', 'attention', 0, 0, 0.6, 'A3535', 12, '*'),
(142, 'audio', 'audio', 0, 0, 0.3333, 'A300', 12, '*'),
(143, 'become', 'become', 0, 0, 0.4, 'B250', 12, '*'),
(144, 'both', 'both', 0, 0, 0.2667, 'B300', 12, '*'),
(145, 'browser', 'browser', 0, 0, 0.4667, 'B626', 12, '*'),
(146, 'clean', 'clean', 0, 0, 0.3333, 'C450', 12, '*'),
(147, 'combining', 'combining', 0, 0, 0.6, 'C5152', 12, '*'),
(148, 'comfortable', 'comfortable', 0, 0, 0.7333, 'C516314', 12, '*'),
(149, 'consists', 'consists', 0, 0, 0.5333, 'C5232', 12, '*'),
(150, 'create', 'create', 0, 0, 0.4, 'C630', 12, '*'),
(151, 'cuisines', 'cuisines', 0, 0, 0.5333, 'C520', 12, '*'),
(152, 'culinary', 'culinary', 0, 0, 0.5333, 'C456', 14, '*'),
(153, 'customer', 'customer', 0, 0, 0.5333, 'C356', 12, '*'),
(154, 'dedicated', 'dedicated', 0, 0, 0.6, 'D230', 12, '*'),
(155, 'delivering', 'delivering', 0, 0, 0.6667, 'D41652', 12, '*'),
(156, 'detail', 'detail', 0, 0, 0.4, 'D400', 12, '*'),
(157, 'does', 'does', 0, 0, 0.2667, 'D200', 12, '*'),
(158, 'element', 'element', 0, 0, 0.4667, 'E453', 12, '*'),
(159, 'enjoys', 'enjoys', 0, 0, 0.4, 'E520', 12, '*'),
(160, 'ensuring', 'ensuring', 0, 0, 0.5333, 'E52652', 14, '*'),
(161, 'established', 'established', 0, 0, 0.7333, 'E231423', 12, '*'),
(162, 'excellent', 'excellent', 0, 0, 0.6, 'E2453', 12, '*'),
(163, 'exceptional', 'exceptional', 0, 0, 0.7333, 'E21354', 12, '*'),
(164, 'experiences', 'experiences', 0, 0, 0.7333, 'E21652', 12, '*'),
(165, 'feels', 'feels', 0, 0, 0.3333, 'F420', 12, '*'),
(166, 'flavorful', 'flavorful', 0, 0, 0.6, 'F41614', 14, '*'),
(167, 'focus', 'focus', 0, 0, 0.3333, 'F200', 12, '*'),
(168, 'food', 'food', 0, 0, 0.2667, 'F300', 14, '*'),
(169, 'from', 'from', 0, 0, 0.2667, 'F650', 18, '*'),
(170, 'goal', 'goal', 0, 0, 0.2667, 'G400', 12, '*'),
(171, 'guest', 'guest', 0, 0, 0.3333, 'G300', 14, '*'),
(172, 'hygiene', 'hygiene', 0, 0, 0.4667, 'H250', 12, '*'),
(173, 'internationally', 'internationally', 0, 0, 1, 'I5365354', 12, '*'),
(174, 'is', 'is', 0, 0, 0.1333, 'I200', 14, '*'),
(175, 'kitchen', 'kitchen', 0, 0, 0.4667, 'K325', 14, '*'),
(176, 'known', 'known', 0, 0, 0.3333, 'K500', 12, '*'),
(177, 'leading', 'leading', 0, 0, 0.4667, 'L352', 12, '*'),
(178, 'locally', 'locally', 0, 0, 0.4667, 'L240', 14, '*'),
(179, 'location', 'location', 0, 0, 0.5333, 'L235', 16, '*'),
(180, 'memorable', 'memorable', 0, 0, 0.6, 'M614', 14, '*'),
(181, 'mission', 'mission', 0, 0, 0.4667, 'M250', 12, '*'),
(182, 'modern', 'modern', 0, 0, 0.4, 'M365', 12, '*'),
(183, 'not', 'not', 0, 0, 0.2, 'N300', 12, '*'),
(184, 'on', 'on', 0, 0, 0.1333, 'O500', 12, '*'),
(185, 'one', 'one', 0, 0, 0.2, 'O500', 12, '*'),
(186, 'outstanding', 'outstanding', 0, 0, 0.7333, 'O3235352', 12, '*'),
(187, 'people', 'people', 0, 0, 0.4, 'P400', 12, '*'),
(188, 'prices', 'prices', 0, 0, 0.4, 'P620', 12, '*'),
(189, 'professional', 'professional', 0, 0, 0.8, 'P61254', 12, '*'),
(190, 'provide', 'provide', 0, 0, 0.4667, 'P613', 12, '*'),
(191, 'quality', 'quality', 0, 0, 0.4667, 'Q430', 14, '*'),
(192, 'recipes', 'recipes', 0, 0, 0.4667, 'R212', 14, '*'),
(193, 'restaurants', 'restaurants', 0, 0, 0.7333, 'R236532', 12, '*'),
(194, 'satisfaction', 'satisfaction', 0, 0, 0.8, 'S321235', 12, '*'),
(195, 'satisfy', 'satisfy', 0, 0, 0.4667, 'S321', 12, '*'),
(196, 'skilled', 'skilled', 0, 0, 0.4667, 'S430', 12, '*'),
(197, 'sourced', 'sourced', 0, 0, 0.4667, 'S623', 14, '*'),
(198, 'specialize', 'specialize', 0, 0, 0.6667, 'S1242', 12, '*'),
(199, 'staff', 'staff', 0, 0, 0.3333, 'S310', 14, '*'),
(200, 'story', 'story', 0, 0, 0.3333, 'S360', 14, '*'),
(201, 'support', 'support', 0, 0, 0.4667, 'S163', 12, '*'),
(202, 'team', 'team', 0, 0, 0.2667, 'T500', 14, '*'),
(203, 'techniques', 'techniques', 0, 0, 0.6667, 'T252', 12, '*'),
(204, 'that', 'that', 0, 0, 0.2667, 'T000', 14, '*'),
(205, 'their', 'their', 0, 0, 0.3333, 'T600', 14, '*'),
(206, 'through', 'through', 0, 0, 0.4667, 'T620', 14, '*'),
(207, 'together', 'together', 0, 0, 0.5333, 'T236', 12, '*'),
(208, 'traditional', 'traditional', 0, 0, 0.7333, 'T6354', 14, '*'),
(209, 'unique', 'unique', 0, 0, 0.4, 'U520', 12, '*'),
(210, 'valued', 'valued', 0, 0, 0.4, 'V430', 12, '*'),
(211, 'variety', 'variety', 0, 0, 0.4667, 'V630', 12, '*'),
(212, 'vision', 'vision', 0, 0, 0.4, 'V250', 12, '*'),
(213, 'visit', 'visit', 0, 0, 0.3333, 'V230', 14, '*'),
(214, 'was', 'was', 0, 0, 0.2, 'W200', 12, '*'),
(215, 'welcoming', 'welcoming', 0, 0, 0.6, 'W4252', 12, '*'),
(216, 'where', 'where', 0, 0, 0.3333, 'W600', 12, '*'),
(265, '+256', '+256', 0, 0, 0.4, '', 4, '*'),
(266, '00', '00', 0, 0, 0.2, '', 6, '*'),
(267, '10', '10', 0, 0, 0.2, '', 6, '*'),
(268, '11', '11', 0, 0, 0.2, '', 6, '*'),
(269, '123456', '123456', 0, 0, 0.6, '', 4, '*'),
(270, '3', '3', 0, 0, 0.1, '', 5, '*'),
(271, '700', '700', 0, 0, 0.3, '', 4, '*'),
(272, '9', '9', 0, 0, 0.1, '', 4, '*'),
(273, 'am', 'am', 0, 0, 0.1333, 'A500', 6, '*'),
(274, 'below', 'below', 0, 0, 0.3333, 'B400', 4, '*'),
(275, 'com', 'com', 0, 0, 0.2, 'C500', 4, '*'),
(276, 'contact', 'contact', 0, 0, 0.4667, 'C5323', 7, '*'),
(277, 'date', 'date', 0, 0, 0.2667, 'D000', 4, '*'),
(278, 'email', 'email', 0, 0, 0.3333, 'E540', 4, '*'),
(279, 'fill', 'fill', 0, 0, 0.2667, 'F400', 4, '*'),
(280, 'find', 'find', 0, 0, 0.2667, 'F530', 4, '*'),
(281, 'form', 'form', 0, 0, 0.2667, 'F650', 4, '*'),
(282, 'friday', 'friday', 0, 0, 0.4, 'F630', 4, '*'),
(283, 'full', 'full', 0, 0, 0.2667, 'F400', 4, '*'),
(284, 'guests', 'guests', 0, 0, 0.4, 'G320', 6, '*'),
(285, 'hear', 'hear', 0, 0, 0.2667, 'H600', 4, '*'),
(286, 'hours', 'hours', 0, 0, 0.3333, 'H620', 4, '*'),
(287, 'info', 'info', 0, 0, 0.2667, 'I510', 4, '*'),
(288, 'kampala', 'kampala', 0, 0, 0.4667, 'K514', 6, '*'),
(289, 'love', 'love', 0, 0, 0.2667, 'L100', 6, '*'),
(290, 'message', 'message', 0, 0, 0.4667, 'M200', 4, '*'),
(291, 'monday', 'monday', 0, 0, 0.4, 'M300', 4, '*'),
(292, 'name', 'name', 0, 0, 0.2667, 'N000', 4, '*'),
(293, 'number', 'number', 0, 0, 0.4, 'N160', 4, '*'),
(294, 'opening', 'opening', 0, 0, 0.4667, 'O152', 4, '*'),
(295, 'out', 'out', 0, 0, 0.2, 'O300', 4, '*'),
(296, 'phone', 'phone', 0, 0, 0.3333, 'P500', 4, '*'),
(297, 'pm', 'pm', 0, 0, 0.1333, 'P500', 6, '*'),
(298, 'reach', 'reach', 0, 0, 0.3333, 'R200', 4, '*'),
(299, 'reservation', 'reservation', 0, 0, 0.7333, 'R26135', 4, '*'),
(300, 'saturday', 'saturday', 0, 0, 0.5333, 'S363', 4, '*'),
(301, 'spicebites', 'spicebites', 0, 0, 0.6667, 'S12132', 4, '*'),
(302, 'sunday', 'sunday', 0, 0, 0.4, 'S530', 4, '*'),
(303, 'time', 'time', 0, 0, 0.2667, 'T500', 4, '*'),
(304, 'uganda', 'uganda', 0, 0, 0.4, 'U253', 6, '*'),
(305, 'would', 'would', 0, 0, 0.3333, 'W430', 4, '*'),
(328, '4', '4', 0, 0, 0.1, '', 2, '*'),
(329, 'be', 'be', 0, 0, 0.1333, 'B000', 3, '*'),
(330, 'bold', 'bold', 0, 0, 0.2667, 'B430', 5, '*'),
(331, 'contact-us', 'contact-us', 0, 0, 0.6667, 'C53232', 2, '*'),
(332, 'hello', 'hello', 0, 0, 0.3333, 'H400', 3, '*'),
(333, 'should', 'should', 0, 0, 0.4, 'S430', 3, '*'),
(334, 'styled', 'styled', 0, 0, 0.4, 'S343', 3, '*'),
(335, 'test', 'test', 0, 0, 0.2667, 'T230', 3, '*'),
(336, 'this', 'this', 0, 0, 0.2667, 'T200', 3, '*'),
(337, '2020', '2020', 0, 0, 0.4, '', 2, '*'),
(338, '2025', '2025', 0, 0, 0.4, '', 1, '*'),
(339, '40+signature', '40+signature', 0, 0, 0.8, 'S536', 2, '*'),
(340, '5', '5', 0, 0, 0.1, '', 2, '*'),
(341, '500+daily', '500+daily', 0, 0, 0.6, 'D400', 2, '*'),
(342, 'alike', 'alike', 0, 0, 0.3333, 'A420', 2, '*'),
(343, 'all', 'all', 0, 0, 0.2, 'A400', 1, '*'),
(344, 'always', 'always', 0, 0, 0.4, 'A420', 2, '*'),
(345, 'amara', 'amara', 0, 0, 0.3333, 'A560', 2, '*'),
(346, 'arrival', 'arrival', 0, 0, 0.4667, 'A614', 2, '*'),
(347, 'artisans', 'artisans', 0, 0, 0.5333, 'A63252', 2, '*'),
(348, 'attentive', 'attentive', 0, 0, 0.6, 'A3531', 2, '*'),
(349, 'authentic', 'authentic', 0, 0, 0.6, 'A3532', 2, '*'),
(350, 'back', 'back', 0, 0, 0.2667, 'B200', 2, '*'),
(351, 'between', 'between', 0, 0, 0.4667, 'B350', 2, '*'),
(352, 'beverages', 'beverages', 0, 0, 0.6, 'B620', 2, '*'),
(353, 'blending', 'blending', 0, 0, 0.5333, 'B45352', 2, '*'),
(354, 'blends', 'blends', 0, 0, 0.4, 'B4532', 2, '*'),
(355, 'brings', 'brings', 0, 0, 0.4, 'B652', 2, '*'),
(356, 'bursts', 'bursts', 0, 0, 0.4, 'B6232', 2, '*'),
(357, 'call', 'call', 0, 0, 0.2667, 'C400', 2, '*'),
(358, 'can', 'can', 0, 0, 0.2, 'C500', 2, '*'),
(359, 'celebrations', 'celebrations', 0, 0, 0.8, 'C416352', 2, '*'),
(360, 'charcoal', 'charcoal', 0, 0, 0.5333, 'C624', 2, '*'),
(361, 'chilled', 'chilled', 0, 0, 0.4667, 'C430', 2, '*'),
(362, 'cold-pressed', 'cold-pressed', 0, 0, 0.8, 'C431623', 2, '*'),
(363, 'comforting', 'comforting', 0, 0, 0.6667, 'C516352', 2, '*'),
(364, 'continental', 'continental', 0, 0, 0.7333, 'C53534', 2, '*'),
(365, 'creative', 'creative', 0, 0, 0.5333, 'C631', 2, '*'),
(366, 'cuisine', 'cuisine', 0, 0, 0.4667, 'C500', 2, '*'),
(367, 'cuts', 'cuts', 0, 0, 0.2667, 'C320', 2, '*'),
(368, 'daily', 'daily', 0, 0, 0.3333, 'D400', 2, '*'),
(369, 'dates', 'dates', 0, 0, 0.3333, 'D200', 2, '*'),
(370, 'deeply', 'deeply', 0, 0, 0.4, 'D140', 2, '*'),
(371, 'delights', 'delights', 0, 0, 0.5333, 'D4232', 2, '*'),
(372, 'delivered', 'delivered', 0, 0, 0.6, 'D4163', 2, '*'),
(373, 'designed', 'designed', 0, 0, 0.5333, 'D253', 2, '*'),
(374, 'dessert', 'dessert', 0, 0, 0.4667, 'D263', 2, '*'),
(375, 'destination', 'destination', 0, 0, 0.7333, 'D23535', 2, '*'),
(376, 'dinners', 'dinners', 0, 0, 0.4667, 'D562', 2, '*'),
(377, 'dish', 'dish', 0, 0, 0.2667, 'D200', 2, '*'),
(378, 'down', 'down', 0, 0, 0.2667, 'D500', 2, '*'),
(379, 'east', 'east', 0, 0, 0.2667, 'E230', 2, '*'),
(380, 'est', 'est', 0, 0, 0.2, 'E230', 2, '*'),
(381, 'excellence', 'excellence', 0, 0, 0.6667, 'E2452', 2, '*'),
(382, 'expertise', 'expertise', 0, 0, 0.6, 'E21632', 2, '*'),
(383, 'explore', 'explore', 0, 0, 0.4667, 'E2146', 2, '*'),
(384, 'families', 'families', 0, 0, 0.5333, 'F542', 2, '*'),
(385, 'farm-fresh', 'farm-fresh', 0, 0, 0.6667, 'F65162', 2, '*'),
(386, 'favourite', 'favourite', 0, 0, 0.6, 'F630', 2, '*'),
(387, 'finale', 'finale', 0, 0, 0.4, 'F540', 2, '*'),
(388, 'finished', 'finished', 0, 0, 0.5333, 'F523', 2, '*'),
(389, 'first', 'first', 0, 0, 0.3333, 'F623', 2, '*'),
(390, 'flair', 'flair', 0, 0, 0.3333, 'F460', 2, '*'),
(391, 'flavors', 'flavors', 0, 0, 0.4667, 'F4162', 2, '*'),
(392, 'fruit', 'fruit', 0, 0, 0.3333, 'F630', 2, '*'),
(393, 'gatherings', 'gatherings', 0, 0, 0.6667, 'G3652', 2, '*'),
(394, 'generations', 'generations', 0, 0, 0.7333, 'G56352', 2, '*'),
(395, 'give', 'give', 0, 0, 0.2667, 'G100', 2, '*'),
(396, 'heart', 'heart', 0, 0, 0.3333, 'H630', 2, '*'),
(397, 'house', 'house', 0, 0, 0.3333, 'H200', 2, '*'),
(398, 'house-baked', 'house-baked', 0, 0, 0.7333, 'H2123', 2, '*'),
(399, 'hundreds', 'hundreds', 0, 0, 0.5333, 'H53632', 2, '*'),
(400, 'hundredth', 'hundredth', 0, 0, 0.6, 'H5363', 2, '*'),
(401, 'indulgent', 'indulgent', 0, 0, 0.6, 'I534253', 2, '*'),
(402, 'intimate', 'intimate', 0, 0, 0.5333, 'I5353', 2, '*'),
(403, 'join', 'join', 0, 0, 0.2667, 'J500', 2, '*'),
(404, 'letter', 'letter', 0, 0, 0.4, 'L360', 2, '*'),
(405, 'like', 'like', 0, 0, 0.2667, 'L200', 2, '*'),
(406, 'lively', 'lively', 0, 0, 0.4, 'L140', 2, '*'),
(407, 'make', 'make', 0, 0, 0.2667, 'M200', 2, '*'),
(408, 'mango', 'mango', 0, 0, 0.3333, 'M200', 2, '*'),
(409, 'marinade', 'marinade', 0, 0, 0.5333, 'M653', 2, '*'),
(410, 'master', 'master', 0, 0, 0.4, 'M236', 2, '*'),
(411, 'mastery', 'mastery', 0, 0, 0.4667, 'M236', 2, '*'),
(412, 'me', 'me', 0, 0, 0.1333, 'M000', 2, '*'),
(413, 'meal', 'meal', 0, 0, 0.2667, 'M400', 2, '*'),
(414, 'menu', 'menu', 0, 0, 0.2667, 'M000', 2, '*'),
(415, 'moment', 'moment', 0, 0, 0.4, 'M300', 2, '*'),
(416, 'more', 'more', 0, 0, 0.2667, 'M600', 2, '*'),
(417, 'morning', 'morning', 0, 0, 0.4667, 'M652', 2, '*'),
(418, 'n', 'n', 0, 0, 0.0667, 'N000', 2, '*'),
(419, 'natural', 'natural', 0, 0, 0.4667, 'N364', 2, '*'),
(420, 'no', 'no', 0, 0, 0.1333, 'N000', 2, '*'),
(421, 'open', 'open', 0, 0, 0.2667, 'O150', 2, '*'),
(422, 'other', 'other', 0, 0, 0.3333, 'O360', 2, '*'),
(423, 'over', 'over', 0, 0, 0.2667, 'O160', 2, '*'),
(424, 'passed', 'passed', 0, 0, 0.4, 'P230', 2, '*'),
(425, 'plate', 'plate', 0, 0, 0.3333, 'P430', 2, '*'),
(426, 'prepare', 'prepare', 0, 0, 0.4667, 'P616', 2, '*'),
(427, 'produce', 'produce', 0, 0, 0.4667, 'P632', 2, '*'),
(428, 'rating', 'rating', 0, 0, 0.4, 'R352', 2, '*'),
(429, 'reserved', 'reserved', 0, 0, 0.5333, 'R2613', 1, '*'),
(430, 'rights', 'rights', 0, 0, 0.4, 'R232', 1, '*'),
(431, 'seamless', 'seamless', 0, 0, 0.5333, 'S542', 2, '*'),
(432, 'seasonal', 'seasonal', 0, 0, 0.5333, 'S540', 2, '*'),
(433, 'seat', 'seat', 0, 0, 0.2667, 'S300', 2, '*'),
(434, 'serve', 'serve', 0, 0, 0.3333, 'S610', 2, '*'),
(435, 'served', 'served', 0, 0, 0.4, 'S613', 2, '*'),
(436, 'setting', 'setting', 0, 0, 0.4667, 'S352', 2, '*'),
(437, 'settings', 'settings', 0, 0, 0.5333, 'S352', 2, '*'),
(438, 'signature', 'signature', 0, 0, 0.6, 'S536', 2, '*'),
(439, 'slow-grilled', 'slow-grilled', 0, 0, 0.8, 'S42643', 2, '*'),
(440, 'smoky', 'smoky', 0, 0, 0.3333, 'S520', 2, '*'),
(441, 'so', 'so', 0, 0, 0.1333, 'S000', 2, '*'),
(442, 'source', 'source', 0, 0, 0.4, 'S620', 2, '*'),
(443, 'spices', 'spices', 0, 0, 0.4, 'S120', 2, '*'),
(444, 'sweet', 'sweet', 0, 0, 0.3333, 'S300', 2, '*'),
(445, 'sweets', 'sweets', 0, 0, 0.4, 'S320', 2, '*'),
(446, 'tells', 'tells', 0, 0, 0.3333, 'T420', 2, '*'),
(447, 'tender', 'tender', 0, 0, 0.4, 'T536', 2, '*'),
(448, 'took', 'took', 0, 0, 0.2667, 'T200', 2, '*'),
(449, 'tradition', 'tradition', 0, 0, 0.6, 'T635', 2, '*'),
(450, 'treat', 'treat', 0, 0, 0.3333, 'T630', 2, '*'),
(451, 'treats', 'treats', 0, 0, 0.4, 'T632', 2, '*'),
(452, 'tropical', 'tropical', 0, 0, 0.5333, 'T6124', 2, '*'),
(453, 'truly', 'truly', 0, 0, 0.3333, 'T640', 2, '*'),
(454, 'view', 'view', 0, 0, 0.2667, 'V000', 2, '*'),
(455, 'warmth', 'warmth', 0, 0, 0.4, 'W653', 2, '*'),
(456, 'watermelon', 'watermelon', 0, 0, 0.6667, 'W36545', 2, '*'),
(457, 'what', 'what', 0, 0, 0.2667, 'W300', 2, '*'),
(458, 'who', 'who', 0, 0, 0.2, 'W000', 2, '*'),
(459, 'work', 'work', 0, 0, 0.2667, 'W620', 2, '*'),
(460, 'years', 'years', 0, 0, 0.3333, 'Y620', 2, '*'),
(461, 'yrsof', 'yrsof', 0, 0, 0.3333, 'Y621', 2, '*');

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_terms_common`
--

CREATE TABLE `sb_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_finder_terms_common`
--

INSERT INTO `sb_finder_terms_common` (`term`, `language`, `custom`) VALUES
('a', 'en', 0),
('about', 'en', 0),
('above', 'en', 0),
('after', 'en', 0),
('again', 'en', 0),
('against', 'en', 0),
('all', 'en', 0),
('am', 'en', 0),
('an', 'en', 0),
('and', 'en', 0),
('any', 'en', 0),
('are', 'en', 0),
('aren\'t', 'en', 0),
('as', 'en', 0),
('at', 'en', 0),
('be', 'en', 0),
('because', 'en', 0),
('been', 'en', 0),
('before', 'en', 0),
('being', 'en', 0),
('below', 'en', 0),
('between', 'en', 0),
('both', 'en', 0),
('but', 'en', 0),
('by', 'en', 0),
('can\'t', 'en', 0),
('cannot', 'en', 0),
('could', 'en', 0),
('couldn\'t', 'en', 0),
('did', 'en', 0),
('didn\'t', 'en', 0),
('do', 'en', 0),
('does', 'en', 0),
('doesn\'t', 'en', 0),
('doing', 'en', 0),
('don\'t', 'en', 0),
('down', 'en', 0),
('during', 'en', 0),
('each', 'en', 0),
('few', 'en', 0),
('for', 'en', 0),
('from', 'en', 0),
('further', 'en', 0),
('had', 'en', 0),
('hadn\'t', 'en', 0),
('has', 'en', 0),
('hasn\'t', 'en', 0),
('have', 'en', 0),
('haven\'t', 'en', 0),
('having', 'en', 0),
('he', 'en', 0),
('he\'d', 'en', 0),
('he\'ll', 'en', 0),
('he\'s', 'en', 0),
('her', 'en', 0),
('here', 'en', 0),
('here\'s', 'en', 0),
('hers', 'en', 0),
('herself', 'en', 0),
('him', 'en', 0),
('himself', 'en', 0),
('his', 'en', 0),
('how', 'en', 0),
('how\'s', 'en', 0),
('i', 'en', 0),
('i\'d', 'en', 0),
('i\'ll', 'en', 0),
('i\'m', 'en', 0),
('i\'ve', 'en', 0),
('if', 'en', 0),
('in', 'en', 0),
('into', 'en', 0),
('is', 'en', 0),
('isn\'t', 'en', 0),
('it', 'en', 0),
('it\'s', 'en', 0),
('its', 'en', 0),
('itself', 'en', 0),
('let\'s', 'en', 0),
('me', 'en', 0),
('more', 'en', 0),
('most', 'en', 0),
('mustn\'t', 'en', 0),
('my', 'en', 0),
('myself', 'en', 0),
('no', 'en', 0),
('nor', 'en', 0),
('not', 'en', 0),
('of', 'en', 0),
('off', 'en', 0),
('on', 'en', 0),
('once', 'en', 0),
('only', 'en', 0),
('or', 'en', 0),
('other', 'en', 0),
('ought', 'en', 0),
('our', 'en', 0),
('ours', 'en', 0),
('ourselves', 'en', 0),
('out', 'en', 0),
('over', 'en', 0),
('own', 'en', 0),
('same', 'en', 0),
('shan\'t', 'en', 0),
('she', 'en', 0),
('she\'d', 'en', 0),
('she\'ll', 'en', 0),
('she\'s', 'en', 0),
('should', 'en', 0),
('shouldn\'t', 'en', 0),
('so', 'en', 0),
('some', 'en', 0),
('such', 'en', 0),
('than', 'en', 0),
('that', 'en', 0),
('that\'s', 'en', 0),
('the', 'en', 0),
('their', 'en', 0),
('theirs', 'en', 0),
('them', 'en', 0),
('themselves', 'en', 0),
('then', 'en', 0),
('there', 'en', 0),
('there\'s', 'en', 0),
('these', 'en', 0),
('they', 'en', 0),
('they\'d', 'en', 0),
('they\'ll', 'en', 0),
('they\'re', 'en', 0),
('they\'ve', 'en', 0),
('this', 'en', 0),
('those', 'en', 0),
('through', 'en', 0),
('to', 'en', 0),
('too', 'en', 0),
('under', 'en', 0),
('until', 'en', 0),
('up', 'en', 0),
('very', 'en', 0),
('was', 'en', 0),
('wasn\'t', 'en', 0),
('we', 'en', 0),
('we\'d', 'en', 0),
('we\'ll', 'en', 0),
('we\'re', 'en', 0),
('we\'ve', 'en', 0),
('were', 'en', 0),
('weren\'t', 'en', 0),
('what', 'en', 0),
('what\'s', 'en', 0),
('when', 'en', 0),
('when\'s', 'en', 0),
('where', 'en', 0),
('where\'s', 'en', 0),
('which', 'en', 0),
('while', 'en', 0),
('who', 'en', 0),
('who\'s', 'en', 0),
('whom', 'en', 0),
('why', 'en', 0),
('why\'s', 'en', 0),
('with', 'en', 0),
('won\'t', 'en', 0),
('would', 'en', 0),
('wouldn\'t', 'en', 0),
('you', 'en', 0),
('you\'d', 'en', 0),
('you\'ll', 'en', 0),
('you\'re', 'en', 0),
('you\'ve', 'en', 0),
('your', 'en', 0),
('yours', 'en', 0),
('yourself', 'en', 0),
('yourselves', 'en', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_tokens`
--

CREATE TABLE `sb_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_tokens_aggregate`
--

CREATE TABLE `sb_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `total_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_finder_types`
--

CREATE TABLE `sb_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_finder_types`
--

INSERT INTO `sb_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Tag', '');

-- --------------------------------------------------------

--
-- Table structure for table `sb_guidedtours`
--

CREATE TABLE `sb_guidedtours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_guidedtours`
--

INSERT INTO `sb_guidedtours` (`id`, `title`, `uid`, `description`, `ordering`, `extensions`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `published`, `language`, `note`, `access`, `autostart`) VALUES
(1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE', 'joomla-guidedtours', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION', 1, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE', 'joomla-guidedtoursteps', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION', 2, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE', 'joomla-articles', 'COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION', 3, '[\"com_content\",\"com_categories\"]', 'administrator/index.php?option=com_content&view=articles', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE', 'joomla-categories', 'COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION', 4, '[\"com_content\",\"com_categories\"]', 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(5, 'COM_GUIDEDTOURS_TOUR_MENUS_TITLE', 'joomla-menus', 'COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION', 5, '[\"com_menus\"]', 'administrator/index.php?option=com_menus&view=menus', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(6, 'COM_GUIDEDTOURS_TOUR_TAGS_TITLE', 'joomla-tags', 'COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION', 6, '[\"com_tags\"]', 'administrator/index.php?option=com_tags&view=tags', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(7, 'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE', 'joomla-banners', 'COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION', 7, '[\"com_banners\"]', 'administrator/index.php?option=com_banners&view=banners', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE', 'joomla-contacts', 'COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION', 8, '[\"com_contact\"]', 'administrator/index.php?option=com_contact&view=contacts', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE', 'joomla-newsfeeds', 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION', 9, '[\"com_newsfeeds\"]', 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE', 'joomla-smartsearch', 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION', 10, '[\"com_finder\"]', 'administrator/index.php?option=com_finder&view=filters', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(11, 'COM_GUIDEDTOURS_TOUR_USERS_TITLE', 'joomla-users', 'COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION', 11, '[\"com_users\"]', 'administrator/index.php?option=com_users&view=users', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 0),
(12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE', 'joomla-welcome', 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION', 12, '[\"com_cpanel\"]', 'administrator/index.php', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, 1, '*', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sb_guidedtour_steps`
--

CREATE TABLE `sb_guidedtour_steps` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_guidedtour_steps`
--

INSERT INTO `sb_guidedtour_steps` (`id`, `tour_id`, `title`, `published`, `description`, `ordering`, `position`, `target`, `type`, `interactive_type`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `language`, `note`, `params`) VALUES
(1, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION', 1, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tours', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(2, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION', 2, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(3, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION', 3, 'top', '#jform_url', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(4, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION', 4, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(5, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION', 5, 'top', 'joomla-field-fancy-select .choices', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(6, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION', 6, 'bottom', '#jform_autostart0', 2, 3, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(7, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION', 7, 'top', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(8, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION', 8, 'bottom', '', 0, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(9, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION', 9, 'top', '#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn', 2, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(10, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION', 10, 'bottom', '.button-new', 2, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(11, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION', 11, 'bottom', '#jform_title', 2, 2, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(12, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION', 12, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(13, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION', 13, 'bottom', '#jform_published', 2, 3, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(14, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION', 14, 'top', '#jform_position', 2, 3, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(15, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION', 15, 'top', '#jform_target', 2, 3, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(16, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION', 16, 'top', '#jform_type', 2, 3, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(17, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION', 17, 'bottom', '#save-group-children-save .button-save', 2, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(18, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION', 18, 'bottom', '', 0, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(19, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION', 19, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_content&view=articles', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(20, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION', 20, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(21, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION', 21, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(22, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION', 22, 'bottom', '#jform_articletext,#jform_articletext_ifr', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(23, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION', 23, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(24, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION', 24, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(25, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION', 25, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(26, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION', 26, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(27, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION', 27, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(28, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION', 28, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(29, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION', 29, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(30, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION', 30, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(31, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION', 31, 'bottom', '', 0, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(32, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION', 32, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(33, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION', 33, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(34, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION', 34, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(35, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION', 35, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(36, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION', 36, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(37, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION', 37, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(38, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION', 38, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(39, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION', 39, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(40, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION', 40, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(41, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION', 41, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(42, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION', 42, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(43, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION', 43, 'bottom', '', 0, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(44, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION', 44, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_menus&view=menus', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(45, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION', 45, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(46, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION', 46, 'top', '#jform_menutype', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(47, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION', 47, 'top', '#jform_menudescription', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(48, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION', 48, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(49, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION', 49, 'bottom', '', 0, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(50, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION', 50, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_tags&view=tags', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(51, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION', 51, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(52, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION', 52, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(53, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION', 53, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(54, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION', 54, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(55, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION', 55, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(56, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION', 56, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(57, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION', 57, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(58, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION', 58, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(59, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION', 59, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(60, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION', 60, 'bottom', '', 0, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(61, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION', 61, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_banners&view=banners', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(62, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION', 62, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(63, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION', 63, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(64, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION', 64, 'bottom', '.col-lg-9', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(65, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION', 65, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(66, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION', 66, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(67, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION', 67, 'bottom', '#jform_sticky1', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(68, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION', 68, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(69, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION', 69, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(70, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION', 70, 'bottom', '', 0, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(71, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION', 71, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_contact&view=contacts', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(72, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION', 72, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(73, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION', 73, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(74, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION', 74, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(75, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION', 75, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(76, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION', 76, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(77, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION', 77, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(78, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION', 78, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(79, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION', 79, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(80, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION', 80, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(81, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION', 81, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(82, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION', 82, 'bottom', '', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(83, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION', 83, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(84, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION', 84, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(85, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION', 85, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(86, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION', 86, 'bottom', '#jform_link', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(87, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION', 87, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(88, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION', 88, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(89, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION', 89, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(90, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION', 90, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(91, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION', 91, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(92, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION', 92, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(93, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION', 93, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(94, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION', 94, 'bottom', '', 0, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(95, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION', 95, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_finder&view=filters', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(96, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION', 96, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(97, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION', 97, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(98, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION', 98, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(99, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION', 99, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(100, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION', 100, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(101, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION', 101, 'bottom', '', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(102, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION', 102, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(103, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION', 103, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(104, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION', 104, 'bottom', '#jform_username', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(105, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION', 105, 'bottom', '#jform_password', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(106, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION', 106, 'bottom', '#jform_password2', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(107, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION', 107, 'bottom', '#jform_email', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(108, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION', 108, 'top', '#jform_sendEmail0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(109, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION', 109, 'top', '#jform_block0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(110, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION', 110, 'top', '#jform_requireReset0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(111, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION', 111, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(112, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION', 112, 'bottom', '', 0, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(113, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION', 113, 'right', '#sidebarmenu', 0, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(114, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION', 114, 'center', '', 0, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(115, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION', 115, 'left', '.quickicons-for-update_quickicon .card', 0, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(116, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION', 116, 'bottom', '#header', 0, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL),
(117, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION', 117, 'right', '#sidebarmenu nav > ul:first-of-type > li:last-child', 0, 1, '', '2026-04-09 06:47:44', 57, '2026-04-09 06:47:44', 57, NULL, NULL, '*', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_history`
--

CREATE TABLE `sb_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep',
  `is_current` tinyint(4) NOT NULL DEFAULT 0,
  `is_legacy` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_history`
--

INSERT INTO `sb_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`, `is_current`, `is_legacy`) VALUES
(1, 'com_content.article.1', '', '2026-04-09 07:04:21', 57, 3793, 'd6f84aca475647dfecc0e5e07eb2c975315f21d5', '{\"id\":1,\"title\":\"Home\",\"alias\":\"home\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 07:04:21\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 07:04:21\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":100,\"introtext\":\"<p data-start=\\\"258\\\" data-end=\\\"333\\\"><strong data-start=\\\"258\\\" data-end=\\\"295\\\">Welcome to Spice Bites Restaurant<\\/strong><br data-start=\\\"295\\\" data-end=\\\"298\\\"><em data-start=\\\"298\\\" data-end=\\\"333\\\">\\u201cA Taste of Flavor in Every Bite\\u201d<\\/em><\\/p>\\r\\n<p data-start=\\\"335\\\" data-end=\\\"527\\\">Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest ingredients.<\\/p>\\r\\n<p data-start=\\\"529\\\" data-end=\\\"699\\\">Whether you\'re looking for a quick lunch, a family dinner, or a place to celebrate special moments, Spice Bites offers a warm and inviting environment for every occasion.<\\/p>\\r\\n<hr data-start=\\\"701\\\" data-end=\\\"704\\\">\\r\\n<h3 data-section-id=\\\"g17prb\\\" data-start=\\\"706\\\" data-end=\\\"728\\\">\\ud83c\\udf1f Our Specialties<\\/h3>\\r\\n<ul data-start=\\\"729\\\" data-end=\\\"837\\\">\\r\\n<li data-section-id=\\\"1xjpq1f\\\" data-start=\\\"729\\\" data-end=\\\"760\\\">Grilled Chicken &amp; Spicy BBQ<\\/li>\\r\\n<li data-section-id=\\\"ajt6t1\\\" data-start=\\\"761\\\" data-end=\\\"785\\\">African Local Dishes<\\/li>\\r\\n<li data-section-id=\\\"10zm3ri\\\" data-start=\\\"786\\\" data-end=\\\"814\\\">Fresh Juices &amp; Mocktails<\\/li>\\r\\n<li data-section-id=\\\"a1lv8e\\\" data-start=\\\"815\\\" data-end=\\\"837\\\">Delicious Desserts<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"839\\\" data-end=\\\"842\\\">\\r\\n<h3 data-section-id=\\\"1j6fgh6\\\" data-start=\\\"844\\\" data-end=\\\"866\\\">\\ud83c\\udf7d\\ufe0f Why Choose Us?<\\/h3>\\r\\n<ul data-start=\\\"867\\\" data-end=\\\"990\\\">\\r\\n<li data-section-id=\\\"16lmuc1\\\" data-start=\\\"867\\\" data-end=\\\"905\\\">Fresh and high-quality ingredients<\\/li>\\r\\n<li data-section-id=\\\"kzea15\\\" data-start=\\\"906\\\" data-end=\\\"927\\\">Experienced chefs<\\/li>\\r\\n<li data-section-id=\\\"1lt7uww\\\" data-start=\\\"928\\\" data-end=\\\"960\\\">Cozy and relaxing atmosphere<\\/li>\\r\\n<li data-section-id=\\\"wq5ro9\\\" data-start=\\\"961\\\" data-end=\\\"990\\\">Fast and friendly service<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"992\\\" data-end=\\\"995\\\">\\r\\n<p data-start=\\\"997\\\" data-end=\\\"1074\\\">\\ud83d\\udc49 <strong data-start=\\\"1000\\\" data-end=\\\"1074\\\">Reserve your table today and enjoy an unforgettable dining experience!<\\/strong><\\/p>\\r\\n<hr data-start=\\\"1076\\\" data-end=\\\"1079\\\">\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(2, 'com_content.category.8', '', '2026-04-09 07:05:41', 57, 344, '752311cf83fd23065d7d3e847a829473ca37c530', '{\"title\":\"general\",\"parent_id\":1,\"extension\":\"com_content\",\"language\":\"*\",\"published\":1,\"typeAlias\":\"{extension}.category\",\"level\":1,\"lft\":11,\"rgt\":12,\"alias\":\"general\",\"id\":8,\"asset_id\":101,\"note\":\"\",\"description\":null,\"access\":1,\"params\":null,\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"\",\"created_user_id\":57,\"created_time\":\"2026-04-09 07:05:41\"}', 0, 1, 0),
(3, 'com_content.article.1', '', '2026-04-09 07:05:41', 57, 3793, '015ae403b987e2848c81e9a37a898fac24f992bd', '{\"id\":1,\"title\":\"Home\",\"alias\":\"home\",\"note\":\"\",\"catid\":8,\"state\":1,\"created\":\"2026-04-09 07:04:21\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 07:04:21\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":100,\"introtext\":\"<p data-start=\\\"258\\\" data-end=\\\"333\\\"><strong data-start=\\\"258\\\" data-end=\\\"295\\\">Welcome to Spice Bites Restaurant<\\/strong><br data-start=\\\"295\\\" data-end=\\\"298\\\"><em data-start=\\\"298\\\" data-end=\\\"333\\\">\\u201cA Taste of Flavor in Every Bite\\u201d<\\/em><\\/p>\\r\\n<p data-start=\\\"335\\\" data-end=\\\"527\\\">Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest ingredients.<\\/p>\\r\\n<p data-start=\\\"529\\\" data-end=\\\"699\\\">Whether you\'re looking for a quick lunch, a family dinner, or a place to celebrate special moments, Spice Bites offers a warm and inviting environment for every occasion.<\\/p>\\r\\n<hr data-start=\\\"701\\\" data-end=\\\"704\\\">\\r\\n<h3 data-section-id=\\\"g17prb\\\" data-start=\\\"706\\\" data-end=\\\"728\\\">\\ud83c\\udf1f Our Specialties<\\/h3>\\r\\n<ul data-start=\\\"729\\\" data-end=\\\"837\\\">\\r\\n<li data-section-id=\\\"1xjpq1f\\\" data-start=\\\"729\\\" data-end=\\\"760\\\">Grilled Chicken &amp; Spicy BBQ<\\/li>\\r\\n<li data-section-id=\\\"ajt6t1\\\" data-start=\\\"761\\\" data-end=\\\"785\\\">African Local Dishes<\\/li>\\r\\n<li data-section-id=\\\"10zm3ri\\\" data-start=\\\"786\\\" data-end=\\\"814\\\">Fresh Juices &amp; Mocktails<\\/li>\\r\\n<li data-section-id=\\\"a1lv8e\\\" data-start=\\\"815\\\" data-end=\\\"837\\\">Delicious Desserts<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"839\\\" data-end=\\\"842\\\">\\r\\n<h3 data-section-id=\\\"1j6fgh6\\\" data-start=\\\"844\\\" data-end=\\\"866\\\">\\ud83c\\udf7d\\ufe0f Why Choose Us?<\\/h3>\\r\\n<ul data-start=\\\"867\\\" data-end=\\\"990\\\">\\r\\n<li data-section-id=\\\"16lmuc1\\\" data-start=\\\"867\\\" data-end=\\\"905\\\">Fresh and high-quality ingredients<\\/li>\\r\\n<li data-section-id=\\\"kzea15\\\" data-start=\\\"906\\\" data-end=\\\"927\\\">Experienced chefs<\\/li>\\r\\n<li data-section-id=\\\"1lt7uww\\\" data-start=\\\"928\\\" data-end=\\\"960\\\">Cozy and relaxing atmosphere<\\/li>\\r\\n<li data-section-id=\\\"wq5ro9\\\" data-start=\\\"961\\\" data-end=\\\"990\\\">Fast and friendly service<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"992\\\" data-end=\\\"995\\\">\\r\\n<p data-start=\\\"997\\\" data-end=\\\"1074\\\">\\ud83d\\udc49 <strong data-start=\\\"1000\\\" data-end=\\\"1074\\\">Reserve your table today and enjoy an unforgettable dining experience!<\\/strong><\\/p>\\r\\n<hr data-start=\\\"1076\\\" data-end=\\\"1079\\\">\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(4, 'com_content.article.1', '', '2026-04-09 07:27:16', 57, 3796, '64153f64bdfcd54d76c5d1d0dcbbc2dbb18c1f63', '{\"id\":1,\"title\":\"Home\",\"alias\":\"welcome\",\"note\":\"\",\"catid\":8,\"state\":1,\"created\":\"2026-04-09 07:04:21\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 07:04:21\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":100,\"introtext\":\"<p data-start=\\\"258\\\" data-end=\\\"333\\\"><strong data-start=\\\"258\\\" data-end=\\\"295\\\">Welcome to Spice Bites Restaurant<\\/strong><br data-start=\\\"295\\\" data-end=\\\"298\\\"><em data-start=\\\"298\\\" data-end=\\\"333\\\">\\u201cA Taste of Flavor in Every Bite\\u201d<\\/em><\\/p>\\r\\n<p data-start=\\\"335\\\" data-end=\\\"527\\\">Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest ingredients.<\\/p>\\r\\n<p data-start=\\\"529\\\" data-end=\\\"699\\\">Whether you\'re looking for a quick lunch, a family dinner, or a place to celebrate special moments, Spice Bites offers a warm and inviting environment for every occasion.<\\/p>\\r\\n<hr data-start=\\\"701\\\" data-end=\\\"704\\\">\\r\\n<h3 data-section-id=\\\"g17prb\\\" data-start=\\\"706\\\" data-end=\\\"728\\\">\\ud83c\\udf1f Our Specialties<\\/h3>\\r\\n<ul data-start=\\\"729\\\" data-end=\\\"837\\\">\\r\\n<li data-section-id=\\\"1xjpq1f\\\" data-start=\\\"729\\\" data-end=\\\"760\\\">Grilled Chicken &amp; Spicy BBQ<\\/li>\\r\\n<li data-section-id=\\\"ajt6t1\\\" data-start=\\\"761\\\" data-end=\\\"785\\\">African Local Dishes<\\/li>\\r\\n<li data-section-id=\\\"10zm3ri\\\" data-start=\\\"786\\\" data-end=\\\"814\\\">Fresh Juices &amp; Mocktails<\\/li>\\r\\n<li data-section-id=\\\"a1lv8e\\\" data-start=\\\"815\\\" data-end=\\\"837\\\">Delicious Desserts<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"839\\\" data-end=\\\"842\\\">\\r\\n<h3 data-section-id=\\\"1j6fgh6\\\" data-start=\\\"844\\\" data-end=\\\"866\\\">\\ud83c\\udf7d\\ufe0f Why Choose Us?<\\/h3>\\r\\n<ul data-start=\\\"867\\\" data-end=\\\"990\\\">\\r\\n<li data-section-id=\\\"16lmuc1\\\" data-start=\\\"867\\\" data-end=\\\"905\\\">Fresh and high-quality ingredients<\\/li>\\r\\n<li data-section-id=\\\"kzea15\\\" data-start=\\\"906\\\" data-end=\\\"927\\\">Experienced chefs<\\/li>\\r\\n<li data-section-id=\\\"1lt7uww\\\" data-start=\\\"928\\\" data-end=\\\"960\\\">Cozy and relaxing atmosphere<\\/li>\\r\\n<li data-section-id=\\\"wq5ro9\\\" data-start=\\\"961\\\" data-end=\\\"990\\\">Fast and friendly service<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"992\\\" data-end=\\\"995\\\">\\r\\n<p data-start=\\\"997\\\" data-end=\\\"1074\\\">\\ud83d\\udc49 <strong data-start=\\\"1000\\\" data-end=\\\"1074\\\">Reserve your table today and enjoy an unforgettable dining experience!<\\/strong><\\/p>\\r\\n<hr data-start=\\\"1076\\\" data-end=\\\"1079\\\">\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(5, 'com_content.article.1', '', '2026-04-09 07:29:02', 57, 3799, 'db90eb49e7e3d102596831686f1e2d4d9ac693e0', '{\"id\":1,\"title\":\"welcome\",\"alias\":\"welcome\",\"note\":\"\",\"catid\":8,\"state\":1,\"created\":\"2026-04-09 07:04:21\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 07:04:21\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":100,\"introtext\":\"<p data-start=\\\"258\\\" data-end=\\\"333\\\"><strong data-start=\\\"258\\\" data-end=\\\"295\\\">Welcome to Spice Bites Restaurant<\\/strong><br data-start=\\\"295\\\" data-end=\\\"298\\\"><em data-start=\\\"298\\\" data-end=\\\"333\\\">\\u201cA Taste of Flavor in Every Bite\\u201d<\\/em><\\/p>\\r\\n<p data-start=\\\"335\\\" data-end=\\\"527\\\">Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest ingredients.<\\/p>\\r\\n<p data-start=\\\"529\\\" data-end=\\\"699\\\">Whether you\'re looking for a quick lunch, a family dinner, or a place to celebrate special moments, Spice Bites offers a warm and inviting environment for every occasion.<\\/p>\\r\\n<hr data-start=\\\"701\\\" data-end=\\\"704\\\">\\r\\n<h3 data-section-id=\\\"g17prb\\\" data-start=\\\"706\\\" data-end=\\\"728\\\">\\ud83c\\udf1f Our Specialties<\\/h3>\\r\\n<ul data-start=\\\"729\\\" data-end=\\\"837\\\">\\r\\n<li data-section-id=\\\"1xjpq1f\\\" data-start=\\\"729\\\" data-end=\\\"760\\\">Grilled Chicken &amp; Spicy BBQ<\\/li>\\r\\n<li data-section-id=\\\"ajt6t1\\\" data-start=\\\"761\\\" data-end=\\\"785\\\">African Local Dishes<\\/li>\\r\\n<li data-section-id=\\\"10zm3ri\\\" data-start=\\\"786\\\" data-end=\\\"814\\\">Fresh Juices &amp; Mocktails<\\/li>\\r\\n<li data-section-id=\\\"a1lv8e\\\" data-start=\\\"815\\\" data-end=\\\"837\\\">Delicious Desserts<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"839\\\" data-end=\\\"842\\\">\\r\\n<h3 data-section-id=\\\"1j6fgh6\\\" data-start=\\\"844\\\" data-end=\\\"866\\\">\\ud83c\\udf7d\\ufe0f Why Choose Us?<\\/h3>\\r\\n<ul data-start=\\\"867\\\" data-end=\\\"990\\\">\\r\\n<li data-section-id=\\\"16lmuc1\\\" data-start=\\\"867\\\" data-end=\\\"905\\\">Fresh and high-quality ingredients<\\/li>\\r\\n<li data-section-id=\\\"kzea15\\\" data-start=\\\"906\\\" data-end=\\\"927\\\">Experienced chefs<\\/li>\\r\\n<li data-section-id=\\\"1lt7uww\\\" data-start=\\\"928\\\" data-end=\\\"960\\\">Cozy and relaxing atmosphere<\\/li>\\r\\n<li data-section-id=\\\"wq5ro9\\\" data-start=\\\"961\\\" data-end=\\\"990\\\">Fast and friendly service<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"992\\\" data-end=\\\"995\\\">\\r\\n<p data-start=\\\"997\\\" data-end=\\\"1074\\\">\\ud83d\\udc49 <strong data-start=\\\"1000\\\" data-end=\\\"1074\\\">Reserve your table today and enjoy an unforgettable dining experience!<\\/strong><\\/p>\\r\\n<hr data-start=\\\"1076\\\" data-end=\\\"1079\\\">\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(6, 'com_content.article.1', '', '2026-04-09 07:48:32', 57, 4288, '1faaef7078b3858a4758ddf1ffbeea6ea73948af', '{\"id\":1,\"title\":\"welcome\",\"alias\":\"welcome\",\"note\":\"\",\"catid\":8,\"state\":1,\"created\":\"2026-04-09 07:04:21\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 07:04:21\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":100,\"introtext\":\"<!-- HERO SECTION -->\\r\\n<section style=\\\"background: url(\'images\\/restaurant\\/hero.png\') center\\/cover no-repeat; padding: 100px 20px; color: white; text-align: center;\\\">\\r\\n<h1 style=\\\"font-size: 48px; margin-bottom: 10px;\\\">Welcome to Spice Bites Restaurant<\\/h1>\\r\\n<p style=\\\"font-size: 22px;\\\">A Taste of Flavor in Every Bite<\\/p>\\r\\n<a style=\\\"background: #e67e22; color: white; padding: 12px 25px; text-decoration: none; border-radius: 5px; display: inline-block; margin-top: 20px;\\\" href=\\\"#\\\"> Reserve a Table <\\/a><\\/section>\\r\\n<!-- ABOUT SECTION -->\\r\\n<section style=\\\"padding: 50px 20px; text-align: center;\\\">\\r\\n<h2>About Us<\\/h2>\\r\\n<p style=\\\"max-width: 800px; margin: auto;\\\">Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest ingredients.<\\/p>\\r\\n<\\/section>\\r\\n<!-- SPECIALTIES -->\\r\\n<section style=\\\"background: #f8f8f8; padding: 50px 20px;\\\">\\r\\n<h2 style=\\\"text-align: center;\\\">\\ud83c\\udf1f Our Specialties<\\/h2>\\r\\n<div style=\\\"display: flex; flex-wrap: wrap; justify-content: center; gap: 20px; margin-top: 30px;\\\">\\r\\n<div style=\\\"width: 200px; text-align: center;\\\"><img style=\\\"width: 100%; border-radius: 10px;\\\" src=\\\"images\\/restaurant\\/grilled.png\\\">\\r\\n<p>Grilled Chicken &amp; BBQ<\\/p>\\r\\n<\\/div>\\r\\n<div style=\\\"width: 200px; text-align: center;\\\"><img style=\\\"width: 100%; border-radius: 10px;\\\" src=\\\"images\\/restaurant\\/african.png\\\">\\r\\n<p>African Local Dishes<\\/p>\\r\\n<\\/div>\\r\\n<div style=\\\"width: 200px; text-align: center;\\\"><img style=\\\"width: 100%; border-radius: 10px;\\\" src=\\\"images\\/restaurant\\/juice.png\\\">\\r\\n<p>Fresh Juices<\\/p>\\r\\n<\\/div>\\r\\n<div style=\\\"width: 200px; text-align: center;\\\"><img style=\\\"width: 100%; border-radius: 10px;\\\" src=\\\"images\\/restaurant\\/dessert.png\\\">\\r\\n<p>Delicious Desserts<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/section>\\r\\n<!-- WHY CHOOSE US -->\\r\\n<section style=\\\"padding: 50px 20px; text-align: center;\\\">\\r\\n<h2>\\ud83c\\udf7d\\ufe0f Why Choose Us?<\\/h2>\\r\\n<ul style=\\\"list-style: none; padding: 0; max-width: 600px; margin: auto;\\\">\\r\\n<li>\\u2714 Fresh and high-quality ingredients<\\/li>\\r\\n<li>\\u2714 Experienced chefs<\\/li>\\r\\n<li>\\u2714 Cozy and relaxing atmosphere<\\/li>\\r\\n<li>\\u2714 Fast and friendly service<\\/li>\\r\\n<\\/ul>\\r\\n<\\/section>\\r\\n<!-- CTA -->\\r\\n<section style=\\\"background: #e67e22; color: white; padding: 60px 20px; text-align: center;\\\">\\r\\n<h2>Reserve Your Table Today<\\/h2>\\r\\n<p>Enjoy an unforgettable dining experience<\\/p>\\r\\n<a style=\\\"background: white; color: #e67e22; padding: 12px 25px; text-decoration: none; border-radius: 5px;\\\" href=\\\"#\\\"> Book Now <\\/a><\\/section>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(8, 'com_content.article.2', '', '2026-04-09 11:13:21', 57, 4242, 'd111b316e31d5448a97283a3c02b2a96ee53283f', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n<h1 style=\\\"text-align: center; color: #c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n<p style=\\\"text-align: center; font-style: italic;\\\">\\\"A Taste of Flavor in Every Bite\\\"<\\/p>\\r\\n<p>Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. Our goal is to bring people together through delicious meals and outstanding service.<\\/p>\\r\\n<p>We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create unique and flavorful dishes that satisfy every taste.<\\/p>\\r\\n<!-- IMAGE SECTION -->\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\"><img style=\\\"width: 80%; border-radius: 10px;\\\" src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\">\\r\\n<p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- MISSION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Mission<\\/h2>\\r\\n<p>To provide high-quality meals and excellent customer service in a comfortable and welcoming environment where every guest feels valued.<\\/p>\\r\\n<!-- VISION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Vision<\\/h2>\\r\\n<p>To become one of the leading restaurants known for quality, taste, and customer satisfaction both locally and internationally.<\\/p>\\r\\n<!-- TEAM -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Team<\\/h2>\\r\\n<p>Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. From the kitchen to the table, we focus on quality, hygiene, and attention to detail.<\\/p>\\r\\n<!-- VIDEO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<!-- AUDIO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px;\\\"><audio controls=\\\"controls\\\">\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n<p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- WHY CHOOSE US -->\\r\\n<h2 style=\\\"color: #27ae60;\\\">\\u2b50 Why Choose Spice Bites?<\\/h2>\\r\\n<ul>\\r\\n<li>Fresh and locally sourced ingredients<\\/li>\\r\\n<li>Experienced and professional chefs<\\/li>\\r\\n<li>Clean and comfortable dining environment<\\/li>\\r\\n<li>Excellent customer service<\\/li>\\r\\n<li>Affordable prices<\\/li>\\r\\n<\\/ul>\\r\\n<!-- GOOGLE MAP -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83d\\udccd Our Location<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(9, 'com_content.article.2', '', '2026-04-09 11:14:26', 57, 4234, '6d165a99106c7acda04486e1439b2b6c94cb90a6', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n<h1 style=\\\"text-align: center; color: #c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n<p style=\\\"text-align: center; font-style: italic;\\\">\\\"A Taste of Flavor in Every Bite\\\"<\\/p>\\r\\n<p>Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. Our goal is to bring people together through delicious meals and outstanding service.<\\/p>\\r\\n<p>We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create unique and flavorful dishes that satisfy every taste.<\\/p>\\r\\n<!-- IMAGE SECTION -->\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\"><img style=\\\"width: 80%; border-radius: 10px;\\\" src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\">\\r\\n<p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- MISSION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Mission<\\/h2>\\r\\n<p>To provide high-quality meals and excellent customer service in a comfortable and welcoming environment where every guest feels valued.<\\/p>\\r\\n<!-- VISION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Vision<\\/h2>\\r\\n<p>To become one of the leading restaurants known for quality, taste, and customer satisfaction both locally and internationally.<\\/p>\\r\\n<!-- TEAM -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Team<\\/h2>\\r\\n<p>Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. From the kitchen to the table, we focus on quality, hygiene, and attention to detail.<\\/p>\\r\\n<!-- VIDEO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<!-- AUDIO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px;\\\"><audio controls=\\\"controls\\\">\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n<p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- WHY CHOOSE US -->\\r\\n<h2 style=\\\"color: #27ae60;\\\">\\u00a0Why Choose Spice Bites?<\\/h2>\\r\\n<ul>\\r\\n<li>Fresh and locally sourced ingredients<\\/li>\\r\\n<li>Experienced and professional chefs<\\/li>\\r\\n<li>Clean and comfortable dining environment<\\/li>\\r\\n<li>Excellent customer service<\\/li>\\r\\n<li>Affordable prices<\\/li>\\r\\n<\\/ul>\\r\\n<!-- GOOGLE MAP -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\u00a0Our Location<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(10, 'com_content.article.2', '', '2026-04-09 11:19:32', 57, 4364, 'b81dd1f0e3bd6f696216d26ba5d10f084e066e6c', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n<h1 style=\\\"text-align: center; color: #c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n<p style=\\\"text-align: center; font-style: italic;\\\">\\\"A Taste of Flavor in Every Bite\\\"<\\/p>\\r\\n<p>Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. Our goal is to bring people together through delicious meals and outstanding service.<\\/p>\\r\\n<p>We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create unique and flavorful dishes that satisfy every taste.<\\/p>\\r\\n<!-- IMAGE SECTION -->\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\"><img style=\\\"width: 80%; border-radius: 10px;\\\" src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\">\\r\\n<p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- MISSION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Mission<\\/h2>\\r\\n<p>To provide high-quality meals and excellent customer service in a comfortable and welcoming environment where every guest feels valued.<\\/p>\\r\\n<!-- VISION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Vision<\\/h2>\\r\\n<p>To become one of the leading restaurants known for quality, taste, and customer satisfaction both locally and internationally.<\\/p>\\r\\n<!-- TEAM -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Team<\\/h2>\\r\\n<p>Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. From the kitchen to the table, we focus on quality, hygiene, and attention to detail.<\\/p>\\r\\n<!-- VIDEO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa5 Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<h2 style=\\\"color: #c0392b;\\\">Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<!-- AUDIO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px;\\\"><audio controls=\\\"controls\\\">\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n<p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- WHY CHOOSE US -->\\r\\n<h2 style=\\\"color: #27ae60;\\\">\\u00a0Why Choose Spice Bites?<\\/h2>\\r\\n<ul>\\r\\n<li>Fresh and locally sourced ingredients<\\/li>\\r\\n<li>Experienced and professional chefs<\\/li>\\r\\n<li>Clean and comfortable dining environment<\\/li>\\r\\n<li>Excellent customer service<\\/li>\\r\\n<li>Affordable prices<\\/li>\\r\\n<\\/ul>\\r\\n<!-- GOOGLE MAP -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\u00a0Our Location<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(11, 'com_content.article.2', '', '2026-04-09 11:20:16', 57, 4497, '672ff2b02695fe28dea9cced5cbaefc6070c3917', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n<h1 style=\\\"text-align: center; color: #c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n<p style=\\\"text-align: center; font-style: italic;\\\">\\\"A Taste of Flavor in Every Bite\\\"<\\/p>\\r\\n<p>Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. Our goal is to bring people together through delicious meals and outstanding service.<\\/p>\\r\\n<p>We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create unique and flavorful dishes that satisfy every taste.<\\/p>\\r\\n<!-- IMAGE SECTION -->\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\"><img style=\\\"width: 80%; border-radius: 10px;\\\" src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\">\\r\\n<p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- MISSION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Mission<\\/h2>\\r\\n<p>To provide high-quality meals and excellent customer service in a comfortable and welcoming environment where every guest feels valued.<\\/p>\\r\\n<!-- VISION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Vision<\\/h2>\\r\\n<p>To become one of the leading restaurants known for quality, taste, and customer satisfaction both locally and internationally.<\\/p>\\r\\n<!-- TEAM -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Team<\\/h2>\\r\\n<p>Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. From the kitchen to the table, we focus on quality, hygiene, and attention to detail.<\\/p>\\r\\n<!-- VIDEO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa5 Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<h2 style=\\\"color: #c0392b;\\\">Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<!-- AUDIO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px;\\\"><audio controls=\\\"controls\\\">\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n<p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- WHY CHOOSE US -->\\r\\n<h2 style=\\\"color: #27ae60;\\\">\\u00a0Why Choose Spice Bites?<\\/h2>\\r\\n<ul>\\r\\n<li>Fresh and locally sourced ingredients<\\/li>\\r\\n<li>Experienced and professional chefs<\\/li>\\r\\n<li>Clean and comfortable dining environment<\\/li>\\r\\n<li>Excellent customer service<\\/li>\\r\\n<li>Affordable prices<\\/li>\\r\\n<\\/ul>\\r\\n<!-- GOOGLE MAP -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83d\\udccd Our Location<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\u00a0Our Location<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0);
INSERT INTO `sb_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`, `is_current`, `is_legacy`) VALUES
(12, 'com_content.article.2', '', '2026-04-09 11:39:15', 57, 4228, '1097cb42a7621cc2f8aa1588dab2e76c6ee89e0b', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n<h1 style=\\\"text-align: center; color: #c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n<p style=\\\"text-align: center; font-style: italic;\\\">\\\"A Taste of Flavor in Every Bite\\\"<\\/p>\\r\\n<p>Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. Our goal is to bring people together through delicious meals and outstanding service.<\\/p>\\r\\n<p>We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create unique and flavorful dishes that satisfy every taste.<\\/p>\\r\\n<!-- IMAGE SECTION -->\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\"><img style=\\\"width: 80%; border-radius: 10px;\\\" src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\">\\r\\n<p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- MISSION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Mission<\\/h2>\\r\\n<p>To provide high-quality meals and excellent customer service in a comfortable and welcoming environment where every guest feels valued.<\\/p>\\r\\n<!-- VISION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Vision<\\/h2>\\r\\n<p>To become one of the leading restaurants known for quality, taste, and customer satisfaction both locally and internationally.<\\/p>\\r\\n<!-- TEAM -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Team<\\/h2>\\r\\n<p>Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. From the kitchen to the table, we focus on quality, hygiene, and attention to detail.<\\/p>\\r\\n<!-- VIDEO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<!-- AUDIO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px;\\\"><audio controls=\\\"controls\\\">\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n<p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- WHY CHOOSE US -->\\r\\n<h2 style=\\\"color: #27ae60;\\\">\\u00a0Why Choose Spice Bites?<\\/h2>\\r\\n<ul>\\r\\n<li>Fresh and locally sourced ingredients<\\/li>\\r\\n<li>Experienced and professional chefs<\\/li>\\r\\n<li>Clean and comfortable dining environment<\\/li>\\r\\n<li>Excellent customer service<\\/li>\\r\\n<li>Affordable prices<\\/li>\\r\\n<\\/ul>\\r\\n<!-- GOOGLE MAP -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">Our Location<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(13, 'com_content.article.2', '', '2026-04-09 11:43:00', 57, 4241, '331fec91703bada54424b3b56563126e5fd75b00', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n<h1 style=\\\"text-align: center; color: #c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n<p style=\\\"text-align: center; font-style: italic;\\\">\\\"A Taste of Flavor in Every Bite\\\"<\\/p>\\r\\n<p>Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. Our goal is to bring people together through delicious meals and outstanding service.<\\/p>\\r\\n<p>We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create unique and flavorful dishes that satisfy every taste.<\\/p>\\r\\n<!-- IMAGE SECTION -->\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\"><img style=\\\"width: 80%; border-radius: 10px;\\\" src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\">\\r\\n<p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- MISSION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Mission<\\/h2>\\r\\n<p>To provide high-quality meals and excellent customer service in a comfortable and welcoming environment where every guest feels valued.<\\/p>\\r\\n<!-- VISION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Vision<\\/h2>\\r\\n<p>To become one of the leading restaurants known for quality, taste, and customer satisfaction both locally and internationally.<\\/p>\\r\\n<!-- TEAM -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Team<\\/h2>\\r\\n<p>Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. From the kitchen to the table, we focus on quality, hygiene, and attention to detail.<\\/p>\\r\\n<!-- VIDEO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<!-- AUDIO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px;\\\"><audio controls=\\\"controls\\\">\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n<p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- WHY CHOOSE US -->\\r\\n<h2 style=\\\"color: #27ae60;\\\">\\u00a0Why Choose Spice Bites?<\\/h2>\\r\\n<ul>\\r\\n<li>Fresh and locally sourced ingredients<\\/li>\\r\\n<li>Experienced and professional chefs<\\/li>\\r\\n<li>Clean and comfortable dining environment<\\/li>\\r\\n<li>Excellent customer service<\\/li>\\r\\n<li>Affordable prices<\\/li>\\r\\n<\\/ul>\\r\\n<!-- GOOGLE MAP -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83d\\udccd Our Location<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(14, 'com_content.article.2', '', '2026-04-09 11:44:16', 57, 4371, '3450ae1fabd89e6449582bc0acceb7e58b5eab89', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n<h1 style=\\\"text-align: center; color: #c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n<p style=\\\"text-align: center; font-style: italic;\\\">\\\"A Taste of Flavor in Every Bite\\\"<\\/p>\\r\\n<p>Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. Our goal is to bring people together through delicious meals and outstanding service.<\\/p>\\r\\n<p>We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create unique and flavorful dishes that satisfy every taste.<\\/p>\\r\\n<!-- IMAGE SECTION -->\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\"><img style=\\\"width: 80%; border-radius: 10px;\\\" src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\">\\r\\n<p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- MISSION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Mission<\\/h2>\\r\\n<p>To provide high-quality meals and excellent customer service in a comfortable and welcoming environment where every guest feels valued.<\\/p>\\r\\n<!-- VISION -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Vision<\\/h2>\\r\\n<p>To become one of the leading restaurants known for quality, taste, and customer satisfaction both locally and internationally.<\\/p>\\r\\n<!-- TEAM -->\\r\\n<h2 style=\\\"color: #e67e22;\\\">Our Team<\\/h2>\\r\\n<p>Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. From the kitchen to the table, we focus on quality, hygiene, and attention to detail.<\\/p>\\r\\n<!-- VIDEO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa5 Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<h2 style=\\\"color: #c0392b;\\\">Our Story<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<!-- AUDIO SECTION -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px;\\\"><audio controls=\\\"controls\\\">\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n<p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<!-- WHY CHOOSE US -->\\r\\n<h2 style=\\\"color: #27ae60;\\\">\\u00a0Why Choose Spice Bites?<\\/h2>\\r\\n<ul>\\r\\n<li>Fresh and locally sourced ingredients<\\/li>\\r\\n<li>Experienced and professional chefs<\\/li>\\r\\n<li>Clean and comfortable dining environment<\\/li>\\r\\n<li>Excellent customer service<\\/li>\\r\\n<li>Affordable prices<\\/li>\\r\\n<\\/ul>\\r\\n<!-- GOOGLE MAP -->\\r\\n<h2 style=\\\"color: #c0392b;\\\">\\ud83d\\udccd Our Location<\\/h2>\\r\\n<div style=\\\"text-align: center; margin: 20px 0;\\\">\\u00a0<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(15, 'com_content.article.3', '', '2026-04-09 11:48:52', 57, 6440, 'c2f6107087443abaf56387fec2da0faa3286aa5a', '{\"id\":3,\"title\":\"contact\",\"alias\":\"contact\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 11:48:52\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 11:48:52\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":109,\"introtext\":\"<p>&lt;div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\"&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;h1 style=\\\"text-align:center; color:#c0392b;\\\"&gt;Contact Spice Bites Restaurant&lt;\\/h1&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;p style=\\\"text-align:center;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 We would love to hear from you! Reach out to us or book a table.<br>\\u00a0 \\u00a0 &lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;!-- CONTACT DETAILS --&gt;<br>\\u00a0 \\u00a0 &lt;div style=\\\"margin-top:20px;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;h2 style=\\\"color:#e67e22;\\\"&gt;\\ud83d\\udccd Location&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;p&gt;Kampala, Uganda&lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;h2 style=\\\"color:#e67e22;\\\"&gt;\\ud83d\\udcde Phone&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;p&gt;+256 700 123456&lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;h2 style=\\\"color:#e67e22;\\\"&gt;\\ud83d\\udce7 Email&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;p&gt;info@spicebites.com&lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;h2 style=\\\"color:#e67e22;\\\"&gt;\\ud83d\\udd52 Opening Hours&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;p&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 Monday \\u2013 Friday: 9:00 AM \\u2013 10:00 PM&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 Saturday \\u2013 Sunday: 10:00 AM \\u2013 11:00 PM<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;\\/p&gt;<br>\\u00a0 \\u00a0 &lt;\\/div&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;!-- RESERVATION FORM --&gt;<br>\\u00a0 \\u00a0 &lt;h2 style=\\\"color:#c0392b; margin-top:30px;\\\"&gt;\\ud83d\\udcc5 Reservation&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 &lt;p&gt;Fill out the form below to reserve your table.&lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;div style=\\\"background:#f9f9f9; padding:20px; border-radius:10px; width:80%; margin:auto;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;form&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Full Name:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"text\\\" name=\\\"name\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Email:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"email\\\" name=\\\"email\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Phone Number:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"text\\\" name=\\\"phone\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Date:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"date\\\" name=\\\"date\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Time:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"time\\\" name=\\\"time\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Number of Guests:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"number\\\" name=\\\"guests\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Message:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;textarea name=\\\"message\\\" rows=\\\"4\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;\\/textarea&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;button type=\\\"submit\\\" style=\\\"background:#c0392b; color:white; padding:10px 20px; border:none; border-radius:5px;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 Book Now<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;\\/button&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;\\/form&gt;<br>\\u00a0 \\u00a0 &lt;\\/div&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;!-- GOOGLE MAP --&gt;<br>\\u00a0 \\u00a0 &lt;h2 style=\\\"color:#c0392b; margin-top:40px;\\\"&gt;\\ud83d\\uddfa\\ufe0f Find Us&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 &lt;div style=\\\"text-align:center; margin:20px 0;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;iframe\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 src=\\\"https:\\/\\/www.google.com\\/maps?q=Kampala,Uganda&amp;output=embed\\\"<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 width=\\\"80%\\\"\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 height=\\\"350\\\"\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 style=\\\"border:0;\\\"\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 allowfullscreen\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 loading=\\\"lazy\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;\\/iframe&gt;<br>\\u00a0 \\u00a0 &lt;\\/div&gt;<\\/p>\\r\\n<p>&lt;\\/div&gt;<\\/p>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(16, 'com_content.article.3', '', '2026-04-09 11:49:45', 57, 6360, 'e9c36f9a4cf6b329738cf9c2b24c2af10b72f04f', '{\"id\":3,\"title\":\"contact\",\"alias\":\"contact\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 11:48:52\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 11:48:52\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":109,\"introtext\":\"<p>&lt;div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\"&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;h1 style=\\\"text-align:center; color:#c0392b;\\\"&gt;Contact Spice Bites Restaurant&lt;\\/h1&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;p style=\\\"text-align:center;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 We would love to hear from you! Reach out to us or book a table.<br>\\u00a0 \\u00a0 &lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;!-- CONTACT DETAILS --&gt;<br>\\u00a0 \\u00a0 &lt;div style=\\\"margin-top:20px;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;h2 style=\\\"color:#e67e22;\\\"&gt; Location&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;p&gt;Kampala, Uganda&lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;h2 style=\\\"color:#e67e22;\\\"&gt; Phone&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;p&gt;+256 700 123456&lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;h2 style=\\\"color:#e67e22;\\\"&gt;Email&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;p&gt;info@spicebites.com&lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;h2 style=\\\"color:#e67e22;\\\"&gt; Opening Hours&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;p&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 Monday \\u2013 Friday: 9:00 AM \\u2013 10:00 PM&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 Saturday \\u2013 Sunday: 10:00 AM \\u2013 11:00 PM<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;\\/p&gt;<br>\\u00a0 \\u00a0 &lt;\\/div&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;!-- RESERVATION FORM --&gt;<br>\\u00a0 \\u00a0 &lt;h2 style=\\\"color:#c0392b; margin-top:30px;\\\"&gt;Reservation&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 &lt;p&gt;Fill out the form below to reserve your table.&lt;\\/p&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;div style=\\\"background:#f9f9f9; padding:20px; border-radius:10px; width:80%; margin:auto;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;form&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Full Name:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"text\\\" name=\\\"name\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Email:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"email\\\" name=\\\"email\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Phone Number:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"text\\\" name=\\\"phone\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Date:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"date\\\" name=\\\"date\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Time:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"time\\\" name=\\\"time\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Number of Guests:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;input type=\\\"number\\\" name=\\\"guests\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;label&gt;Message:&lt;\\/label&gt;&lt;br&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;textarea name=\\\"message\\\" rows=\\\"4\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"&gt;&lt;\\/textarea&gt;&lt;br&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;button type=\\\"submit\\\" style=\\\"background:#c0392b; color:white; padding:10px 20px; border:none; border-radius:5px;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 Book Now<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;\\/button&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;\\/form&gt;<br>\\u00a0 \\u00a0 &lt;\\/div&gt;<\\/p>\\r\\n<p>\\u00a0 \\u00a0 &lt;!-- GOOGLE MAP --&gt;<br>\\u00a0 \\u00a0 &lt;h2 style=\\\"color:#c0392b; margin-top:40px;\\\"&gt; Find Us&lt;\\/h2&gt;<br>\\u00a0 \\u00a0 &lt;div style=\\\"text-align:center; margin:20px 0;\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;iframe\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 src=\\\"https:\\/\\/www.google.com\\/maps?q=Kampala,Uganda&amp;output=embed\\\"<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 width=\\\"80%\\\"\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 height=\\\"350\\\"\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 style=\\\"border:0;\\\"\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 allowfullscreen\\u00a0<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 loading=\\\"lazy\\\"&gt;<br>\\u00a0 \\u00a0 \\u00a0 \\u00a0 &lt;\\/iframe&gt;<br>\\u00a0 \\u00a0 &lt;\\/div&gt;<\\/p>\\r\\n<p>&lt;\\/div&gt;<\\/p>\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0),
(17, 'com_content.article.4', '', '2026-04-09 11:58:12', 57, 1670, 'c015e3ed3482de7c05082db5333fa6b75f34927d', '{\"id\":4,\"title\":\"contact-us\",\"alias\":\"contact-us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 11:58:12\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 11:58:12\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":110,\"introtext\":\"<p>&lt;h1&gt;Hello Test&lt;\\/h1&gt;<br>&lt;p&gt;This should be bold and styled&lt;\\/p&gt;<\\/p>\",\"fulltext\":\"\",\"ordering\":0}', 0, 1, 0),
(18, 'com_content.article.3', '', '2026-04-09 12:01:42', 57, 1664, '0a9083ed25ed0c1809bc7a8823041f7171d99166', '{\"id\":3,\"title\":\"contact\",\"alias\":\"contact\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 11:48:52\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 11:48:52\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":109,\"introtext\":\"<p>&lt;h1&gt;Hello Test&lt;\\/h1&gt;<br>&lt;p&gt;This should be bold and styled&lt;\\/p&gt;<\\/p>\",\"fulltext\":\"\",\"ordering\":1}', 0, 0, 0),
(19, 'com_content.article.3', '', '2026-04-09 12:18:59', 57, 4665, '6f17646cac674c51b5900b84d4bc084bafeb67ed', '{\"id\":3,\"title\":\"contact\",\"alias\":\"contact\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 11:48:52\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 11:48:52\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":109,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n\\r\\n    <h1 style=\\\"text-align:center; color:#c0392b;\\\">Contact Spice Bites Restaurant<\\/h1>\\r\\n\\r\\n    <p style=\\\"text-align:center;\\\">\\r\\n        We would love to hear from you! Reach out to us or book a table.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- CONTACT DETAILS -->\\r\\n    <div style=\\\"margin-top:20px;\\\">\\r\\n        <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udccd Location<\\/h2>\\r\\n        <p>Kampala, Uganda<\\/p>\\r\\n\\r\\n        <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udcde Phone<\\/h2>\\r\\n        <p>+256 700 123456<\\/p>\\r\\n\\r\\n        <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udce7 Email<\\/h2>\\r\\n        <p>info@spicebites.com<\\/p>\\r\\n\\r\\n        <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udd52 Opening Hours<\\/h2>\\r\\n        <p>\\r\\n            Monday \\u2013 Friday: 9:00 AM \\u2013 10:00 PM<br>\\r\\n            Saturday \\u2013 Sunday: 10:00 AM \\u2013 11:00 PM\\r\\n        <\\/p>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- RESERVATION FORM -->\\r\\n    <h2 style=\\\"color:#c0392b; margin-top:30px;\\\">\\ud83d\\udcc5 Reservation<\\/h2>\\r\\n    <p>Fill out the form below to reserve your table.<\\/p>\\r\\n\\r\\n    <div style=\\\"background:#f9f9f9; padding:20px; border-radius:10px; width:80%; margin:auto;\\\">\\r\\n        <form>\\r\\n            <label>Full Name:<\\/label><br>\\r\\n            <input type=\\\"text\\\" name=\\\"name\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Email:<\\/label><br>\\r\\n            <input type=\\\"email\\\" name=\\\"email\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Phone Number:<\\/label><br>\\r\\n            <input type=\\\"text\\\" name=\\\"phone\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Date:<\\/label><br>\\r\\n            <input type=\\\"date\\\" name=\\\"date\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Time:<\\/label><br>\\r\\n            <input type=\\\"time\\\" name=\\\"time\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Number of Guests:<\\/label><br>\\r\\n            <input type=\\\"number\\\" name=\\\"guests\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Message:<\\/label><br>\\r\\n            <textarea name=\\\"message\\\" rows=\\\"4\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><\\/textarea><br>\\r\\n\\r\\n            <button type=\\\"submit\\\" style=\\\"background:#c0392b; color:white; padding:10px 20px; border:none; border-radius:5px;\\\">\\r\\n                Book Now\\r\\n            <\\/button>\\r\\n        <\\/form>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- GOOGLE MAP -->\\r\\n    <h2 style=\\\"color:#c0392b; margin-top:40px;\\\">\\ud83d\\uddfa\\ufe0f Find Us<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <iframe \\r\\n            src=\\\"https:\\/\\/www.google.com\\/maps?q=Kampala,Uganda&output=embed\\\"\\r\\n            width=\\\"80%\\\" \\r\\n            height=\\\"350\\\" \\r\\n            style=\\\"border:0;\\\" \\r\\n            allowfullscreen \\r\\n            loading=\\\"lazy\\\">\\r\\n        <\\/iframe>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":1}', 0, 0, 0),
(20, 'com_content.article.3', '', '2026-04-09 12:19:54', 57, 4653, 'de7dc088e1443bed45f8f1a2518bac33f3eb1c67', '{\"id\":3,\"title\":\"contact\",\"alias\":\"contact\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 11:48:52\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 11:48:52\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":109,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n\\r\\n    <h1 style=\\\"text-align:center; color:#c0392b;\\\">Contact Spice Bites Restaurant<\\/h1>\\r\\n\\r\\n    <p style=\\\"text-align:center;\\\">\\r\\n        We would love to hear from you! Reach out to us or book a table.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- CONTACT DETAILS -->\\r\\n    <div style=\\\"margin-top:20px;\\\">\\r\\n        <h2 style=\\\"color:#e67e22;\\\"> Location<\\/h2>\\r\\n        <p>Kampala, Uganda<\\/p>\\r\\n\\r\\n        <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udcde Phone<\\/h2>\\r\\n        <p>+256 700 123456<\\/p>\\r\\n\\r\\n        <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udce7 Email<\\/h2>\\r\\n        <p>info@spicebites.com<\\/p>\\r\\n\\r\\n        <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udd52 Opening Hours<\\/h2>\\r\\n        <p>\\r\\n            Monday \\u2013 Friday: 9:00 AM \\u2013 10:00 PM<br>\\r\\n            Saturday \\u2013 Sunday: 10:00 AM \\u2013 11:00 PM\\r\\n        <\\/p>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- RESERVATION FORM -->\\r\\n    <h2 style=\\\"color:#c0392b; margin-top:30px;\\\">\\ud83d\\udcc5 Reservation<\\/h2>\\r\\n    <p>Fill out the form below to reserve your table.<\\/p>\\r\\n\\r\\n    <div style=\\\"background:#f9f9f9; padding:20px; border-radius:10px; width:80%; margin:auto;\\\">\\r\\n        <form>\\r\\n            <label>Full Name:<\\/label><br>\\r\\n            <input type=\\\"text\\\" name=\\\"name\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Email:<\\/label><br>\\r\\n            <input type=\\\"email\\\" name=\\\"email\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Phone Number:<\\/label><br>\\r\\n            <input type=\\\"text\\\" name=\\\"phone\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Date:<\\/label><br>\\r\\n            <input type=\\\"date\\\" name=\\\"date\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Time:<\\/label><br>\\r\\n            <input type=\\\"time\\\" name=\\\"time\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Number of Guests:<\\/label><br>\\r\\n            <input type=\\\"number\\\" name=\\\"guests\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><br>\\r\\n\\r\\n            <label>Message:<\\/label><br>\\r\\n            <textarea name=\\\"message\\\" rows=\\\"4\\\" style=\\\"width:100%; padding:8px; margin-bottom:10px;\\\"><\\/textarea><br>\\r\\n\\r\\n            <button type=\\\"submit\\\" style=\\\"background:#c0392b; color:white; padding:10px 20px; border:none; border-radius:5px;\\\">\\r\\n                Book Now\\r\\n            <\\/button>\\r\\n        <\\/form>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- GOOGLE MAP -->\\r\\n    <h2 style=\\\"color:#c0392b; margin-top:40px;\\\">\\ud83d\\uddfa\\ufe0f Find Us<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <iframe \\r\\n            src=\\\"https:\\/\\/www.google.com\\/maps?q=Kampala,Uganda&output=embed\\\"\\r\\n            width=\\\"80%\\\" \\r\\n            height=\\\"350\\\" \\r\\n            style=\\\"border:0;\\\" \\r\\n            allowfullscreen \\r\\n            loading=\\\"lazy\\\">\\r\\n        <\\/iframe>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":1}', 0, 1, 0);
INSERT INTO `sb_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`, `is_current`, `is_legacy`) VALUES
(21, 'com_content.article.2', '', '2026-04-09 12:22:16', 57, 5257, '4ca716b9c70cd53a8e5f369d2b6cf2cc359b4703', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n\\r\\n    <h1 style=\\\"text-align:center; color:#c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n\\r\\n    <p style=\\\"text-align:center; font-style: italic;\\\">\\r\\n        \\\"A Taste of Flavor in Every Bite\\\"\\r\\n    <\\/p>\\r\\n\\r\\n    <p>\\r\\n        Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. \\r\\n        Our goal is to bring people together through delicious meals and outstanding service.\\r\\n    <\\/p>\\r\\n\\r\\n    <p>\\r\\n        We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create \\r\\n        unique and flavorful dishes that satisfy every taste.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- IMAGE SECTION -->\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <img src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\" style=\\\"width:80%; border-radius:10px;\\\">\\r\\n        <p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- MISSION -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83c\\udfaf Our Mission<\\/h2>\\r\\n    <p>\\r\\n        To provide high-quality meals and excellent customer service in a comfortable and welcoming environment \\r\\n        where every guest feels valued.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- VISION -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83c\\udf0d Our Vision<\\/h2>\\r\\n    <p>\\r\\n        To become one of the leading restaurants known for quality, taste, and customer satisfaction \\r\\n        both locally and internationally.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- TEAM -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udc68\\u200d\\ud83c\\udf73 Our Team<\\/h2>\\r\\n    <p>\\r\\n        Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. \\r\\n        From the kitchen to the table, we focus on quality, hygiene, and attention to detail.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- VIDEO SECTION -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\">\\ud83c\\udfa5 Our Story<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <iframe width=\\\"80%\\\" height=\\\"400\\\" \\r\\n            src=\\\"https:\\/\\/www.youtube.com\\/embed\\/6aZ3WfZr5Xw\\\" \\r\\n            title=\\\"Restaurant Video\\\" \\r\\n            frameborder=\\\"0\\\" \\r\\n            allowfullscreen>\\r\\n        <\\/iframe>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- AUDIO SECTION -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px;\\\">\\r\\n        <audio controls>\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n        <p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- WHY CHOOSE US -->\\r\\n    <h2 style=\\\"color:#27ae60;\\\">\\u2b50 Why Choose Spice Bites?<\\/h2>\\r\\n    <ul>\\r\\n        <li>Fresh and locally sourced ingredients<\\/li>\\r\\n        <li>Experienced and professional chefs<\\/li>\\r\\n        <li>Clean and comfortable dining environment<\\/li>\\r\\n        <li>Excellent customer service<\\/li>\\r\\n        <li>Affordable prices<\\/li>\\r\\n    <\\/ul>\\r\\n\\r\\n    <!-- GOOGLE MAP -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\"> Our Location<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <iframe \\r\\n            src=\\\"https:\\/\\/maps.google.com\\/maps?q=kampala%20uganda&t=&z=13&ie=UTF8&iwloc=&output=embed\\\" \\r\\n            width=\\\"80%\\\" height=\\\"350\\\" \\r\\n            style=\\\"border:0;\\\" \\r\\n            allowfullscreen=\\\"\\\" \\r\\n            loading=\\\"lazy\\\">\\r\\n        <\\/iframe>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":2}', 0, 0, 0),
(22, 'com_content.article.2', '', '2026-04-09 12:25:13', 57, 5243, '1327a3eb2f2dd1eaa3c03fd11a4830537d6e8fbd', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n\\r\\n    <h1 style=\\\"text-align:center; color:#c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n\\r\\n    <p style=\\\"text-align:center; font-style: italic;\\\">\\r\\n        \\\"A Taste of Flavor in Every Bite\\\"\\r\\n    <\\/p>\\r\\n\\r\\n    <p>\\r\\n        Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. \\r\\n        Our goal is to bring people together through delicious meals and outstanding service.\\r\\n    <\\/p>\\r\\n\\r\\n    <p>\\r\\n        We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create \\r\\n        unique and flavorful dishes that satisfy every taste.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- IMAGE SECTION -->\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <img src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\" style=\\\"width:80%; border-radius:10px;\\\">\\r\\n        <p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- MISSION -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83c\\udfaf Our Mission<\\/h2>\\r\\n    <p>\\r\\n        To provide high-quality meals and excellent customer service in a comfortable and welcoming environment \\r\\n        where every guest feels valued.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- VISION -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83c\\udf0d Our Vision<\\/h2>\\r\\n    <p>\\r\\n        To become one of the leading restaurants known for quality, taste, and customer satisfaction \\r\\n        both locally and internationally.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- TEAM -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udc68\\u200d\\ud83c\\udf73 Our Team<\\/h2>\\r\\n    <p>\\r\\n        Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. \\r\\n        From the kitchen to the table, we focus on quality, hygiene, and attention to detail.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- VIDEO SECTION -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\">\\ud83c\\udfa5 Our Story<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <iframe width=\\\"80%\\\" height=\\\"400\\\" \\r\\n            src=\\\"https:\\/\\/youtu.be\\/OHqGQhFaziY\\\" \\r\\n            title=\\\"Restaurant Video\\\" \\r\\n            frameborder=\\\"0\\\" \\r\\n            allowfullscreen>\\r\\n        <\\/iframe>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- AUDIO SECTION -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px;\\\">\\r\\n        <audio controls>\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n        <p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- WHY CHOOSE US -->\\r\\n    <h2 style=\\\"color:#27ae60;\\\">\\u2b50 Why Choose Spice Bites?<\\/h2>\\r\\n    <ul>\\r\\n        <li>Fresh and locally sourced ingredients<\\/li>\\r\\n        <li>Experienced and professional chefs<\\/li>\\r\\n        <li>Clean and comfortable dining environment<\\/li>\\r\\n        <li>Excellent customer service<\\/li>\\r\\n        <li>Affordable prices<\\/li>\\r\\n    <\\/ul>\\r\\n\\r\\n    <!-- GOOGLE MAP -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\"> Our Location<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <iframe \\r\\n            src=\\\"https:\\/\\/maps.google.com\\/maps?q=kampala%20uganda&t=&z=13&ie=UTF8&iwloc=&output=embed\\\" \\r\\n            width=\\\"80%\\\" height=\\\"350\\\" \\r\\n            style=\\\"border:0;\\\" \\r\\n            allowfullscreen=\\\"\\\" \\r\\n            loading=\\\"lazy\\\">\\r\\n        <\\/iframe>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":2}', 0, 0, 0),
(23, 'com_content.article.2', '', '2026-04-09 12:27:42', 57, 5299, '320cfa31ad05a20c02f0f3baa60bd4b124a62364', '{\"id\":2,\"title\":\"about\",\"alias\":\"us\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-04-09 10:25:36\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 10:25:36\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":108,\"introtext\":\"<div style=\\\"font-family: Arial, sans-serif; line-height: 1.6;\\\">\\r\\n\\r\\n    <h1 style=\\\"text-align:center; color:#c0392b;\\\">About Spice Bites Restaurant<\\/h1>\\r\\n\\r\\n    <p style=\\\"text-align:center; font-style: italic;\\\">\\r\\n        \\\"A Taste of Flavor in Every Bite\\\"\\r\\n    <\\/p>\\r\\n\\r\\n    <p>\\r\\n        Spice Bites Restaurant was established with a passion for delivering exceptional food and memorable dining experiences. \\r\\n        Our goal is to bring people together through delicious meals and outstanding service.\\r\\n    <\\/p>\\r\\n\\r\\n    <p>\\r\\n        We specialize in a variety of cuisines, combining traditional recipes with modern culinary techniques to create \\r\\n        unique and flavorful dishes that satisfy every taste.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- IMAGE SECTION -->\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <img src=\\\"images\\/restaurant.jpg\\\" alt=\\\"Spice Bites Restaurant\\\" style=\\\"width:80%; border-radius:10px;\\\">\\r\\n        <p><em>Our cozy and welcoming dining environment<\\/em><\\/p>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- MISSION -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83c\\udfaf Our Mission<\\/h2>\\r\\n    <p>\\r\\n        To provide high-quality meals and excellent customer service in a comfortable and welcoming environment \\r\\n        where every guest feels valued.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- VISION -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83c\\udf0d Our Vision<\\/h2>\\r\\n    <p>\\r\\n        To become one of the leading restaurants known for quality, taste, and customer satisfaction \\r\\n        both locally and internationally.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- TEAM -->\\r\\n    <h2 style=\\\"color:#e67e22;\\\">\\ud83d\\udc68\\u200d\\ud83c\\udf73 Our Team<\\/h2>\\r\\n    <p>\\r\\n        Our team consists of skilled chefs and friendly staff dedicated to ensuring every customer enjoys their visit. \\r\\n        From the kitchen to the table, we focus on quality, hygiene, and attention to detail.\\r\\n    <\\/p>\\r\\n\\r\\n    <!-- VIDEO SECTION -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\">\\ud83c\\udfa5 Our Story<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <iframe width=\\\"80%\\\" height=\\\"400\\\"\\r\\nsrc=\\\"https:\\/\\/www.youtube.com\\/embed\\/OHqGQhFaziY\\\"\\r\\ntitle=\\\"Restaurant Video\\\"\\r\\nframeborder=\\\"0\\\"\\r\\nallow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\"\\r\\nallowfullscreen>\\r\\n<\\/iframe>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- AUDIO SECTION -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\">\\ud83c\\udfa7 Restaurant Ambience<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px;\\\">\\r\\n        <audio controls>\\r\\n            <source src=\\\"images\\/restaurant-music.mp3\\\" type=\\\"audio\\/mpeg\\\">\\r\\n            Your browser does not support the audio element.\\r\\n        <\\/audio>\\r\\n        <p><em>Enjoy the relaxing atmosphere of Spice Bites<\\/em><\\/p>\\r\\n    <\\/div>\\r\\n\\r\\n    <!-- WHY CHOOSE US -->\\r\\n    <h2 style=\\\"color:#27ae60;\\\">\\u2b50 Why Choose Spice Bites?<\\/h2>\\r\\n    <ul>\\r\\n        <li>Fresh and locally sourced ingredients<\\/li>\\r\\n        <li>Experienced and professional chefs<\\/li>\\r\\n        <li>Clean and comfortable dining environment<\\/li>\\r\\n        <li>Excellent customer service<\\/li>\\r\\n        <li>Affordable prices<\\/li>\\r\\n    <\\/ul>\\r\\n\\r\\n    <!-- GOOGLE MAP -->\\r\\n    <h2 style=\\\"color:#c0392b;\\\"> Our Location<\\/h2>\\r\\n    <div style=\\\"text-align:center; margin:20px 0;\\\">\\r\\n        <iframe \\r\\n            src=\\\"https:\\/\\/maps.google.com\\/maps?q=kampala%20uganda&t=&z=13&ie=UTF8&iwloc=&output=embed\\\" \\r\\n            width=\\\"80%\\\" height=\\\"350\\\" \\r\\n            style=\\\"border:0;\\\" \\r\\n            allowfullscreen=\\\"\\\" \\r\\n            loading=\\\"lazy\\\">\\r\\n        <\\/iframe>\\r\\n    <\\/div>\\r\\n\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":2}', 0, 1, 0);
INSERT INTO `sb_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`, `is_current`, `is_legacy`) VALUES
(24, 'com_content.article.1', '', '2026-04-09 12:37:22', 57, 30917, '7991981f93f132ba7dea7ece6495fcecf0e168d2', '{\"id\":1,\"title\":\"welcome\",\"alias\":\"welcome\",\"note\":\"\",\"catid\":8,\"state\":1,\"created\":\"2026-04-09 07:04:21\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 07:04:21\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":100,\"introtext\":\"<!DOCTYPE html>\\r\\n<html lang=\\\"en\\\">\\r\\n<head>\\r\\n<meta charset=\\\"UTF-8\\\">\\r\\n<meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\r\\n<title>Spice Bites Restaurant<\\/title>\\r\\n<link href=\\\"https:\\/\\/fonts.googleapis.com\\/css2?family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400;1,600&family=Outfit:wght@300;400;500;600&display=swap\\\" rel=\\\"stylesheet\\\">\\r\\n<style>\\r\\n  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }\\r\\n\\r\\n  :root {\\r\\n    --spice: #e67e22;\\r\\n    --spice-dark: #cf6d17;\\r\\n    --spice-light: #fdf0e4;\\r\\n    --cream: #fdf8f2;\\r\\n    --dark: #1a1208;\\r\\n    --dark-mid: #2d200e;\\r\\n    --text: #3a2a10;\\r\\n    --text-muted: #7a6248;\\r\\n    --border: rgba(230,126,34,0.18);\\r\\n    --font-display: \'Playfair Display\', Georgia, serif;\\r\\n    --font-body: \'Outfit\', sans-serif;\\r\\n  }\\r\\n\\r\\n  html { scroll-behavior: smooth; }\\r\\n\\r\\n  body {\\r\\n    font-family: var(--font-body);\\r\\n    background: var(--cream);\\r\\n    color: var(--text);\\r\\n    overflow-x: hidden;\\r\\n  }\\r\\n\\r\\n  \\/* \\u2500\\u2500 HERO \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .hero {\\r\\n    position: relative;\\r\\n    min-height: 100vh;\\r\\n    display: flex;\\r\\n    flex-direction: column;\\r\\n    justify-content: center;\\r\\n    align-items: center;\\r\\n    text-align: center;\\r\\n    padding: 80px 24px 60px;\\r\\n    overflow: hidden;\\r\\n    background: var(--dark);\\r\\n  }\\r\\n\\r\\n  .hero-bg {\\r\\n    position: absolute; inset: 0;\\r\\n    background: url(\'images\\/restaurant\\/hero.png\') center\\/cover no-repeat;\\r\\n    opacity: 0.38;\\r\\n    transform: scale(1.04);\\r\\n    animation: slowzoom 18s ease-in-out infinite alternate;\\r\\n  }\\r\\n\\r\\n  @keyframes slowzoom { from { transform: scale(1.04); } to { transform: scale(1.12); } }\\r\\n\\r\\n  .hero-overlay {\\r\\n    position: absolute; inset: 0;\\r\\n    background: radial-gradient(ellipse at center top, rgba(26,18,8,0.3) 0%, rgba(26,18,8,0.78) 70%),\\r\\n                linear-gradient(to bottom, transparent 40%, var(--dark) 100%);\\r\\n  }\\r\\n\\r\\n  \\/* decorative spice ring *\\/\\r\\n  .hero-ring {\\r\\n    position: absolute;\\r\\n    width: 520px; height: 520px;\\r\\n    border-radius: 50%;\\r\\n    border: 1px solid rgba(230,126,34,0.18);\\r\\n    top: 50%; left: 50%;\\r\\n    transform: translate(-50%, -50%);\\r\\n    animation: ringpulse 4s ease-in-out infinite;\\r\\n  }\\r\\n  .hero-ring:nth-child(3) { width: 700px; height: 700px; border-color: rgba(230,126,34,0.09); animation-delay: 1s; }\\r\\n  .hero-ring:nth-child(4) { width: 900px; height: 900px; border-color: rgba(230,126,34,0.05); animation-delay: 2s; }\\r\\n\\r\\n  @keyframes ringpulse {\\r\\n    0%, 100% { opacity: 0.6; transform: translate(-50%, -50%) scale(1); }\\r\\n    50% { opacity: 1; transform: translate(-50%, -50%) scale(1.015); }\\r\\n  }\\r\\n\\r\\n  .hero-content { position: relative; z-index: 2; max-width: 760px; }\\r\\n\\r\\n  .hero-badge {\\r\\n    display: inline-flex; align-items: center; gap: 8px;\\r\\n    background: rgba(230,126,34,0.18);\\r\\n    border: 1px solid rgba(230,126,34,0.4);\\r\\n    color: #f5b96e;\\r\\n    font-size: 11px; letter-spacing: 0.15em; text-transform: uppercase; font-weight: 500;\\r\\n    padding: 6px 18px; border-radius: 30px;\\r\\n    margin-bottom: 28px;\\r\\n    animation: fadein 1s ease both;\\r\\n  }\\r\\n  .hero-badge::before { content: \'\'; width: 6px; height: 6px; border-radius: 50%; background: #e67e22; display: inline-block; }\\r\\n\\r\\n  .hero h1 {\\r\\n    font-family: var(--font-display);\\r\\n    font-size: clamp(40px, 7vw, 72px);\\r\\n    font-weight: 700;\\r\\n    color: #fff;\\r\\n    line-height: 1.1;\\r\\n    margin-bottom: 20px;\\r\\n    animation: fadein 1s 0.2s ease both;\\r\\n  }\\r\\n\\r\\n  .hero h1 em {\\r\\n    font-style: italic;\\r\\n    color: #f5a623;\\r\\n  }\\r\\n\\r\\n  .hero-sub {\\r\\n    font-size: clamp(16px, 2.2vw, 20px);\\r\\n    color: rgba(255,255,255,0.72);\\r\\n    font-weight: 300;\\r\\n    margin-bottom: 44px;\\r\\n    letter-spacing: 0.03em;\\r\\n    animation: fadein 1s 0.4s ease both;\\r\\n  }\\r\\n\\r\\n  .hero-actions {\\r\\n    display: flex; gap: 14px; justify-content: center; flex-wrap: wrap;\\r\\n    animation: fadein 1s 0.6s ease both;\\r\\n  }\\r\\n\\r\\n  .btn-primary {\\r\\n    background: var(--spice);\\r\\n    color: #fff; font-family: var(--font-body); font-size: 15px; font-weight: 500;\\r\\n    padding: 15px 34px; border-radius: 50px; text-decoration: none;\\r\\n    display: inline-flex; align-items: center; gap: 8px;\\r\\n    transition: background 0.25s, transform 0.2s, box-shadow 0.25s;\\r\\n    box-shadow: 0 6px 28px rgba(230,126,34,0.45);\\r\\n  }\\r\\n  .btn-primary:hover { background: var(--spice-dark); transform: translateY(-2px); box-shadow: 0 12px 36px rgba(230,126,34,0.5); }\\r\\n\\r\\n  .btn-ghost {\\r\\n    background: transparent; color: rgba(255,255,255,0.85);\\r\\n    font-family: var(--font-body); font-size: 15px; font-weight: 400;\\r\\n    padding: 15px 34px; border-radius: 50px; text-decoration: none;\\r\\n    border: 1px solid rgba(255,255,255,0.3);\\r\\n    display: inline-flex; align-items: center; gap: 8px;\\r\\n    transition: border-color 0.25s, background 0.25s, transform 0.2s;\\r\\n  }\\r\\n  .btn-ghost:hover { border-color: rgba(255,255,255,0.7); background: rgba(255,255,255,0.07); transform: translateY(-2px); }\\r\\n\\r\\n  .hero-stats {\\r\\n    display: flex; justify-content: center; gap: 0;\\r\\n    margin-top: 68px; border-top: 1px solid rgba(255,255,255,0.1);\\r\\n    padding-top: 32px;\\r\\n    animation: fadein 1s 0.8s ease both;\\r\\n  }\\r\\n  .hero-stat {\\r\\n    padding: 0 40px;\\r\\n    border-right: 1px solid rgba(255,255,255,0.1);\\r\\n    text-align: center;\\r\\n  }\\r\\n  .hero-stat:last-child { border-right: none; }\\r\\n  .hero-stat strong { display: block; font-family: var(--font-display); font-size: 34px; font-weight: 600; color: var(--spice); line-height: 1; }\\r\\n  .hero-stat span { font-size: 12px; color: rgba(255,255,255,0.55); text-transform: uppercase; letter-spacing: 0.1em; margin-top: 6px; display: block; }\\r\\n\\r\\n  @keyframes fadein { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: none; } }\\r\\n\\r\\n  \\/* \\u2500\\u2500 SCROLL ARROW \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .scroll-hint {\\r\\n    position: absolute; bottom: 28px; left: 50%; transform: translateX(-50%);\\r\\n    z-index: 2; display: flex; flex-direction: column; align-items: center; gap: 6px;\\r\\n  }\\r\\n  .scroll-hint span { font-size: 10px; letter-spacing: 0.15em; text-transform: uppercase; color: rgba(255,255,255,0.4); }\\r\\n  .scroll-arrow { width: 24px; height: 24px; border-right: 1.5px solid rgba(255,255,255,0.35); border-bottom: 1.5px solid rgba(255,255,255,0.35); transform: rotate(45deg); animation: bounce 2s infinite; }\\r\\n  @keyframes bounce { 0%,100%{transform:rotate(45deg) translateY(0)} 50%{transform:rotate(45deg) translateY(5px)} }\\r\\n\\r\\n  \\/* \\u2500\\u2500 SECTION SHARED \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .section-label {\\r\\n    display: inline-flex; align-items: center; gap: 10px;\\r\\n    font-size: 11px; letter-spacing: 0.16em; text-transform: uppercase; color: var(--spice);\\r\\n    font-weight: 600; margin-bottom: 14px;\\r\\n  }\\r\\n  .section-label::before, .section-label::after { content: \'\'; display: block; width: 28px; height: 1px; background: var(--spice); }\\r\\n\\r\\n  .section-title {\\r\\n    font-family: var(--font-display);\\r\\n    font-size: clamp(28px, 4vw, 44px);\\r\\n    font-weight: 600;\\r\\n    color: var(--dark);\\r\\n    line-height: 1.2;\\r\\n  }\\r\\n\\r\\n  .section-title em { font-style: italic; color: var(--spice); }\\r\\n\\r\\n  \\/* \\u2500\\u2500 ABOUT \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .about {\\r\\n    padding: 100px 24px;\\r\\n    max-width: 1100px; margin: auto;\\r\\n    display: grid; grid-template-columns: 1fr 1fr; gap: 72px; align-items: center;\\r\\n  }\\r\\n\\r\\n  @media(max-width: 720px) { .about { grid-template-columns: 1fr; gap: 40px; } }\\r\\n\\r\\n  .about-image-wrap {\\r\\n    position: relative; border-radius: 24px; overflow: hidden;\\r\\n    aspect-ratio: 4\\/5; background: var(--dark-mid);\\r\\n  }\\r\\n  .about-image-wrap img { width: 100%; height: 100%; object-fit: cover; display: block; }\\r\\n  .about-image-badge {\\r\\n    position: absolute; bottom: 24px; left: 24px; right: 24px;\\r\\n    background: rgba(26,18,8,0.85);\\r\\n    backdrop-filter: blur(8px);\\r\\n    border: 1px solid rgba(230,126,34,0.25);\\r\\n    border-radius: 14px; padding: 18px 20px;\\r\\n    display: flex; align-items: center; gap: 16px;\\r\\n  }\\r\\n  .badge-icon { font-size: 28px; line-height: 1; }\\r\\n  .badge-text strong { display: block; color: #fff; font-size: 15px; font-weight: 500; }\\r\\n  .badge-text span { color: rgba(255,255,255,0.55); font-size: 12px; }\\r\\n\\r\\n  .about-text .section-label { margin-bottom: 16px; }\\r\\n  .about-text .section-title { margin-bottom: 20px; }\\r\\n  .about-desc { font-size: 16px; line-height: 1.8; color: var(--text-muted); margin-bottom: 36px; }\\r\\n\\r\\n  .about-features { display: flex; flex-direction: column; gap: 18px; }\\r\\n  .about-feature {\\r\\n    display: flex; align-items: flex-start; gap: 16px;\\r\\n    padding: 18px 20px;\\r\\n    background: #fff;\\r\\n    border: 1px solid var(--border);\\r\\n    border-radius: 14px;\\r\\n    transition: border-color 0.25s, box-shadow 0.25s;\\r\\n  }\\r\\n  .about-feature:hover { border-color: rgba(230,126,34,0.4); box-shadow: 0 4px 20px rgba(230,126,34,0.1); }\\r\\n  .feature-icon {\\r\\n    width: 42px; height: 42px; border-radius: 10px;\\r\\n    background: var(--spice-light); display: flex; align-items: center; justify-content: center;\\r\\n    flex-shrink: 0; font-size: 18px;\\r\\n  }\\r\\n  .feature-text strong { display: block; font-size: 14px; font-weight: 500; color: var(--dark); margin-bottom: 3px; }\\r\\n  .feature-text span { font-size: 13px; color: var(--text-muted); line-height: 1.5; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 SPECIALTIES \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .specialties {\\r\\n    background: var(--dark);\\r\\n    padding: 100px 24px;\\r\\n    position: relative; overflow: hidden;\\r\\n  }\\r\\n  .specialties::before {\\r\\n    content: \'MENU\';\\r\\n    position: absolute; top: -20px; right: -30px;\\r\\n    font-family: var(--font-display); font-size: 180px; font-weight: 700;\\r\\n    color: rgba(255,255,255,0.025); line-height: 1; pointer-events: none;\\r\\n    user-select: none;\\r\\n  }\\r\\n\\r\\n  .spec-header {\\r\\n    text-align: center; max-width: 560px; margin: 0 auto 60px;\\r\\n  }\\r\\n  .spec-header .section-title { color: #fff; }\\r\\n  .spec-header p { color: rgba(255,255,255,0.55); font-size: 16px; margin-top: 12px; line-height: 1.7; }\\r\\n\\r\\n  .spec-grid {\\r\\n    display: grid;\\r\\n    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));\\r\\n    gap: 24px; max-width: 1000px; margin: auto;\\r\\n  }\\r\\n\\r\\n  .spec-card {\\r\\n    background: rgba(255,255,255,0.04);\\r\\n    border: 1px solid rgba(255,255,255,0.08);\\r\\n    border-radius: 20px; overflow: hidden;\\r\\n    transition: transform 0.3s, border-color 0.3s, box-shadow 0.3s;\\r\\n    cursor: default;\\r\\n  }\\r\\n  .spec-card:hover {\\r\\n    transform: translateY(-8px);\\r\\n    border-color: rgba(230,126,34,0.4);\\r\\n    box-shadow: 0 20px 50px rgba(0,0,0,0.4), 0 0 0 1px rgba(230,126,34,0.15);\\r\\n  }\\r\\n\\r\\n  .spec-img {\\r\\n    width: 100%; aspect-ratio: 4\\/3;\\r\\n    object-fit: cover; display: block;\\r\\n    background: var(--dark-mid);\\r\\n    filter: brightness(0.9);\\r\\n    transition: filter 0.3s, transform 0.4s;\\r\\n  }\\r\\n  .spec-card:hover .spec-img { filter: brightness(1.05); transform: scale(1.03); }\\r\\n\\r\\n  .spec-img-wrap { overflow: hidden; }\\r\\n\\r\\n  .spec-body { padding: 20px 22px 24px; }\\r\\n  .spec-tag {\\r\\n    display: inline-block;\\r\\n    background: rgba(230,126,34,0.18); color: #f5a623;\\r\\n    font-size: 10px; letter-spacing: 0.12em; text-transform: uppercase; font-weight: 600;\\r\\n    padding: 4px 10px; border-radius: 20px; margin-bottom: 10px;\\r\\n  }\\r\\n  .spec-name { font-family: var(--font-display); font-size: 20px; font-weight: 600; color: #fff; margin-bottom: 8px; }\\r\\n  .spec-desc { font-size: 13px; color: rgba(255,255,255,0.5); line-height: 1.6; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 WHY \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .why {\\r\\n    padding: 100px 24px;\\r\\n    max-width: 1100px; margin: auto;\\r\\n  }\\r\\n  .why-header { text-align: center; margin-bottom: 60px; }\\r\\n  .why-header .section-title { margin-top: 12px; }\\r\\n  .why-header p { color: var(--text-muted); font-size: 16px; margin-top: 12px; }\\r\\n\\r\\n  .why-grid {\\r\\n    display: grid;\\r\\n    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));\\r\\n    gap: 20px;\\r\\n  }\\r\\n\\r\\n  .why-card {\\r\\n    background: #fff;\\r\\n    border: 1px solid var(--border);\\r\\n    border-radius: 20px; padding: 30px 26px 32px;\\r\\n    transition: transform 0.3s, box-shadow 0.3s, border-color 0.3s;\\r\\n    position: relative; overflow: hidden;\\r\\n  }\\r\\n  .why-card::after {\\r\\n    content: \'\';\\r\\n    position: absolute; bottom: 0; left: 0; right: 0; height: 3px;\\r\\n    background: var(--spice); transform: scaleX(0); transform-origin: left;\\r\\n    transition: transform 0.35s ease;\\r\\n  }\\r\\n  .why-card:hover { transform: translateY(-6px); box-shadow: 0 16px 40px rgba(230,126,34,0.12); border-color: rgba(230,126,34,0.3); }\\r\\n  .why-card:hover::after { transform: scaleX(1); }\\r\\n\\r\\n  .why-icon-wrap {\\r\\n    width: 54px; height: 54px; border-radius: 14px;\\r\\n    background: var(--spice-light);\\r\\n    display: flex; align-items: center; justify-content: center;\\r\\n    margin-bottom: 20px;\\r\\n  }\\r\\n  .why-icon-wrap svg { width: 24px; height: 24px; }\\r\\n  .why-card-title { font-family: var(--font-display); font-size: 19px; font-weight: 600; color: var(--dark); margin-bottom: 10px; }\\r\\n  .why-card-desc { font-size: 14px; color: var(--text-muted); line-height: 1.7; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 TESTIMONIAL STRIP \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .testimonials {\\r\\n    background: var(--spice-light);\\r\\n    border-top: 1px solid var(--border);\\r\\n    border-bottom: 1px solid var(--border);\\r\\n    padding: 60px 24px;\\r\\n    text-align: center;\\r\\n    overflow: hidden;\\r\\n  }\\r\\n  .testimonials blockquote {\\r\\n    font-family: var(--font-display); font-style: italic;\\r\\n    font-size: clamp(20px, 3vw, 30px);\\r\\n    color: var(--dark); max-width: 700px; margin: 0 auto 20px;\\r\\n    line-height: 1.5;\\r\\n  }\\r\\n  .testimonials cite {\\r\\n    font-size: 13px; color: var(--text-muted); font-style: normal; letter-spacing: 0.08em;\\r\\n  }\\r\\n  .stars { color: var(--spice); font-size: 16px; letter-spacing: 3px; margin-bottom: 18px; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 CTA \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .cta-section { padding: 24px 24px 72px; }\\r\\n  .cta-inner {\\r\\n    max-width: 1000px; margin: auto;\\r\\n    background: var(--dark);\\r\\n    border-radius: 28px;\\r\\n    padding: 80px 48px;\\r\\n    text-align: center;\\r\\n    position: relative; overflow: hidden;\\r\\n  }\\r\\n  .cta-inner::before {\\r\\n    content: \'\';\\r\\n    position: absolute; top: -120px; right: -120px;\\r\\n    width: 400px; height: 400px; border-radius: 50%;\\r\\n    background: radial-gradient(circle, rgba(230,126,34,0.18) 0%, transparent 70%);\\r\\n  }\\r\\n  .cta-inner::after {\\r\\n    content: \'\';\\r\\n    position: absolute; bottom: -100px; left: -80px;\\r\\n    width: 350px; height: 350px; border-radius: 50%;\\r\\n    background: radial-gradient(circle, rgba(230,126,34,0.1) 0%, transparent 70%);\\r\\n  }\\r\\n  .cta-inner .section-label { justify-content: center; margin-bottom: 18px; }\\r\\n  .cta-inner .section-label::before, .cta-inner .section-label::after { background: rgba(230,126,34,0.5); }\\r\\n  .cta-inner h2 {\\r\\n    font-family: var(--font-display);\\r\\n    font-size: clamp(30px, 5vw, 52px);\\r\\n    font-weight: 700; color: #fff; line-height: 1.15;\\r\\n    margin-bottom: 16px; position: relative; z-index: 1;\\r\\n  }\\r\\n  .cta-inner h2 em { font-style: italic; color: var(--spice); }\\r\\n  .cta-inner p { color: rgba(255,255,255,0.6); font-size: 17px; margin-bottom: 40px; position: relative; z-index: 1; }\\r\\n  .cta-inner .cta-btns { display: flex; gap: 14px; justify-content: center; flex-wrap: wrap; position: relative; z-index: 1; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 FOOTER STRIP \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .footer {\\r\\n    background: var(--dark);\\r\\n    border-top: 1px solid rgba(255,255,255,0.06);\\r\\n    padding: 24px;\\r\\n    text-align: center;\\r\\n    font-size: 13px;\\r\\n    color: rgba(255,255,255,0.3);\\r\\n  }\\r\\n  .footer strong { color: var(--spice); font-weight: 500; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 RESPONSIVE \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  @media (max-width: 540px) {\\r\\n    .hero-stats { gap: 0; }\\r\\n    .hero-stat { padding: 0 18px; }\\r\\n    .hero-stat strong { font-size: 24px; }\\r\\n    .about { padding: 60px 20px; }\\r\\n    .cta-inner { padding: 50px 24px; }\\r\\n  }\\r\\n<\\/style>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 HERO \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"hero\\\">\\r\\n  <div class=\\\"hero-bg\\\"><\\/div>\\r\\n  <div class=\\\"hero-overlay\\\"><\\/div>\\r\\n  <div class=\\\"hero-ring\\\"><\\/div>\\r\\n  <div class=\\\"hero-ring\\\"><\\/div>\\r\\n  <div class=\\\"hero-ring\\\"><\\/div>\\r\\n\\r\\n  <div class=\\\"hero-content\\\">\\r\\n    <div class=\\\"hero-badge\\\">Est. 2020 &nbsp;\\u00b7&nbsp; Kampala, Uganda<\\/div>\\r\\n    <h1>Welcome to<br><em>Spice Bites<\\/em> Restaurant<\\/h1>\\r\\n    <p class=\\\"hero-sub\\\">A Taste of Flavor in Every Bite<\\/p>\\r\\n    <div class=\\\"hero-actions\\\">\\r\\n      <a href=\\\"#reserve\\\" class=\\\"btn-primary\\\">\\r\\n        <svg width=\\\"16\\\" height=\\\"16\\\" viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\"><rect x=\\\"3\\\" y=\\\"4\\\" width=\\\"18\\\" height=\\\"18\\\" rx=\\\"2\\\"\\/><line x1=\\\"16\\\" y1=\\\"2\\\" x2=\\\"16\\\" y2=\\\"6\\\"\\/><line x1=\\\"8\\\" y1=\\\"2\\\" x2=\\\"8\\\" y2=\\\"6\\\"\\/><line x1=\\\"3\\\" y1=\\\"10\\\" x2=\\\"21\\\" y2=\\\"10\\\"\\/><\\/svg>\\r\\n        Reserve a Table\\r\\n      <\\/a>\\r\\n      <a href=\\\"#menu\\\" class=\\\"btn-ghost\\\">\\r\\n        View Our Menu &rarr;\\r\\n      <\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"hero-stats\\\">\\r\\n      <div class=\\\"hero-stat\\\"><strong>500+<\\/strong><span>Daily Guests<\\/span><\\/div>\\r\\n      <div class=\\\"hero-stat\\\"><strong>40+<\\/strong><span>Signature Dishes<\\/span><\\/div>\\r\\n      <div class=\\\"hero-stat\\\"><strong>5 \\u2605<\\/strong><span>Guest Rating<\\/span><\\/div>\\r\\n      <div class=\\\"hero-stat\\\"><strong>5 yrs<\\/strong><span>Of Excellence<\\/span><\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n\\r\\n  <div class=\\\"scroll-hint\\\">\\r\\n    <span>Explore<\\/span>\\r\\n    <div class=\\\"scroll-arrow\\\"><\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 ABOUT \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"about\\\">\\r\\n  <div class=\\\"about-image-wrap\\\">\\r\\n    <img src=\\\"images\\/restaurant\\/hero.png\\\" alt=\\\"Spice Bites Restaurant interior\\\" onerror=\\\"this.style.minHeight=\'400px\';this.style.background=\'#2d200e\'\\\">\\r\\n    <div class=\\\"about-image-badge\\\">\\r\\n      <div class=\\\"badge-icon\\\">\\ud83c\\udf7d\\ufe0f<\\/div>\\r\\n      <div class=\\\"badge-text\\\">\\r\\n        <strong>Open Daily<\\/strong>\\r\\n        <span>11:00 AM \\u2013 10:00 PM<\\/span>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n\\r\\n  <div class=\\\"about-text\\\">\\r\\n    <div class=\\\"section-label\\\">Our Story<\\/div>\\r\\n    <h2 class=\\\"section-title\\\">Crafted with Passion,<br><em>Served with Heart<\\/em><\\/h2>\\r\\n    <p class=\\\"about-desc\\\">Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest locally sourced ingredients \\u2014 a love letter to African flavors.<\\/p>\\r\\n\\r\\n    <div class=\\\"about-features\\\">\\r\\n      <div class=\\\"about-feature\\\">\\r\\n        <div class=\\\"feature-icon\\\">\\ud83c\\udf3f<\\/div>\\r\\n        <div class=\\\"feature-text\\\">\\r\\n          <strong>Farm-Fresh Ingredients<\\/strong>\\r\\n          <span>Locally sourced produce, delivered fresh every morning to our kitchen.<\\/span>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n      <div class=\\\"about-feature\\\">\\r\\n        <div class=\\\"feature-icon\\\">\\ud83d\\udc68\\u200d\\ud83c\\udf73<\\/div>\\r\\n        <div class=\\\"feature-text\\\">\\r\\n          <strong>Master Chefs at Work<\\/strong>\\r\\n          <span>Culinary artisans with years of expertise in African and continental cuisine.<\\/span>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n      <div class=\\\"about-feature\\\">\\r\\n        <div class=\\\"feature-icon\\\">\\u2728<\\/div>\\r\\n        <div class=\\\"feature-text\\\">\\r\\n          <strong>An Atmosphere That Delights<\\/strong>\\r\\n          <span>Warm, cozy settings perfect for families, dates, and celebrations alike.<\\/span>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 SPECIALTIES \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"specialties\\\" id=\\\"menu\\\">\\r\\n  <div class=\\\"spec-header\\\">\\r\\n    <div class=\\\"section-label\\\" style=\\\"justify-content:center;color:#f5a623;\\\">\\r\\n      <span style=\\\"display:block;width:28px;height:1px;background:#f5a623;\\\"><\\/span>\\r\\n      What We Serve\\r\\n      <span style=\\\"display:block;width:28px;height:1px;background:#f5a623;\\\"><\\/span>\\r\\n    <\\/div>\\r\\n    <h2 class=\\\"section-title\\\">Our <em>Specialties<\\/em><\\/h2>\\r\\n    <p>Every dish tells a story \\u2014 prepared fresh daily with bold flavors and the finest spices<\\/p>\\r\\n  <\\/div>\\r\\n\\r\\n  <div class=\\\"spec-grid\\\">\\r\\n    <div class=\\\"spec-card\\\">\\r\\n      <div class=\\\"spec-img-wrap\\\">\\r\\n        <img class=\\\"spec-img\\\" src=\\\"images\\/restaurant\\/grilled.png\\\" alt=\\\"Grilled Chicken\\\">\\r\\n      <\\/div>\\r\\n      <div class=\\\"spec-body\\\">\\r\\n        <span class=\\\"spec-tag\\\">Signature<\\/span>\\r\\n        <div class=\\\"spec-name\\\">Grilled Chicken & BBQ<\\/div>\\r\\n        <div class=\\\"spec-desc\\\">Smoky, tender cuts slow-grilled over charcoal and finished in our house BBQ marinade.<\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"spec-card\\\">\\r\\n      <div class=\\\"spec-img-wrap\\\">\\r\\n        <img class=\\\"spec-img\\\" src=\\\"images\\/restaurant\\/african.png\\\" alt=\\\"African Dishes\\\">\\r\\n      <\\/div>\\r\\n      <div class=\\\"spec-body\\\">\\r\\n        <span class=\\\"spec-tag\\\">Traditional<\\/span>\\r\\n        <div class=\\\"spec-name\\\">African Local Dishes<\\/div>\\r\\n        <div class=\\\"spec-desc\\\">Authentic East African recipes passed down through generations \\u2014 comforting and deeply flavorful.<\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"spec-card\\\">\\r\\n      <div class=\\\"spec-img-wrap\\\">\\r\\n        <img class=\\\"spec-img\\\" src=\\\"images\\/restaurant\\/juice.png\\\" alt=\\\"Fresh Juices\\\">\\r\\n      <\\/div>\\r\\n      <div class=\\\"spec-body\\\">\\r\\n        <span class=\\\"spec-tag\\\">Beverages<\\/span>\\r\\n        <div class=\\\"spec-name\\\">Fresh Tropical Juices<\\/div>\\r\\n        <div class=\\\"spec-desc\\\">Cold-pressed blends of mango, passion fruit, watermelon and more \\u2014 seasonal and always fresh.<\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"spec-card\\\">\\r\\n      <div class=\\\"spec-img-wrap\\\">\\r\\n        <img class=\\\"spec-img\\\" src=\\\"images\\/restaurant\\/dessert.png\\\" alt=\\\"Desserts\\\">\\r\\n      <\\/div>\\r\\n      <div class=\\\"spec-body\\\">\\r\\n        <span class=\\\"spec-tag\\\">Desserts<\\/span>\\r\\n        <div class=\\\"spec-name\\\">Indulgent Desserts<\\/div>\\r\\n        <div class=\\\"spec-desc\\\">House-baked sweets and chilled treats crafted to give your meal the perfect sweet finale.<\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 WHY \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"why\\\">\\r\\n  <div class=\\\"why-header\\\">\\r\\n    <div class=\\\"section-label\\\" style=\\\"justify-content:center;\\\">\\r\\n      Why Spice Bites\\r\\n    <\\/div>\\r\\n    <h2 class=\\\"section-title\\\">A Dining Experience<br><em>Like No Other<\\/em><\\/h2>\\r\\n    <p>From your first visit to your hundredth, we make every meal memorable<\\/p>\\r\\n  <\\/div>\\r\\n\\r\\n  <div class=\\\"why-grid\\\">\\r\\n    <div class=\\\"why-card\\\">\\r\\n      <div class=\\\"why-icon-wrap\\\">\\r\\n        <svg viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"#e67e22\\\" stroke-width=\\\"1.8\\\" stroke-linecap=\\\"round\\\"><path d=\\\"M12 2a10 10 0 100 20 10 10 0 000-20z\\\"\\/><path d=\\\"M8 12l3 3 5-5\\\"\\/><\\/svg>\\r\\n      <\\/div>\\r\\n      <div class=\\\"why-card-title\\\">Fresh, Quality Ingredients<\\/div>\\r\\n      <div class=\\\"why-card-desc\\\">We source locally and prepare daily so every dish bursts with natural flavor you can taste in every bite.<\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"why-card\\\">\\r\\n      <div class=\\\"why-icon-wrap\\\">\\r\\n        <svg viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"#e67e22\\\" stroke-width=\\\"1.8\\\" stroke-linecap=\\\"round\\\"><path d=\\\"M12 2l3 6.5 7 1-5 5 1.2 7L12 18l-6.2 3.5L7 14.5 2 9.5l7-1z\\\"\\/><\\/svg>\\r\\n      <\\/div>\\r\\n      <div class=\\\"why-card-title\\\">Experienced Chefs<\\/div>\\r\\n      <div class=\\\"why-card-desc\\\">Our culinary team brings years of mastery to every plate \\u2014 blending tradition with creative flair.<\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"why-card\\\">\\r\\n      <div class=\\\"why-icon-wrap\\\">\\r\\n        <svg viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"#e67e22\\\" stroke-width=\\\"1.8\\\" stroke-linecap=\\\"round\\\"><path d=\\\"M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z\\\"\\/><polyline points=\\\"9 22 9 12 15 12 15 22\\\"\\/><\\/svg>\\r\\n      <\\/div>\\r\\n      <div class=\\\"why-card-title\\\">Cozy Atmosphere<\\/div>\\r\\n      <div class=\\\"why-card-desc\\\">A warm, inviting setting designed for intimate dinners, lively family gatherings, and every moment in between.<\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"why-card\\\">\\r\\n      <div class=\\\"why-icon-wrap\\\">\\r\\n        <svg viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"#e67e22\\\" stroke-width=\\\"1.8\\\" stroke-linecap=\\\"round\\\"><circle cx=\\\"12\\\" cy=\\\"12\\\" r=\\\"10\\\"\\/><path d=\\\"M12 6v6l4 2\\\"\\/><\\/svg>\\r\\n      <\\/div>\\r\\n      <div class=\\\"why-card-title\\\">Fast & Friendly Service<\\/div>\\r\\n      <div class=\\\"why-card-desc\\\">Attentive staff who treat every guest like family, ensuring your experience is seamless from arrival to dessert.<\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 TESTIMONIAL \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"testimonials\\\">\\r\\n  <div class=\\\"stars\\\">\\u2605\\u2605\\u2605\\u2605\\u2605<\\/div>\\r\\n  <blockquote>\\\"The food took me back home. The flavors, the warmth, the atmosphere \\u2014 Spice Bites is truly special.\\\"<\\/blockquote>\\r\\n  <cite>\\u2014 Amara N., Kampala<\\/cite>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 CTA \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"cta-section\\\" id=\\\"reserve\\\">\\r\\n  <div class=\\\"cta-inner\\\">\\r\\n    <div class=\\\"section-label\\\">Book Your Seat<\\/div>\\r\\n    <h2>Reserve Your Table <em>Today<\\/em><\\/h2>\\r\\n    <p>Join hundreds of guests who make Spice Bites their favourite dining destination in Kampala<\\/p>\\r\\n    <div class=\\\"cta-btns\\\">\\r\\n      <a href=\\\"#\\\" class=\\\"btn-primary\\\" style=\\\"font-size:16px;padding:16px 38px;\\\">\\r\\n        <svg width=\\\"16\\\" height=\\\"16\\\" viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\"><rect x=\\\"3\\\" y=\\\"4\\\" width=\\\"18\\\" height=\\\"18\\\" rx=\\\"2\\\"\\/><line x1=\\\"16\\\" y1=\\\"2\\\" x2=\\\"16\\\" y2=\\\"6\\\"\\/><line x1=\\\"8\\\" y1=\\\"2\\\" x2=\\\"8\\\" y2=\\\"6\\\"\\/><line x1=\\\"3\\\" y1=\\\"10\\\" x2=\\\"21\\\" y2=\\\"10\\\"\\/><\\/svg>\\r\\n        Book a Table\\r\\n      <\\/a>\\r\\n      <a href=\\\"#\\\" class=\\\"btn-ghost\\\" style=\\\"font-size:16px;padding:16px 38px;border-color:rgba(255,255,255,0.25);\\\">\\r\\n        \\ud83d\\udcde &nbsp;Call Us Now\\r\\n      <\\/a>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<footer class=\\\"footer\\\">\\r\\n  &copy; 2025 <strong>Spice Bites Restaurant<\\/strong> &nbsp;\\u00b7&nbsp; Kampala, Uganda &nbsp;\\u00b7&nbsp; All rights reserved\\r\\n<\\/footer>\\r\\n\\r\\n<\\/body>\\r\\n<\\/html>\\r\\n\",\"fulltext\":\"\",\"ordering\":0}', 0, 0, 0);
INSERT INTO `sb_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`, `is_current`, `is_legacy`) VALUES
(25, 'com_content.article.1', '', '2026-04-09 12:38:54', 57, 30734, 'c2acd3aca53cc3385d10ea902e9da7abce301fc2', '{\"id\":1,\"title\":\"welcome\",\"alias\":\"welcome\",\"note\":\"\",\"catid\":8,\"state\":1,\"created\":\"2026-04-09 07:04:21\",\"created_by\":57,\"created_by_alias\":\"\",\"publish_up\":\"2026-04-09 07:04:21\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"schema\":{\"extendJed\":\"\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":100,\"introtext\":\"<!DOCTYPE html>\\r\\n<html lang=\\\"en\\\">\\r\\n<head>\\r\\n<meta charset=\\\"UTF-8\\\">\\r\\n<meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\r\\n<title>Spice Bites Restaurant<\\/title>\\r\\n<link href=\\\"https:\\/\\/fonts.googleapis.com\\/css2?family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400;1,600&family=Outfit:wght@300;400;500;600&display=swap\\\" rel=\\\"stylesheet\\\">\\r\\n<style>\\r\\n  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }\\r\\n\\r\\n  :root {\\r\\n    --spice: #e67e22;\\r\\n    --spice-dark: #cf6d17;\\r\\n    --spice-light: #fdf0e4;\\r\\n    --cream: #fdf8f2;\\r\\n    --dark: #1a1208;\\r\\n    --dark-mid: #2d200e;\\r\\n    --text: #3a2a10;\\r\\n    --text-muted: #7a6248;\\r\\n    --border: rgba(230,126,34,0.18);\\r\\n    --font-display: \'Playfair Display\', Georgia, serif;\\r\\n    --font-body: \'Outfit\', sans-serif;\\r\\n  }\\r\\n\\r\\n  html { scroll-behavior: smooth; }\\r\\n\\r\\n  body {\\r\\n    font-family: var(--font-body);\\r\\n    background: var(--cream);\\r\\n    color: var(--text);\\r\\n    overflow-x: hidden;\\r\\n  }\\r\\n\\r\\n  \\/* \\u2500\\u2500 HERO \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .hero {\\r\\n    position: relative;\\r\\n    min-height: 100vh;\\r\\n    display: flex;\\r\\n    flex-direction: column;\\r\\n    justify-content: center;\\r\\n    align-items: center;\\r\\n    text-align: center;\\r\\n    padding: 80px 24px 60px;\\r\\n    overflow: hidden;\\r\\n    background: var(--dark);\\r\\n  }\\r\\n\\r\\n  .hero-bg {\\r\\n    position: absolute; inset: 0;\\r\\n    background: url(\'images\\/restaurant\\/hero.png\') center\\/cover no-repeat;\\r\\n    opacity: 0.38;\\r\\n    transform: scale(1.04);\\r\\n    animation: slowzoom 18s ease-in-out infinite alternate;\\r\\n  }\\r\\n\\r\\n  @keyframes slowzoom { from { transform: scale(1.04); } to { transform: scale(1.12); } }\\r\\n\\r\\n  .hero-overlay {\\r\\n    position: absolute; inset: 0;\\r\\n    background: radial-gradient(ellipse at center top, rgba(26,18,8,0.3) 0%, rgba(26,18,8,0.78) 70%),\\r\\n                linear-gradient(to bottom, transparent 40%, var(--dark) 100%);\\r\\n  }\\r\\n\\r\\n  \\/* decorative spice ring *\\/\\r\\n  .hero-ring {\\r\\n    position: absolute;\\r\\n    width: 520px; height: 520px;\\r\\n    border-radius: 50%;\\r\\n    border: 1px solid rgba(230,126,34,0.18);\\r\\n    top: 50%; left: 50%;\\r\\n    transform: translate(-50%, -50%);\\r\\n    animation: ringpulse 4s ease-in-out infinite;\\r\\n  }\\r\\n  .hero-ring:nth-child(3) { width: 700px; height: 700px; border-color: rgba(230,126,34,0.09); animation-delay: 1s; }\\r\\n  .hero-ring:nth-child(4) { width: 900px; height: 900px; border-color: rgba(230,126,34,0.05); animation-delay: 2s; }\\r\\n\\r\\n  @keyframes ringpulse {\\r\\n    0%, 100% { opacity: 0.6; transform: translate(-50%, -50%) scale(1); }\\r\\n    50% { opacity: 1; transform: translate(-50%, -50%) scale(1.015); }\\r\\n  }\\r\\n\\r\\n  .hero-content { position: relative; z-index: 2; max-width: 760px; }\\r\\n\\r\\n  .hero-badge {\\r\\n    display: inline-flex; align-items: center; gap: 8px;\\r\\n    background: rgba(230,126,34,0.18);\\r\\n    border: 1px solid rgba(230,126,34,0.4);\\r\\n    color: #f5b96e;\\r\\n    font-size: 11px; letter-spacing: 0.15em; text-transform: uppercase; font-weight: 500;\\r\\n    padding: 6px 18px; border-radius: 30px;\\r\\n    margin-bottom: 28px;\\r\\n    animation: fadein 1s ease both;\\r\\n  }\\r\\n  .hero-badge::before { content: \'\'; width: 6px; height: 6px; border-radius: 50%; background: #e67e22; display: inline-block; }\\r\\n\\r\\n  .hero h1 {\\r\\n    font-family: var(--font-display);\\r\\n    font-size: clamp(40px, 7vw, 72px);\\r\\n    font-weight: 700;\\r\\n    color: #fff;\\r\\n    line-height: 1.1;\\r\\n    margin-bottom: 20px;\\r\\n    animation: fadein 1s 0.2s ease both;\\r\\n  }\\r\\n\\r\\n  .hero h1 em {\\r\\n    font-style: italic;\\r\\n    color: #f5a623;\\r\\n  }\\r\\n\\r\\n  .hero-sub {\\r\\n    font-size: clamp(16px, 2.2vw, 20px);\\r\\n    color: rgba(255,255,255,0.72);\\r\\n    font-weight: 300;\\r\\n    margin-bottom: 44px;\\r\\n    letter-spacing: 0.03em;\\r\\n    animation: fadein 1s 0.4s ease both;\\r\\n  }\\r\\n\\r\\n  .hero-actions {\\r\\n    display: flex; gap: 14px; justify-content: center; flex-wrap: wrap;\\r\\n    animation: fadein 1s 0.6s ease both;\\r\\n  }\\r\\n\\r\\n  .btn-primary {\\r\\n    background: var(--spice);\\r\\n    color: #fff; font-family: var(--font-body); font-size: 15px; font-weight: 500;\\r\\n    padding: 15px 34px; border-radius: 50px; text-decoration: none;\\r\\n    display: inline-flex; align-items: center; gap: 8px;\\r\\n    transition: background 0.25s, transform 0.2s, box-shadow 0.25s;\\r\\n    box-shadow: 0 6px 28px rgba(230,126,34,0.45);\\r\\n  }\\r\\n  .btn-primary:hover { background: var(--spice-dark); transform: translateY(-2px); box-shadow: 0 12px 36px rgba(230,126,34,0.5); }\\r\\n\\r\\n  .btn-ghost {\\r\\n    background: transparent; color: rgba(255,255,255,0.85);\\r\\n    font-family: var(--font-body); font-size: 15px; font-weight: 400;\\r\\n    padding: 15px 34px; border-radius: 50px; text-decoration: none;\\r\\n    border: 1px solid rgba(255,255,255,0.3);\\r\\n    display: inline-flex; align-items: center; gap: 8px;\\r\\n    transition: border-color 0.25s, background 0.25s, transform 0.2s;\\r\\n  }\\r\\n  .btn-ghost:hover { border-color: rgba(255,255,255,0.7); background: rgba(255,255,255,0.07); transform: translateY(-2px); }\\r\\n\\r\\n  .hero-stats {\\r\\n    display: flex; justify-content: center; gap: 0;\\r\\n    margin-top: 68px; border-top: 1px solid rgba(255,255,255,0.1);\\r\\n    padding-top: 32px;\\r\\n    animation: fadein 1s 0.8s ease both;\\r\\n  }\\r\\n  .hero-stat {\\r\\n    padding: 0 40px;\\r\\n    border-right: 1px solid rgba(255,255,255,0.1);\\r\\n    text-align: center;\\r\\n  }\\r\\n  .hero-stat:last-child { border-right: none; }\\r\\n  .hero-stat strong { display: block; font-family: var(--font-display); font-size: 34px; font-weight: 600; color: var(--spice); line-height: 1; }\\r\\n  .hero-stat span { font-size: 12px; color: rgba(255,255,255,0.55); text-transform: uppercase; letter-spacing: 0.1em; margin-top: 6px; display: block; }\\r\\n\\r\\n  @keyframes fadein { from { opacity: 0; transform: translateY(20px); } to { opacity: 1; transform: none; } }\\r\\n\\r\\n  \\/* \\u2500\\u2500 SCROLL ARROW \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .scroll-hint {\\r\\n    position: absolute; bottom: 28px; left: 50%; transform: translateX(-50%);\\r\\n    z-index: 2; display: flex; flex-direction: column; align-items: center; gap: 6px;\\r\\n  }\\r\\n  .scroll-hint span { font-size: 10px; letter-spacing: 0.15em; text-transform: uppercase; color: rgba(255,255,255,0.4); }\\r\\n  .scroll-arrow { width: 24px; height: 24px; border-right: 1.5px solid rgba(255,255,255,0.35); border-bottom: 1.5px solid rgba(255,255,255,0.35); transform: rotate(45deg); animation: bounce 2s infinite; }\\r\\n  @keyframes bounce { 0%,100%{transform:rotate(45deg) translateY(0)} 50%{transform:rotate(45deg) translateY(5px)} }\\r\\n\\r\\n  \\/* \\u2500\\u2500 SECTION SHARED \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .section-label {\\r\\n    display: inline-flex; align-items: center; gap: 10px;\\r\\n    font-size: 11px; letter-spacing: 0.16em; text-transform: uppercase; color: var(--spice);\\r\\n    font-weight: 600; margin-bottom: 14px;\\r\\n  }\\r\\n  .section-label::before, .section-label::after { content: \'\'; display: block; width: 28px; height: 1px; background: var(--spice); }\\r\\n\\r\\n  .section-title {\\r\\n    font-family: var(--font-display);\\r\\n    font-size: clamp(28px, 4vw, 44px);\\r\\n    font-weight: 600;\\r\\n    color: var(--dark);\\r\\n    line-height: 1.2;\\r\\n  }\\r\\n\\r\\n  .section-title em { font-style: italic; color: var(--spice); }\\r\\n\\r\\n  \\/* \\u2500\\u2500 ABOUT \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .about {\\r\\n    padding: 100px 24px;\\r\\n    max-width: 1100px; margin: auto;\\r\\n    display: grid; grid-template-columns: 1fr 1fr; gap: 72px; align-items: center;\\r\\n  }\\r\\n\\r\\n  @media(max-width: 720px) { .about { grid-template-columns: 1fr; gap: 40px; } }\\r\\n\\r\\n  .about-image-wrap {\\r\\n    position: relative; border-radius: 24px; overflow: hidden;\\r\\n    aspect-ratio: 4\\/5; background: var(--dark-mid);\\r\\n  }\\r\\n  .about-image-wrap img { width: 100%; height: 100%; object-fit: cover; display: block; }\\r\\n  .about-image-badge {\\r\\n    position: absolute; bottom: 24px; left: 24px; right: 24px;\\r\\n    background: rgba(26,18,8,0.85);\\r\\n    backdrop-filter: blur(8px);\\r\\n    border: 1px solid rgba(230,126,34,0.25);\\r\\n    border-radius: 14px; padding: 18px 20px;\\r\\n    display: flex; align-items: center; gap: 16px;\\r\\n  }\\r\\n  .badge-icon { font-size: 28px; line-height: 1; }\\r\\n  .badge-text strong { display: block; color: #fff; font-size: 15px; font-weight: 500; }\\r\\n  .badge-text span { color: rgba(255,255,255,0.55); font-size: 12px; }\\r\\n\\r\\n  .about-text .section-label { margin-bottom: 16px; }\\r\\n  .about-text .section-title { margin-bottom: 20px; }\\r\\n  .about-desc { font-size: 16px; line-height: 1.8; color: var(--text-muted); margin-bottom: 36px; }\\r\\n\\r\\n  .about-features { display: flex; flex-direction: column; gap: 18px; }\\r\\n  .about-feature {\\r\\n    display: flex; align-items: flex-start; gap: 16px;\\r\\n    padding: 18px 20px;\\r\\n    background: #fff;\\r\\n    border: 1px solid var(--border);\\r\\n    border-radius: 14px;\\r\\n    transition: border-color 0.25s, box-shadow 0.25s;\\r\\n  }\\r\\n  .about-feature:hover { border-color: rgba(230,126,34,0.4); box-shadow: 0 4px 20px rgba(230,126,34,0.1); }\\r\\n  .feature-icon {\\r\\n    width: 42px; height: 42px; border-radius: 10px;\\r\\n    background: var(--spice-light); display: flex; align-items: center; justify-content: center;\\r\\n    flex-shrink: 0; font-size: 18px;\\r\\n  }\\r\\n  .feature-text strong { display: block; font-size: 14px; font-weight: 500; color: var(--dark); margin-bottom: 3px; }\\r\\n  .feature-text span { font-size: 13px; color: var(--text-muted); line-height: 1.5; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 SPECIALTIES \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .specialties {\\r\\n    background: var(--dark);\\r\\n    padding: 100px 24px;\\r\\n    position: relative; overflow: hidden;\\r\\n  }\\r\\n  .specialties::before {\\r\\n    content: \'MENU\';\\r\\n    position: absolute; top: -20px; right: -30px;\\r\\n    font-family: var(--font-display); font-size: 180px; font-weight: 700;\\r\\n    color: rgba(255,255,255,0.025); line-height: 1; pointer-events: none;\\r\\n    user-select: none;\\r\\n  }\\r\\n\\r\\n  .spec-header {\\r\\n    text-align: center; max-width: 560px; margin: 0 auto 60px;\\r\\n  }\\r\\n  .spec-header .section-title { color: #fff; }\\r\\n  .spec-header p { color: rgba(255,255,255,0.55); font-size: 16px; margin-top: 12px; line-height: 1.7; }\\r\\n\\r\\n  .spec-grid {\\r\\n    display: grid;\\r\\n    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));\\r\\n    gap: 24px; max-width: 1000px; margin: auto;\\r\\n  }\\r\\n\\r\\n  .spec-card {\\r\\n    background: rgba(255,255,255,0.04);\\r\\n    border: 1px solid rgba(255,255,255,0.08);\\r\\n    border-radius: 20px; overflow: hidden;\\r\\n    transition: transform 0.3s, border-color 0.3s, box-shadow 0.3s;\\r\\n    cursor: default;\\r\\n  }\\r\\n  .spec-card:hover {\\r\\n    transform: translateY(-8px);\\r\\n    border-color: rgba(230,126,34,0.4);\\r\\n    box-shadow: 0 20px 50px rgba(0,0,0,0.4), 0 0 0 1px rgba(230,126,34,0.15);\\r\\n  }\\r\\n\\r\\n  .spec-img {\\r\\n    width: 100%; aspect-ratio: 4\\/3;\\r\\n    object-fit: cover; display: block;\\r\\n    background: var(--dark-mid);\\r\\n    filter: brightness(0.9);\\r\\n    transition: filter 0.3s, transform 0.4s;\\r\\n  }\\r\\n  .spec-card:hover .spec-img { filter: brightness(1.05); transform: scale(1.03); }\\r\\n\\r\\n  .spec-img-wrap { overflow: hidden; }\\r\\n\\r\\n  .spec-body { padding: 20px 22px 24px; }\\r\\n  .spec-tag {\\r\\n    display: inline-block;\\r\\n    background: rgba(230,126,34,0.18); color: #f5a623;\\r\\n    font-size: 10px; letter-spacing: 0.12em; text-transform: uppercase; font-weight: 600;\\r\\n    padding: 4px 10px; border-radius: 20px; margin-bottom: 10px;\\r\\n  }\\r\\n  .spec-name { font-family: var(--font-display); font-size: 20px; font-weight: 600; color: #fff; margin-bottom: 8px; }\\r\\n  .spec-desc { font-size: 13px; color: rgba(255,255,255,0.5); line-height: 1.6; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 WHY \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .why {\\r\\n    padding: 100px 24px;\\r\\n    max-width: 1100px; margin: auto;\\r\\n  }\\r\\n  .why-header { text-align: center; margin-bottom: 60px; }\\r\\n  .why-header .section-title { margin-top: 12px; }\\r\\n  .why-header p { color: var(--text-muted); font-size: 16px; margin-top: 12px; }\\r\\n\\r\\n  .why-grid {\\r\\n    display: grid;\\r\\n    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));\\r\\n    gap: 20px;\\r\\n  }\\r\\n\\r\\n  .why-card {\\r\\n    background: #fff;\\r\\n    border: 1px solid var(--border);\\r\\n    border-radius: 20px; padding: 30px 26px 32px;\\r\\n    transition: transform 0.3s, box-shadow 0.3s, border-color 0.3s;\\r\\n    position: relative; overflow: hidden;\\r\\n  }\\r\\n  .why-card::after {\\r\\n    content: \'\';\\r\\n    position: absolute; bottom: 0; left: 0; right: 0; height: 3px;\\r\\n    background: var(--spice); transform: scaleX(0); transform-origin: left;\\r\\n    transition: transform 0.35s ease;\\r\\n  }\\r\\n  .why-card:hover { transform: translateY(-6px); box-shadow: 0 16px 40px rgba(230,126,34,0.12); border-color: rgba(230,126,34,0.3); }\\r\\n  .why-card:hover::after { transform: scaleX(1); }\\r\\n\\r\\n  .why-icon-wrap {\\r\\n    width: 54px; height: 54px; border-radius: 14px;\\r\\n    background: var(--spice-light);\\r\\n    display: flex; align-items: center; justify-content: center;\\r\\n    margin-bottom: 20px;\\r\\n  }\\r\\n  .why-icon-wrap svg { width: 24px; height: 24px; }\\r\\n  .why-card-title { font-family: var(--font-display); font-size: 19px; font-weight: 600; color: var(--dark); margin-bottom: 10px; }\\r\\n  .why-card-desc { font-size: 14px; color: var(--text-muted); line-height: 1.7; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 TESTIMONIAL STRIP \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .testimonials {\\r\\n    background: var(--spice-light);\\r\\n    border-top: 1px solid var(--border);\\r\\n    border-bottom: 1px solid var(--border);\\r\\n    padding: 60px 24px;\\r\\n    text-align: center;\\r\\n    overflow: hidden;\\r\\n  }\\r\\n  .testimonials blockquote {\\r\\n    font-family: var(--font-display); font-style: italic;\\r\\n    font-size: clamp(20px, 3vw, 30px);\\r\\n    color: var(--dark); max-width: 700px; margin: 0 auto 20px;\\r\\n    line-height: 1.5;\\r\\n  }\\r\\n  .testimonials cite {\\r\\n    font-size: 13px; color: var(--text-muted); font-style: normal; letter-spacing: 0.08em;\\r\\n  }\\r\\n  .stars { color: var(--spice); font-size: 16px; letter-spacing: 3px; margin-bottom: 18px; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 CTA \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .cta-section { padding: 24px 24px 72px; }\\r\\n  .cta-inner {\\r\\n    max-width: 1000px; margin: auto;\\r\\n    background: var(--dark);\\r\\n    border-radius: 28px;\\r\\n    padding: 80px 48px;\\r\\n    text-align: center;\\r\\n    position: relative; overflow: hidden;\\r\\n  }\\r\\n  .cta-inner::before {\\r\\n    content: \'\';\\r\\n    position: absolute; top: -120px; right: -120px;\\r\\n    width: 400px; height: 400px; border-radius: 50%;\\r\\n    background: radial-gradient(circle, rgba(230,126,34,0.18) 0%, transparent 70%);\\r\\n  }\\r\\n  .cta-inner::after {\\r\\n    content: \'\';\\r\\n    position: absolute; bottom: -100px; left: -80px;\\r\\n    width: 350px; height: 350px; border-radius: 50%;\\r\\n    background: radial-gradient(circle, rgba(230,126,34,0.1) 0%, transparent 70%);\\r\\n  }\\r\\n  .cta-inner .section-label { justify-content: center; margin-bottom: 18px; }\\r\\n  .cta-inner .section-label::before, .cta-inner .section-label::after { background: rgba(230,126,34,0.5); }\\r\\n  .cta-inner h2 {\\r\\n    font-family: var(--font-display);\\r\\n    font-size: clamp(30px, 5vw, 52px);\\r\\n    font-weight: 700; color: #fff; line-height: 1.15;\\r\\n    margin-bottom: 16px; position: relative; z-index: 1;\\r\\n  }\\r\\n  .cta-inner h2 em { font-style: italic; color: var(--spice); }\\r\\n  .cta-inner p { color: rgba(255,255,255,0.6); font-size: 17px; margin-bottom: 40px; position: relative; z-index: 1; }\\r\\n  .cta-inner .cta-btns { display: flex; gap: 14px; justify-content: center; flex-wrap: wrap; position: relative; z-index: 1; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 FOOTER STRIP \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  .footer {\\r\\n    background: var(--dark);\\r\\n    border-top: 1px solid rgba(255,255,255,0.06);\\r\\n    padding: 24px;\\r\\n    text-align: center;\\r\\n    font-size: 13px;\\r\\n    color: rgba(255,255,255,0.3);\\r\\n  }\\r\\n  .footer strong { color: var(--spice); font-weight: 500; }\\r\\n\\r\\n  \\/* \\u2500\\u2500 RESPONSIVE \\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500 *\\/\\r\\n  @media (max-width: 540px) {\\r\\n    .hero-stats { gap: 0; }\\r\\n    .hero-stat { padding: 0 18px; }\\r\\n    .hero-stat strong { font-size: 24px; }\\r\\n    .about { padding: 60px 20px; }\\r\\n    .cta-inner { padding: 50px 24px; }\\r\\n  }\\r\\n<\\/style>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 HERO \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"hero\\\">\\r\\n  <div class=\\\"hero-bg\\\"><\\/div>\\r\\n  <div class=\\\"hero-overlay\\\"><\\/div>\\r\\n  <div class=\\\"hero-ring\\\"><\\/div>\\r\\n  <div class=\\\"hero-ring\\\"><\\/div>\\r\\n  <div class=\\\"hero-ring\\\"><\\/div>\\r\\n\\r\\n  <div class=\\\"hero-content\\\">\\r\\n    <div class=\\\"hero-badge\\\">Est. 2020 &nbsp;\\u00b7&nbsp; Kampala, Uganda<\\/div>\\r\\n    <h1>Welcome to<br><em>Spice Bites<\\/em> Restaurant<\\/h1>\\r\\n    <p class=\\\"hero-sub\\\">A Taste of Flavor in Every Bite<\\/p>\\r\\n    <div class=\\\"hero-actions\\\">\\r\\n      <a href=\\\"#reserve\\\" class=\\\"btn-primary\\\">\\r\\n        <svg width=\\\"16\\\" height=\\\"16\\\" viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\"><rect x=\\\"3\\\" y=\\\"4\\\" width=\\\"18\\\" height=\\\"18\\\" rx=\\\"2\\\"\\/><line x1=\\\"16\\\" y1=\\\"2\\\" x2=\\\"16\\\" y2=\\\"6\\\"\\/><line x1=\\\"8\\\" y1=\\\"2\\\" x2=\\\"8\\\" y2=\\\"6\\\"\\/><line x1=\\\"3\\\" y1=\\\"10\\\" x2=\\\"21\\\" y2=\\\"10\\\"\\/><\\/svg>\\r\\n        Reserve a Table\\r\\n      <\\/a>\\r\\n      <a href=\\\"#menu\\\" class=\\\"btn-ghost\\\">\\r\\n        View Our Menu &rarr;\\r\\n      <\\/a>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"hero-stats\\\">\\r\\n      <div class=\\\"hero-stat\\\"><strong>500+<\\/strong><span>Daily Guests<\\/span><\\/div>\\r\\n      <div class=\\\"hero-stat\\\"><strong>40+<\\/strong><span>Signature Dishes<\\/span><\\/div>\\r\\n      <div class=\\\"hero-stat\\\"><strong>5 \\u2605<\\/strong><span>Guest Rating<\\/span><\\/div>\\r\\n      <div class=\\\"hero-stat\\\"><strong>5 yrs<\\/strong><span>Of Excellence<\\/span><\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n\\r\\n  <div class=\\\"scroll-hint\\\">\\r\\n    <span>Explore<\\/span>\\r\\n    <div class=\\\"scroll-arrow\\\"><\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 ABOUT \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"about\\\">\\r\\n  <div class=\\\"about-image-wrap\\\">\\r\\n    <img src=\\\"images\\/restaurant\\/hero.png\\\" alt=\\\"Spice Bites Restaurant interior\\\" onerror=\\\"this.style.minHeight=\'400px\';this.style.background=\'#2d200e\'\\\">\\r\\n    <div class=\\\"about-image-badge\\\">\\r\\n      <div class=\\\"badge-icon\\\">\\ud83c\\udf7d\\ufe0f<\\/div>\\r\\n      <div class=\\\"badge-text\\\">\\r\\n        <strong>Open Daily<\\/strong>\\r\\n        <span>11:00 AM \\u2013 10:00 PM<\\/span>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n\\r\\n  <div class=\\\"about-text\\\">\\r\\n    <div class=\\\"section-label\\\">Our Story<\\/div>\\r\\n    <h2 class=\\\"section-title\\\">Crafted with Passion,<br><em>Served with Heart<\\/em><\\/h2>\\r\\n    <p class=\\\"about-desc\\\">Experience the perfect blend of taste, aroma, and atmosphere at Spice Bites Restaurant. We bring you a rich selection of freshly prepared meals crafted with passion and the finest locally sourced ingredients \\u2014 a love letter to African flavors.<\\/p>\\r\\n\\r\\n    <div class=\\\"about-features\\\">\\r\\n      <div class=\\\"about-feature\\\">\\r\\n        <div class=\\\"feature-icon\\\">\\ud83c\\udf3f<\\/div>\\r\\n        <div class=\\\"feature-text\\\">\\r\\n          <strong>Farm-Fresh Ingredients<\\/strong>\\r\\n          <span>Locally sourced produce, delivered fresh every morning to our kitchen.<\\/span>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n      <div class=\\\"about-feature\\\">\\r\\n        <div class=\\\"feature-icon\\\">\\ud83d\\udc68\\u200d\\ud83c\\udf73<\\/div>\\r\\n        <div class=\\\"feature-text\\\">\\r\\n          <strong>Master Chefs at Work<\\/strong>\\r\\n          <span>Culinary artisans with years of expertise in African and continental cuisine.<\\/span>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n      <div class=\\\"about-feature\\\">\\r\\n        <div class=\\\"feature-icon\\\">\\u2728<\\/div>\\r\\n        <div class=\\\"feature-text\\\">\\r\\n          <strong>An Atmosphere That Delights<\\/strong>\\r\\n          <span>Warm, cozy settings perfect for families, dates, and celebrations alike.<\\/span>\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 SPECIALTIES \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"specialties\\\" id=\\\"menu\\\">\\r\\n  <div class=\\\"spec-header\\\">\\r\\n    <div class=\\\"section-label\\\" style=\\\"justify-content:center;color:#f5a623;\\\">\\r\\n      <span style=\\\"display:block;width:28px;height:1px;background:#f5a623;\\\"><\\/span>\\r\\n      What We Serve\\r\\n      <span style=\\\"display:block;width:28px;height:1px;background:#f5a623;\\\"><\\/span>\\r\\n    <\\/div>\\r\\n    <h2 class=\\\"section-title\\\">Our <em>Specialties<\\/em><\\/h2>\\r\\n    <p>Every dish tells a story \\u2014 prepared fresh daily with bold flavors and the finest spices<\\/p>\\r\\n  <\\/div>\\r\\n\\r\\n  <div class=\\\"spec-grid\\\">\\r\\n    <div class=\\\"spec-card\\\">\\r\\n      <div class=\\\"spec-img-wrap\\\">\\r\\n        <img class=\\\"spec-img\\\" src=\\\"images\\/restaurant\\/grilled.png\\\" alt=\\\"Grilled Chicken\\\">\\r\\n      <\\/div>\\r\\n      <div class=\\\"spec-body\\\">\\r\\n        <span class=\\\"spec-tag\\\">Signature<\\/span>\\r\\n        <div class=\\\"spec-name\\\">Grilled Chicken & BBQ<\\/div>\\r\\n        <div class=\\\"spec-desc\\\">Smoky, tender cuts slow-grilled over charcoal and finished in our house BBQ marinade.<\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"spec-card\\\">\\r\\n      <div class=\\\"spec-img-wrap\\\">\\r\\n        <img class=\\\"spec-img\\\" src=\\\"images\\/restaurant\\/african.png\\\" alt=\\\"African Dishes\\\">\\r\\n      <\\/div>\\r\\n      <div class=\\\"spec-body\\\">\\r\\n        <span class=\\\"spec-tag\\\">Traditional<\\/span>\\r\\n        <div class=\\\"spec-name\\\">African Local Dishes<\\/div>\\r\\n        <div class=\\\"spec-desc\\\">Authentic East African recipes passed down through generations \\u2014 comforting and deeply flavorful.<\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"spec-card\\\">\\r\\n      <div class=\\\"spec-img-wrap\\\">\\r\\n        <img class=\\\"spec-img\\\" src=\\\"images\\/restaurant\\/juice.png\\\" alt=\\\"Fresh Juices\\\">\\r\\n      <\\/div>\\r\\n      <div class=\\\"spec-body\\\">\\r\\n        <span class=\\\"spec-tag\\\">Beverages<\\/span>\\r\\n        <div class=\\\"spec-name\\\">Fresh Tropical Juices<\\/div>\\r\\n        <div class=\\\"spec-desc\\\">Cold-pressed blends of mango, passion fruit, watermelon and more \\u2014 seasonal and always fresh.<\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"spec-card\\\">\\r\\n      <div class=\\\"spec-img-wrap\\\">\\r\\n        <img class=\\\"spec-img\\\" src=\\\"images\\/restaurant\\/dessert.png\\\" alt=\\\"Desserts\\\">\\r\\n      <\\/div>\\r\\n      <div class=\\\"spec-body\\\">\\r\\n        <span class=\\\"spec-tag\\\">Desserts<\\/span>\\r\\n        <div class=\\\"spec-name\\\">Indulgent Desserts<\\/div>\\r\\n        <div class=\\\"spec-desc\\\">House-baked sweets and chilled treats crafted to give your meal the perfect sweet finale.<\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 WHY \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"why\\\">\\r\\n  <div class=\\\"why-header\\\">\\r\\n    <div class=\\\"section-label\\\" style=\\\"justify-content:center;\\\">\\r\\n      Why Spice Bites\\r\\n    <\\/div>\\r\\n    <h2 class=\\\"section-title\\\">A Dining Experience<br><em>Like No Other<\\/em><\\/h2>\\r\\n    <p>From your first visit to your hundredth, we make every meal memorable<\\/p>\\r\\n  <\\/div>\\r\\n\\r\\n  <div class=\\\"why-grid\\\">\\r\\n    <div class=\\\"why-card\\\">\\r\\n      <div class=\\\"why-icon-wrap\\\">\\r\\n        <svg viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"#e67e22\\\" stroke-width=\\\"1.8\\\" stroke-linecap=\\\"round\\\"><path d=\\\"M12 2a10 10 0 100 20 10 10 0 000-20z\\\"\\/><path d=\\\"M8 12l3 3 5-5\\\"\\/><\\/svg>\\r\\n      <\\/div>\\r\\n      <div class=\\\"why-card-title\\\">Fresh, Quality Ingredients<\\/div>\\r\\n      <div class=\\\"why-card-desc\\\">We source locally and prepare daily so every dish bursts with natural flavor you can taste in every bite.<\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"why-card\\\">\\r\\n      <div class=\\\"why-icon-wrap\\\">\\r\\n        <svg viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"#e67e22\\\" stroke-width=\\\"1.8\\\" stroke-linecap=\\\"round\\\"><path d=\\\"M12 2l3 6.5 7 1-5 5 1.2 7L12 18l-6.2 3.5L7 14.5 2 9.5l7-1z\\\"\\/><\\/svg>\\r\\n      <\\/div>\\r\\n      <div class=\\\"why-card-title\\\">Experienced Chefs<\\/div>\\r\\n      <div class=\\\"why-card-desc\\\">Our culinary team brings years of mastery to every plate \\u2014 blending tradition with creative flair.<\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"why-card\\\">\\r\\n      <div class=\\\"why-icon-wrap\\\">\\r\\n        <svg viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"#e67e22\\\" stroke-width=\\\"1.8\\\" stroke-linecap=\\\"round\\\"><path d=\\\"M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z\\\"\\/><polyline points=\\\"9 22 9 12 15 12 15 22\\\"\\/><\\/svg>\\r\\n      <\\/div>\\r\\n      <div class=\\\"why-card-title\\\">Cozy Atmosphere<\\/div>\\r\\n      <div class=\\\"why-card-desc\\\">A warm, inviting setting designed for intimate dinners, lively family gatherings, and every moment in between.<\\/div>\\r\\n    <\\/div>\\r\\n\\r\\n    <div class=\\\"why-card\\\">\\r\\n      <div class=\\\"why-icon-wrap\\\">\\r\\n        <svg viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"#e67e22\\\" stroke-width=\\\"1.8\\\" stroke-linecap=\\\"round\\\"><circle cx=\\\"12\\\" cy=\\\"12\\\" r=\\\"10\\\"\\/><path d=\\\"M12 6v6l4 2\\\"\\/><\\/svg>\\r\\n      <\\/div>\\r\\n      <div class=\\\"why-card-title\\\">Fast & Friendly Service<\\/div>\\r\\n      <div class=\\\"why-card-desc\\\">Attentive staff who treat every guest like family, ensuring your experience is seamless from arrival to dessert.<\\/div>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 TESTIMONIAL \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"testimonials\\\">\\r\\n  <div class=\\\"stars\\\">\\u2605\\u2605\\u2605\\u2605\\u2605<\\/div>\\r\\n  <blockquote>\\\"The food took me back home. The flavors, the warmth, the atmosphere \\u2014 Spice Bites is truly special.\\\"<\\/blockquote>\\r\\n  <cite>\\u2014 Amara N., Kampala<\\/cite>\\r\\n<\\/section>\\r\\n\\r\\n<!-- \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 CTA \\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550 -->\\r\\n<section class=\\\"cta-section\\\" id=\\\"reserve\\\">\\r\\n  <div class=\\\"cta-inner\\\">\\r\\n    <div class=\\\"section-label\\\">Book Your Seat<\\/div>\\r\\n    <h2>Reserve Your Table <em>Today<\\/em><\\/h2>\\r\\n    <p>Join hundreds of guests who make Spice Bites their favourite dining destination in Kampala<\\/p>\\r\\n    <div class=\\\"cta-btns\\\">\\r\\n      <a href=\\\"#\\\" class=\\\"btn-primary\\\" style=\\\"font-size:16px;padding:16px 38px;\\\">\\r\\n        <svg width=\\\"16\\\" height=\\\"16\\\" viewBox=\\\"0 0 24 24\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\"><rect x=\\\"3\\\" y=\\\"4\\\" width=\\\"18\\\" height=\\\"18\\\" rx=\\\"2\\\"\\/><line x1=\\\"16\\\" y1=\\\"2\\\" x2=\\\"16\\\" y2=\\\"6\\\"\\/><line x1=\\\"8\\\" y1=\\\"2\\\" x2=\\\"8\\\" y2=\\\"6\\\"\\/><line x1=\\\"3\\\" y1=\\\"10\\\" x2=\\\"21\\\" y2=\\\"10\\\"\\/><\\/svg>\\r\\n        Book a Table\\r\\n      <\\/a>\\r\\n      <a href=\\\"#\\\" class=\\\"btn-ghost\\\" style=\\\"font-size:16px;padding:16px 38px;border-color:rgba(255,255,255,0.25);\\\">\\r\\n        \\ud83d\\udcde &nbsp;Call Us Now\\r\\n      <\\/a>\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n<\\/section>\\r\\n<\\/body>\\r\\n<\\/html>\\r\\n\",\"fulltext\":\"\",\"ordering\":0}', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sb_languages`
--

CREATE TABLE `sb_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_languages`
--

INSERT INTO `sb_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sb_mail_templates`
--

CREATE TABLE `sb_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_mail_templates`
--

INSERT INTO `sb_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification', 'com_actionlogs', '', 'COM_ACTIONLOGS_EMAIL_SUBJECT', 'COM_ACTIONLOGS_EMAIL_BODY', 'COM_ACTIONLOGS_EMAIL_HTMLBODY', '', '{\"tags\":[\"messages\",\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail', 'com_config', '', 'COM_CONFIG_SENDMAIL_SUBJECT', 'COM_CONFIG_SENDMAIL_BODY', '', '', '{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail', 'com_contact', '', 'COM_CONTACT_ENQUIRY_SUBJECT', 'COM_CONTACT_ENQUIRY_TEXT', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy', 'com_contact', '', 'COM_CONTACT_COPYSUBJECT_OF', 'COM_CONTACT_COPYTEXT_OF', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_joomlaupdate.update.failed', 'com_joomlaupdate', '', 'COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_SUBJECT', 'COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"oldversion\",\"sitename\",\"url\"]}'),
('com_joomlaupdate.update.success', 'com_joomlaupdate', '', 'COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_SUBJECT', 'COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"oldversion\",\"sitename\",\"url\"]}'),
('com_messages.new_message', 'com_messages', '', 'COM_MESSAGES_NEW_MESSAGE', 'COM_MESSAGES_NEW_MESSAGE_BODY', '', '', '{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport', 'com_privacy', '', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY', '', '', '{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail', 'com_users', '', 'COM_USERS_MASSMAIL_MAIL_SUBJECT', 'COM_USERS_MASSMAIL_MAIL_BODY', '', '', '{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset', 'com_users', '', 'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT', 'COM_USERS_EMAIL_PASSWORD_RESET_BODY', '', '', '{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder', 'com_users', '', 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', '', '', '{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_content_joomla.newarticle', 'plg_content_joomla', '', 'PLG_CONTENT_JOOMLA_NEW_ARTICLE_SUBJECT', 'PLG_CONTENT_JOOMLA_NEW_ARTICLE_BODY', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"title\",\"url\"]}'),
('plg_multifactorauth_email.mail', 'plg_multifactorauth_email', '', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY', '', '', '{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder', 'plg_task_privacyconsent', '', 'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT', 'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail', 'plg_task_updatenotification', '', 'PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT', 'PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail', 'plg_user_joomla', '', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `sb_menu`
--

CREATE TABLE `sb_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_menu`
--

INSERT INTO `sb_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, NULL, NULL, 0, 0, '', 0, '', 0, 65, 0, '*', 0, NULL, NULL),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 3, NULL, NULL, 0, 0, 'class:bookmark', 0, '', 1, 10, 0, '*', 1, NULL, NULL),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners&view=banners', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1, NULL, NULL),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&view=categories&extension=com_banners', 'component', 1, 2, 2, 5, NULL, NULL, 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1, NULL, NULL),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1, NULL, NULL),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1, NULL, NULL),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 7, NULL, NULL, 0, 0, 'class:address-book', 0, '', 11, 20, 0, '*', 1, NULL, NULL),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact&view=contacts', 'component', 1, 7, 2, 7, NULL, NULL, 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1, NULL, NULL),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&view=categories&extension=com_contact', 'component', 1, 7, 2, 5, NULL, NULL, 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1, NULL, NULL),
(10, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 16, NULL, NULL, 0, 0, 'class:rss', 0, '', 23, 28, 0, '*', 1, NULL, NULL),
(11, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds&view=newsfeeds', 'component', 1, 10, 2, 16, NULL, NULL, 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1, NULL, NULL),
(12, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&view=categories&extension=com_newsfeeds', 'component', 1, 10, 2, 5, NULL, NULL, 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1, NULL, NULL),
(13, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 23, NULL, NULL, 0, 0, 'class:search-plus', 0, '', 29, 38, 0, '*', 1, NULL, NULL),
(14, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags&view=tags', 'component', 1, 1, 1, 25, NULL, NULL, 0, 1, 'class:tags', 0, '', 39, 40, 0, '', 1, NULL, NULL),
(15, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations&view=associations', 'component', 1, 1, 1, 30, NULL, NULL, 0, 0, 'class:language', 0, '', 21, 22, 0, '*', 1, NULL, NULL),
(16, 'main', 'mod_menu_fields', 'Contact Custom Fields', '', 'Contacts/Contact Custom Fields', 'index.php?option=com_fields&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 16, 17, 0, '*', 1, NULL, NULL),
(17, 'main', 'mod_menu_fields_group', 'Contact Custom Fields Group', '', 'Contacts/Contact Custom Fields Group', 'index.php?option=com_fields&view=groups&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1, NULL, NULL),
(18, 'main', 'com_finder_index', 'Smart-Search-Index', '', 'Smart Search/Smart-Search-Index', 'index.php?option=com_finder&view=index', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder', 0, '', 30, 31, 0, '*', 1, NULL, NULL),
(19, 'main', 'com_finder_maps', 'Smart-Search-Maps', '', 'Smart Search/Smart-Search-Maps', 'index.php?option=com_finder&view=maps', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-maps', 0, '', 32, 33, 0, '*', 1, NULL, NULL),
(20, 'main', 'com_finder_filters', 'Smart-Search-Filters', '', 'Smart Search/Smart-Search-Filters', 'index.php?option=com_finder&view=filters', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-filters', 0, '', 34, 35, 0, '*', 1, NULL, NULL),
(21, 'main', 'com_finder_searches', 'Smart-Search-Searches', '', 'Smart Search/Smart-Search-Searches', 'index.php?option=com_finder&view=searches', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-searches', 0, '', 36, 37, 0, '*', 1, NULL, NULL),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 0, 1, 1, 19, NULL, NULL, 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"blog_class_leading\":\"\",\"blog_class\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_links\":\"0\",\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 41, 42, 0, '*', 0, NULL, NULL),
(102, 'mainmenu', 'HOME', 'index', '', 'index', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 43, 44, 1, '*', 0, NULL, NULL),
(107, 'main', 'COM_RESTAURANTMANAGER', 'com-restaurantmanager', '', 'com-restaurantmanager', 'index.php?option=com_restaurantmanager', 'component', 1, 1, 1, 251, NULL, NULL, 0, 1, 'icon-food', 0, '{}', 45, 52, 0, '', 1, NULL, NULL),
(108, 'main', 'COM_RESTAURANTMANAGER_CASHIER', 'com-restaurantmanager-cashier', '', 'com-restaurantmanager/com-restaurantmanager-cashier', 'index.php?option=com_restaurantmanager&view=cashier', 'component', 1, 107, 2, 251, NULL, NULL, 0, 1, 'icon-cash-register', 0, '{}', 46, 47, 0, '', 1, NULL, NULL),
(109, 'main', 'COM_RESTAURANTMANAGER_MENU', 'com-restaurantmanager-menu', '', 'com-restaurantmanager/com-restaurantmanager-menu', 'index.php?option=com_restaurantmanager&view=menu', 'component', 1, 107, 2, 251, NULL, NULL, 0, 1, 'icon-list', 0, '{}', 48, 49, 0, '', 1, NULL, NULL),
(110, 'main', 'COM_RESTAURANTMANAGER_REPORTS', 'com-restaurantmanager-reports', '', 'com-restaurantmanager/com-restaurantmanager-reports', 'index.php?option=com_restaurantmanager&view=reports', 'component', 1, 107, 2, 251, NULL, NULL, 0, 1, 'icon-chart', 0, '{}', 50, 51, 0, '', 1, NULL, NULL),
(111, 'main', 'COM_GANTRY5', 'com-gantry5', '', 'com-gantry5', 'index.php?option=com_gantry5', 'component', 1, 1, 1, 262, NULL, NULL, 0, 1, 'class:component', 0, '{}', 53, 58, 0, '', 1, NULL, NULL),
(112, 'main', 'COM_GANTRY5_ADMIN_MENU_THEMES', 'com-gantry5-admin-menu-themes', '', 'com-gantry5/com-gantry5-admin-menu-themes', 'index.php?option=com_gantry5&view=themes', 'component', 1, 111, 2, 262, NULL, NULL, 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1, NULL, NULL),
(113, 'main', 'COM_GANTRY5_ADMIN_MENU_THEME', 'com-gantry5-admin-menu-theme', '', 'com-gantry5/com-gantry5-admin-menu-theme', 'index.php?option=com_gantry5', 'component', 1, 111, 2, 262, NULL, NULL, 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1, NULL, NULL),
(114, 'redchili-theme', 'Home', 'redchili', '', 'redchili', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 262, NULL, NULL, 0, 1, ' ', 17, '{}', 59, 60, 0, '*', 0, NULL, NULL),
(115, 'mainmenu', 'ABOUT', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"gantry\":1,\"gantry-dropdown_dir\":\"right\",\"gantry-width\":\"auto\",\"gantry-layout\":\"list\",\"gantry-visible\":true,\"gantry-columns\":\"[]\",\"gantry-columns_count\":\"[]\",\"gantry-options\":\"[]\"}', 61, 62, 0, '*', 0, NULL, NULL),
(116, 'mainmenu', 'CONTACT', 'contact-us', '', 'contact-us', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"gantry\":1,\"gantry-dropdown_dir\":\"right\",\"gantry-width\":\"auto\",\"gantry-layout\":\"list\",\"gantry-visible\":true,\"gantry-columns\":\"[]\",\"gantry-columns_count\":\"[]\",\"gantry-options\":\"[]\"}', 63, 64, 0, '*', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_menu_types`
--

CREATE TABLE `sb_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_menu_types`
--

INSERT INTO `sb_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`, `ordering`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0, 1),
(2, 107, 'redchili-theme', 'Redchili Theme', 'Sample menu for the theme.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sb_messages`
--

CREATE TABLE `sb_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_messages_cfg`
--

CREATE TABLE `sb_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_modules`
--

CREATE TABLE `sb_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_modules`
--

INSERT INTO `sb_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 6, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', NULL, NULL, NULL, NULL, 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Notifications', '', '', 3, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 3, 1, '{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', NULL, NULL, NULL, NULL, 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'breadcrumbs', NULL, NULL, NULL, NULL, 0, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 2, 'status', NULL, NULL, NULL, NULL, 1, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_version', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 1, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_sampledata', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(88, 67, 'Latest Actions', '', '', 3, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latestactions', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(89, 68, 'Privacy Dashboard', '', '', 5, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(90, 89, 'Login Support', '', '', 1, 'sidebar', NULL, NULL, NULL, NULL, 1, 'mod_loginsupport', 1, 1, '{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(91, 72, 'System Dashboard', '', '', 1, 'cpanel-system', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(92, 73, 'Content Dashboard', '', '', 1, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(93, 74, 'Menus Dashboard', '', '', 1, 'cpanel-menus', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(94, 75, 'Components Dashboard', '', '', 1, 'cpanel-components', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(95, 76, 'Users Dashboard', '', '', 1, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(96, 86, 'Popular Articles', '', '', 3, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(97, 87, 'Recently Added Articles', '', '', 4, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(98, 88, 'Logged-in Users', '', '', 2, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(99, 77, 'Frontend Link', '', '', 5, 'status', NULL, NULL, NULL, NULL, 1, 'mod_frontend', 1, 1, '', 1, '*'),
(100, 78, 'Messages', '', '', 4, 'status', NULL, NULL, NULL, NULL, 1, 'mod_messages', 3, 1, '', 1, '*'),
(101, 79, 'Post Install Messages', '', '', 3, 'status', NULL, NULL, NULL, NULL, 1, 'mod_post_installation_messages', 3, 1, '', 1, '*'),
(102, 80, 'User Status', '', '', 6, 'status', NULL, NULL, NULL, NULL, 1, 'mod_user', 3, 1, '', 1, '*'),
(103, 70, 'Site', '', '', 1, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(104, 71, 'System', '', '', 2, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(105, 82, '3rd Party', '', '', 4, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(106, 83, 'Help Dashboard', '', '', 1, 'cpanel-help', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(107, 84, 'Privacy Requests', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(108, 85, 'Privacy Status', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_status', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(109, 96, 'Guided Tours', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_guidedtours', 1, 1, '', 1, '*'),
(110, 103, 'Import Content', '', '', 1, '', NULL, NULL, NULL, NULL, 0, 'mod_ttcontent', 1, 1, '', 1, '*'),
(111, 104, 'mod_jdsimplecontactform', '', '', 2, '', NULL, NULL, NULL, NULL, 0, 'mod_jdsimplecontactform', 1, 1, '', 0, '*'),
(112, 105, 'Gantry 5 Particle', '', '', 3, '', NULL, NULL, NULL, NULL, 0, 'mod_gantry5_particle', 1, 1, '', 0, '*'),
(113, 111, 'gallery', '', '<style>\r\n.slider {\r\n  position: relative;\r\n  width: 100%;\r\n  height: 400px;\r\n  overflow: hidden;\r\n}\r\n\r\n.slides {\r\n  display: flex;\r\n  width: 300%;\r\n  animation: slide 12s infinite;\r\n}\r\n\r\n.slides img {\r\n  width: 100%;\r\n  height: 400px;\r\n  object-fit: cover;\r\n}\r\n\r\n@keyframes slide {\r\n  0% { margin-left: 0; }\r\n  33% { margin-left: -100%; }\r\n  66% { margin-left: -200%; }\r\n  100% { margin-left: 0; }\r\n}\r\n</style>\r\n\r\n<div class=\"slider\">\r\n  <div class=\"slides\">\r\n    <img src=\"images/restaurant/slide1.jpg\" />\r\n    <img src=\"images/restaurant/slide4.jpg\" />\r\n    <img src=\"images/restaurant/slide3.jpg\" />\r\n<img src=\"images/restaurant/slide2.jpg\" />\r\n  </div>\r\n</div>', 1, 'breadcrumbs', NULL, NULL, NULL, NULL, 1, 'mod_custom', 1, 1, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `sb_modules_menu`
--

CREATE TABLE `sb_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_modules_menu`
--

INSERT INTO `sb_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(113, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sb_newsfeeds`
--

CREATE TABLE `sb_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_overrider`
--

CREATE TABLE `sb_overrider` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_postinstall_messages`
--

CREATE TABLE `sb_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_postinstall_messages`
--

INSERT INTO `sb_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 246, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(2, 246, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(3, 246, 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION', 'plg_system_httpheaders', 1, 'action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_condition', '4.0.0', 1),
(4, 246, 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION', 'com_users', 1, 'action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_condition', '4.2.0', 1),
(5, 246, 'COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_TITLE', 'COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_DESCRIPTION', 'COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_ACTION', 'com_joomlaupdate', 1, 'action', 'admin://components/com_joomlaupdate/postinstall/autoupdate.php', 'com_joomlaupdate_postinstall_autoupdate_action', 'admin://components/com_joomlaupdate/postinstall/autoupdate.php', 'com_joomlaupdate_postinstall_autoupdate_condition', '5.4.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sb_privacy_consents`
--

CREATE TABLE `sb_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_privacy_requests`
--

CREATE TABLE `sb_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_redirect_links`
--

CREATE TABLE `sb_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_restaurantmanager_menu`
--

CREATE TABLE `sb_restaurantmanager_menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `item_number` int(11) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `item_description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_restaurantmanager_menu`
--

INSERT INTO `sb_restaurantmanager_menu` (`id`, `item_number`, `item_name`, `item_price`, `item_description`, `is_active`, `ordering`, `checked_out`, `checked_out_time`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 100, 'Antipasto Misto', 8.50, 'Mixed Italian appetizers', 1, 1, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(2, 101, 'Bruschetta al Pomodoro', 6.00, 'Toasted bread with tomatoes and basil', 1, 2, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(3, 102, 'Caprese', 7.50, 'Fresh mozzarella, tomatoes and basil', 1, 3, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(4, 103, 'Carpaccio di Manzo', 12.00, 'Beef carpaccio with arugula and parmesan', 1, 4, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(5, 104, 'Prosciutto e Melone', 9.00, 'Prosciutto with melon', 1, 5, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(6, 105, 'Vitello Tonnato', 11.00, 'Veal with tuna sauce', 1, 6, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(7, 106, 'Insalata di Mare', 13.50, 'Seafood salad', 1, 7, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(8, 107, 'Caponata Siciliana', 7.00, 'Sicilian eggplant dish', 1, 8, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(9, 108, 'Crostini ai Funghi', 8.00, 'Mushroom crostini', 1, 9, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(10, 109, 'Burrata con Pomodorini', 10.50, 'Burrata with cherry tomatoes', 1, 10, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(11, 110, 'Salmone Affumicato', 12.00, 'Smoked salmon', 1, 11, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(12, 111, 'Tartare di Tonno', 14.00, 'Tuna tartare', 1, 12, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(13, 112, 'Bresaola Rucola e Grana', 11.00, 'Bresaola with arugula and parmesan', 1, 13, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(14, 113, 'Insalata di Polpo', 13.00, 'Octopus salad', 1, 14, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(15, 114, 'Affettati Misti', 10.00, 'Mixed cold cuts', 1, 15, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(16, 115, 'Formaggi Misti', 12.00, 'Mixed cheese platter', 1, 16, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(17, 116, 'Alici Marinate', 8.50, 'Marinated anchovies', 1, 17, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(18, 117, 'Carpaccio di Pesce Spada', 13.00, 'Swordfish carpaccio', 1, 18, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(19, 118, 'Mousse di Salmone', 9.50, 'Salmon mousse', 1, 19, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(20, 119, 'Insalata Capricciosa', 8.00, 'Mixed salad with tuna', 1, 20, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(21, 120, 'Arancini Siciliani', 7.00, 'Sicilian rice balls', 1, 21, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(22, 121, 'Supplì Romani', 6.50, 'Roman fried rice balls', 1, 22, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(23, 122, 'Frittura di Paranza', 14.00, 'Mixed fried fish', 1, 23, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(24, 123, 'Polpette al Sugo', 8.00, 'Meatballs in tomato sauce', 1, 24, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(25, 124, 'Cozze alla Marinara', 9.00, 'Mussels marinara', 1, 25, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(26, 125, 'Vongole al Vino Bianco', 11.00, 'Clams in white wine', 1, 26, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(27, 126, 'Fiori di Zucca Fritti', 8.50, 'Fried zucchini flowers', 1, 27, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(28, 127, 'Olive Ascolane', 7.00, 'Stuffed fried olives', 1, 28, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(29, 128, 'Carciofi alla Romana', 8.00, 'Roman style artichokes', 1, 29, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(30, 129, 'Cozze Gratinate', 9.50, 'Gratin mussels', 1, 30, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(31, 130, 'Gamberi all\'Aglio', 13.00, 'Garlic shrimp', 1, 31, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(32, 131, 'Calamari Fritti', 11.00, 'Fried calamari', 1, 32, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(33, 132, 'Melanzane alla Parmigiana', 8.50, 'Eggplant parmesan', 1, 33, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(34, 133, 'Peperoni Ripieni', 8.00, 'Stuffed peppers', 1, 34, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(35, 134, 'Funghi Porcini Trifolati', 9.00, 'Sautéed porcini mushrooms', 1, 35, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(36, 135, 'Zucchine alla Scapece', 7.50, 'Marinated zucchini', 1, 36, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(37, 136, 'Baccalà Mantecato', 10.00, 'Creamed cod', 1, 37, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(38, 137, 'Sarde in Saor', 9.00, 'Sweet and sour sardines', 1, 38, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(39, 138, 'Frittata di Verdure', 7.00, 'Vegetable frittata', 1, 39, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(40, 139, 'Panzerotti Fritti', 8.00, 'Fried calzones', 1, 40, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(41, 140, 'Spaghetti Carbonara', 12.00, 'Traditional Roman pasta', 1, 41, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(42, 141, 'Spaghetti alle Vongole', 13.50, 'Spaghetti with clams', 1, 42, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(43, 142, 'Spaghetti allo Scoglio', 15.00, 'Spaghetti with mixed seafood', 1, 43, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(44, 143, 'Spaghetti Cacio e Pepe', 11.00, 'Pecorino and black pepper pasta', 1, 44, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(45, 144, 'Spaghetti all\'Amatriciana', 11.50, 'Tomato and bacon pasta', 1, 45, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(46, 145, 'Penne all\'Arrabbiata', 10.00, 'Spicy tomato sauce pasta', 1, 46, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(47, 146, 'Penne alla Vodka', 11.00, 'Vodka cream sauce pasta', 1, 47, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(48, 147, 'Penne ai Quattro Formaggi', 12.00, 'Four cheese pasta', 1, 48, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(49, 148, 'Rigatoni alla Carbonara', 12.00, 'Carbonara with rigatoni', 1, 49, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(50, 149, 'Rigatoni con la Pajata', 13.00, 'Roman veal intestine pasta', 1, 50, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(51, 150, 'Bucatini all\'Amatriciana', 12.00, 'Amatriciana with bucatini', 1, 51, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(52, 151, 'Bucatini Cacio e Pepe', 11.00, 'Cacio e pepe with bucatini', 1, 52, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(53, 152, 'Fettuccine Alfredo', 11.00, 'Fettuccine with cream sauce', 1, 53, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(54, 153, 'Fettuccine ai Funghi Porcini', 13.00, 'Fettuccine with porcini', 1, 54, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(55, 154, 'Tagliatelle al Ragù', 12.50, 'Pasta with Bolognese sauce', 1, 55, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(56, 155, 'Tagliatelle al Tartufo', 18.00, 'Tagliatelle with truffle', 1, 56, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(57, 156, 'Pappardelle al Cinghiale', 14.00, 'Wide pasta with wild boar', 1, 57, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(58, 157, 'Pappardelle ai Funghi', 12.00, 'Pappardelle with mushrooms', 1, 58, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(59, 158, 'Orecchiette con Cime di Rapa', 11.50, 'Orecchiette with turnip greens', 1, 59, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(60, 159, 'Trofie al Pesto', 11.00, 'Trofie with basil pesto', 1, 60, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(61, 160, 'Linguine ai Frutti di Mare', 14.00, 'Linguine with seafood', 1, 61, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(62, 161, 'Linguine all\'Astice', 22.00, 'Linguine with lobster', 1, 62, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(63, 162, 'Paccheri alla Sorrentina', 12.50, 'Paccheri with mozzarella', 1, 63, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(64, 163, 'Paccheri con Polpo', 15.00, 'Paccheri with octopus', 1, 64, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(65, 164, 'Lasagne al Forno', 11.50, 'Homemade meat lasagne', 1, 65, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(66, 165, 'Lasagne Vegetariane', 11.00, 'Vegetarian lasagne', 1, 66, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(67, 166, 'Cannelloni Ricotta e Spinaci', 11.00, 'Ricotta and spinach cannelloni', 1, 67, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(68, 167, 'Ravioli Ricotta e Spinaci', 11.50, 'Ricotta and spinach ravioli', 1, 68, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(69, 168, 'Tortellini in Brodo', 10.00, 'Tortellini in broth', 1, 69, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(70, 169, 'Tortellini Panna e Prosciutto', 12.00, 'Tortellini with cream and ham', 1, 70, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(71, 170, 'Risotto alla Milanese', 12.00, 'Saffron risotto', 1, 71, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(72, 171, 'Risotto ai Funghi Porcini', 13.00, 'Porcini mushroom risotto', 1, 72, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(73, 172, 'Risotto ai Frutti di Mare', 15.00, 'Seafood risotto', 1, 73, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(74, 173, 'Risotto agli Asparagi', 12.00, 'Asparagus risotto', 1, 74, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(75, 174, 'Risotto al Radicchio', 11.50, 'Radicchio risotto', 1, 75, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(76, 175, 'Risotto alla Zucca', 11.00, 'Pumpkin risotto', 1, 76, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(77, 176, 'Risotto al Nero di Seppia', 13.50, 'Black squid ink risotto', 1, 77, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(78, 177, 'Risotto allo Scoglio', 15.00, 'Mixed seafood risotto', 1, 78, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(79, 178, 'Minestrone', 8.00, 'Vegetable soup', 1, 79, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(80, 179, 'Pasta e Fagioli', 9.00, 'Pasta and beans soup', 1, 80, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(81, 180, 'Pasta e Ceci', 9.00, 'Pasta and chickpeas soup', 1, 81, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(82, 181, 'Zuppa di Pesce', 16.00, 'Fish soup', 1, 82, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(83, 182, 'Ribollita Toscana', 9.50, 'Tuscan bread soup', 1, 83, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(84, 183, 'Stracciatella Romana', 8.00, 'Roman egg drop soup', 1, 84, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(85, 184, 'Zuppa di Lenticchie', 8.50, 'Lentil soup', 1, 85, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(86, 185, 'Zuppa di Farro', 9.00, 'Spelt soup', 1, 86, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(87, 186, 'Crema di Zucca', 8.00, 'Pumpkin cream soup', 1, 87, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(88, 187, 'Vellutata di Funghi', 8.50, 'Mushroom cream soup', 1, 88, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(89, 188, 'Zuppa di Cipolle', 8.00, 'Onion soup', 1, 89, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(90, 189, 'Acquacotta', 9.00, 'Tuscan vegetable soup', 1, 90, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(91, 190, 'Pizza Margherita', 9.00, 'Classic tomato and mozzarella pizza', 1, 91, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(92, 191, 'Pizza Marinara', 8.00, 'Tomato, garlic, oregano', 1, 92, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(93, 192, 'Pizza Napoli', 9.50, 'Tomato, mozzarella, anchovies', 1, 93, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(94, 193, 'Pizza Quattro Stagioni', 11.00, 'Four seasons pizza', 1, 94, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(95, 194, 'Pizza Capricciosa', 11.50, 'Ham, mushrooms, artichokes, olives', 1, 95, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(96, 195, 'Pizza Diavola', 10.50, 'Spicy salami pizza', 1, 96, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(97, 196, 'Pizza Prosciutto e Funghi', 10.50, 'Ham and mushroom pizza', 1, 97, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(98, 197, 'Pizza Quattro Formaggi', 12.00, 'Four cheese pizza', 1, 98, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(99, 198, 'Pizza Bufala', 13.00, 'Buffalo mozzarella pizza', 1, 99, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(100, 199, 'Pizza Vegetariana', 10.00, 'Vegetable pizza', 1, 100, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(101, 200, 'Pizza Prosciutto Crudo', 12.00, 'Raw ham pizza', 1, 101, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(102, 201, 'Pizza Salsiccia', 10.50, 'Sausage pizza', 1, 102, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(103, 202, 'Pizza Tonno e Cipolla', 11.00, 'Tuna and onion pizza', 1, 103, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(104, 203, 'Pizza Boscaiola', 12.00, 'Mushroom and sausage pizza', 1, 104, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(105, 204, 'Pizza Ortolana', 11.00, 'Garden vegetables pizza', 1, 105, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(106, 205, 'Pizza Frutti di Mare', 14.00, 'Seafood pizza', 1, 106, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(107, 206, 'Pizza Carbonara', 12.50, 'Carbonara pizza', 1, 107, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(108, 207, 'Pizza Tirolese', 12.00, 'Tyrol style pizza', 1, 108, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(109, 208, 'Pizza Parmigiana', 11.50, 'Eggplant pizza', 1, 109, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(110, 209, 'Pizza Contadina', 11.50, 'Farmer pizza', 1, 110, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(111, 210, 'Pizza Salsiccia e Friarielli', 12.50, 'Sausage and broccoli rabe pizza', 1, 111, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(112, 211, 'Pizza Bresaola e Rucola', 13.00, 'Bresaola and arugula pizza', 1, 112, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(113, 212, 'Pizza Gorgonzola e Noci', 12.00, 'Gorgonzola and walnut pizza', 1, 113, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(114, 213, 'Pizza Provola e Pepe', 11.50, 'Smoked cheese and pepper pizza', 1, 114, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(115, 214, 'Pizza Nduja', 12.00, 'Spicy spreadable salami pizza', 1, 115, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(116, 215, 'Pizza Mortadella', 11.50, 'Mortadella pizza', 1, 116, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(117, 216, 'Pizza Speck e Brie', 13.00, 'Speck and brie pizza', 1, 117, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(118, 217, 'Pizza Salmone', 14.00, 'Smoked salmon pizza', 1, 118, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(119, 218, 'Pizza Gamberetti', 15.00, 'Shrimp pizza', 1, 119, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(120, 219, 'Pizza Scoglio', 16.00, 'Mixed seafood pizza', 1, 120, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(121, 220, 'Pizza Tartufata', 16.00, 'Truffle pizza', 1, 121, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(122, 221, 'Pizza Caprese', 12.00, 'Fresh tomato and basil pizza', 1, 122, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(123, 222, 'Pizza Cotto e Funghi', 11.00, 'Cooked ham and mushroom', 1, 123, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(124, 223, 'Pizza Wurstel e Patatine', 10.00, 'Hot dog and fries pizza', 1, 124, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(125, 224, 'Pizza Americana', 11.50, 'Hot dog and french fries', 1, 125, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(126, 225, 'Pizza Calzone', 11.00, 'Folded pizza with ham', 1, 126, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(127, 226, 'Pizza Siciliana', 12.00, 'Sicilian style pizza', 1, 127, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(128, 227, 'Pizza Pugliese', 11.50, 'Onion and olive pizza', 1, 128, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(129, 228, 'Pizza Romana', 10.50, 'Mozzarella and anchovies', 1, 129, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(130, 229, 'Pizza Bianca', 9.00, 'White pizza with olive oil', 1, 130, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(131, 230, 'Bistecca alla Fiorentina', 25.00, 'Florentine T-bone steak', 1, 131, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(132, 231, 'Tagliata di Manzo', 19.00, 'Sliced beef with rocket', 1, 132, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(133, 232, 'Filetto di Manzo', 22.00, 'Beef fillet', 1, 133, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(134, 233, 'Costata di Manzo', 24.00, 'Beef ribeye', 1, 134, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(135, 234, 'Entrecôte', 20.00, 'Ribeye steak', 1, 135, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(136, 235, 'Ossobuco alla Milanese', 22.00, 'Braised veal shanks', 1, 136, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(137, 236, 'Saltimbocca alla Romana', 16.00, 'Veal with prosciutto and sage', 1, 137, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(138, 237, 'Scaloppine ai Funghi', 15.00, 'Veal scaloppine with mushrooms', 1, 138, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(139, 238, 'Cotoletta alla Milanese', 15.00, 'Milanese breaded cutlet', 1, 139, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(140, 239, 'Vitello Tonnato (Caldo)', 16.00, 'Hot veal with tuna sauce', 1, 140, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(141, 240, 'Pollo alla Cacciatora', 14.00, 'Hunter-style chicken', 1, 141, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(142, 241, 'Pollo alla Romana', 14.00, 'Roman style chicken', 1, 142, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(143, 242, 'Tagliata di Pollo', 14.00, 'Sliced chicken breast', 1, 143, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(144, 243, 'Petto di Pollo ai Funghi', 13.00, 'Chicken breast with mushrooms', 1, 144, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(145, 244, 'Pollo Arrosto', 13.00, 'Roast chicken', 1, 145, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(146, 245, 'Costolette d\'Agnello', 20.00, 'Lamb chops', 1, 146, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(147, 246, 'Abbacchio alla Romana', 18.00, 'Roman style lamb', 1, 147, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(148, 247, 'Agnello al Forno', 19.00, 'Roasted lamb', 1, 148, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(149, 248, 'Costine di Maiale', 16.00, 'Pork ribs', 1, 149, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(150, 249, 'Arrosticini', 14.00, 'Lamb skewers', 1, 150, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(151, 250, 'Grigliata Mista di Carne', 24.00, 'Mixed meat grill', 1, 151, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(152, 251, 'Salsiccia alla Griglia', 12.00, 'Grilled sausage', 1, 152, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(153, 252, 'Coniglio alla Cacciatora', 15.00, 'Hunter-style rabbit', 1, 153, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(154, 253, 'Trippa alla Romana', 12.00, 'Roman style tripe', 1, 154, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(155, 254, 'Coda alla Vaccinara', 14.00, 'Oxtail stew', 1, 155, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(156, 255, 'Branzino al Forno', 18.00, 'Baked sea bass', 1, 156, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(157, 256, 'Branzino alla Griglia', 19.00, 'Grilled sea bass', 1, 157, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(158, 257, 'Orata al Forno', 17.00, 'Baked sea bream', 1, 158, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(159, 258, 'Orata alla Griglia', 18.00, 'Grilled sea bream', 1, 159, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(160, 259, 'Spigola al Sale', 19.00, 'Sea bass in salt crust', 1, 160, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(161, 260, 'Salmone alla Griglia', 17.00, 'Grilled salmon', 1, 161, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(162, 261, 'Salmone al Forno', 16.00, 'Baked salmon', 1, 162, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(163, 262, 'Tonno alla Griglia', 19.00, 'Grilled tuna', 1, 163, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(164, 263, 'Tonno alla Siciliana', 18.00, 'Sicilian style tuna', 1, 164, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(165, 264, 'Pesce Spada alla Griglia', 18.00, 'Grilled swordfish', 1, 165, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(166, 265, 'Pesce Spada alla Ghiotta', 19.00, 'Swordfish with tomatoes', 1, 166, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(167, 266, 'Frittura di Calamari', 15.00, 'Fried squid', 1, 167, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(168, 267, 'Calamari Ripieni', 16.00, 'Stuffed squid', 1, 168, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(169, 268, 'Polpo alla Griglia', 18.00, 'Grilled octopus', 1, 169, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(170, 269, 'Polpo all\'Insalata', 17.00, 'Octopus salad (hot)', 1, 170, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(171, 270, 'Frittura Mista di Pesce', 16.00, 'Mixed fried fish', 1, 171, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(172, 271, 'Grigliata di Pesce', 26.00, 'Mixed fish grill', 1, 172, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(173, 272, 'Scampi alla Griglia', 22.00, 'Grilled scampi', 1, 173, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(174, 273, 'Scampi alla Busara', 23.00, 'Scampi in tomato sauce', 1, 174, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(175, 274, 'Gamberoni alla Griglia', 20.00, 'Grilled king prawns', 1, 175, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(176, 275, 'Seppie con Piselli', 14.00, 'Cuttlefish with peas', 1, 176, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(177, 276, 'Baccalà alla Vicentina', 15.00, 'Vicenza style cod', 1, 177, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(178, 277, 'Baccalà alla Livornese', 14.00, 'Livorno style cod', 1, 178, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(179, 278, 'Sogliola alla Mugnaia', 18.00, 'Sole meunière', 1, 179, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(180, 279, 'Rana Pescatrice', 19.00, 'Monkfish', 1, 180, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(181, 280, 'Patate al Forno', 4.50, 'Roasted potatoes', 1, 181, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(182, 281, 'Patate Fritte', 4.00, 'French fries', 1, 182, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(183, 282, 'Insalata Mista', 4.00, 'Mixed salad', 1, 183, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(184, 283, 'Insalata Verde', 3.50, 'Green salad', 1, 184, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(185, 284, 'Verdure Grigliate', 5.50, 'Grilled vegetables', 1, 185, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(186, 285, 'Spinaci Saltati', 4.50, 'Sautéed spinach', 1, 186, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(187, 286, 'Biete Saltate', 4.50, 'Sautéed Swiss chard', 1, 187, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(188, 287, 'Cicoria Ripassata', 4.50, 'Sautéed chicory', 1, 188, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(189, 288, 'Funghi Trifolati', 5.00, 'Sautéed mushrooms', 1, 189, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(190, 289, 'Rucola e Grana', 5.50, 'Arugula and parmesan', 1, 190, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(191, 290, 'Tiramisù', 6.50, 'Traditional Italian dessert', 1, 191, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(192, 291, 'Panna Cotta', 5.50, 'Vanilla panna cotta', 1, 192, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(193, 292, 'Cannoli Siciliani', 6.00, 'Sicilian cannoli', 1, 193, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(194, 293, 'Babà al Rum', 5.50, 'Rum baba', 1, 194, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(195, 294, 'Pastiera Napoletana', 6.00, 'Neapolitan Easter cake', 1, 195, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(196, 295, 'Torta Caprese', 6.00, 'Chocolate almond cake', 1, 196, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(197, 296, 'Crostata di Frutta', 5.50, 'Fruit tart', 1, 197, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(198, 297, 'Profiteroles', 6.50, 'Cream puffs', 1, 198, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(199, 298, 'Gelato Artigianale', 5.00, 'Artisan ice cream', 1, 199, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0),
(200, 299, 'Sorbetto', 4.50, 'Sorbet', 1, 200, NULL, NULL, '2026-04-09 01:53:10', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sb_restaurantmanager_orders`
--

CREATE TABLE `sb_restaurantmanager_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_number` int(11) NOT NULL,
  `item_number` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `notes` text DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `sent_to_kitchen` tinyint(1) NOT NULL DEFAULT 0,
  `sent_to_kitchen_date` datetime DEFAULT NULL,
  `kitchen_status` varchar(20) NOT NULL DEFAULT 'pending',
  `kitchen_completed_date` datetime DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `paid_date` datetime DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_scheduler_logs`
--

CREATE TABLE `sb_scheduler_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `taskname` varchar(255) NOT NULL DEFAULT '',
  `tasktype` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `duration` decimal(5,3) NOT NULL,
  `jobid` int(10) UNSIGNED NOT NULL,
  `taskid` int(10) UNSIGNED NOT NULL,
  `exitcode` int(11) NOT NULL,
  `lastdate` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `nextdate` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_scheduler_tasks`
--

CREATE TABLE `sb_scheduler_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_scheduler_tasks`
--

INSERT INTO `sb_scheduler_tasks` (`id`, `asset_id`, `title`, `type`, `execution_rules`, `cron_rules`, `state`, `last_exit_code`, `last_execution`, `next_execution`, `times_executed`, `times_failed`, `locked`, `priority`, `ordering`, `cli_exclusive`, `params`, `note`, `created`, `created_by`, `checked_out`, `checked_out_time`) VALUES
(1, 97, 'Rotate Logs', 'rotation.logs', '{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"9\",\"exec-time\":\"06:00\"}', '{\"type\":\"interval\",\"exp\":\"P30D\"}', 1, 0, NULL, '2026-05-09 06:00:00', 0, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}', NULL, '2026-04-09 06:47:43', 57, NULL, NULL),
(2, 98, 'Session GC', 'session.gc', '{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"06:00\"}', '{\"type\":\"interval\",\"exp\":\"PT24H\"}', 1, 0, NULL, '2026-04-10 06:00:00', 0, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}', NULL, '2026-04-09 06:47:43', 57, NULL, NULL),
(3, 99, 'Update Notification', 'update.notification', '{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"06:00\"}', '{\"type\":\"interval\",\"exp\":\"PT24H\"}', 1, 0, NULL, '2026-04-10 06:00:00', 0, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}', NULL, '2026-04-09 06:47:43', 57, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_schemaorg`
--

CREATE TABLE `sb_schemaorg` (
  `id` int(10) UNSIGNED NOT NULL,
  `itemId` int(10) UNSIGNED DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_schemas`
--

CREATE TABLE `sb_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_schemas`
--

INSERT INTO `sb_schemas` (`extension_id`, `version_id`) VALUES
(246, '6.0.1-2025-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `sb_session`
--

CREATE TABLE `sb_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_session`
--

INSERT INTO `sb_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x3338666431373762313333363535626437393566393034346363356534353863, 0, 1, 1775745804, 'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzc1NzQ1MDUyO3M6NDoibGFzdCI7aToxNzc1NzQ1NzU2O3M6Mzoibm93IjtpOjE3NzU3NDU4MDQ7fXM6NToidG9rZW4iO3M6MzI6IjhiZjZiNzVmNGViNTdjZTc1NWE0MjcyZGM4ZmIzZjM1IjtzOjc6ImNvdW50ZXIiO2k6NDt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x3737356333306134613661613339316562616264343734613337386566623037, 0, 1, 1775736860, 'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzc1NzM2ODU4O3M6NDoibGFzdCI7aToxNzc1NzM2ODU4O3M6Mzoibm93IjtpOjE3NzU3MzY4NTg7fXM6NToidG9rZW4iO3M6MzI6ImMxMDIwYzY1NGM5YmI2YzA4M2NmOTkzMWRiMTlkZjg1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x6265366338613366343830363466343138373961373232613530656231333631, 1, 0, 1775745802, 'joomla|s:10432:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzc1NzMyOTc2O3M6NDoibGFzdCI7aToxNzc1NzQ1ODAyO3M6Mzoibm93IjtpOjE3NzU3NDU4MDI7fXM6NzoiY291bnRlciI7aTo1ODk7czo1OiJ0b2tlbiI7czozMjoiNzZmNWI5Njc4ZDdhMDRmMGNkNGIxZWQ1NTdkZGUyNGQiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6OTp7czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMDoiY29tX2NvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJjb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZ2xvYmFsIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO2E6MTAzOntzOjc6ImNhY2hpbmciO2k6MDtzOjEzOiJjYWNoZV9oYW5kbGVyIjtzOjQ6ImZpbGUiO3M6MjA6ImNhY2hlX3BsYXRmb3JtcHJlZml4IjtiOjA7czo5OiJjYWNoZXRpbWUiO2k6MTU7czoxMDoiY2FjaGVfcGF0aCI7czowOiIiO3M6MTc6Im1lbWNhY2hlZF9wZXJzaXN0IjtiOjE7czoxODoibWVtY2FjaGVkX2NvbXByZXNzIjtiOjA7czoyMToibWVtY2FjaGVkX3NlcnZlcl9ob3N0IjtzOjk6ImxvY2FsaG9zdCI7czoyMToibWVtY2FjaGVkX3NlcnZlcl9wb3J0IjtpOjExMjExO3M6MTM6InJlZGlzX3BlcnNpc3QiO2I6MTtzOjE3OiJyZWRpc19zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MTc6InJlZGlzX3NlcnZlcl9wb3J0IjtpOjYzNzk7czoxNzoicmVkaXNfc2VydmVyX2F1dGgiO3M6MDoiIjtzOjE1OiJyZWRpc19zZXJ2ZXJfZGIiO2k6MDtzOjY6ImRidHlwZSI7czo2OiJteXNxbGkiO3M6NDoiaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6NDoidXNlciI7czo0OiJyb290IjtzOjg6InBhc3N3b3JkIjtzOjM6ImtrMyI7czoyOiJkYiI7czo4OiJzcGljZV9kYiI7czo4OiJkYnByZWZpeCI7czozOiJzYl8iO3M6MTI6ImRiZW5jcnlwdGlvbiI7aTowO3M6ODoiZGJzc2xrZXkiO3M6MDoiIjtzOjk6ImRic3NsY2VydCI7czowOiIiO3M6MjE6ImRic3NsdmVyaWZ5c2VydmVyY2VydCI7YjowO3M6NzoiZGJzc2xjYSI7czowOiIiO3M6MTE6ImRic3NsY2lwaGVyIjtzOjA6IiI7czo1OiJkZWJ1ZyI7YjowO3M6MTA6ImRlYnVnX2xhbmciO2I6MDtzOjE2OiJkZWJ1Z19sYW5nX2NvbnN0IjtiOjE7czo0OiJjb3JzIjtiOjA7czoxNzoiY29yc19hbGxvd19vcmlnaW4iO3M6MToiKiI7czoxODoiY29yc19hbGxvd19oZWFkZXJzIjtzOjI3OiJDb250ZW50LVR5cGUsWC1Kb29tbGEtVG9rZW4iO3M6MTg6ImNvcnNfYWxsb3dfbWV0aG9kcyI7czowOiIiO3M6MTk6ImJlaGluZF9sb2FkYmFsYW5jZXIiO2I6MDtzOjEyOiJwcm94eV9lbmFibGUiO2I6MDtzOjEwOiJwcm94eV9ob3N0IjtzOjA6IiI7czoxMDoicHJveHlfcG9ydCI7czowOiIiO3M6MTA6InByb3h5X3VzZXIiO3M6MDoiIjtzOjY6Im9mZnNldCI7czozOiJVVEMiO3M6MTA6Im1haWxvbmxpbmUiO2I6MTtzOjExOiJtYXNzbWFpbG9mZiI7YjowO3M6ODoibWFpbGZyb20iO3M6MjA6ImRldnN3aXRjaDVAZ21haWwuY29tIjtzOjg6ImZyb21uYW1lIjtzOjIyOiJTUElDRSBCSVRFUyBSRVNUQVVSQU5UIjtzOjc6InJlcGx5dG8iO3M6MDoiIjtzOjExOiJyZXBseXRvbmFtZSI7czowOiIiO3M6NjoibWFpbGVyIjtzOjQ6Im1haWwiO3M6ODoic2VuZG1haWwiO3M6MTg6Ii91c3Ivc2Jpbi9zZW5kbWFpbCI7czo4OiJzbXRwaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6ODoic210cHBvcnQiO2k6MjU7czoxMDoic210cHNlY3VyZSI7czo0OiJub25lIjtzOjg6InNtdHBhdXRoIjtiOjA7czo4OiJzbXRwdXNlciI7czowOiIiO3M6ODoic210cHBhc3MiO3M6MDoiIjtzOjg6Ik1ldGFEZXNjIjtzOjA6IiI7czo2OiJyb2JvdHMiO3M6MDoiIjtzOjEwOiJNZXRhUmlnaHRzIjtzOjA6IiI7czoxMDoiTWV0YUF1dGhvciI7YjoxO3M6MTE6Ik1ldGFWZXJzaW9uIjtiOjA7czozOiJzZWYiO2I6MTtzOjExOiJzZWZfcmV3cml0ZSI7YjowO3M6MTA6InNlZl9zdWZmaXgiO2I6MDtzOjEyOiJ1bmljb2Rlc2x1Z3MiO2I6MDtzOjE5OiJzaXRlbmFtZV9wYWdldGl0bGVzIjtpOjA7czo4OiJ0bXBfcGF0aCI7czozNDoiRDpcQXBhY2hlMjRcaHRkb2NzXFNwaWNlX0JpdGVzL3RtcCI7czo0OiJnemlwIjtiOjA7czoxNToiZXJyb3JfcmVwb3J0aW5nIjtzOjc6ImRlZmF1bHQiO3M6OToiZm9yY2Vfc3NsIjtpOjA7czoxNToic2Vzc2lvbl9oYW5kbGVyIjtzOjg6ImRhdGFiYXNlIjtzOjIzOiJzZXNzaW9uX2ZpbGVzeXN0ZW1fcGF0aCI7czowOiIiO3M6Mjk6InNlc3Npb25fbWVtY2FjaGVkX3NlcnZlcl9ob3N0IjtzOjk6ImxvY2FsaG9zdCI7czoyOToic2Vzc2lvbl9tZW1jYWNoZWRfc2VydmVyX3BvcnQiO2k6MTEyMTE7czoyMToic2Vzc2lvbl9yZWRpc19wZXJzaXN0IjtpOjE7czoyNToic2Vzc2lvbl9yZWRpc19zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MjU6InNlc3Npb25fcmVkaXNfc2VydmVyX3BvcnQiO2k6NjM3OTtzOjI1OiJzZXNzaW9uX3JlZGlzX3NlcnZlcl9hdXRoIjtzOjA6IiI7czoyMzoic2Vzc2lvbl9yZWRpc19zZXJ2ZXJfZGIiO2k6MDtzOjg6ImxpZmV0aW1lIjtpOjE1O3M6MTQ6InNoYXJlZF9zZXNzaW9uIjtiOjA7czoxNjoic2Vzc2lvbl9tZXRhZGF0YSI7YjoxO3M6MjY6InNlc3Npb25fbWV0YWRhdGFfZm9yX2d1ZXN0IjtiOjE7czo4OiJzaXRlbmFtZSI7czoyMjoiU1BJQ0UgQklURVMgUkVTVEFVUkFOVCI7czo3OiJvZmZsaW5lIjtiOjA7czoyMzoiZGlzcGxheV9vZmZsaW5lX21lc3NhZ2UiO2k6MTtzOjE1OiJvZmZsaW5lX21lc3NhZ2UiO3M6Njk6IlRoaXMgc2l0ZSBpcyBkb3duIGZvciBtYWludGVuYW5jZS48YnIgLz5QbGVhc2UgY2hlY2sgYmFjayBhZ2FpbiBzb29uLiI7czoxMzoib2ZmbGluZV9pbWFnZSI7czowOiIiO3M6MTI6ImZyb250ZWRpdGluZyI7aToxO3M6NjoiZWRpdG9yIjtzOjc6InRpbnltY2UiO3M6NzoiY2FwdGNoYSI7czoxOiIwIjtzOjY6ImFjY2VzcyI7aToxO3M6MTA6Imxpc3RfbGltaXQiO2k6MjA7czoxMDoiZmVlZF9saW1pdCI7aToxMDtzOjEwOiJmZWVkX2VtYWlsIjtzOjQ6Im5vbmUiO3M6ODoibG9nX3BhdGgiO3M6NDk6IkQ6XEFwYWNoZTI0XGh0ZG9jc1xTcGljZV9CaXRlc1xhZG1pbmlzdHJhdG9yL2xvZ3MiO3M6MTQ6ImxvZ19ldmVyeXRoaW5nIjtpOjA7czoxNDoibG9nX2RlcHJlY2F0ZWQiO2k6MDtzOjE0OiJsb2dfcHJpb3JpdGllcyI7YToxOntpOjA7czozOiJhbGwiO31zOjE0OiJsb2dfY2F0ZWdvcmllcyI7czowOiIiO3M6MTc6ImxvZ19jYXRlZ29yeV9tb2RlIjtpOjA7czoxMzoiY29va2llX2RvbWFpbiI7czowOiIiO3M6MTE6ImNvb2tpZV9wYXRoIjtzOjA6IiI7czo1OiJydWxlcyI7YToxMzp7czoxNToiY29yZS5sb2dpbi5zaXRlIjthOjI6e2k6NjtiOjE7aToyO2I6MTt9czoxNjoiY29yZS5sb2dpbi5hZG1pbiI7YToxOntpOjY7YjoxO31zOjE0OiJjb3JlLmxvZ2luLmFwaSI7YToxOntpOjg7YjoxO31zOjE4OiJjb3JlLmxvZ2luLm9mZmxpbmUiO2E6MTp7aTo2O2I6MTt9czoxMDoiY29yZS5hZG1pbiI7YToxOntpOjg7YjoxO31zOjEyOiJjb3JlLm9wdGlvbnMiO2E6MDp7fXM6MTE6ImNvcmUubWFuYWdlIjthOjE6e2k6NztiOjE7fXM6MTE6ImNvcmUuY3JlYXRlIjthOjI6e2k6NjtiOjE7aTozO2I6MTt9czoxMToiY29yZS5kZWxldGUiO2E6MTp7aTo2O2I6MTt9czo5OiJjb3JlLmVkaXQiO2E6Mjp7aTo2O2I6MTtpOjQ7YjoxO31zOjE1OiJjb3JlLmVkaXQuc3RhdGUiO2E6Mjp7aTo2O2I6MTtpOjU7YjoxO31zOjEzOiJjb3JlLmVkaXQub3duIjthOjI6e2k6NjtiOjE7aTozO2I6MTt9czoxNToiY29yZS5lZGl0LnZhbHVlIjthOjA6e319czo3OiJmaWx0ZXJzIjthOjk6e2k6MTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6Ik5IIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6OTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6Ik5IIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NjthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NzthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6MjthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6Ik5IIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6MzthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NDthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6ODthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjQ6Ik5PTkUiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9fXM6ODoiYXNzZXRfaWQiO3M6MToiMSI7fX19fXM6MTE6ImNvbV9wbHVnaW5zIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6InBsdWdpbnMiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjU6e3M6Njoic2VhcmNoIjtzOjc6IlRpbnlNQ0UiO3M6NzoiZW5hYmxlZCI7czowOiIiO3M6NjoiZm9sZGVyIjtzOjA6IiI7czo3OiJlbGVtZW50IjtzOjA6IiI7czo2OiJhY2Nlc3MiO3M6MDoiIjt9czo0OiJsaXN0IjthOjQ6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czoxMDoiZm9sZGVyIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo5OiJzb3J0VGFibGUiO3M6NjoiZm9sZGVyIjtzOjE0OiJkaXJlY3Rpb25UYWJsZSI7czozOiJBU0MiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJwbHVnaW4iO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX1zOjk6ImNvbV9tZW51cyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo5OiJjbGllbnRfaWQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjo0OntzOjQ6ImRhdGEiO047czo0OiJ0eXBlIjtOO3M6NDoibGluayI7TjtzOjI6ImlkIjthOjA6e319fX1zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6InVzZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6OToiZGVidWd1c2VyIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImRlZmF1bHQiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoidXNlcl9pZCI7aTo1NztzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fX1zOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImRlZmF1bHQiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjc6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo1OiJzdGF0ZSI7czowOiIiO3M6MzoibWZhIjtzOjA6IiI7czo2OiJhY3RpdmUiO3M6MDoiIjtzOjg6Imdyb3VwX2lkIjtzOjA6IiI7czoxNDoibGFzdHZpc2l0cmFuZ2UiO3M6MDoiIjtzOjU6InJhbmdlIjtzOjA6IiI7fXM6NDoibGlzdCI7YToyOntzOjEyOiJmdWxsb3JkZXJpbmciO3M6MTA6ImEubmFtZSBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX19czoxMzoiY29tX3RlbXBsYXRlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJ0ZW1wbGF0ZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjk6ImEuZWxlbWVudCI7czo1OiJzdGFydCI7ZDowO319czo2OiJzdHlsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtzOjE6IjAiO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS50ZW1wbGF0ZSI7czo1OiJzdGFydCI7ZDowO319fXM6MTE6ImNvbV9tb2R1bGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjc6Im1vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6MToiMCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6MTA6ImEucG9zaXRpb24iO3M6NToic3RhcnQiO2Q6MDt9fXM6OToiY2xpZW50X2lkIjtzOjE6IjAiO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX1zOjEwOiJjb21fZmluZGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6Im1hcHMiO086ODoic3RkQ2xhc3MiOjI6e3M6ODoib3JkZXJjb2wiO3M6MTk6ImJyYW5jaF90aXRsZSwgYS5sZnQiO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJBU0MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxOToiYnJhbmNoX3RpdGxlLCBhLmxmdCI7czo1OiJzdGFydCI7ZDowO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTo1Nzt9czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6MTE6Im1mYV9jaGVja2VkIjtpOjE7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 57, 'ben'),
(0x6431623333623332373832363964386635633762646631663934383962663266, 1, 0, 1775737071, 'joomla|s:1448:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjI2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTc3NTczNjg2NTtzOjQ6Imxhc3QiO2k6MTc3NTczNzA3MTtzOjM6Im5vdyI7aToxNzc1NzM3MDcxO31zOjU6InRva2VuIjtzOjMyOiIxNGQ5MGMyNTcwMjI4NjZjMTAzYjM4YWU2OTlhZDVlMCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjk6ImNvbV9tZW51cyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo4OiJtZW51dHlwZSI7czowOiIiO3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo0OiJkYXRhIjtOO3M6NDoidHlwZSI7TjtzOjQ6ImxpbmsiO047fX19czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJ1c2VyIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjU3O31zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMToibWZhX2NoZWNrZWQiO2k6MTt9czo1OiJibG9jayI7TjtzOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";', 57, 'ben');

-- --------------------------------------------------------

--
-- Table structure for table `sb_tags`
--

CREATE TABLE `sb_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_tags`
--

INSERT INTO `sb_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '', '', '', '', 57, '2026-04-09 06:47:40', '', 57, '2026-04-09 06:47:40', '', '', 0, '*', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_template_overrides`
--

CREATE TABLE `sb_template_overrides` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_template_styles`
--

CREATE TABLE `sb_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_template_styles`
--

INSERT INTO `sb_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10, 'atum', 1, '1', 'Atum - Default', 1, '', '{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11, 'cassiopeia', 0, '0', 'Cassiopeia - Default', 1, '', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),
(12, 'cassiopeia_extended', 0, '0', 'Cassiopeia Extended - Default', 0, 'cassiopeia', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\",\"colorSettings\":\"0\",\"headerbg\":\"rgb(193, 205, 207)\",\"headercolor\":\"rgb(23, 23, 23)\",\"bodybg\":\"rgb(254, 254, 254)\",\"bodycolor\":\"rgb(23, 23, 23)\",\"linkcolor\":\"rgb(29, 121, 137)\",\"linkcolorh\":\"rgb(14, 59, 67)\",\"btnbg\":\"rgb(206, 60, 55)\",\"btnbgh\":\"rgb(131, 35, 32)\",\"btncolor\":\"rgb(254, 254, 254)\",\"btncolorh\":\"rgb(254, 254, 254)\",\"footerbg\":\"rgb(29, 121, 137)\",\"footercolor\":\"rgb(254, 254, 254)\",\"fontSettings\":\"0\",\"bodysize\":\"1\",\"h1size\":\"2\",\"h2size\":\"1.7\",\"h3size\":\"1.5\"}'),
(13, 'theme-200120-j4', 0, '0', 'theme-200120-j4 - Default', 0, '', '{\"horizontal_align0\":\"center\",\"vertical_align0\":\"center\",\"stretch0\":\"Fill\",\"horizontal_align1\":\"center\",\"vertical_align1\":\"center\",\"stretch1\":\"Fill\",\"horizontal_align2\":\"center\",\"vertical_align2\":\"center\",\"stretch2\":\"Fill\",\"enable_slide\":\"1\",\"enable_facebook_icon\":\"1\",\"facebook_Url\":\"http:\\/\\/www.facebook.com\\/TemplateToaster\",\"enable_Twitter_icon\":\"1\",\"twitter_Url\":\"http:\\/\\/twitter.com\\/templatetoaster\",\"enable_Designed_By\":\"1\",\"Designed_By\":\"http:\\/\\/templatetoaster.com\",\"Designed_By_Link_FontSize\":\"12\",\"Designed_By_FontSize\":\"12\",\"footer_designed_by_color\":\"#E1E1E1\",\"footer_designed_by_link_color\":\"#E1E1E1\",\"sidebar_menu_font_size\":\"14\",\"block_heading_font_size\":\"14\",\"custom_css\":\"\",\"enable_read_more_button\":\"1\",\"mbmoduleposition00\":\"block\",\"mbmoduleposition01\":\"block\",\"mbmoduleposition02\":\"block\",\"mbmoduleposition03\":\"block\",\"mamoduleposition00\":\"block\",\"mamoduleposition01\":\"block\",\"mamoduleposition02\":\"block\",\"mamoduleposition03\":\"block\",\"sbmoduleposition00\":\"block\",\"sbmoduleposition01\":\"block\",\"sbmoduleposition02\":\"block\",\"sbmoduleposition03\":\"block\",\"samoduleposition00\":\"block\",\"samoduleposition01\":\"block\",\"samoduleposition02\":\"block\",\"samoduleposition03\":\"block\",\"camoduleposition00\":\"block\",\"camoduleposition01\":\"block\",\"camoduleposition02\":\"block\",\"camoduleposition03\":\"block\",\"cbmoduleposition00\":\"block\",\"cbmoduleposition01\":\"block\",\"cbmoduleposition02\":\"block\",\"cbmoduleposition03\":\"block\",\"menu\":\"block\",\"famoduleposition00\":\"block\",\"famoduleposition01\":\"block\",\"famoduleposition02\":\"block\",\"famoduleposition03\":\"block\",\"fbmoduleposition00\":\"block\",\"fbmoduleposition01\":\"block\",\"fbmoduleposition02\":\"block\",\"fbmoduleposition03\":\"block\",\"leftfooterarea\":\"block\",\"centerfooterarea\":\"block\",\"rightfooterarea\":\"block\",\"debug\":\"block\",\"enable_click_on_menu\":\"h_menu_hover\",\"enable_click_on_sidebar_menu\":\"v_menu_hover\",\"mbmoduleposition00ms\":\"h_menu\",\"mbmoduleposition01ms\":\"h_menu\",\"mbmoduleposition02ms\":\"h_menu\",\"mbmoduleposition03ms\":\"h_menu\",\"mamoduleposition00ms\":\"h_menu\",\"mamoduleposition01ms\":\"h_menu\",\"mamoduleposition02ms\":\"h_menu\",\"mamoduleposition03ms\":\"h_menu\",\"sbmoduleposition00ms\":\"h_menu\",\"sbmoduleposition01ms\":\"h_menu\",\"sbmoduleposition02ms\":\"h_menu\",\"sbmoduleposition03ms\":\"h_menu\",\"samoduleposition00ms\":\"h_menu\",\"samoduleposition01ms\":\"h_menu\",\"samoduleposition02ms\":\"h_menu\",\"samoduleposition03ms\":\"h_menu\",\"camoduleposition00ms\":\"h_menu\",\"camoduleposition01ms\":\"h_menu\",\"camoduleposition02ms\":\"h_menu\",\"camoduleposition03ms\":\"h_menu\",\"cbmoduleposition00ms\":\"h_menu\",\"cbmoduleposition01ms\":\"h_menu\",\"cbmoduleposition02ms\":\"h_menu\",\"cbmoduleposition03ms\":\"h_menu\",\"menums\":\"h_menu\",\"famoduleposition00ms\":\"h_menu\",\"famoduleposition01ms\":\"h_menu\",\"famoduleposition02ms\":\"h_menu\",\"famoduleposition03ms\":\"h_menu\",\"fbmoduleposition00ms\":\"h_menu\",\"fbmoduleposition01ms\":\"h_menu\",\"fbmoduleposition02ms\":\"h_menu\",\"fbmoduleposition03ms\":\"h_menu\",\"leftfooterareams\":\"h_menu\",\"centerfooterareams\":\"h_menu\",\"rightfooterareams\":\"h_menu\"}'),
(14, 'jl_bruno_free', 0, '0', 'Bruno Free - Default', 0, '', '{\"configuration\":14,\"preset\":\"default\"}'),
(16, 'jl_redchili', 0, '1', 'Redchili Lite - Default', 0, '', '{\"configuration\":\"16\",\"preset\":\"default\"}'),
(17, 'jl_redchili', 0, '0', 'Redchili Lite - Home', 0, '', '{\"configuration\":17,\"preset\":\"home_-_particles\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sb_tuf_metadata`
--

CREATE TABLE `sb_tuf_metadata` (
  `id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';

--
-- Dumping data for table `sb_tuf_metadata`
--

INSERT INTO `sb_tuf_metadata` (`id`, `update_site_id`, `root`, `targets`, `snapshot`, `timestamp`, `mirrors`) VALUES
(1, 1, '{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":12,\"expires\":\"2026-12-16T13:18:16Z\",\"keys\":{\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"250f8d293c49817a83909dead96ad82b62f7ac16844cf589f8d2f0e0b15cab21\"}},\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"159a4195cbafce2bb959f09ab2b36a2127b8967f94d389f65f1e7892fccfe8b8\"}},\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"042b66e1431a1f5c2c15b4a16ea60f23f466851b58e9ff057dbfc2a5e0d821d1\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"1cb6702338830ef1c9e76a022fed27172d475bbaace754d8141ebc96dad8b15f\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429\"}},\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ea764b0b475b3c396627ac6689cbd8f54a5f93e87b6f5e3eb44a7ccafb542ff3\"}},\"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"45e416d24d13a60ace5ab028827d5cfc8ba177bb9466bf2acd8efa6e3547911a\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\",\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\",\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\",\"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\",\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"566d6aa10932b36ebda6fbb56f17a683c0044cc1e94947fa26f454319e544bf83ccaaca8197874ef51c2eb51ba252297bc1b4f8c6d8b58ed31f30d6d8e100801\"}]}', '{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":91,\"expires\":\"2026-07-07T18:38:33Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.4.1-Stable-Update_Package.zip\":{\"length\":30009045,\"hashes\":{\"sha512\":\"aeddd1143cd574ff3f6e9bc7d7c67bf5d21dc1b404d98498a691b1fff12f5d245b48424f97155f20e2807e4ee2c1aed7313fae3ab8c0d27a08a20947c166c43e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.1/Joomla_5.4.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5941-joomla-6-0-1-and-5-4-1-bugfix-release.html\",\"title\":\"Joomla! 5.4.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.1\"}},\"Joomla_5.4.2-Stable-Update_Package.zip\":{\"length\":30316442,\"hashes\":{\"sha512\":\"e83add95a43103ec2d6ccada9e33a29fa6feb2d8e27b6bd16376f4a75d9b588c029b1f24c97b0772e3a6eb0e20d2b8e0e3526cf2af242d90c280ef63abeddaa9\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.2/Joomla_5.4.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5942-joomla-6-0-2-and-5-4-2-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.2\"}},\"Joomla_5.4.3-Stable-Update_Package.zip\":{\"length\":30403970,\"hashes\":{\"sha512\":\"63901b3cca37a59fe8028e0adb01eda3bb3669dc410c21b1ab7cb040997980c75d2d52b242d053800a542f4d60cf6a15e5fdabc963014c35aef80f6b8b02857f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.3/Joomla_5.4.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5943-joomla-6-0-3-and-5-4-3-bugfix-release.html\",\"title\":\"Joomla! 5.4.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.3\"}},\"Joomla_5.4.4-Stable-Update_Package.zip\":{\"length\":30488702,\"hashes\":{\"sha512\":\"56497e3c1bf1b9b21e8149a15e36dd1590f6adffd13b38005af40afdf2a33761fbacc9628c5ea6b0e21eb04fb1ca20ca9bc96b2add4b626ed0b567f43994a65e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.4 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.4/Joomla_5.4.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5944-joomla-6-0-4-5-4-4-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.4 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.4\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.4\"}},\"Joomla_5.4.5-rc1-Release_Candidate-Update_Package.zip\":{\"length\":30498394,\"hashes\":{\"sha512\":\"902e15b690f8bb33de3d139bc861362bd9f073fef506ce150bdc0f29bf8bde6c10aefa0518bb4f57f39576117913cddf59a8c325c7a517c21d7b6b1aea48aee8\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.5-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.5-rc1/Joomla_5.4.5-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.4.5-rc1\",\"title\":\"Joomla! 5.4.5-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.5-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.5-rc1\"}},\"Joomla_6.0.1-Stable-Update_Package.zip\":{\"length\":30247182,\"hashes\":{\"sha512\":\"38f8dd3ff1fd48b9973193a4484591b3b9f4a7516eb7640ff1687d84c81d4dc8cd05f6f58b9f48172bae41a466442f4a5af4a23e3d63869aeb1b05f4fdd6512e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.1/Joomla_6.0.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5941-joomla-6-0-1-and-5-4-1-bugfix-release.html\",\"title\":\"Joomla! 6.0.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.1\"}},\"Joomla_6.0.2-Stable-Update_Package.zip\":{\"length\":30555623,\"hashes\":{\"sha512\":\"c0cff255fcf8e0359453c18365f4906afcce115981a5114e3388da583ad192bde320c8bdd191cd8ca4e55ad5585c9c4cd098c2e1661d8a109d37b94340e4b6a6\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.2/Joomla_6.0.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5942-joomla-6-0-2-and-5-4-2-security-bugfix-release.html\",\"title\":\"Joomla! 6.0.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.2\"}},\"Joomla_6.0.3-Stable-Update_Package.zip\":{\"length\":30645479,\"hashes\":{\"sha512\":\"212a681935d260925cbb15e0fa4d9c9e40978aa32ab7137ff1e0775be26eaa6634317521ec8a411aed3f76990758cbe4dcec3c86186458238dc45f8a3886e5dc\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.3/Joomla_6.0.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5943-joomla-6-0-3-and-5-4-3-bugfix-release.html\",\"title\":\"Joomla! 6.0.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.3\"}},\"Joomla_6.0.4-Stable-Update_Package.zip\":{\"length\":30730380,\"hashes\":{\"sha512\":\"39de3d222482dc1d6ba3041c9cbfb259dbf17762d917af59906c1c5c43b5da5016d5fb54d788f8b866fb473e4b57e3f1780db74be115300c181897c75e38c2e5\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.0.4 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-0-4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.0.4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.0.4/Joomla_6.0.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5944-joomla-6-0-4-5-4-4-security-bugfix-release.html\",\"title\":\"Joomla! 6.0.4 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.0.4\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.0.4\"}},\"Joomla_6.1.0-alpha2-Alpha-Full_Package.zip\":{\"length\":33107068,\"hashes\":{\"sha512\":\"be9711e1bda18981f077369105399eff9e8ab9203cad43d2c5385689e32db7bc6e11f3b5e406194dd9c2d7f5892bb92c6702cf5436badf3d971150ffcfda0a72\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha2/Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1015-joomla-6-1-alpha2-see-how-its-coming-together.html\",\"title\":\"Joomla! 6.1.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha2\"}},\"Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\":{\"length\":30736927,\"hashes\":{\"sha512\":\"388790c8b32f624e5b33531f4a41eefa85b5273e76e20a847b01c7eaa59367939317581e5f75ade6c024f25894740c9651ce2faaa330ac8a7fb863434c170879\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha2/Joomla_6.1.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1015-joomla-6-1-alpha2-see-how-its-coming-together.html\",\"title\":\"Joomla! 6.1.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha2\"}},\"Joomla_6.1.0-alpha3-Alpha-Full_Package.zip\":{\"length\":33216519,\"hashes\":{\"sha512\":\"16eb1fb81ef4b0c2f3ebca14538945d291623f544d77946e556fc2f17561bda55c256be4f56c0f5034609bbc10e7dcbf0995691b0cd613f5dc58658fe964333b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha3/Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1018-joomla-6-1-alpha3-wrapping-up-the-alpha-phase.html\",\"title\":\"Joomla! 6.1.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha3\"}},\"Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\":{\"length\":30842460,\"hashes\":{\"sha512\":\"9290f78cdba43c0bbb4e9b812a1e06cd548e6a4e14b51529d50d5acab3fdb4f7ab5cc6828655596159af41962b51f5a14008a26f06e3f9c5b3781f309cb52a19\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-alpha3/Joomla_6.1.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1018-joomla-6-1-alpha3-wrapping-up-the-alpha-phase.html\",\"title\":\"Joomla! 6.1.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-alpha3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-alpha3\"}},\"Joomla_6.1.0-beta3-Beta-Update_Package.zip\":{\"length\":31413826,\"hashes\":{\"sha512\":\"9f03df89f3112706026cd9e99f4e3e1cc46a706db8492957e093ae416aadc568b422bcebbf74d45ffc07072d011c0d64e64e9891adcc3f56326da22ccb62d449\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-beta3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-beta3/Joomla_6.1.0-beta3-Beta-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/1026-joomla-6-1-beta3-help-make-it-stable.html\",\"title\":\"Joomla! 6.1.0-beta3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-beta3\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Beta\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-beta3\"}},\"Joomla_6.1.0-rc1-Release_Candidate-Update_Package.zip\":{\"length\":31432633,\"hashes\":{\"sha512\":\"6b06981c9e3dc2f0345fc7ef6372d14fa4d84f5f8f424465139dd0ec9c596cf297a554a61b0bcbe02d1c4b494f5e8f1abb821f715222f1f3610045ea7c5f60cc\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc1/Joomla_6.1.0-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/news/5945-joomla-6-1-release-candidate-test-the-final-package.html\",\"title\":\"Joomla! 6.1.0-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-rc1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-rc1\"}},\"Joomla_6.1.0-rc2-Release_Candidate-Update_Package.zip\":{\"length\":31433359,\"hashes\":{\"sha512\":\"b9b85aa048c26face653f9fb62f4ca28c294fa2a9c643aed73b581742d07db6d9d0b3169b4f7a437d1b233fe4771e0efe6395280a22139afa0a459908ba5d9b3\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.1.0-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.1.0-rc2/Joomla_6.1.0-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5949-joomla-6-1-release-candidate-2-test-the-final-package.html\",\"title\":\"Joomla! 6.1.0-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.1.0-rc2\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.1.0-rc2\"}}}},\"signatures\":[{\"keyid\":\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\",\"sig\":\"33c2ac0726c491cf34ae984e27e7a9e490fcadbf20206a829329976a77b02e55d27d20593b4700fec0bdea0f6cd23a5f2e81cf9bae3096942c4ab34160f12b05\"},{\"keyid\":\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"sig\":\"93ed30481982bb35cb106baec24a2969a48645809d9ecee8afbffedabb5628f1d895f64966637804d428d44de0770848e02124f25d88b5c978ec308ea4b43702\"}]}', '{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":102,\"expires\":\"2026-11-03T18:40:13Z\",\"meta\":{\"targets.json\":{\"length\":19138,\"hashes\":{\"sha512\":\"6962165b2163006e8da8fd253835b59f518293db11f21dfa0d5eab6b5d71506d53b31dca5fd5fab1da9e61dc08c612fc458769b65e4b06c623ae77c0d988b4b3\"},\"version\":91}}},\"signatures\":[{\"keyid\":\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"sig\":\"bbb537ee4798b0a1ae3948930e35676909a73c8087e75ad4185a9f2a45994b0fe23b70cdc87937fd8aa7662f266be3fa0cc678168a2cc8844ce8d54bf1a0160b\"}]}', '{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":1028,\"expires\":\"2026-04-11T01:43:00Z\",\"meta\":{\"snapshot.json\":{\"length\":533,\"hashes\":{\"sha512\":\"bfce70dbf5bfde78c92879658ed0a8708958f530f5d6ffa35cf4a6eeb728cb8ba136fd9048dc0fd6a4eec50fb1e11d3fe15d037f23bc89d9a9190941af973166\"},\"version\":102}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"2c3c5862852f5bba84273a622bd612dc2d14b832758a2b73d19ac128cceeff6ba888f92b8c08d0b54707fe1adb40ea7a7f2b77b63201452c493674e7399d2e0d\"}]}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_ucm_base`
--

CREATE TABLE `sb_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_ucm_content`
--

CREATE TABLE `sb_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) UNSIGNED DEFAULT NULL,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `sb_updates`
--

CREATE TABLE `sb_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `sb_updates`
--

INSERT INTO `sb_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `changelogurl`, `extra_query`) VALUES
(49, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/af-ZA_details.xml', '', '', ''),
(50, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/be-BY_details.xml', '', '', ''),
(51, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/ca-ES_details.xml', '', '', ''),
(52, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '6.0.1.3', '', 'https://update.joomla.org/language/details6/zh-CN_details.xml', '', '', ''),
(53, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/zh-TW_details.xml', '', '', ''),
(54, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '6.0.3.2', '', 'https://update.joomla.org/language/details6/hr-HR_details.xml', '', '', ''),
(55, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/cs-CZ_details.xml', '', '', ''),
(56, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/da-DK_details.xml', '', '', ''),
(57, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/nl-NL_details.xml', '', '', ''),
(58, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '6.0.2.1', '', 'https://update.joomla.org/language/details6/en-AU_details.xml', '', '', ''),
(59, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '6.0.2.1', '', 'https://update.joomla.org/language/details6/en-CA_details.xml', '', '', ''),
(60, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '6.0.2.1', '', 'https://update.joomla.org/language/details6/en-NZ_details.xml', '', '', ''),
(61, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '6.0.2.1', '', 'https://update.joomla.org/language/details6/en-US_details.xml', '', '', ''),
(62, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/et-EE_details.xml', '', '', ''),
(63, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '6.0.2.1', '', 'https://update.joomla.org/language/details6/fi-FI_details.xml', '', '', ''),
(64, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/nl-BE_details.xml', '', '', ''),
(65, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/fr-FR_details.xml', '', '', ''),
(66, 2, 0, 'French, Canada', '', 'pkg_fr-CA', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/fr-CA_details.xml', '', '', ''),
(67, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '6.0.4.2', '', 'https://update.joomla.org/language/details6/ka-GE_details.xml', '', '', ''),
(68, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/de-DE_details.xml', '', '', ''),
(69, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/de-AT_details.xml', '', '', ''),
(70, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/de-LI_details.xml', '', '', ''),
(71, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/de-LU_details.xml', '', '', ''),
(72, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/de-CH_details.xml', '', '', ''),
(73, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/el-GR_details.xml', '', '', ''),
(74, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '6.0.0.1', '', 'https://update.joomla.org/language/details6/hu-HU_details.xml', '', '', ''),
(75, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/it-IT_details.xml', '', '', ''),
(76, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/ja-JP_details.xml', '', '', ''),
(77, 2, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/lo-LA_details.xml', '', '', ''),
(78, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/lv-LV_details.xml', '', '', ''),
(79, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/lt-LT_details.xml', '', '', ''),
(80, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '6.0.0.6', '', 'https://update.joomla.org/language/details6/ms-MY_details.xml', '', '', ''),
(81, 2, 0, 'Norwegian Bokmål', '', 'pkg_nb-NO', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/nb-NO_details.xml', '', '', ''),
(82, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/fa-IR_details.xml', '', '', ''),
(83, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '6.0.0.1', '', 'https://update.joomla.org/language/details6/pl-PL_details.xml', '', '', ''),
(84, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/pt-BR_details.xml', '', '', ''),
(85, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '6.0.0.1', '', 'https://update.joomla.org/language/details6/ro-RO_details.xml', '', '', ''),
(86, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '6.0.1.1', '', 'https://update.joomla.org/language/details6/ru-RU_details.xml', '', '', ''),
(87, 2, 0, 'Serbian, Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '6.0.1.1', '', 'https://update.joomla.org/language/details6/sr-RS_details.xml', '', '', ''),
(88, 2, 0, 'Serbian, Latin', '', 'pkg_sr-YU', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/sr-YU_details.xml', '', '', ''),
(89, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '6.0.2.2', '', 'https://update.joomla.org/language/details6/sk-SK_details.xml', '', '', ''),
(90, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/sl-SI_details.xml', '', '', ''),
(91, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/es-ES_details.xml', '', '', ''),
(92, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/sv-SE_details.xml', '', '', ''),
(93, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/ta-IN_details.xml', '', '', ''),
(94, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '6.0.0.2', '', 'https://update.joomla.org/language/details6/th-TH_details.xml', '', '', ''),
(95, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/tr-TR_details.xml', '', '', ''),
(96, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '6.0.0.1', '', 'https://update.joomla.org/language/details6/uk-UA_details.xml', '', '', ''),
(97, 5, 254, 'JD Simple Contact Form', '', 'mod_jdsimplecontactform', 'module', '', 0, '1.9', '', 'https://cdn.joomdev.com/updates/mod_jdsimplecontactform.xml', 'https://www.joomdev.com/products/extensions/jd-simple-contact-form', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sb_update_sites`
--

CREATE TABLE `sb_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `sb_update_sites`
--

INSERT INTO `sb_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1, 'Joomla! Core', 'tuf', 'https://update.joomla.org/cms/', 1, 1775727386, '', NULL, NULL),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_6.xml', 1, 1775727388, '', NULL, NULL),
(3, 'Joomla! Update Component', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1775727388, '', NULL, NULL),
(4, 'Restaurant Manager Update Server', 'extension', 'https://freecmsplugins.com/updates/com_restaurantmanager.xml', 1, 1775727390, '', NULL, NULL),
(5, 'mod_jdsimplecontactform', 'extension', 'https://cdn.joomdev.com/updates/mod_jdsimplecontactform.xml', 1, 1775727390, '', NULL, NULL),
(6, 'Gantry 5', 'extension', 'http://updates.gantry.org/5.0/joomla/pkg_gantry5.xml', 1, 0, '', NULL, NULL),
(7, 'Gantry 5', 'collection', 'http://updates.gantry.org/5.0/joomla/list.xml', 1, 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_update_sites_extensions`
--

CREATE TABLE `sb_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `sb_update_sites_extensions`
--

INSERT INTO `sb_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 246),
(2, 247),
(3, 24),
(4, 251),
(5, 254),
(6, 263),
(7, 263);

-- --------------------------------------------------------

--
-- Table structure for table `sb_usergroups`
--

CREATE TABLE `sb_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_usergroups`
--

INSERT INTO `sb_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `sb_users`
--

CREATE TABLE `sb_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_users`
--

INSERT INTO `sb_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(57, 'OKOL BEN', 'ben', 'devswitch5@gmail.com', '$2y$12$K48kIleeo3vK4MCjRR6Xh.L0vm4rxfVB.9ANXcvZDDBZacdtbmCc.', 0, 1, '2026-04-09 06:47:55', '2026-04-09 12:14:38', '0', '{\"admin_style\":\"\",\"colorScheme\":\"\",\"allowTourAutoStart\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"none\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sb_user_keys`
--

CREATE TABLE `sb_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_user_mfa`
--

CREATE TABLE `sb_user_mfa` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';

-- --------------------------------------------------------

--
-- Table structure for table `sb_user_notes`
--

CREATE TABLE `sb_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_user_profiles`
--

CREATE TABLE `sb_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

--
-- Dumping data for table `sb_user_profiles`
--

INSERT INTO `sb_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(57, 'guidedtour.id.12', '{\"state\":\"completed\"}', 0),
(57, 'joomlatoken.enabled', '1', 2),
(57, 'joomlatoken.token', 'jAnlc5LGCuVhrmdi97pJEORjbCAXsUiHNbSQ0aFq8Fk=', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sb_user_usergroup_map`
--

CREATE TABLE `sb_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_user_usergroup_map`
--

INSERT INTO `sb_user_usergroup_map` (`user_id`, `group_id`) VALUES
(57, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sb_viewlevels`
--

CREATE TABLE `sb_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_viewlevels`
--

INSERT INTO `sb_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `sb_webauthn_credentials`
--

CREATE TABLE `sb_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sb_workflows`
--

CREATE TABLE `sb_workflows` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_workflows`
--

INSERT INTO `sb_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1, 56, 1, 'COM_WORKFLOW_BASIC_WORKFLOW', '', 'com_content.article', 1, 1, '2026-04-09 06:47:41', 57, '2026-04-09 06:47:41', 57, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_workflow_associations`
--

CREATE TABLE `sb_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_workflow_associations`
--

INSERT INTO `sb_workflow_associations` (`item_id`, `stage_id`, `extension`) VALUES
(1, 1, 'com_content.article'),
(2, 1, 'com_content.article'),
(3, 1, 'com_content.article'),
(4, 1, 'com_content.article');

-- --------------------------------------------------------

--
-- Table structure for table `sb_workflow_stages`
--

CREATE TABLE `sb_workflow_stages` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_workflow_stages`
--

INSERT INTO `sb_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `checked_out_time`, `checked_out`) VALUES
(1, 57, 1, 1, 1, 'COM_WORKFLOW_BASIC_STAGE', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_workflow_transitions`
--

CREATE TABLE `sb_workflow_transitions` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sb_workflow_transitions`
--

INSERT INTO `sb_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1, 58, 1, 1, 1, 'UNPUBLISH', '', -1, 1, '{\"publishing\":\"0\"}', NULL, NULL),
(2, 59, 2, 1, 1, 'PUBLISH', '', -1, 1, '{\"publishing\":\"1\"}', NULL, NULL),
(3, 60, 3, 1, 1, 'TRASH', '', -1, 1, '{\"publishing\":\"-2\"}', NULL, NULL),
(4, 61, 4, 1, 1, 'ARCHIVE', '', -1, 1, '{\"publishing\":\"2\"}', NULL, NULL),
(5, 62, 5, 1, 1, 'FEATURE', '', -1, 1, '{\"featuring\":\"1\"}', NULL, NULL),
(6, 63, 6, 1, 1, 'UNFEATURE', '', -1, 1, '{\"featuring\":\"0\"}', NULL, NULL),
(7, 64, 7, 1, 1, 'PUBLISH_AND_FEATURE', '', -1, 1, '{\"publishing\":\"1\",\"featuring\":\"1\"}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sb_action_logs`
--
ALTER TABLE `sb_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `sb_action_logs_extensions`
--
ALTER TABLE `sb_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_action_logs_users`
--
ALTER TABLE `sb_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `sb_action_log_config`
--
ALTER TABLE `sb_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_assets`
--
ALTER TABLE `sb_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `sb_associations`
--
ALTER TABLE `sb_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `sb_banners`
--
ALTER TABLE `sb_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_banner_clients`
--
ALTER TABLE `sb_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `sb_banner_tracks`
--
ALTER TABLE `sb_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `sb_categories`
--
ALTER TABLE `sb_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_contact_details`
--
ALTER TABLE `sb_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_content`
--
ALTER TABLE `sb_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `sb_contentitem_tag_map`
--
ALTER TABLE `sb_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `sb_content_frontpage`
--
ALTER TABLE `sb_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `sb_content_rating`
--
ALTER TABLE `sb_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `sb_content_types`
--
ALTER TABLE `sb_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `sb_extensions`
--
ALTER TABLE `sb_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `sb_fields`
--
ALTER TABLE `sb_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_fields_categories`
--
ALTER TABLE `sb_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `sb_fields_groups`
--
ALTER TABLE `sb_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_fields_values`
--
ALTER TABLE `sb_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `sb_finder_filters`
--
ALTER TABLE `sb_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `sb_finder_links`
--
ALTER TABLE `sb_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `sb_finder_links_terms`
--
ALTER TABLE `sb_finder_links_terms`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `sb_finder_logging`
--
ALTER TABLE `sb_finder_logging`
  ADD PRIMARY KEY (`md5sum`),
  ADD KEY `searchterm` (`searchterm`(191));

--
-- Indexes for table `sb_finder_taxonomy`
--
ALTER TABLE `sb_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_level` (`level`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `sb_finder_taxonomy_map`
--
ALTER TABLE `sb_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `sb_finder_terms`
--
ALTER TABLE `sb_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_finder_terms_common`
--
ALTER TABLE `sb_finder_terms_common`
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `sb_finder_tokens`
--
ALTER TABLE `sb_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_context` (`context`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_finder_tokens_aggregate`
--
ALTER TABLE `sb_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `sb_finder_types`
--
ALTER TABLE `sb_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `sb_guidedtours`
--
ALTER TABLE `sb_guidedtours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_uid` (`uid`(191));

--
-- Indexes for table `sb_guidedtour_steps`
--
ALTER TABLE `sb_guidedtour_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tour` (`tour_id`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_history`
--
ALTER TABLE `sb_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `sb_languages`
--
ALTER TABLE `sb_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `sb_mail_templates`
--
ALTER TABLE `sb_mail_templates`
  ADD PRIMARY KEY (`template_id`,`language`);

--
-- Indexes for table `sb_menu`
--
ALTER TABLE `sb_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_menu_types`
--
ALTER TABLE `sb_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `sb_messages`
--
ALTER TABLE `sb_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `sb_messages_cfg`
--
ALTER TABLE `sb_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `sb_modules`
--
ALTER TABLE `sb_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_modules_menu`
--
ALTER TABLE `sb_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `sb_newsfeeds`
--
ALTER TABLE `sb_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_overrider`
--
ALTER TABLE `sb_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_postinstall_messages`
--
ALTER TABLE `sb_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `sb_privacy_consents`
--
ALTER TABLE `sb_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `sb_privacy_requests`
--
ALTER TABLE `sb_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_redirect_links`
--
ALTER TABLE `sb_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modified` (`modified_date`);

--
-- Indexes for table `sb_restaurantmanager_menu`
--
ALTER TABLE `sb_restaurantmanager_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_item_number` (`item_number`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `sb_restaurantmanager_orders`
--
ALTER TABLE `sb_restaurantmanager_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_table_number` (`table_number`),
  ADD KEY `idx_is_paid` (`is_paid`),
  ADD KEY `idx_order_date` (`order_date`),
  ADD KEY `idx_item_number` (`item_number`),
  ADD KEY `idx_sent_to_kitchen` (`sent_to_kitchen`),
  ADD KEY `idx_kitchen_status` (`kitchen_status`);

--
-- Indexes for table `sb_scheduler_logs`
--
ALTER TABLE `sb_scheduler_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_taskname` (`taskname`),
  ADD KEY `idx_tasktype` (`tasktype`),
  ADD KEY `idx_lastdate` (`lastdate`),
  ADD KEY `idx_nextdate` (`nextdate`);

--
-- Indexes for table `sb_scheduler_tasks`
--
ALTER TABLE `sb_scheduler_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_last_exit` (`last_exit_code`),
  ADD KEY `idx_next_exec` (`next_execution`),
  ADD KEY `idx_locked` (`locked`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_cli_exclusive` (`cli_exclusive`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `sb_schemaorg`
--
ALTER TABLE `sb_schemaorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_schemas`
--
ALTER TABLE `sb_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `sb_session`
--
ALTER TABLE `sb_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indexes for table `sb_tags`
--
ALTER TABLE `sb_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `sb_template_overrides`
--
ALTER TABLE `sb_template_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_extension_id` (`extension_id`);

--
-- Indexes for table `sb_template_styles`
--
ALTER TABLE `sb_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indexes for table `sb_tuf_metadata`
--
ALTER TABLE `sb_tuf_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sb_ucm_base`
--
ALTER TABLE `sb_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `sb_ucm_content`
--
ALTER TABLE `sb_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `sb_updates`
--
ALTER TABLE `sb_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `sb_update_sites`
--
ALTER TABLE `sb_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `sb_update_sites_extensions`
--
ALTER TABLE `sb_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `sb_usergroups`
--
ALTER TABLE `sb_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `sb_users`
--
ALTER TABLE `sb_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `sb_user_keys`
--
ALTER TABLE `sb_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sb_user_mfa`
--
ALTER TABLE `sb_user_mfa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `sb_user_notes`
--
ALTER TABLE `sb_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `sb_user_profiles`
--
ALTER TABLE `sb_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `sb_user_usergroup_map`
--
ALTER TABLE `sb_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `sb_viewlevels`
--
ALTER TABLE `sb_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `sb_webauthn_credentials`
--
ALTER TABLE `sb_webauthn_credentials`
  ADD PRIMARY KEY (`id`(100)),
  ADD KEY `user_id` (`user_id`(100));

--
-- Indexes for table `sb_workflows`
--
ALTER TABLE `sb_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_extension` (`extension`),
  ADD KEY `idx_default` (`default`),
  ADD KEY `idx_created` (`created`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_modified` (`modified`),
  ADD KEY `idx_modified_by` (`modified_by`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `sb_workflow_associations`
--
ALTER TABLE `sb_workflow_associations`
  ADD PRIMARY KEY (`item_id`,`extension`),
  ADD KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  ADD KEY `idx_item_id` (`item_id`),
  ADD KEY `idx_stage_id` (`stage_id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Indexes for table `sb_workflow_stages`
--
ALTER TABLE `sb_workflow_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_workflow_id` (`workflow_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_default` (`default`);

--
-- Indexes for table `sb_workflow_transitions`
--
ALTER TABLE `sb_workflow_transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_from_stage_id` (`from_stage_id`),
  ADD KEY `idx_to_stage_id` (`to_stage_id`),
  ADD KEY `idx_workflow_id` (`workflow_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sb_action_logs`
--
ALTER TABLE `sb_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `sb_action_logs_extensions`
--
ALTER TABLE `sb_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sb_action_log_config`
--
ALTER TABLE `sb_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sb_assets`
--
ALTER TABLE `sb_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `sb_banners`
--
ALTER TABLE `sb_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_banner_clients`
--
ALTER TABLE `sb_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_categories`
--
ALTER TABLE `sb_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sb_contact_details`
--
ALTER TABLE `sb_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_content`
--
ALTER TABLE `sb_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sb_content_types`
--
ALTER TABLE `sb_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT for table `sb_extensions`
--
ALTER TABLE `sb_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `sb_fields`
--
ALTER TABLE `sb_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_fields_groups`
--
ALTER TABLE `sb_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_finder_filters`
--
ALTER TABLE `sb_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_finder_links`
--
ALTER TABLE `sb_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sb_finder_taxonomy`
--
ALTER TABLE `sb_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sb_finder_terms`
--
ALTER TABLE `sb_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT for table `sb_finder_types`
--
ALTER TABLE `sb_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sb_guidedtours`
--
ALTER TABLE `sb_guidedtours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sb_guidedtour_steps`
--
ALTER TABLE `sb_guidedtour_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `sb_history`
--
ALTER TABLE `sb_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sb_languages`
--
ALTER TABLE `sb_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sb_menu`
--
ALTER TABLE `sb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `sb_menu_types`
--
ALTER TABLE `sb_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sb_messages`
--
ALTER TABLE `sb_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_modules`
--
ALTER TABLE `sb_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `sb_newsfeeds`
--
ALTER TABLE `sb_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_overrider`
--
ALTER TABLE `sb_overrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `sb_postinstall_messages`
--
ALTER TABLE `sb_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sb_privacy_consents`
--
ALTER TABLE `sb_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_privacy_requests`
--
ALTER TABLE `sb_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_redirect_links`
--
ALTER TABLE `sb_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_restaurantmanager_menu`
--
ALTER TABLE `sb_restaurantmanager_menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `sb_restaurantmanager_orders`
--
ALTER TABLE `sb_restaurantmanager_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_scheduler_logs`
--
ALTER TABLE `sb_scheduler_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_scheduler_tasks`
--
ALTER TABLE `sb_scheduler_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sb_schemaorg`
--
ALTER TABLE `sb_schemaorg`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_tags`
--
ALTER TABLE `sb_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sb_template_overrides`
--
ALTER TABLE `sb_template_overrides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_template_styles`
--
ALTER TABLE `sb_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sb_tuf_metadata`
--
ALTER TABLE `sb_tuf_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sb_ucm_content`
--
ALTER TABLE `sb_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_updates`
--
ALTER TABLE `sb_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `sb_update_sites`
--
ALTER TABLE `sb_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sb_usergroups`
--
ALTER TABLE `sb_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sb_users`
--
ALTER TABLE `sb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sb_user_keys`
--
ALTER TABLE `sb_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_user_mfa`
--
ALTER TABLE `sb_user_mfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_user_notes`
--
ALTER TABLE `sb_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sb_viewlevels`
--
ALTER TABLE `sb_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sb_workflows`
--
ALTER TABLE `sb_workflows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sb_workflow_stages`
--
ALTER TABLE `sb_workflow_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sb_workflow_transitions`
--
ALTER TABLE `sb_workflow_transitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
