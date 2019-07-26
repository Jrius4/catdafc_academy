-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 02:49 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catdadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, '123@gmail.com', 0, 1, 3),
(2, 'kazibwejuliusjunior@gmail.com', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add email address', 8, 'add_emailaddress'),
(30, 'Can change email address', 8, 'change_emailaddress'),
(31, 'Can delete email address', 8, 'delete_emailaddress'),
(32, 'Can view email address', 8, 'view_emailaddress'),
(33, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(34, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(35, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(36, 'Can view email confirmation', 9, 'view_emailconfirmation'),
(37, 'Can add player', 10, 'add_player'),
(38, 'Can change player', 10, 'change_player'),
(39, 'Can delete player', 10, 'delete_player'),
(40, 'Can view player', 10, 'view_player'),
(41, 'Can add author', 11, 'add_author'),
(42, 'Can change author', 11, 'change_author'),
(43, 'Can delete author', 11, 'delete_author'),
(44, 'Can view author', 11, 'view_author'),
(45, 'Can add category', 12, 'add_category'),
(46, 'Can change category', 12, 'change_category'),
(47, 'Can delete category', 12, 'delete_category'),
(48, 'Can view category', 12, 'view_category'),
(49, 'Can add post', 13, 'add_post'),
(50, 'Can change post', 13, 'change_post'),
(51, 'Can delete post', 13, 'delete_post'),
(52, 'Can view post', 13, 'view_post'),
(53, 'Can add post tiny', 14, 'add_posttiny'),
(54, 'Can change post tiny', 14, 'change_posttiny'),
(55, 'Can delete post tiny', 14, 'delete_posttiny'),
(56, 'Can view post tiny', 14, 'view_posttiny'),
(57, 'Can add comment', 15, 'add_comment'),
(58, 'Can change comment', 15, 'change_comment'),
(59, 'Can delete comment', 15, 'delete_comment'),
(60, 'Can view comment', 15, 'view_comment'),
(61, 'Can add post view', 16, 'add_postview'),
(62, 'Can change post view', 16, 'change_postview'),
(63, 'Can delete post view', 16, 'delete_postview'),
(64, 'Can view post view', 16, 'view_postview'),
(65, 'Can add signup', 17, 'add_signup'),
(66, 'Can change signup', 17, 'change_signup'),
(67, 'Can delete signup', 17, 'delete_signup'),
(68, 'Can view signup', 17, 'view_signup'),
(69, 'Can add team position', 18, 'add_teamposition'),
(70, 'Can change team position', 18, 'change_teamposition'),
(71, 'Can delete team position', 18, 'delete_teamposition'),
(72, 'Can view team position', 18, 'view_teamposition'),
(73, 'Can add technical team', 19, 'add_technicalteam'),
(74, 'Can change technical team', 19, 'change_technicalteam'),
(75, 'Can delete technical team', 19, 'delete_technicalteam'),
(76, 'Can view technical team', 19, 'view_technicalteam'),
(77, 'Can add soccer player', 20, 'add_soccerplayer'),
(78, 'Can change soccer player', 20, 'change_soccerplayer'),
(79, 'Can delete soccer player', 20, 'delete_soccerplayer'),
(80, 'Can view soccer player', 20, 'view_soccerplayer'),
(81, 'Can add executive team', 21, 'add_executiveteam'),
(82, 'Can change executive team', 21, 'change_executiveteam'),
(83, 'Can delete executive team', 21, 'delete_executiveteam'),
(84, 'Can view executive team', 21, 'view_executiveteam'),
(85, 'Can add leg', 22, 'add_leg'),
(86, 'Can change leg', 22, 'change_leg'),
(87, 'Can delete leg', 22, 'delete_leg'),
(88, 'Can view leg', 22, 'view_leg'),
(89, 'Can add catda foot', 23, 'add_catdafoot'),
(90, 'Can change catda foot', 23, 'change_catdafoot'),
(91, 'Can delete catda foot', 23, 'delete_catdafoot'),
(92, 'Can view catda foot', 23, 'view_catdafoot'),
(93, 'Can add catda team position', 24, 'add_catdateamposition'),
(94, 'Can change catda team position', 24, 'change_catdateamposition'),
(95, 'Can delete catda team position', 24, 'delete_catdateamposition'),
(96, 'Can view catda team position', 24, 'view_catdateamposition'),
(97, 'Can add catda technical team', 25, 'add_catdatechnicalteam'),
(98, 'Can change catda technical team', 25, 'change_catdatechnicalteam'),
(99, 'Can delete catda technical team', 25, 'delete_catdatechnicalteam'),
(100, 'Can view catda technical team', 25, 'view_catdatechnicalteam'),
(101, 'Can add catda soccer player', 26, 'add_catdasoccerplayer'),
(102, 'Can change catda soccer player', 26, 'change_catdasoccerplayer'),
(103, 'Can delete catda soccer player', 26, 'delete_catdasoccerplayer'),
(104, 'Can view catda soccer player', 26, 'view_catdasoccerplayer'),
(105, 'Can add catda executive team', 27, 'add_catdaexecutiveteam'),
(106, 'Can change catda executive team', 27, 'change_catdaexecutiveteam'),
(107, 'Can delete catda executive team', 27, 'delete_catdaexecutiveteam'),
(108, 'Can view catda executive team', 27, 'view_catdaexecutiveteam'),
(109, 'Can add social account', 28, 'add_socialaccount'),
(110, 'Can change social account', 28, 'change_socialaccount'),
(111, 'Can delete social account', 28, 'delete_socialaccount'),
(112, 'Can view social account', 28, 'view_socialaccount'),
(113, 'Can add social application', 29, 'add_socialapp'),
(114, 'Can change social application', 29, 'change_socialapp'),
(115, 'Can delete social application', 29, 'delete_socialapp'),
(116, 'Can view social application', 29, 'view_socialapp'),
(117, 'Can add social application token', 30, 'add_socialtoken'),
(118, 'Can change social application token', 30, 'change_socialtoken'),
(119, 'Can delete social application token', 30, 'delete_socialtoken'),
(120, 'Can view social application token', 30, 'view_socialtoken'),
(121, 'Can add foot', 31, 'add_foot'),
(122, 'Can change foot', 31, 'change_foot'),
(123, 'Can delete foot', 31, 'delete_foot'),
(124, 'Can view foot', 31, 'view_foot');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$qIeAtQFWXr56$C+y6KAGAe2Mj6QxRFfxe0KWQTNuIU2xex5h4DAZkXP8=', '2019-07-25 06:47:15.307890', 1, 'Administrator', 'Julius Junior', 'Kazibwe', 'kazibwejuliusjunior@gmail.com', 1, 1, '2019-07-24 02:45:10.000000'),
(2, 'pbkdf2_sha256$150000$yp4A08fh90VO$vLj51QP1KAHTCIZv0HoNyGMcuigjmkhpc+jOsz6ctEE=', NULL, 0, 'Raymond', '', '', '', 0, 1, '2019-07-24 03:36:45.224883'),
(3, 'pbkdf2_sha256$150000$gyD3aKLFrpRL$+gE6RYwPokpADg+L9RuSl4H0SKpQcRsuKJkQnTrkV7Y=', '2019-07-24 16:50:10.278352', 0, 'Kaggwa', '', '', '123@gmail.com', 0, 1, '2019-07-24 16:21:54.344169');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catda_catdaexecutiveteam`
--

CREATE TABLE `catda_catdaexecutiveteam` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `bio` longtext DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `bio_picture` varchar(100) NOT NULL,
  `featured_picture` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catda_catdafoot`
--

CREATE TABLE `catda_catdafoot` (
  `id` int(11) NOT NULL,
  `foot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catda_catdafoot`
--

INSERT INTO `catda_catdafoot` (`id`, `foot`) VALUES
(1, 'right'),
(2, 'left'),
(3, 'both');

-- --------------------------------------------------------

--
-- Table structure for table `catda_catdasoccerplayer`
--

CREATE TABLE `catda_catdasoccerplayer` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `bio` longtext DEFAULT NULL,
  `ratings` int(11) DEFAULT NULL,
  `dob` varchar(100) NOT NULL,
  `former_team` varchar(100) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `bio_picture` varchar(100) NOT NULL,
  `featured_picture` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL,
  `team_number` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catda_catdasoccerplayer_catda_strongest_foot`
--

CREATE TABLE `catda_catdasoccerplayer_catda_strongest_foot` (
  `id` int(11) NOT NULL,
  `catdasoccerplayer_id` int(11) NOT NULL,
  `catdafoot_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catda_catdasoccerplayer_catda_team_positions`
--

CREATE TABLE `catda_catdasoccerplayer_catda_team_positions` (
  `id` int(11) NOT NULL,
  `catdasoccerplayer_id` int(11) NOT NULL,
  `catdateamposition_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catda_catdateamposition`
--

CREATE TABLE `catda_catdateamposition` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catda_catdateamposition`
--

INSERT INTO `catda_catdateamposition` (`id`, `title`) VALUES
(1, 'Midfielder'),
(2, 'Defender'),
(3, 'Striker'),
(4, 'Goal Keeper');

-- --------------------------------------------------------

--
-- Table structure for table `catda_catdatechnicalteam`
--

CREATE TABLE `catda_catdatechnicalteam` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `bio` longtext DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `bio_picture` varchar(100) NOT NULL,
  `featured_picture` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-07-24 02:52:33.185566', '1', 'right', 1, '[{\"added\": {}}]', 23, 1),
(2, '2019-07-24 02:52:43.356303', '2', 'left', 1, '[{\"added\": {}}]', 23, 1),
(3, '2019-07-24 02:52:55.929012', '3', 'both', 1, '[{\"added\": {}}]', 23, 1),
(4, '2019-07-24 02:53:25.606126', '1', 'midfielder', 1, '[{\"added\": {}}]', 24, 1),
(5, '2019-07-24 02:53:38.538787', '2', 'Defender', 1, '[{\"added\": {}}]', 24, 1),
(6, '2019-07-24 02:53:49.637917', '3', 'Striker', 1, '[{\"added\": {}}]', 24, 1),
(7, '2019-07-24 02:54:03.497488', '4', 'Goal Keeper', 1, '[{\"added\": {}}]', 24, 1),
(8, '2019-07-24 02:54:13.063722', '1', 'Midfielder', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 24, 1),
(9, '2019-07-24 03:36:45.818545', '2', 'Raymond', 1, '[{\"added\": {}}]', 4, 1),
(10, '2019-07-24 03:36:58.281154', '1', 'Raymond', 1, '[{\"added\": {}}]', 11, 1),
(11, '2019-07-24 03:37:20.568268', '1', 'Kato Micheal', 1, '[{\"added\": {}}]', 26, 1),
(12, '2019-07-24 06:40:38.682562', '2', 'Administrator', 1, '[{\"added\": {}}]', 11, 1),
(13, '2019-07-24 16:24:33.288698', '1', 'Administrator', 2, '[]', 4, 1),
(14, '2019-07-24 16:25:01.152533', '1', 'Administrator', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(15, '2019-07-24 16:52:21.536311', '1', 'Administrator', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(16, '2019-07-24 17:04:23.996040', '1', 'Sport biz', 1, '[{\"added\": {}}]', 12, 1),
(17, '2019-07-24 17:04:37.854749', '1', 'Sport biz', 3, '', 12, 1),
(18, '2019-07-24 17:04:57.436929', '2', 'Uncategorised', 1, '[{\"added\": {}}]', 12, 1),
(19, '2019-07-24 17:08:12.168378', '3', 'Free Biz', 1, '[{\"added\": {}}]', 12, 1),
(20, '2019-07-24 17:09:58.930919', '1', 'Post One', 1, '[{\"added\": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(27, 'catda', 'catdaexecutiveteam'),
(23, 'catda', 'catdafoot'),
(26, 'catda', 'catdasoccerplayer'),
(24, 'catda', 'catdateamposition'),
(25, 'catda', 'catdatechnicalteam'),
(5, 'contenttypes', 'contenttype'),
(17, 'marketing', 'signup'),
(10, 'players', 'player'),
(11, 'posts', 'author'),
(12, 'posts', 'category'),
(15, 'posts', 'comment'),
(13, 'posts', 'post'),
(14, 'posts', 'posttiny'),
(16, 'posts', 'postview'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(21, 'soccerplayers', 'executiveteam'),
(31, 'soccerplayers', 'foot'),
(22, 'soccerplayers', 'leg'),
(20, 'soccerplayers', 'soccerplayer'),
(18, 'soccerplayers', 'teamposition'),
(19, 'soccerplayers', 'technicalteam'),
(28, 'socialaccount', 'socialaccount'),
(29, 'socialaccount', 'socialapp'),
(30, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-07-23 17:44:10.752679'),
(2, 'auth', '0001_initial', '2019-07-23 17:44:13.013416'),
(3, 'account', '0001_initial', '2019-07-23 17:44:22.863874'),
(4, 'account', '0002_email_max_length', '2019-07-23 17:44:25.304823'),
(5, 'admin', '0001_initial', '2019-07-23 17:44:25.732562'),
(6, 'admin', '0002_logentry_remove_auto_add', '2019-07-23 17:44:27.667382'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2019-07-23 17:44:27.975190'),
(8, 'contenttypes', '0002_remove_content_type_name', '2019-07-23 17:44:32.073111'),
(9, 'auth', '0002_alter_permission_name_max_length', '2019-07-23 17:44:32.194037'),
(10, 'auth', '0003_alter_user_email_max_length', '2019-07-23 17:44:32.307966'),
(11, 'auth', '0004_alter_user_username_opts', '2019-07-23 17:44:32.391915'),
(12, 'auth', '0005_alter_user_last_login_null', '2019-07-23 17:44:33.491502'),
(13, 'auth', '0006_require_contenttypes_0002', '2019-07-23 17:44:33.529479'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2019-07-23 17:44:33.610428'),
(15, 'auth', '0008_alter_user_username_max_length', '2019-07-23 17:44:33.773329'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2019-07-23 17:44:34.054160'),
(17, 'auth', '0010_alter_group_name_max_length', '2019-07-23 17:44:34.511879'),
(18, 'auth', '0011_update_proxy_permissions', '2019-07-23 17:44:34.614818'),
(19, 'marketing', '0001_initial', '2019-07-23 17:44:35.240431'),
(20, 'players', '0001_initial', '2019-07-23 17:44:35.543248'),
(21, 'posts', '0001_initial', '2019-07-23 17:44:36.806099'),
(22, 'posts', '0002_post_featured', '2019-07-23 17:44:43.949445'),
(23, 'posts', '0003_auto_20190504_0327', '2019-07-23 17:44:44.073370'),
(24, 'posts', '0004_post_view_count', '2019-07-23 17:44:44.210287'),
(25, 'posts', '0005_post_description', '2019-07-23 17:44:44.323217'),
(26, 'posts', '0006_remove_post_description', '2019-07-23 17:44:44.934517'),
(27, 'posts', '0007_post_description', '2019-07-23 17:44:45.108405'),
(28, 'posts', '0008_posttiny', '2019-07-23 17:44:45.339263'),
(29, 'posts', '0009_auto_20190504_1628', '2019-07-23 17:44:46.186986'),
(30, 'posts', '0010_auto_20190504_1653', '2019-07-23 17:44:46.271934'),
(31, 'posts', '0011_auto_20190504_1906', '2019-07-23 17:44:46.535775'),
(32, 'posts', '0012_comment', '2019-07-23 17:44:51.572102'),
(33, 'posts', '0013_auto_20190505_0758', '2019-07-23 17:44:56.878890'),
(34, 'posts', '0014_auto_20190505_1248', '2019-07-23 17:44:58.145471'),
(35, 'posts', '0015_remove_post_comment_count', '2019-07-23 17:45:02.511424'),
(36, 'sessions', '0001_initial', '2019-07-23 17:45:02.945158'),
(37, 'sites', '0001_initial', '2019-07-23 17:45:03.884583'),
(38, 'sites', '0002_alter_domain_unique', '2019-07-23 17:45:04.350298'),
(39, 'soccerplayers', '0001_initial', '2019-07-23 17:45:05.879507'),
(40, 'soccerplayers', '0002_auto_20190506_0223', '2019-07-23 17:45:16.136589'),
(41, 'soccerplayers', '0003_auto_20190506_0225', '2019-07-23 17:45:17.256287'),
(42, 'soccerplayers', '0004_auto_20190506_0237', '2019-07-23 17:45:22.225297'),
(43, 'catda', '0001_initial', '2019-07-24 02:36:57.449056'),
(44, 'soccerplayers', '0005_auto_20190508_0307', '2019-07-24 02:41:24.617383'),
(45, 'socialaccount', '0001_initial', '2019-07-24 02:41:24.674351'),
(46, 'socialaccount', '0002_token_max_lengths', '2019-07-24 02:41:24.700332'),
(47, 'socialaccount', '0003_extra_data_default_dict', '2019-07-24 02:41:24.756299'),
(48, 'catda', '0002_catdasoccerplayer_team_number', '2019-07-25 06:57:29.585070');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mj2sozwpi4n4etiohyxj31p9dbtv9twb', 'ZTNhYjI2ODA1MzgzNTUzM2E4ZjIwZTZiZDFjZTMxYWQ1MTU2NTE3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzM2NmNjNhMzBlNjdmYzAxZmMzODRmZGZkMjU4OGUwNTA4NjM2YjkwIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2019-08-08 06:47:15.410825');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_signup`
--

CREATE TABLE `marketing_signup` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `timestamp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `players_player`
--

CREATE TABLE `players_player` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` varchar(300) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts_author`
--

CREATE TABLE `posts_author` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_author`
--

INSERT INTO `posts_author` (`id`, `profile_picture`, `user_id`) VALUES
(1, 'WhatsApp_Image_2019-02-28_at_19.07.27.jpeg', 2),
(2, 'WhatsApp_Image_2019-02-28_at_19.07.261.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE `posts_category` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_category`
--

INSERT INTO `posts_category` (`id`, `title`) VALUES
(2, 'Uncategorised'),
(3, 'Free Biz');

-- --------------------------------------------------------

--
-- Table structure for table `posts_comment`
--

CREATE TABLE `posts_comment` (
  `id` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts_post`
--

CREATE TABLE `posts_post` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `overview` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `content` longtext DEFAULT NULL,
  `next_post_id` int(11) DEFAULT NULL,
  `previous_post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_post`
--

INSERT INTO `posts_post` (`id`, `title`, `overview`, `timestamp`, `thumbnail`, `author_id`, `featured`, `content`, `next_post_id`, `previous_post_id`) VALUES
(7, 'TALKING POINTS AFTER MATCHDAY18 KAMPALA REGION LEAGUE.', '<p>\r\nOur win at Lungujja Young Stadium;  Black star 0 : 3 <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.facebook.com/Catdafc/?modal=admin_todo_tour\">Catda</a>, ensured we remain second on the table and here we analyse the 7 key talking points in matchday18. <br></p><br>', '2019-07-25 09:31:14.364086', 'DLI_6765.jpg', 2, 1, '<p>&nbsp;</p>\r\n\r\n<h3>1. Team selection.</h3>\r\n\r\n<div><a href=\"https://www.facebook.com/profile.php?id=100005168145033\" rel=\"nofollow\" target=\"_blank\">Bukenya Micheal,</a>&nbsp;the &quot;Tactician&quot; has over the past games proved his ability to manage a big, very good squad at his disposal. This has been observed for the past 6 games, from the physical Kyebamdo FC to the &quot;Giant Killers&quot; Black Stars FC, with the purposeful alters he has been making. The likes of Ola Denis and Ahmed &quot;Medi 3&quot;. Denis has switched positions while providing the best quality wherever he has been deployed, from playing in the left back to the right wing. He remains among the best performers with 6 goals, among which include the memorable free kicks against Katwe United and Fire Fire FC. Ahmed has been deployed to his left back position and the tactician has always called him onto the bench whenever he saw him tactically unfit for the task.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2.Defence improvement.</h3>\r\n\r\n<div>From the frustrating 3:1 defeat to Ggaba United, the team has been working on its defence and it has gradually improved from conceeding just a goal on three occasions during the Kyebando, Fire Fire away from home and Katwe(Home) games to keeping 3 consecutive clean sheets. Communication among the back liner and our Goalie can&#39;t go unnoticed.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>3. Siraje Ogume Taban&#39;s effect.</h3>\r\n\r\n<p>This lad continues to show his impact in this our winning 11. Ever since his call to the starting 11, we have won 5 of the 6 games played, drawing one. When critically analysed, his positioning looks one of the best on the pitch. Occupying the deep 6 role, he properly shields the defence in most cases just using his movements. Though he has been losing possession at times, his critical passing and switch of the ball from crowded to free areas can not go unnoticed.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Ivan-Fahad partnership.</h3>\r\n\r\n<div>The Masaza boys from Busiro having played for a good time together, seem to form a good partnership in the mid of the pack. With that pace recently being produced by <a href=\"https://www.facebook.com/profile.php?id=100004417005889\" rel=\"nofollow\" target=\"_blank\">Kizito Fahad</a> accompanied by that skillful passing from the other half of the duo, the boys seem UN stoppable. <a href=\"https://www.facebook.com/ivan.gursle\" rel=\"nofollow\" target=\"_blank\">Ivan Mayanja</a> has 7 goals to his name so far this season and the partner has 6 goals, this alone has created a great atmosphere everytime they go to the pitch with a health competition between them. We still await the magic yet to come out of their partnership.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Race for the golden shoe.</h3>\r\n\r\n<div>This looks like an already done deal with the way <a href=\"https://www.facebook.com/ndiwalana.rogers1\" rel=\"nofollow\" target=\"_blank\">Ndiwalana Rogers</a> continues to compete himself. Our talisman looks like he wants to give no chance to the would be his competitors. He yet again produced a magical performance, hitting 3 times Black Star FC&#39;s back of the net. This brings his tally to 17 goals in 17 appearance having missed the would have been 18th appearance against Fire Fire FC when he was left un used on the bench due to an injury.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>6.The fan base.</h3>\r\n\r\n<div>The Lufula based club is enjoying a great support wherever it goes now. With the diversity of the people working in this area, <a href=\"https://www.facebook.com/Catdafc/?modal=admin_todo_tour\" rel=\"nofollow\" target=\"_blank\">Catda FC</a> has support allover Kampala. In huge numbers, fans are always chanting praise on the club which gives courage to the players in the pack to the extent that now even away feels like home. We can not pay back in any other way to our fans other than keeping that smile on your faces. We are the #LufulaBoys.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<h3>7. The chase for the top spot.</h3>\r\n</div>\r\n\r\n<div>Having won our match and <a href=\"https://www.facebook.com/KatweUnitedFC/\" rel=\"nofollow\" target=\"_blank\">Katwe United F.C</a>&#39;s ended square with <a href=\"https://www.facebook.com/kisuguunited/\" rel=\"nofollow\" target=\"_blank\">Kisugu United F.C</a>, we closed the gap from 9 to 7 points. This gives us hope and we are not to rest not until the league ends. The club eyes the top flight and looks forward to being promoted to the Big League, Uganda&#39;s second Division in Football.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Else where as matchday18 ended;</div>\r\n\r\n<div>\r\n<div>&nbsp;</div>\r\n\r\n<div>Edgar&#39;s 0 : 1 Lungujja galaxy.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Miracle 1 : 1 Firefire.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Wembley 2 : 1 Sc Lamansia.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Industrial area 1 : 0 Kyebando.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Kisugu 1 : 1 Katwe.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>St Mary&#39;s 0 : 0 Ggaba.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Nansana 0 : 1 Bweyigerere.</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_posttiny`
--

CREATE TABLE `posts_posttiny` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `draft` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts_postview`
--

CREATE TABLE `posts_postview` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts_post_categories`
--

CREATE TABLE `posts_post_categories` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_post_categories`
--

INSERT INTO `posts_post_categories` (`id`, `post_id`, `category_id`) VALUES
(11, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `soccerplayers_executiveteam`
--

CREATE TABLE `soccerplayers_executiveteam` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `bio` longtext DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `bio_picture` varchar(100) NOT NULL,
  `featured_picture` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soccerplayers_foot`
--

CREATE TABLE `soccerplayers_foot` (
  `id` int(11) NOT NULL,
  `foot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soccerplayers_leg`
--

CREATE TABLE `soccerplayers_leg` (
  `id` int(11) NOT NULL,
  `leg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soccerplayers_soccerplayer`
--

CREATE TABLE `soccerplayers_soccerplayer` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `bio` longtext DEFAULT NULL,
  `ratings` int(11) DEFAULT NULL,
  `dob` varchar(100) NOT NULL,
  `former_team` varchar(100) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `bio_picture` varchar(100) NOT NULL,
  `featured_picture` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soccerplayers_soccerplayer_strongest_foot`
--

CREATE TABLE `soccerplayers_soccerplayer_strongest_foot` (
  `id` int(11) NOT NULL,
  `soccerplayer_id` int(11) NOT NULL,
  `leg_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soccerplayers_soccerplayer_team_positions`
--

CREATE TABLE `soccerplayers_soccerplayer_team_positions` (
  `id` int(11) NOT NULL,
  `soccerplayer_id` int(11) NOT NULL,
  `teamposition_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soccerplayers_teamposition`
--

CREATE TABLE `soccerplayers_teamposition` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soccerplayers_technicalteam`
--

CREATE TABLE `soccerplayers_technicalteam` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `bio` longtext DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `bio_picture` varchar(100) NOT NULL,
  `featured_picture` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `catda_catdaexecutiveteam`
--
ALTER TABLE `catda_catdaexecutiveteam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catda_catdaexecutiveteam_author_id_2e933047_fk_posts_author_id` (`author_id`);

--
-- Indexes for table `catda_catdafoot`
--
ALTER TABLE `catda_catdafoot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catda_catdasoccerplayer`
--
ALTER TABLE `catda_catdasoccerplayer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catda_catdasoccerplayer_author_id_6eb8fe90_fk_posts_author_id` (`author_id`);

--
-- Indexes for table `catda_catdasoccerplayer_catda_strongest_foot`
--
ALTER TABLE `catda_catdasoccerplayer_catda_strongest_foot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catda_catdasoccerplayer__catdasoccerplayer_id_cat_63c64447_uniq` (`catdasoccerplayer_id`,`catdafoot_id`),
  ADD KEY `catda_catdasoccerpla_catdafoot_id_83d597a4_fk_catda_cat` (`catdafoot_id`);

--
-- Indexes for table `catda_catdasoccerplayer_catda_team_positions`
--
ALTER TABLE `catda_catdasoccerplayer_catda_team_positions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catda_catdasoccerplayer__catdasoccerplayer_id_cat_60b8b88b_uniq` (`catdasoccerplayer_id`,`catdateamposition_id`),
  ADD KEY `catda_catdasoccerpla_catdateamposition_id_415a4db0_fk_catda_cat` (`catdateamposition_id`);

--
-- Indexes for table `catda_catdateamposition`
--
ALTER TABLE `catda_catdateamposition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catda_catdatechnicalteam`
--
ALTER TABLE `catda_catdatechnicalteam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catda_catdatechnicalteam_author_id_4930b73f_fk_posts_author_id` (`author_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `marketing_signup`
--
ALTER TABLE `marketing_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players_player`
--
ALTER TABLE `players_player`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_author`
--
ALTER TABLE `posts_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_comment`
--
ALTER TABLE `posts_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_comment_post_id_e81436d7_fk_posts_post_id` (`post_id`),
  ADD KEY `posts_comment_user_id_ad949c47` (`user_id`);

--
-- Indexes for table `posts_post`
--
ALTER TABLE `posts_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_author_id_fe5487bf_fk_posts_author_id` (`author_id`),
  ADD KEY `posts_post_next_post_id_352acb34_fk_posts_post_id` (`next_post_id`),
  ADD KEY `posts_post_previous_post_id_1d466c29_fk_posts_post_id` (`previous_post_id`);

--
-- Indexes for table `posts_posttiny`
--
ALTER TABLE `posts_posttiny`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_postview`
--
ALTER TABLE `posts_postview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_postview_post_id_78614b09_fk_posts_post_id` (`post_id`),
  ADD KEY `posts_postview_user_id_2617af86_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `posts_post_categories`
--
ALTER TABLE `posts_post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_post_categories_post_id_category_id_00bce8d0_uniq` (`post_id`,`category_id`),
  ADD KEY `posts_post_categories_category_id_159f5c54_fk_posts_category_id` (`category_id`);

--
-- Indexes for table `soccerplayers_executiveteam`
--
ALTER TABLE `soccerplayers_executiveteam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `soccerplayers_execut_author_id_cc22257d_fk_posts_aut` (`author_id`);

--
-- Indexes for table `soccerplayers_foot`
--
ALTER TABLE `soccerplayers_foot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soccerplayers_leg`
--
ALTER TABLE `soccerplayers_leg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soccerplayers_soccerplayer`
--
ALTER TABLE `soccerplayers_soccerplayer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `soccerplayers_soccerplayer_author_id_b0242a29_fk_posts_author_id` (`author_id`);

--
-- Indexes for table `soccerplayers_soccerplayer_strongest_foot`
--
ALTER TABLE `soccerplayers_soccerplayer_strongest_foot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `soccerplayers_soccerplay_soccerplayer_id_leg_id_c1a57fd2_uniq` (`soccerplayer_id`,`leg_id`),
  ADD KEY `soccerplayers_soccer_leg_id_b718260f_fk_soccerpla` (`leg_id`);

--
-- Indexes for table `soccerplayers_soccerplayer_team_positions`
--
ALTER TABLE `soccerplayers_soccerplayer_team_positions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `soccerplayers_soccerplay_soccerplayer_id_teamposi_a62e2bee_uniq` (`soccerplayer_id`,`teamposition_id`),
  ADD KEY `soccerplayers_soccer_teamposition_id_af4f7e00_fk_soccerpla` (`teamposition_id`);

--
-- Indexes for table `soccerplayers_teamposition`
--
ALTER TABLE `soccerplayers_teamposition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soccerplayers_technicalteam`
--
ALTER TABLE `soccerplayers_technicalteam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `soccerplayers_techni_author_id_b75d73cb_fk_posts_aut` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catda_catdaexecutiveteam`
--
ALTER TABLE `catda_catdaexecutiveteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catda_catdafoot`
--
ALTER TABLE `catda_catdafoot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catda_catdasoccerplayer`
--
ALTER TABLE `catda_catdasoccerplayer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catda_catdasoccerplayer_catda_strongest_foot`
--
ALTER TABLE `catda_catdasoccerplayer_catda_strongest_foot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catda_catdasoccerplayer_catda_team_positions`
--
ALTER TABLE `catda_catdasoccerplayer_catda_team_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catda_catdateamposition`
--
ALTER TABLE `catda_catdateamposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catda_catdatechnicalteam`
--
ALTER TABLE `catda_catdatechnicalteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketing_signup`
--
ALTER TABLE `marketing_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players_player`
--
ALTER TABLE `players_player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_author`
--
ALTER TABLE `posts_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts_category`
--
ALTER TABLE `posts_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts_comment`
--
ALTER TABLE `posts_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_post`
--
ALTER TABLE `posts_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts_posttiny`
--
ALTER TABLE `posts_posttiny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_postview`
--
ALTER TABLE `posts_postview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_post_categories`
--
ALTER TABLE `posts_post_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `soccerplayers_executiveteam`
--
ALTER TABLE `soccerplayers_executiveteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soccerplayers_foot`
--
ALTER TABLE `soccerplayers_foot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soccerplayers_leg`
--
ALTER TABLE `soccerplayers_leg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soccerplayers_soccerplayer`
--
ALTER TABLE `soccerplayers_soccerplayer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soccerplayers_soccerplayer_strongest_foot`
--
ALTER TABLE `soccerplayers_soccerplayer_strongest_foot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soccerplayers_soccerplayer_team_positions`
--
ALTER TABLE `soccerplayers_soccerplayer_team_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soccerplayers_teamposition`
--
ALTER TABLE `soccerplayers_teamposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soccerplayers_technicalteam`
--
ALTER TABLE `soccerplayers_technicalteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `catda_catdaexecutiveteam`
--
ALTER TABLE `catda_catdaexecutiveteam`
  ADD CONSTRAINT `catda_catdaexecutiveteam_author_id_2e933047_fk_posts_author_id` FOREIGN KEY (`author_id`) REFERENCES `posts_author` (`id`);

--
-- Constraints for table `catda_catdasoccerplayer`
--
ALTER TABLE `catda_catdasoccerplayer`
  ADD CONSTRAINT `catda_catdasoccerplayer_author_id_6eb8fe90_fk_posts_author_id` FOREIGN KEY (`author_id`) REFERENCES `posts_author` (`id`);

--
-- Constraints for table `catda_catdasoccerplayer_catda_strongest_foot`
--
ALTER TABLE `catda_catdasoccerplayer_catda_strongest_foot`
  ADD CONSTRAINT `catda_catdasoccerpla_catdafoot_id_83d597a4_fk_catda_cat` FOREIGN KEY (`catdafoot_id`) REFERENCES `catda_catdafoot` (`id`),
  ADD CONSTRAINT `catda_catdasoccerpla_catdasoccerplayer_id_e781da6e_fk_catda_cat` FOREIGN KEY (`catdasoccerplayer_id`) REFERENCES `catda_catdasoccerplayer` (`id`);

--
-- Constraints for table `catda_catdasoccerplayer_catda_team_positions`
--
ALTER TABLE `catda_catdasoccerplayer_catda_team_positions`
  ADD CONSTRAINT `catda_catdasoccerpla_catdasoccerplayer_id_98bd1fcf_fk_catda_cat` FOREIGN KEY (`catdasoccerplayer_id`) REFERENCES `catda_catdasoccerplayer` (`id`),
  ADD CONSTRAINT `catda_catdasoccerpla_catdateamposition_id_415a4db0_fk_catda_cat` FOREIGN KEY (`catdateamposition_id`) REFERENCES `catda_catdateamposition` (`id`);

--
-- Constraints for table `catda_catdatechnicalteam`
--
ALTER TABLE `catda_catdatechnicalteam`
  ADD CONSTRAINT `catda_catdatechnicalteam_author_id_4930b73f_fk_posts_author_id` FOREIGN KEY (`author_id`) REFERENCES `posts_author` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_author`
--
ALTER TABLE `posts_author`
  ADD CONSTRAINT `posts_author_user_id_85633b4e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_comment`
--
ALTER TABLE `posts_comment`
  ADD CONSTRAINT `posts_comment_post_id_e81436d7_fk_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts_post` (`id`),
  ADD CONSTRAINT `posts_comment_user_id_ad949c47_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_post`
--
ALTER TABLE `posts_post`
  ADD CONSTRAINT `posts_post_author_id_fe5487bf_fk_posts_author_id` FOREIGN KEY (`author_id`) REFERENCES `posts_author` (`id`),
  ADD CONSTRAINT `posts_post_next_post_id_352acb34_fk_posts_post_id` FOREIGN KEY (`next_post_id`) REFERENCES `posts_post` (`id`),
  ADD CONSTRAINT `posts_post_previous_post_id_1d466c29_fk_posts_post_id` FOREIGN KEY (`previous_post_id`) REFERENCES `posts_post` (`id`);

--
-- Constraints for table `posts_postview`
--
ALTER TABLE `posts_postview`
  ADD CONSTRAINT `posts_postview_post_id_78614b09_fk_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts_post` (`id`),
  ADD CONSTRAINT `posts_postview_user_id_2617af86_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_post_categories`
--
ALTER TABLE `posts_post_categories`
  ADD CONSTRAINT `posts_post_categories_category_id_159f5c54_fk_posts_category_id` FOREIGN KEY (`category_id`) REFERENCES `posts_category` (`id`),
  ADD CONSTRAINT `posts_post_categories_post_id_0ca7af15_fk_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts_post` (`id`);

--
-- Constraints for table `soccerplayers_executiveteam`
--
ALTER TABLE `soccerplayers_executiveteam`
  ADD CONSTRAINT `soccerplayers_execut_author_id_cc22257d_fk_posts_aut` FOREIGN KEY (`author_id`) REFERENCES `posts_author` (`id`);

--
-- Constraints for table `soccerplayers_soccerplayer`
--
ALTER TABLE `soccerplayers_soccerplayer`
  ADD CONSTRAINT `soccerplayers_soccerplayer_author_id_b0242a29_fk_posts_author_id` FOREIGN KEY (`author_id`) REFERENCES `posts_author` (`id`);

--
-- Constraints for table `soccerplayers_soccerplayer_strongest_foot`
--
ALTER TABLE `soccerplayers_soccerplayer_strongest_foot`
  ADD CONSTRAINT `soccerplayers_soccer_leg_id_b718260f_fk_soccerpla` FOREIGN KEY (`leg_id`) REFERENCES `soccerplayers_leg` (`id`),
  ADD CONSTRAINT `soccerplayers_soccer_soccerplayer_id_e920902c_fk_soccerpla` FOREIGN KEY (`soccerplayer_id`) REFERENCES `soccerplayers_soccerplayer` (`id`);

--
-- Constraints for table `soccerplayers_soccerplayer_team_positions`
--
ALTER TABLE `soccerplayers_soccerplayer_team_positions`
  ADD CONSTRAINT `soccerplayers_soccer_soccerplayer_id_715f3e7e_fk_soccerpla` FOREIGN KEY (`soccerplayer_id`) REFERENCES `soccerplayers_soccerplayer` (`id`),
  ADD CONSTRAINT `soccerplayers_soccer_teamposition_id_af4f7e00_fk_soccerpla` FOREIGN KEY (`teamposition_id`) REFERENCES `soccerplayers_teamposition` (`id`);

--
-- Constraints for table `soccerplayers_technicalteam`
--
ALTER TABLE `soccerplayers_technicalteam`
  ADD CONSTRAINT `soccerplayers_techni_author_id_b75d73cb_fk_posts_aut` FOREIGN KEY (`author_id`) REFERENCES `posts_author` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
