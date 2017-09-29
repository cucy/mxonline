/*
Navicat MySQL Data Transfer

Source Server         : mx_aliyun
Source Server Version : 50637
Source Host           : 59.110.163.113:3306
Source Database       : django_channels

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2017-09-29 10:52:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`) USING BTREE,
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add user', '3', 'add_user');
INSERT INTO `auth_permission` VALUES ('8', 'Can change user', '3', 'change_user');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete user', '3', 'delete_user');
INSERT INTO `auth_permission` VALUES ('10', 'Can add group', '4', 'add_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can change group', '4', 'change_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete group', '4', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add room', '7', 'add_room');
INSERT INTO `auth_permission` VALUES ('20', 'Can change room', '7', 'change_room');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete room', '7', 'delete_room');
INSERT INTO `auth_permission` VALUES ('22', 'Can add message', '8', 'add_message');
INSERT INTO `auth_permission` VALUES ('23', 'Can change message', '8', 'change_message');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete message', '8', 'delete_message');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`) USING BTREE,
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for chat_message
-- ----------------------------
DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` longtext NOT NULL,
  `message` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  `room_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_message_timestamp_6bd10941` (`timestamp`) USING BTREE,
  KEY `chat_message_room_id_5e7d8d78` (`room_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat_message
-- ----------------------------

-- ----------------------------
-- Table structure for chat_room
-- ----------------------------
DROP TABLE IF EXISTS `chat_room`;
CREATE TABLE `chat_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat_room
-- ----------------------------
INSERT INTO `chat_room` VALUES ('3', '', '<haikunator.haikunator.Haikunator object at 0x0000');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'chat', 'room');
INSERT INTO `django_content_type` VALUES ('8', 'chat', 'message');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-07-10 08:08:23');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-07-10 08:08:24');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2017-07-10 08:08:25');
INSERT INTO `django_migrations` VALUES ('13', 'chat', '0001_initial', '2017-07-10 08:08:25');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2017-07-10 08:08:25');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('chn1791d9d9c513933e12b296d61d394', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:21');
INSERT INTO `django_session` VALUES ('chn4ba210fb7b0a157fe144f746564ac', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:24');
INSERT INTO `django_session` VALUES ('chnac158d4f22938eb52ae431b9f7b72', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:28');
INSERT INTO `django_session` VALUES ('chna1058bb16c3c3c010aad54483f6b0', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:32');
INSERT INTO `django_session` VALUES ('chnbdf459486f5cfa64743ef085859e0', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:38');
INSERT INTO `django_session` VALUES ('chnd7b222d02c601da474792871a230d', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:42');
INSERT INTO `django_session` VALUES ('chnf029074f23590f6631f5f21c3454e', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:45');
INSERT INTO `django_session` VALUES ('chn76f852918c37f6ef6865ecbb96a3e', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:49');
INSERT INTO `django_session` VALUES ('chn55e3244f03e24c7ad5ebecf120493', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:53');
INSERT INTO `django_session` VALUES ('chnb29cd0569214a7c4cce916f24c4ea', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:22:59');
INSERT INTO `django_session` VALUES ('chna2d310f4db88cc000a78d043886fe', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:23:06');
INSERT INTO `django_session` VALUES ('chndcafc942b3686655928a5c4f9ae6b', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:23:15');
INSERT INTO `django_session` VALUES ('chn962258f12b37d4dac743bb33e2516', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:23:29');
INSERT INTO `django_session` VALUES ('chn6256ec3379772f8f89e713d5d2fbf', 'YTllMGQyYWI3OTkyZDcwYzk3NmI3ZGMzZWMzNjU4MzA3YzllYzZhZTp7fQ==', '2017-07-24 08:23:48');
