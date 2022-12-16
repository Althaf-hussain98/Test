-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 09:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add owner', 8, 'add_owner'),
(30, 'Can change owner', 8, 'change_owner'),
(31, 'Can delete owner', 8, 'delete_owner'),
(32, 'Can view owner', 8, 'view_owner'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products'),
(37, 'Can add buying', 10, 'add_buying'),
(38, 'Can change buying', 10, 'change_buying'),
(39, 'Can delete buying', 10, 'delete_buying'),
(40, 'Can view buying', 10, 'view_buying');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'homestoreapp', 'buying'),
(7, 'homestoreapp', 'customer'),
(8, 'homestoreapp', 'owner'),
(9, 'homestoreapp', 'products'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-16 05:13:22.719660'),
(2, 'auth', '0001_initial', '2022-12-16 05:13:32.865855'),
(3, 'admin', '0001_initial', '2022-12-16 05:13:36.106461'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-16 05:13:36.155138'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-16 05:13:36.201968'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-16 05:13:37.161594'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-16 05:13:38.567758'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-16 05:13:38.739625'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-16 05:13:38.817757'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-16 05:13:39.789103'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-16 05:13:39.835975'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-16 05:13:39.914095'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-16 05:13:40.039121'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-16 05:13:40.179701'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-16 05:13:40.351565'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-16 05:13:40.398438'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-16 05:13:40.539051'),
(18, 'homestoreapp', '0001_initial', '2022-12-16 05:13:46.522738'),
(19, 'homestoreapp', '0002_rename_price_products_decription_products_upload', '2022-12-16 05:13:46.892755'),
(20, 'homestoreapp', '0003_products_category', '2022-12-16 05:13:47.126585'),
(21, 'homestoreapp', '0004_rename_decription_products_description', '2022-12-16 05:13:47.245981'),
(22, 'homestoreapp', '0005_products_price', '2022-12-16 05:13:47.464896'),
(23, 'homestoreapp', '0006_products_productid', '2022-12-16 05:13:47.636786'),
(24, 'homestoreapp', '0007_remove_products_productid_buying_name', '2022-12-16 05:13:47.888376'),
(25, 'homestoreapp', '0008_alter_buying_paymwnt', '2022-12-16 05:13:47.950852'),
(26, 'homestoreapp', '0009_alter_buying_status', '2022-12-16 05:13:47.998640'),
(27, 'homestoreapp', '0010_buying_userratings', '2022-12-16 05:13:48.220482'),
(28, 'homestoreapp', '0011_remove_buying_userratings', '2022-12-16 05:13:48.454875'),
(29, 'homestoreapp', '0012_user_ratings', '2022-12-16 05:13:52.137833'),
(30, 'homestoreapp', '0013_delete_user_ratings', '2022-12-16 05:13:52.358937'),
(31, 'sessions', '0001_initial', '2022-12-16 05:13:53.041873');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hr5zsagckd2joija9nxvgjpfxd21r8p4', 'eyJvbmFtZSI6ImFkbWluIiwidXNlcm5hbWUiOiJhbHRoYWYiLCJ1aWQiOjJ9:1p668X:_rhTpFl3WcpM39sAvgKQ-1_6ui76PflRS5o-JdRSEIQ', '2022-12-30 08:32:09.199351');

-- --------------------------------------------------------

--
-- Table structure for table `homestoreapp_buying`
--

CREATE TABLE `homestoreapp_buying` (
  `id` bigint(20) NOT NULL,
  `deliver_address` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `paymwnt` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ownerid_id` bigint(20) NOT NULL,
  `purchasingitem_id` bigint(20) NOT NULL,
  `userid_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homestoreapp_buying`
--

INSERT INTO `homestoreapp_buying` (`id`, `deliver_address`, `contact_no`, `paymwnt`, `status`, `ownerid_id`, `purchasingitem_id`, `userid_id`, `name`) VALUES
(3, '', '', 'Pending', 'awaiting', 1, 2, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `homestoreapp_customer`
--

CREATE TABLE `homestoreapp_customer` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homestoreapp_customer`
--

INSERT INTO `homestoreapp_customer` (`id`, `username`, `email`, `phone`, `address`, `password`, `status`) VALUES
(1, 'Jhon Wick', 'Jhonwick@outlook.com', '', '', '83e81cf2ef2fc424098edd1a75c41075', '0'),
(2, 'althaf', 'altis958@gmail.com', '', '', '202cb962ac59075b964b07152d234b70', '0');

-- --------------------------------------------------------

--
-- Table structure for table `homestoreapp_owner`
--

CREATE TABLE `homestoreapp_owner` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homestoreapp_owner`
--

INSERT INTO `homestoreapp_owner` (`id`, `username`, `email`, `phone`, `address`, `password`, `status`) VALUES
(1, 'admin', '', '', '', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `homestoreapp_products`
--

CREATE TABLE `homestoreapp_products` (
  `id` bigint(20) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `owner_id_id` bigint(20) NOT NULL,
  `upload` varchar(100) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homestoreapp_products`
--

INSERT INTO `homestoreapp_products` (`id`, `productname`, `description`, `owner_id_id`, `upload`, `category`, `price`) VALUES
(2, 'Product2', ' DISCRIPTION2', 1, 'uploads/jj_rv4Mt9t.jpg', 'category2', '1500'),
(3, 'Product3', ' DISCRIPTION 3', 1, 'uploads/lgtv_pjiUBxN_9JqCWfu.jpeg', 'category3', '10000');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `homestoreapp_buying`
--
ALTER TABLE `homestoreapp_buying`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homestoreapp_buying_ownerid_id_5485d28c_fk_homestoreapp_owner_id` (`ownerid_id`),
  ADD KEY `homestoreapp_buying_purchasingitem_id_f44b9871_fk_homestore` (`purchasingitem_id`),
  ADD KEY `homestoreapp_buying_userid_id_afaa415c_fk_homestore` (`userid_id`);

--
-- Indexes for table `homestoreapp_customer`
--
ALTER TABLE `homestoreapp_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homestoreapp_owner`
--
ALTER TABLE `homestoreapp_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homestoreapp_products`
--
ALTER TABLE `homestoreapp_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homestoreapp_product_owner_id_id_f3469fc3_fk_homestore` (`owner_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `homestoreapp_buying`
--
ALTER TABLE `homestoreapp_buying`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homestoreapp_customer`
--
ALTER TABLE `homestoreapp_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homestoreapp_owner`
--
ALTER TABLE `homestoreapp_owner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homestoreapp_products`
--
ALTER TABLE `homestoreapp_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `homestoreapp_buying`
--
ALTER TABLE `homestoreapp_buying`
  ADD CONSTRAINT `homestoreapp_buying_ownerid_id_5485d28c_fk_homestoreapp_owner_id` FOREIGN KEY (`ownerid_id`) REFERENCES `homestoreapp_owner` (`id`),
  ADD CONSTRAINT `homestoreapp_buying_purchasingitem_id_f44b9871_fk_homestore` FOREIGN KEY (`purchasingitem_id`) REFERENCES `homestoreapp_products` (`id`),
  ADD CONSTRAINT `homestoreapp_buying_userid_id_afaa415c_fk_homestore` FOREIGN KEY (`userid_id`) REFERENCES `homestoreapp_customer` (`id`);

--
-- Constraints for table `homestoreapp_products`
--
ALTER TABLE `homestoreapp_products`
  ADD CONSTRAINT `homestoreapp_product_owner_id_id_f3469fc3_fk_homestore` FOREIGN KEY (`owner_id_id`) REFERENCES `homestoreapp_owner` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
