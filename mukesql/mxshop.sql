/*
Navicat MySQL Data Transfer

Source Server         : mx_aliyun
Source Server Version : 50637
Source Host           : 59.110.163.113:3306
Source Database       : mxshop

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2017-09-29 10:42:25
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissions_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`group_id`) REFER `mxshop/auth_group`(`id`); (`permission';

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
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`) USING BTREE,
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`content_type_id`) REFER `mxshop/django_content_type`(`id';

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add permission', '1', 'add_permission');
INSERT INTO `auth_permission` VALUES ('2', 'Can change permission', '1', 'change_permission');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete permission', '1', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add content type', '3', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('8', 'Can change content type', '3', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete content type', '3', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('10', 'Can add session', '4', 'add_session');
INSERT INTO `auth_permission` VALUES ('11', 'Can change session', '4', 'change_session');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete session', '4', 'delete_session');
INSERT INTO `auth_permission` VALUES ('13', 'Can add 用户', '5', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('14', 'Can change 用户', '5', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete 用户', '5', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 短信验证码', '6', 'add_verifycode');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 短信验证码', '6', 'change_verifycode');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 短信验证码', '6', 'delete_verifycode');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 轮播商品', '7', 'add_banner');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 轮播商品', '7', 'change_banner');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 轮播商品', '7', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 商品', '8', 'add_goods');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 商品', '8', 'change_goods');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 商品', '8', 'delete_goods');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 商品类别', '9', 'add_goodscategory');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 商品类别', '9', 'change_goodscategory');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 商品类别', '9', 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 品牌', '10', 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 品牌', '10', 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 品牌', '10', 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 商品图片', '11', 'add_goodsimage');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 商品图片', '11', 'change_goodsimage');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 商品图片', '11', 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 订单商品', '12', 'add_ordergoods');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 订单商品', '12', 'change_ordergoods');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 订单商品', '12', 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 订单', '13', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 订单', '13', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 订单', '13', 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 购物车', '14', 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 购物车', '14', 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 购物车', '14', 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 收货地址', '15', 'add_useraddress');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 收货地址', '15', 'change_useraddress');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 收货地址', '15', 'delete_useraddress');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 用户收藏', '16', 'add_userfav');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 用户收藏', '16', 'change_userfav');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 用户收藏', '16', 'delete_userfav');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户留言', '17', 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户留言', '17', 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户留言', '17', 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('52', 'Can view group', '2', 'view_group');
INSERT INTO `auth_permission` VALUES ('53', 'Can view permission', '1', 'view_permission');
INSERT INTO `auth_permission` VALUES ('54', 'Can view content type', '3', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('55', 'Can view 轮播商品', '7', 'view_banner');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 商品', '8', 'view_goods');
INSERT INTO `auth_permission` VALUES ('57', 'Can view 商品类别', '9', 'view_goodscategory');
INSERT INTO `auth_permission` VALUES ('58', 'Can view 品牌', '10', 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('59', 'Can view 商品图片', '11', 'view_goodsimage');
INSERT INTO `auth_permission` VALUES ('60', 'Can view session', '4', 'view_session');
INSERT INTO `auth_permission` VALUES ('61', 'Can view 订单商品', '12', 'view_ordergoods');
INSERT INTO `auth_permission` VALUES ('62', 'Can view 订单', '13', 'view_orderinfo');
INSERT INTO `auth_permission` VALUES ('63', 'Can view 购物车', '14', 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 用户', '5', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('65', 'Can view 短信验证码', '6', 'view_verifycode');
INSERT INTO `auth_permission` VALUES ('66', 'Can view 收货地址', '15', 'view_useraddress');
INSERT INTO `auth_permission` VALUES ('67', 'Can view 用户收藏', '16', 'view_userfav');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 用户留言', '17', 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('69', 'Can add Bookmark', '18', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('70', 'Can change Bookmark', '18', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete Bookmark', '18', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('72', 'Can add User Setting', '19', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('73', 'Can change User Setting', '19', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('74', 'Can delete User Setting', '19', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('75', 'Can add User Widget', '20', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('76', 'Can change User Widget', '20', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('77', 'Can delete User Widget', '20', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('78', 'Can add log entry', '21', 'add_log');
INSERT INTO `auth_permission` VALUES ('79', 'Can change log entry', '21', 'change_log');
INSERT INTO `auth_permission` VALUES ('80', 'Can delete log entry', '21', 'delete_log');
INSERT INTO `auth_permission` VALUES ('81', 'Can view Bookmark', '18', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('82', 'Can view log entry', '21', 'view_log');
INSERT INTO `auth_permission` VALUES ('83', 'Can view User Setting', '19', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('84', 'Can view User Widget', '20', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('85', 'Can add Token', '22', 'add_token');
INSERT INTO `auth_permission` VALUES ('86', 'Can change Token', '22', 'change_token');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete Token', '22', 'delete_token');
INSERT INTO `auth_permission` VALUES ('88', 'Can view Token', '22', 'view_token');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 热搜词', '23', 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 热搜词', '23', 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 热搜词', '23', 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 热搜词', '23', 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('93', 'Can add association', '24', 'add_association');
INSERT INTO `auth_permission` VALUES ('94', 'Can change association', '24', 'change_association');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete association', '24', 'delete_association');
INSERT INTO `auth_permission` VALUES ('96', 'Can add code', '25', 'add_code');
INSERT INTO `auth_permission` VALUES ('97', 'Can change code', '25', 'change_code');
INSERT INTO `auth_permission` VALUES ('98', 'Can delete code', '25', 'delete_code');
INSERT INTO `auth_permission` VALUES ('99', 'Can add nonce', '26', 'add_nonce');
INSERT INTO `auth_permission` VALUES ('100', 'Can change nonce', '26', 'change_nonce');
INSERT INTO `auth_permission` VALUES ('101', 'Can delete nonce', '26', 'delete_nonce');
INSERT INTO `auth_permission` VALUES ('102', 'Can add user social auth', '27', 'add_usersocialauth');
INSERT INTO `auth_permission` VALUES ('103', 'Can change user social auth', '27', 'change_usersocialauth');
INSERT INTO `auth_permission` VALUES ('104', 'Can delete user social auth', '27', 'delete_usersocialauth');
INSERT INTO `auth_permission` VALUES ('105', 'Can add partial', '28', 'add_partial');
INSERT INTO `auth_permission` VALUES ('106', 'Can change partial', '28', 'change_partial');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete partial', '28', 'delete_partial');
INSERT INTO `auth_permission` VALUES ('108', 'Can add 首页商品类别广告', '29', 'add_indexad');
INSERT INTO `auth_permission` VALUES ('109', 'Can change 首页商品类别广告', '29', 'change_indexad');
INSERT INTO `auth_permission` VALUES ('110', 'Can delete 首页商品类别广告', '29', 'delete_indexad');
INSERT INTO `auth_permission` VALUES ('111', 'Can add log entry', '30', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('112', 'Can change log entry', '30', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('113', 'Can delete log entry', '30', 'delete_logentry');

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `authtoken_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`user_id`) REFER `mxshop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------
INSERT INTO `authtoken_token` VALUES ('2fc8066ed9d95ac824960286fdaf891f79b932d6', '2017-08-02 23:38:02', '1');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('30', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('1', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('22', 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES ('3', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'goods', 'banner');
INSERT INTO `django_content_type` VALUES ('8', 'goods', 'goods');
INSERT INTO `django_content_type` VALUES ('9', 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES ('10', 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES ('11', 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES ('23', 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES ('29', 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES ('4', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('24', 'social_django', 'association');
INSERT INTO `django_content_type` VALUES ('25', 'social_django', 'code');
INSERT INTO `django_content_type` VALUES ('26', 'social_django', 'nonce');
INSERT INTO `django_content_type` VALUES ('28', 'social_django', 'partial');
INSERT INTO `django_content_type` VALUES ('27', 'social_django', 'usersocialauth');
INSERT INTO `django_content_type` VALUES ('12', 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES ('13', 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('14', 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES ('5', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES ('15', 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES ('16', 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES ('17', 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES ('18', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('19', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('20', 'xadmin', 'userwidget');

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-07-25 16:29:50');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2017-07-25 16:29:50');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2017-07-25 16:29:51');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2017-07-25 16:29:51');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2017-07-25 16:29:51');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2017-07-25 16:29:51');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2017-07-25 16:29:51');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2017-07-25 16:29:51');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2017-07-25 16:29:51');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2017-07-25 16:29:51');
INSERT INTO `django_migrations` VALUES ('11', 'goods', '0001_initial', '2017-07-25 16:29:53');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2017-07-25 16:29:53');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2017-07-25 16:29:54');
INSERT INTO `django_migrations` VALUES ('14', 'trade', '0001_initial', '2017-07-25 16:29:55');
INSERT INTO `django_migrations` VALUES ('15', 'trade', '0002_auto_20170726_0027', '2017-07-25 16:29:56');
INSERT INTO `django_migrations` VALUES ('16', 'user_operation', '0001_initial', '2017-07-25 16:29:56');
INSERT INTO `django_migrations` VALUES ('17', 'user_operation', '0002_auto_20170726_0027', '2017-07-25 16:29:57');
INSERT INTO `django_migrations` VALUES ('18', 'goods', '0002_auto_20170726_0033', '2017-07-25 16:36:00');
INSERT INTO `django_migrations` VALUES ('19', 'goods', '0003_goodscategorybrand_cagetory', '2017-07-26 14:22:48');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0001_initial', '2017-07-26 14:22:50');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0002_log', '2017-07-26 14:22:50');
INSERT INTO `django_migrations` VALUES ('22', 'xadmin', '0003_auto_20160715_0100', '2017-07-26 14:22:51');
INSERT INTO `django_migrations` VALUES ('23', 'goods', '0004_auto_20170726_2244', '2017-07-26 22:44:47');
INSERT INTO `django_migrations` VALUES ('24', 'authtoken', '0001_initial', '2017-08-02 23:29:01');
INSERT INTO `django_migrations` VALUES ('25', 'authtoken', '0002_auto_20160226_1747', '2017-08-02 23:29:01');
INSERT INTO `django_migrations` VALUES ('26', 'goods', '0005_auto_20170802_2328', '2017-08-02 23:29:01');
INSERT INTO `django_migrations` VALUES ('27', 'goods', '0006_hotsearchwords', '2017-08-04 21:57:30');
INSERT INTO `django_migrations` VALUES ('28', 'goods', '0007_auto_20170804_2159', '2017-08-04 21:59:13');
INSERT INTO `django_migrations` VALUES ('29', 'users', '0002_auto_20170805_1207', '2017-08-05 12:07:53');
INSERT INTO `django_migrations` VALUES ('30', 'user_operation', '0003_auto_20170805_2352', '2017-08-05 23:52:35');
INSERT INTO `django_migrations` VALUES ('31', 'user_operation', '0004_auto_20170807_2331', '2017-08-07 23:32:12');
INSERT INTO `django_migrations` VALUES ('32', 'trade', '0003_auto_20170818_0019', '2017-08-18 00:20:06');
INSERT INTO `django_migrations` VALUES ('33', 'default', '0001_initial', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('34', 'social_auth', '0001_initial', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('35', 'default', '0002_add_related_name', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('36', 'social_auth', '0002_add_related_name', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('37', 'default', '0003_alter_email_max_length', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('38', 'social_auth', '0003_alter_email_max_length', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('39', 'default', '0004_auto_20160423_0400', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('40', 'social_auth', '0004_auto_20160423_0400', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('41', 'social_auth', '0005_auto_20160727_2333', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('42', 'social_django', '0006_partial', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('43', 'social_django', '0007_auto_20170614_2343', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('44', 'social_django', '0004_auto_20160423_0400', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('45', 'social_django', '0005_auto_20160727_2333', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('46', 'social_django', '0003_alter_email_max_length', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('47', 'social_django', '0001_initial', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('48', 'social_django', '0002_add_related_name', '2017-08-24 00:26:06');
INSERT INTO `django_migrations` VALUES ('49', 'goods', '0008_auto_20170826_1201', '2017-09-02 11:23:51');
INSERT INTO `django_migrations` VALUES ('50', 'goods', '0009_auto_20170902_1123', '2017-09-02 11:23:51');
INSERT INTO `django_migrations` VALUES ('51', 'admin', '0001_initial', '2017-09-17 06:07:50');
INSERT INTO `django_migrations` VALUES ('52', 'admin', '0002_logentry_remove_auto_add', '2017-09-17 06:07:50');
INSERT INTO `django_migrations` VALUES ('53', 'xadmin', '0004_auto_20170917_1407', '2017-09-17 06:07:51');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('03e3kkkxw656au327ckp2051q52s8x4l', 'YTdiZjYxYjJiOWRhNTdjMmExYWEwNmEzNWQ5ODZlNzg5YTNkYzUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMmZkODA0OTI3YjZiZmE3NTBmYmQ3NDBjYjM5NGQ2Nzc1YTgyOGY4IiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXX0=', '2017-08-10 00:08:06');
INSERT INTO `django_session` VALUES ('5ssd3siryb2m8rqp5k4cusfb5awla5cv', 'NDYyN2QyYTI2YTRjYTVlOGVmZjQ4NzcxNTg2MWFjOTg3YzlmOTA2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyZmQ4MDQ5MjdiNmJmYTc1MGZiZDc0MGNiMzk0ZDY3NzVhODI4ZjgifQ==', '2017-09-27 09:56:20');
INSERT INTO `django_session` VALUES ('8cxgke8mog48qpnzrs7mss4i9a925vxm', 'NmYxMGQ4OGI2MTY2MDVhM2ZhNzViYTQ5MTI5NTE1YTZjNzNhOGY1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyZmQ4MDQ5MjdiNmJmYTc1MGZiZDc0MGNiMzk0ZDY3NzVhODI4ZjgiLCJ3ZWlib19zdGF0ZSI6Ik1DNDJTYUx0bEh2U0ZKcFhDTHNGakhtbDIxaHFlNmc0In0=', '2017-09-07 00:23:04');
INSERT INTO `django_session` VALUES ('ba626rr0qx22y9hm9u7jpmz50embn5ms', 'NDYyN2QyYTI2YTRjYTVlOGVmZjQ4NzcxNTg2MWFjOTg3YzlmOTA2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyZmQ4MDQ5MjdiNmJmYTc1MGZiZDc0MGNiMzk0ZDY3NzVhODI4ZjgifQ==', '2017-10-11 23:14:48');
INSERT INTO `django_session` VALUES ('cu5z8svodtmpo7ljozxrqk45aq1q3cya', 'YTdiZjYxYjJiOWRhNTdjMmExYWEwNmEzNWQ5ODZlNzg5YTNkYzUxZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMmZkODA0OTI3YjZiZmE3NTBmYmQ3NDBjYjM5NGQ2Nzc1YTgyOGY4IiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXX0=', '2017-08-10 00:12:50');
INSERT INTO `django_session` VALUES ('dydpyldr018dk6w2hoj4xj0qx1y7tx2u', 'NDYyN2QyYTI2YTRjYTVlOGVmZjQ4NzcxNTg2MWFjOTg3YzlmOTA2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyZmQ4MDQ5MjdiNmJmYTc1MGZiZDc0MGNiMzk0ZDY3NzVhODI4ZjgifQ==', '2017-09-01 00:26:03');
INSERT INTO `django_session` VALUES ('hq330dmk5cqrwt2b53mou2j3u2xheln9', 'ZTczNWVhNGMxYWMzM2Y1MzM2MGY0NzZkY2NhM2U3YTg1MGNlZmVmNjp7IndlaWJvX3N0YXRlIjoiZTlOdnVUS1VuTkZEUVFScnlQNUhyVjZUenRoZjVaeUQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLndlaWJvLldlaWJvT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTJmZDgwNDkyN2I2YmZhNzUwZmJkNzQwY2IzOTRkNjc3NWE4MjhmOCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6IndlaWJvIn0=', '2017-09-07 00:35:23');
INSERT INTO `django_session` VALUES ('idhliyavp0hpczr7happ1lpmc1kj5ixx', 'ZGZlODdjN2FkNjg2NDQ5NzVkOTQwYjRhMDZiYzk2NTNiYTViMTE4Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMmZkODA0OTI3YjZiZmE3NTBmYmQ3NDBjYjM5NGQ2Nzc1YTgyOGY4IiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2017-10-10 00:08:19');
INSERT INTO `django_session` VALUES ('k9if33tcx6655erffly49shv3c5t0kvw', 'NjU0NmMxMWRjOWQ2ODQ5YWM0NjM2OWE0MDUwNzJkMTc0MzQxZDdjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyZmQ4MDQ5MjdiNmJmYTc1MGZiZDc0MGNiMzk0ZDY3NzVhODI4ZjgiLCJMSVNUX1FVRVJZIjpbWyJ0cmFkZSIsIm9yZGVyaW5mbyJdLCIiXX0=', '2017-08-27 20:22:56');
INSERT INTO `django_session` VALUES ('o16j0xbxmvqe89kiqktg1cc85o8m1cvg', 'ZDhkODA1YTI1Y2FkMWY2MDk3MmVlNWIxNTgzMzA2NzI5MzhmNjVmZDp7IndlaWJvX3N0YXRlIjoiZkhYRlRsNDNaZmhmWFF2Y1FDbWpBVk1UME55NFdsMFUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLndlaWJvLldlaWJvT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTJmZDgwNDkyN2I2YmZhNzUwZmJkNzQwY2IzOTRkNjc3NWE4MjhmOCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6IndlaWJvIn0=', '2017-09-07 00:42:28');
INSERT INTO `django_session` VALUES ('p0b9fm5y1ofcw4jfw4b4a9reckdrtkvg', 'NDZkMWRmOWEzYmMzM2M2Yzg1ZDUyNDBhOWU5ZWUyZWVmZjEzNTQ2ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMmZkODA0OTI3YjZiZmE3NTBmYmQ3NDBjYjM5NGQ2Nzc1YTgyOGY4IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImluZGV4YWQiXSwiIl19', '2017-09-24 16:39:53');
INSERT INTO `django_session` VALUES ('qw62f7zpe4vno2mlcmujx0xv1c64pbr5', 'NDYyN2QyYTI2YTRjYTVlOGVmZjQ4NzcxNTg2MWFjOTg3YzlmOTA2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyZmQ4MDQ5MjdiNmJmYTc1MGZiZDc0MGNiMzk0ZDY3NzVhODI4ZjgifQ==', '2017-09-27 10:08:34');
INSERT INTO `django_session` VALUES ('vwm6eyievhjwu9tqxoifgvcr5q9bg0n0', 'NDYyN2QyYTI2YTRjYTVlOGVmZjQ4NzcxNTg2MWFjOTg3YzlmOTA2Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyZmQ4MDQ5MjdiNmJmYTc1MGZiZDc0MGNiMzk0ZDY3NzVhODI4ZjgifQ==', '2017-08-27 10:59:05');
INSERT INTO `django_session` VALUES ('x4nqx1rjcnruuz7v6bcp0snb8xlw7rot', 'ZGEyY2E4NzcxODhhM2U3ZGNkY2E2NjZmMDczOWVlODU5Mzc4MjgzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyZmQ4MDQ5MjdiNmJmYTc1MGZiZDc0MGNiMzk0ZDY3NzVhODI4ZjgiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImJhbm5lciJdLCIiXX0=', '2017-09-12 15:01:10');

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_banner_goods_id_99e23129_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `goods_banner_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`goods_id`) REFER `mxshop/goods_goods`(`id`)';

-- ----------------------------
-- Records of goods_banner
-- ----------------------------
INSERT INTO `goods_banner` VALUES ('1', 'banner/banner2_Sin19kp.jpg', '1', '2017-08-29 14:59:00', '1');
INSERT INTO `goods_banner` VALUES ('2', 'banner/banner2_ezpTqYQ.jpg', '2', '2017-08-29 15:00:00', '2');
INSERT INTO `goods_banner` VALUES ('3', 'banner/banner3_7Cqvucf.jpg', '3', '2017-08-29 15:01:00', '3');
INSERT INTO `goods_banner` VALUES ('4', 'banner/banner1_VC3xKnD.jpg', '2', '2017-08-29 15:00:00', '3');

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext NOT NULL,
  `goods_desc` longtext NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goods_category_id_da3507dd` (`category_id`) USING BTREE,
  CONSTRAINT `goods_goods_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`category_id`) REFER `mxshop/goods_goodscategory`(`id`)';

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES ('1', '', '新鲜水果甜蜜香脆单果约800克', '66', '0', '-1', '-13', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/1_P_1449024889889.jpg', '0', '0', '2017-07-31 23:53:52', '129');
INSERT INTO `goods_goods` VALUES ('2', 'sssss', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '52', '100', '0', '-6', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', '1', 'goods/images/2_P_1448945810202.jpg', '0', '0', '2017-07-31 23:53:00', '116');
INSERT INTO `goods_goods` VALUES ('3', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '22', '0', '0', '0', '286', '238', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/7_P_1448945104883.jpg', '0', '0', '2017-07-31 23:53:53', '124');
INSERT INTO `goods_goods` VALUES ('4', '', '日本蒜蓉粉丝扇贝270克6只装', '12', '0', '0', '0', '156', '108', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/47_P_1448946213263.jpg', '0', '0', '2017-07-31 23:53:53', '129');
INSERT INTO `goods_goods` VALUES ('5', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '5', '0', '0', '0', '106', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/10_P_1448944572085.jpg', '0', '0', '2017-07-31 23:53:53', '116');
INSERT INTO `goods_goods` VALUES ('6', '', '乌拉圭进口牛肉卷特级肥牛卷', '6', '0', '0', '0', '90', '75', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/4_P_1448945381985.jpg', '0', '0', '2017-07-31 23:53:53', '130');
INSERT INTO `goods_goods` VALUES ('7', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/8_P_1448945032810.jpg', '0', '0', '2017-07-31 23:53:53', '132');
INSERT INTO `goods_goods` VALUES ('8', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/11_P_1448944388277.jpg', '0', '0', '2017-07-31 23:53:53', '116');
INSERT INTO `goods_goods` VALUES ('9', '', '潮香村澳洲进口牛排家庭团购套餐20片', '1', '0', '0', '0', '239', '199', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/6_P_1448945167279.jpg', '0', '0', '2017-07-31 23:53:53', '131');
INSERT INTO `goods_goods` VALUES ('10', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '1', '0', '0', '0', '202', '168', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/9_P_1448944791617.jpg', '0', '0', '2017-07-31 23:53:53', '129');
INSERT INTO `goods_goods` VALUES ('11', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '12', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/3_P_1448945490837.jpg', '0', '0', '2017-07-31 23:53:53', '111');
INSERT INTO `goods_goods` VALUES ('12', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '2', '0', '0', '0', '126', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/48_P_1448943988970.jpg', '0', '0', '2017-07-31 23:53:53', '116');
INSERT INTO `goods_goods` VALUES ('13', '', '澳洲进口安格斯牛切片上脑牛排1000g', '5', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/5_P_1448945270390.jpg', '0', '0', '2017-07-31 23:53:54', '121');
INSERT INTO `goods_goods` VALUES ('14', '', '帐篷出租', '2', '0', '0', '0', '120', '100', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201705/goods_img/53_P_1495068879687.jpg', '0', '0', '2017-07-31 23:53:54', '130');
INSERT INTO `goods_goods` VALUES ('15', '', '52度茅台集团国隆双喜酒500mlx6', '17', '0', '0', '-2', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/16_P_1448947194687.jpg', '0', '0', '2017-07-31 23:53:54', '146');
INSERT INTO `goods_goods` VALUES ('16', '', '52度水井坊臻酿八號500ml', '4', '0', '0', '-4', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/14_P_1448947354031.jpg', '0', '0', '2017-07-31 23:53:54', '145');
INSERT INTO `goods_goods` VALUES ('17', '', '53度茅台仁酒500ml', '4', '0', '0', '-2', '190', '158', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/12_P_1448947547989.jpg', '0', '0', '2017-07-31 23:53:54', '141');
INSERT INTO `goods_goods` VALUES ('18', '', '双响炮洋酒JimBeamwhiskey美国白占边', '7', '0', '0', '0', '38', '28', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/46_P_1448946598711.jpg', '0', '0', '2017-07-31 23:53:54', '138');
INSERT INTO `goods_goods` VALUES ('19', '', '西夫拉姆进口洋酒小酒版', '1', '0', '0', '0', '55', '46', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/21_P_1448946793276.jpg', '0', '0', '2017-07-31 23:53:54', '145');
INSERT INTO `goods_goods` VALUES ('20', '', '茅台53度飞天茅台500ml', '2', '0', '0', '-1', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/15_P_1448947257324.jpg', '0', '0', '2017-07-31 23:53:54', '139');
INSERT INTO `goods_goods` VALUES ('21', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/13_P_1448947460386.jpg', '0', '0', '2017-07-31 23:53:54', '138');
INSERT INTO `goods_goods` VALUES ('22', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/50_P_1448946543091.jpg', '0', '0', '2017-07-31 23:53:54', '145');
INSERT INTO `goods_goods` VALUES ('23', '', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/51_P_1448946466595.jpg', '0', '0', '2017-07-31 23:53:54', '139');
INSERT INTO `goods_goods` VALUES ('24', '', '张裕干红葡萄酒750ml*6支', '2', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/17_P_1448947102246.jpg', '0', '0', '2017-07-31 23:53:54', '140');
INSERT INTO `goods_goods` VALUES ('25', '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/20_P_1448946850602.jpg', '0', '0', '2017-07-31 23:53:54', '138');
INSERT INTO `goods_goods` VALUES ('26', '', '法国原装进口圣贝克干红葡萄酒750ml', '4', '0', '0', '0', '82', '68', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/19_P_1448946951581.jpg', '0', '0', '2017-07-31 23:53:54', '134');
INSERT INTO `goods_goods` VALUES ('27', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/18_P_1448947011435.jpg', '0', '0', '2017-07-31 23:53:54', '134');
INSERT INTO `goods_goods` VALUES ('28', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/22_P_1448946729629.jpg', '0', '0', '2017-07-31 23:53:54', '139');
INSERT INTO `goods_goods` VALUES ('29', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/45_P_1448946661303.jpg', '0', '0', '2017-07-31 23:53:54', '145');
INSERT INTO `goods_goods` VALUES ('30', '', '赣南脐橙特级果10斤装', '7', '0', '0', '-5', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/32_P_1448948525620.jpg', '0', '0', '2017-07-31 23:53:54', '171');
INSERT INTO `goods_goods` VALUES ('31', '', '泰国菠萝蜜16-18斤1个装', '2', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/30_P_1448948663450.jpg', '0', '0', '2017-07-31 23:53:54', '175');
INSERT INTO `goods_goods` VALUES ('32', '', '四川双流草莓新鲜水果礼盒2盒', '1', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/31_P_1448948598947.jpg', '0', '0', '2017-07-31 23:53:54', '179');
INSERT INTO `goods_goods` VALUES ('33', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/35_P_1448948333610.jpg', '0', '0', '2017-07-31 23:53:55', '167');
INSERT INTO `goods_goods` VALUES ('34', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/36_P_1448948234405.jpg', '0', '0', '2017-07-31 23:53:55', '167');
INSERT INTO `goods_goods` VALUES ('35', '', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/33_P_1448948479966.jpg', '0', '0', '2017-07-31 23:53:55', '171');
INSERT INTO `goods_goods` VALUES ('36', '', '潍坊萝卜5斤/箱礼盒', '2', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/34_P_1448948399009.jpg', '0', '0', '2017-07-31 23:53:55', '179');
INSERT INTO `goods_goods` VALUES ('37', '', '休闲零食膨化食品焦糖/奶油/椒麻味', '6', '0', '0', '0', '154', '99', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/43_P_1448948762645.jpg', '0', '0', '2017-07-31 23:53:55', '183');
INSERT INTO `goods_goods` VALUES ('38', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/38_P_1448949220255.jpg', '0', '0', '2017-07-31 23:53:55', '214');
INSERT INTO `goods_goods` VALUES ('39', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/44_P_1448948850187.jpg', '0', '0', '2017-07-31 23:53:55', '212');
INSERT INTO `goods_goods` VALUES ('40', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201511/goods_img/49_P_1448162819889.jpg', '0', '0', '2017-07-31 23:53:55', '211');
INSERT INTO `goods_goods` VALUES ('41', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/40_P_1448949038702.jpg', '0', '0', '2017-07-31 23:53:55', '212');
INSERT INTO `goods_goods` VALUES ('42', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/39_P_1448949115481.jpg', '0', '0', '2017-07-31 23:53:55', '215');
INSERT INTO `goods_goods` VALUES ('43', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/41_P_1448948980358.jpg', '0', '0', '2017-07-31 23:53:55', '216');
INSERT INTO `goods_goods` VALUES ('44', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/37_P_1448949284365.jpg', '0', '0', '2017-07-31 23:53:55', '213');
INSERT INTO `goods_goods` VALUES ('45', '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/42_P_1448948895193.jpg', '0', '0', '2017-07-31 23:53:55', '212');
INSERT INTO `goods_goods` VALUES ('46', '', '维纳斯橄榄菜籽油5L/桶', '6', '0', '0', '0', '187', '156', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/27_P_1448947771805.jpg', '0', '0', '2017-07-31 23:53:55', '160');
INSERT INTO `goods_goods` VALUES ('47', '', '糙米450gx3包粮油米面', '3', '0', '0', '0', '18', '15', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/23_P_1448948070348.jpg', '0', '0', '2017-07-31 23:53:55', '150');
INSERT INTO `goods_goods` VALUES ('48', '', '精炼一级大豆油5L色拉油粮油食用油', '2', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/26_P_1448947825754.jpg', '0', '0', '2017-07-31 23:53:55', '165');
INSERT INTO `goods_goods` VALUES ('49', '', '橄榄玉米油5L*2桶', '1', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/28_P_1448947699948.jpg', '0', '0', '2017-07-31 23:53:55', '163');
INSERT INTO `goods_goods` VALUES ('50', 'gsss', '山西黑米农家黑米4斤', '0', '0', '0', '0', '11', '9', 'gsggs', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', '1', 'goods/images/24_P_1448948023823.jpg', '0', '1', '2017-07-31 23:53:00', '164');
INSERT INTO `goods_goods` VALUES ('51', 'ssgfsgw', '稻园牌稻米油粮油米糠油绿色植物油', '2', '0', '0', '0', '14', '12', 'sgwgwgw', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', '1', 'goods/images/25_P_1448947875346.jpg', '1', '1', '2017-07-31 23:53:00', '156');
INSERT INTO `goods_goods` VALUES ('52', 'ssss', '融氏纯玉米胚芽油5l桶', '3', '100', '0', '0', '14', '12', 'ssss', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', '1', 'goods/images/29_P_1448947631994.jpg', '1', '1', '2017-07-31 23:53:00', '150');

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodscategoryb_category_id_528934b3_fk_goods_goo` (`category_id`) USING BTREE,
  CONSTRAINT `goods_goodscategoryb_category_id_528934b3_fk_goods_goo` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`category_id`) REFER `mxshop/goods_goodscategory`(`id`)';

-- ----------------------------
-- Records of goods_goodsbrand
-- ----------------------------

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `category_type` int(11) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodscategory_parent_category_id_ccec2509` (`parent_category_id`) USING BTREE,
  CONSTRAINT `goods_goodscategory_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`parent_category_id`) REFER `mxshop/goods_goodscategory`(';

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES ('110', '生鲜食品', 'sxsp', '生鲜食品', '1', '1', '2017-07-29 18:56:00', null);
INSERT INTO `goods_goodscategory` VALUES ('111', '精品肉类', 'jprl', '', '2', '0', '2017-07-29 18:56:33', '110');
INSERT INTO `goods_goodscategory` VALUES ('112', '羊肉', 'yr', '', '3', '0', '2017-07-29 18:56:33', '111');
INSERT INTO `goods_goodscategory` VALUES ('113', '禽类', 'ql', '', '3', '0', '2017-07-29 18:56:33', '111');
INSERT INTO `goods_goodscategory` VALUES ('114', '猪肉', 'zr', '', '3', '0', '2017-07-29 18:56:33', '111');
INSERT INTO `goods_goodscategory` VALUES ('115', '牛肉', 'nr', '', '3', '0', '2017-07-29 18:56:33', '111');
INSERT INTO `goods_goodscategory` VALUES ('116', '海鲜水产', 'hxsc', '', '2', '0', '2017-07-29 18:56:33', '110');
INSERT INTO `goods_goodscategory` VALUES ('117', '参鲍', 'cb', '', '3', '0', '2017-07-29 18:56:33', '116');
INSERT INTO `goods_goodscategory` VALUES ('118', '鱼', 'yu', '', '3', '0', '2017-07-29 18:56:33', '116');
INSERT INTO `goods_goodscategory` VALUES ('119', '虾', 'xia', '', '3', '0', '2017-07-29 18:56:33', '116');
INSERT INTO `goods_goodscategory` VALUES ('120', '蟹/贝', 'xb', '', '3', '0', '2017-07-29 18:56:33', '116');
INSERT INTO `goods_goodscategory` VALUES ('121', '蛋制品', 'dzp', '', '2', '0', '2017-07-29 18:56:34', '110');
INSERT INTO `goods_goodscategory` VALUES ('122', '松花蛋/咸鸭蛋', 'xhd_xyd', '', '3', '0', '2017-07-29 18:56:34', '121');
INSERT INTO `goods_goodscategory` VALUES ('123', '鸡蛋', 'jd', '', '3', '0', '2017-07-29 18:56:34', '121');
INSERT INTO `goods_goodscategory` VALUES ('124', '叶菜类', 'ycl', '', '2', '0', '2017-07-29 18:56:34', '110');
INSERT INTO `goods_goodscategory` VALUES ('125', '生菜', 'sc', '', '3', '0', '2017-07-29 18:56:34', '124');
INSERT INTO `goods_goodscategory` VALUES ('126', '菠菜', 'bc', '', '3', '0', '2017-07-29 18:56:34', '124');
INSERT INTO `goods_goodscategory` VALUES ('127', '圆椒', 'yj', '', '3', '0', '2017-07-29 18:56:34', '124');
INSERT INTO `goods_goodscategory` VALUES ('128', '西兰花', 'xlh', '', '3', '0', '2017-07-29 18:56:34', '124');
INSERT INTO `goods_goodscategory` VALUES ('129', '根茎类', 'gjl', '', '2', '0', '2017-07-29 18:56:34', '110');
INSERT INTO `goods_goodscategory` VALUES ('130', '茄果类', 'qgl', '', '2', '0', '2017-07-29 18:56:34', '110');
INSERT INTO `goods_goodscategory` VALUES ('131', '菌菇类', 'jgl', '', '2', '0', '2017-07-29 18:56:34', '110');
INSERT INTO `goods_goodscategory` VALUES ('132', '进口生鲜', 'jksx', '', '2', '0', '2017-07-29 18:56:34', '110');
INSERT INTO `goods_goodscategory` VALUES ('133', '酒水饮料', 'jsyl', '酒水饮料', '1', '1', '2017-07-29 18:56:00', null);
INSERT INTO `goods_goodscategory` VALUES ('134', '白酒', 'bk', '', '2', '0', '2017-07-29 18:56:34', '133');
INSERT INTO `goods_goodscategory` VALUES ('135', '五粮液', 'wly', '', '3', '0', '2017-07-29 18:56:34', '134');
INSERT INTO `goods_goodscategory` VALUES ('136', '泸州老窖', 'lzlj', '', '3', '0', '2017-07-29 18:56:34', '134');
INSERT INTO `goods_goodscategory` VALUES ('137', '茅台', 'mt', '', '3', '0', '2017-07-29 18:56:34', '134');
INSERT INTO `goods_goodscategory` VALUES ('138', '葡萄酒', 'ptj', '', '2', '0', '2017-07-29 18:56:34', '133');
INSERT INTO `goods_goodscategory` VALUES ('139', '洋酒', 'yj', '', '2', '0', '2017-07-29 18:56:34', '133');
INSERT INTO `goods_goodscategory` VALUES ('140', '啤酒', 'pj', '', '2', '0', '2017-07-29 18:56:34', '133');
INSERT INTO `goods_goodscategory` VALUES ('141', '其他酒品', 'qtjp', '', '2', '0', '2017-07-29 18:56:34', '133');
INSERT INTO `goods_goodscategory` VALUES ('142', '其他品牌', 'qtpp', '', '3', '0', '2017-07-29 18:56:34', '141');
INSERT INTO `goods_goodscategory` VALUES ('143', '黄酒', 'hj', '', '3', '0', '2017-07-29 18:56:34', '141');
INSERT INTO `goods_goodscategory` VALUES ('144', '养生酒', 'ysj', '', '3', '0', '2017-07-29 18:56:34', '141');
INSERT INTO `goods_goodscategory` VALUES ('145', '饮料/水', 'yls', '', '2', '0', '2017-07-29 18:56:34', '133');
INSERT INTO `goods_goodscategory` VALUES ('146', '红酒', 'hj', '', '2', '0', '2017-07-29 18:56:34', '133');
INSERT INTO `goods_goodscategory` VALUES ('147', '白兰地', 'bld', '', '3', '0', '2017-07-29 18:56:34', '146');
INSERT INTO `goods_goodscategory` VALUES ('148', '威士忌', 'wsj', '', '3', '0', '2017-07-29 18:56:34', '146');
INSERT INTO `goods_goodscategory` VALUES ('149', '粮油副食', '粮油副食', '粮油副食', '1', '1', '2017-07-29 18:56:00', null);
INSERT INTO `goods_goodscategory` VALUES ('150', '食用油', '食用油', '', '2', '0', '2017-07-29 18:56:34', '149');
INSERT INTO `goods_goodscategory` VALUES ('151', '其他食用油', '其他食用油', '', '3', '0', '2017-07-29 18:56:34', '150');
INSERT INTO `goods_goodscategory` VALUES ('152', '菜仔油', '菜仔油', '', '3', '0', '2017-07-29 18:56:34', '150');
INSERT INTO `goods_goodscategory` VALUES ('153', '花生油', '花生油', '', '3', '0', '2017-07-29 18:56:34', '150');
INSERT INTO `goods_goodscategory` VALUES ('154', '橄榄油', '橄榄油', '', '3', '0', '2017-07-29 18:56:34', '150');
INSERT INTO `goods_goodscategory` VALUES ('155', '礼盒', '礼盒', '', '3', '0', '2017-07-29 18:56:34', '150');
INSERT INTO `goods_goodscategory` VALUES ('156', '米面杂粮', '米面杂粮', '', '2', '0', '2017-07-29 18:56:34', '149');
INSERT INTO `goods_goodscategory` VALUES ('157', '面粉/面条', '面粉/面条', '', '3', '0', '2017-07-29 18:56:34', '156');
INSERT INTO `goods_goodscategory` VALUES ('158', '大米', '大米', '', '3', '0', '2017-07-29 18:56:34', '156');
INSERT INTO `goods_goodscategory` VALUES ('159', '意大利面', '意大利面', '', '3', '0', '2017-07-29 18:56:34', '156');
INSERT INTO `goods_goodscategory` VALUES ('160', '厨房调料', '厨房调料', '', '2', '0', '2017-07-29 18:56:34', '149');
INSERT INTO `goods_goodscategory` VALUES ('161', '调味油/汁', '调味油/汁', '', '3', '0', '2017-07-29 18:56:34', '160');
INSERT INTO `goods_goodscategory` VALUES ('162', '酱油/醋', '酱油/醋', '', '3', '0', '2017-07-29 18:56:34', '160');
INSERT INTO `goods_goodscategory` VALUES ('163', '南北干货', '南北干货', '', '2', '0', '2017-07-29 18:56:34', '149');
INSERT INTO `goods_goodscategory` VALUES ('164', '方便速食', '方便速食', '', '2', '0', '2017-07-29 18:56:34', '149');
INSERT INTO `goods_goodscategory` VALUES ('165', '调味品', '调味品', '', '2', '0', '2017-07-29 18:56:34', '149');
INSERT INTO `goods_goodscategory` VALUES ('166', '蔬菜水果', '蔬菜水果', '蔬菜水果', '1', '1', '2017-07-29 18:56:00', null);
INSERT INTO `goods_goodscategory` VALUES ('167', '有机蔬菜', '有机蔬菜', '', '2', '0', '2017-07-29 18:56:34', '166');
INSERT INTO `goods_goodscategory` VALUES ('168', '西红柿', '西红柿', '', '3', '0', '2017-07-29 18:56:34', '167');
INSERT INTO `goods_goodscategory` VALUES ('169', '韭菜', '韭菜', '', '3', '0', '2017-07-29 18:56:34', '167');
INSERT INTO `goods_goodscategory` VALUES ('170', '青菜', '青菜', '', '3', '0', '2017-07-29 18:56:34', '167');
INSERT INTO `goods_goodscategory` VALUES ('171', '精选蔬菜', '精选蔬菜', '', '2', '0', '2017-07-29 18:56:34', '166');
INSERT INTO `goods_goodscategory` VALUES ('172', '甘蓝', '甘蓝', '', '3', '0', '2017-07-29 18:56:34', '171');
INSERT INTO `goods_goodscategory` VALUES ('173', '胡萝卜', '胡萝卜', '', '3', '0', '2017-07-29 18:56:34', '171');
INSERT INTO `goods_goodscategory` VALUES ('174', '黄瓜', '黄瓜', '', '3', '0', '2017-07-29 18:56:34', '171');
INSERT INTO `goods_goodscategory` VALUES ('175', '进口水果', '进口水果', '', '2', '0', '2017-07-29 18:56:34', '166');
INSERT INTO `goods_goodscategory` VALUES ('176', '火龙果', '火龙果', '', '3', '0', '2017-07-29 18:56:34', '175');
INSERT INTO `goods_goodscategory` VALUES ('177', '菠萝蜜', '菠萝蜜', '', '3', '0', '2017-07-29 18:56:34', '175');
INSERT INTO `goods_goodscategory` VALUES ('178', '奇异果', '奇异果', '', '3', '0', '2017-07-29 18:56:34', '175');
INSERT INTO `goods_goodscategory` VALUES ('179', '国产水果', '国产水果', '', '2', '0', '2017-07-29 18:56:34', '166');
INSERT INTO `goods_goodscategory` VALUES ('180', '水果礼盒', '水果礼盒', '', '3', '0', '2017-07-29 18:56:34', '179');
INSERT INTO `goods_goodscategory` VALUES ('181', '苹果', '苹果', '', '3', '0', '2017-07-29 18:56:34', '179');
INSERT INTO `goods_goodscategory` VALUES ('182', '雪梨', '雪梨', '', '3', '0', '2017-07-29 18:56:34', '179');
INSERT INTO `goods_goodscategory` VALUES ('183', '休闲食品', '休闲食品', '休闲食品', '1', '1', '2017-07-29 18:56:00', null);
INSERT INTO `goods_goodscategory` VALUES ('184', '休闲零食', '休闲零食', '', '2', '0', '2017-07-29 18:56:34', '183');
INSERT INTO `goods_goodscategory` VALUES ('185', '果冻', '果冻', '', '3', '0', '2017-07-29 18:56:34', '184');
INSERT INTO `goods_goodscategory` VALUES ('186', '枣类', '枣类', '', '3', '0', '2017-07-29 18:56:34', '184');
INSERT INTO `goods_goodscategory` VALUES ('187', '蜜饯', '蜜饯', '', '3', '0', '2017-07-29 18:56:34', '184');
INSERT INTO `goods_goodscategory` VALUES ('188', '肉类零食', '肉类零食', '', '3', '0', '2017-07-29 18:56:34', '184');
INSERT INTO `goods_goodscategory` VALUES ('189', '坚果炒货', '坚果炒货', '', '3', '0', '2017-07-29 18:56:34', '184');
INSERT INTO `goods_goodscategory` VALUES ('190', '糖果', '糖果', '', '2', '0', '2017-07-29 18:56:34', '183');
INSERT INTO `goods_goodscategory` VALUES ('191', '创意喜糖', '创意喜糖', '', '3', '0', '2017-07-29 18:56:35', '190');
INSERT INTO `goods_goodscategory` VALUES ('192', '口香糖', '口香糖', '', '3', '0', '2017-07-29 18:56:35', '190');
INSERT INTO `goods_goodscategory` VALUES ('193', '软糖', '软糖', '', '3', '0', '2017-07-29 18:56:35', '190');
INSERT INTO `goods_goodscategory` VALUES ('194', '棒棒糖', '棒棒糖', '', '3', '0', '2017-07-29 18:56:35', '190');
INSERT INTO `goods_goodscategory` VALUES ('195', '巧克力', '巧克力', '', '2', '0', '2017-07-29 18:56:35', '183');
INSERT INTO `goods_goodscategory` VALUES ('196', '夹心巧克力', '夹心巧克力', '', '3', '0', '2017-07-29 18:56:35', '195');
INSERT INTO `goods_goodscategory` VALUES ('197', '白巧克力', '白巧克力', '', '3', '0', '2017-07-29 18:56:35', '195');
INSERT INTO `goods_goodscategory` VALUES ('198', '松露巧克力', '松露巧克力', '', '3', '0', '2017-07-29 18:56:35', '195');
INSERT INTO `goods_goodscategory` VALUES ('199', '黑巧克力', '黑巧克力', '', '3', '0', '2017-07-29 18:56:35', '195');
INSERT INTO `goods_goodscategory` VALUES ('200', '肉干肉脯/豆干', '肉干肉脯/豆干', '', '2', '0', '2017-07-29 18:56:35', '183');
INSERT INTO `goods_goodscategory` VALUES ('201', '牛肉干', '牛肉干', '', '3', '0', '2017-07-29 18:56:35', '200');
INSERT INTO `goods_goodscategory` VALUES ('202', '猪肉脯', '猪肉脯', '', '3', '0', '2017-07-29 18:56:35', '200');
INSERT INTO `goods_goodscategory` VALUES ('203', '牛肉粒', '牛肉粒', '', '3', '0', '2017-07-29 18:56:35', '200');
INSERT INTO `goods_goodscategory` VALUES ('204', '猪肉干', '猪肉干', '', '3', '0', '2017-07-29 18:56:35', '200');
INSERT INTO `goods_goodscategory` VALUES ('205', '鱿鱼丝/鱼干', '鱿鱼丝/鱼干', '', '2', '0', '2017-07-29 18:56:35', '183');
INSERT INTO `goods_goodscategory` VALUES ('206', '鱿鱼足', '鱿鱼足', '', '3', '0', '2017-07-29 18:56:35', '205');
INSERT INTO `goods_goodscategory` VALUES ('207', '鱿鱼丝', '鱿鱼丝', '', '3', '0', '2017-07-29 18:56:35', '205');
INSERT INTO `goods_goodscategory` VALUES ('208', '墨鱼/乌贼', '墨鱼/乌贼', '', '3', '0', '2017-07-29 18:56:35', '205');
INSERT INTO `goods_goodscategory` VALUES ('209', '鱿鱼仔', '鱿鱼仔', '', '3', '0', '2017-07-29 18:56:35', '205');
INSERT INTO `goods_goodscategory` VALUES ('210', '鱿鱼片', '鱿鱼片', '', '3', '0', '2017-07-29 18:56:35', '205');
INSERT INTO `goods_goodscategory` VALUES ('211', '奶类食品', '奶类食品', '', '1', '0', '2017-07-29 18:56:35', null);
INSERT INTO `goods_goodscategory` VALUES ('212', '进口奶品', '进口奶品', '', '2', '0', '2017-07-29 18:56:35', '211');
INSERT INTO `goods_goodscategory` VALUES ('213', '国产奶品', '国产奶品', '', '2', '0', '2017-07-29 18:56:35', '211');
INSERT INTO `goods_goodscategory` VALUES ('214', '奶粉', '奶粉', '', '2', '0', '2017-07-29 18:56:35', '211');
INSERT INTO `goods_goodscategory` VALUES ('215', '有机奶', '有机奶', '', '2', '0', '2017-07-29 18:56:35', '211');
INSERT INTO `goods_goodscategory` VALUES ('216', '原料奶', '原料奶', '', '2', '0', '2017-07-29 18:56:35', '211');
INSERT INTO `goods_goodscategory` VALUES ('217', '天然干货', '天然干货', '', '1', '0', '2017-07-29 18:56:35', null);
INSERT INTO `goods_goodscategory` VALUES ('218', '菌菇类', '菌菇类', '', '2', '0', '2017-07-29 18:56:35', '217');
INSERT INTO `goods_goodscategory` VALUES ('219', '腌干海产', '腌干海产', '', '2', '0', '2017-07-29 18:56:35', '217');
INSERT INTO `goods_goodscategory` VALUES ('220', '汤料', '汤料', '', '2', '0', '2017-07-29 18:56:35', '217');
INSERT INTO `goods_goodscategory` VALUES ('221', '豆类', '豆类', '', '2', '0', '2017-07-29 18:56:35', '217');
INSERT INTO `goods_goodscategory` VALUES ('222', '干菜/菜干', '干菜/菜干', '', '2', '0', '2017-07-29 18:56:35', '217');
INSERT INTO `goods_goodscategory` VALUES ('223', '干果/果干', '干果/果干', '', '2', '0', '2017-07-29 18:56:35', '217');
INSERT INTO `goods_goodscategory` VALUES ('224', '豆制品', '豆制品', '', '2', '0', '2017-07-29 18:56:35', '217');
INSERT INTO `goods_goodscategory` VALUES ('225', '腊味', '腊味', '', '2', '0', '2017-07-29 18:56:35', '217');
INSERT INTO `goods_goodscategory` VALUES ('226', '精选茗茶', '精选茗茶', '', '1', '0', '2017-07-29 18:56:35', null);
INSERT INTO `goods_goodscategory` VALUES ('227', '白茶', '白茶', '', '2', '0', '2017-07-29 18:56:35', '226');
INSERT INTO `goods_goodscategory` VALUES ('228', '红茶', '红茶', '', '2', '0', '2017-07-29 18:56:35', '226');
INSERT INTO `goods_goodscategory` VALUES ('229', '绿茶', '绿茶', '', '2', '0', '2017-07-29 18:56:35', '226');

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `goods_goodsimage_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`goods_id`) REFER `mxshop/goods_goods`(`id`)';

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
INSERT INTO `goods_goodsimage` VALUES ('1', 'goods/images/1_P_1449024889889.jpg', '2017-07-31 23:53:53', '1');
INSERT INTO `goods_goodsimage` VALUES ('2', 'goods/images/1_P_1449024889264.jpg', '2017-07-31 23:53:53', '1');
INSERT INTO `goods_goodsimage` VALUES ('3', 'goods/images/1_P_1449024889726.jpg', '2017-07-31 23:53:53', '1');
INSERT INTO `goods_goodsimage` VALUES ('4', 'goods/images/1_P_1449024889018.jpg', '2017-07-31 23:53:53', '1');
INSERT INTO `goods_goodsimage` VALUES ('5', 'goods/images/1_P_1449024889287.jpg', '2017-07-31 23:53:53', '1');
INSERT INTO `goods_goodsimage` VALUES ('6', 'goods/images/2_P_1448945810202.jpg', '2017-07-31 23:53:53', '2');
INSERT INTO `goods_goodsimage` VALUES ('7', '15_P_1448947257324.jpg', '2017-07-31 23:53:53', '2');
INSERT INTO `goods_goodsimage` VALUES ('8', 'goods/images/7_P_1448945104883.jpg', '2017-07-31 23:53:53', '3');
INSERT INTO `goods_goodsimage` VALUES ('9', 'goods/images/7_P_1448945104734.jpg', '2017-07-31 23:53:53', '3');
INSERT INTO `goods_goodsimage` VALUES ('10', 'goods/images/47_P_1448946213263.jpg', '2017-07-31 23:53:53', '4');
INSERT INTO `goods_goodsimage` VALUES ('11', 'goods/images/47_P_1448946213157.jpg', '2017-07-31 23:53:53', '4');
INSERT INTO `goods_goodsimage` VALUES ('12', 'goods/images/10_P_1448944572085.jpg', '2017-07-31 23:53:53', '5');
INSERT INTO `goods_goodsimage` VALUES ('13', 'goods/images/10_P_1448944572532.jpg', '2017-07-31 23:53:53', '5');
INSERT INTO `goods_goodsimage` VALUES ('14', 'goods/images/10_P_1448944572872.jpg', '2017-07-31 23:53:53', '5');
INSERT INTO `goods_goodsimage` VALUES ('15', 'goods/images/4_P_1448945381985.jpg', '2017-07-31 23:53:53', '6');
INSERT INTO `goods_goodsimage` VALUES ('16', 'goods/images/4_P_1448945381013.jpg', '2017-07-31 23:53:53', '6');
INSERT INTO `goods_goodsimage` VALUES ('17', 'goods/images/8_P_1448945032810.jpg', '2017-07-31 23:53:53', '7');
INSERT INTO `goods_goodsimage` VALUES ('18', 'goods/images/8_P_1448945032646.jpg', '2017-07-31 23:53:53', '7');
INSERT INTO `goods_goodsimage` VALUES ('19', 'goods/images/11_P_1448944388277.jpg', '2017-07-31 23:53:53', '8');
INSERT INTO `goods_goodsimage` VALUES ('20', 'goods/images/11_P_1448944388034.jpg', '2017-07-31 23:53:53', '8');
INSERT INTO `goods_goodsimage` VALUES ('21', 'goods/images/11_P_1448944388201.jpg', '2017-07-31 23:53:53', '8');
INSERT INTO `goods_goodsimage` VALUES ('22', 'goods/images/6_P_1448945167279.jpg', '2017-07-31 23:53:53', '9');
INSERT INTO `goods_goodsimage` VALUES ('23', 'goods/images/6_P_1448945167015.jpg', '2017-07-31 23:53:53', '9');
INSERT INTO `goods_goodsimage` VALUES ('24', 'goods/images/9_P_1448944791617.jpg', '2017-07-31 23:53:53', '10');
INSERT INTO `goods_goodsimage` VALUES ('25', 'goods/images/9_P_1448944791129.jpg', '2017-07-31 23:53:53', '10');
INSERT INTO `goods_goodsimage` VALUES ('26', 'goods/images/9_P_1448944791077.jpg', '2017-07-31 23:53:53', '10');
INSERT INTO `goods_goodsimage` VALUES ('27', 'goods/images/9_P_1448944791229.jpg', '2017-07-31 23:53:53', '10');
INSERT INTO `goods_goodsimage` VALUES ('28', 'goods/images/3_P_1448945490837.jpg', '2017-07-31 23:53:53', '11');
INSERT INTO `goods_goodsimage` VALUES ('29', 'goods/images/3_P_1448945490084.jpg', '2017-07-31 23:53:53', '11');
INSERT INTO `goods_goodsimage` VALUES ('30', 'goods/images/48_P_1448943988970.jpg', '2017-07-31 23:53:54', '12');
INSERT INTO `goods_goodsimage` VALUES ('31', 'goods/images/48_P_1448943988898.jpg', '2017-07-31 23:53:54', '12');
INSERT INTO `goods_goodsimage` VALUES ('32', 'goods/images/48_P_1448943988439.jpg', '2017-07-31 23:53:54', '12');
INSERT INTO `goods_goodsimage` VALUES ('33', 'goods/images/5_P_1448945270390.jpg', '2017-07-31 23:53:54', '13');
INSERT INTO `goods_goodsimage` VALUES ('34', 'goods/images/5_P_1448945270067.jpg', '2017-07-31 23:53:54', '13');
INSERT INTO `goods_goodsimage` VALUES ('35', 'goods/images/5_P_1448945270432.jpg', '2017-07-31 23:53:54', '13');
INSERT INTO `goods_goodsimage` VALUES ('36', 'images/201705/goods_img/53_P_1495068879687.jpg', '2017-07-31 23:53:54', '14');
INSERT INTO `goods_goodsimage` VALUES ('37', 'goods/images/16_P_1448947194687.jpg', '2017-07-31 23:53:54', '15');
INSERT INTO `goods_goodsimage` VALUES ('38', 'goods/images/14_P_1448947354031.jpg', '2017-07-31 23:53:54', '16');
INSERT INTO `goods_goodsimage` VALUES ('39', 'goods/images/14_P_1448947354433.jpg', '2017-07-31 23:53:54', '16');
INSERT INTO `goods_goodsimage` VALUES ('40', 'goods/images/12_P_1448947547989.jpg', '2017-07-31 23:53:54', '17');
INSERT INTO `goods_goodsimage` VALUES ('41', 'goods/images/46_P_1448946598711.jpg', '2017-07-31 23:53:54', '18');
INSERT INTO `goods_goodsimage` VALUES ('42', 'goods/images/46_P_1448946598301.jpg', '2017-07-31 23:53:54', '18');
INSERT INTO `goods_goodsimage` VALUES ('43', 'goods/images/21_P_1448946793276.jpg', '2017-07-31 23:53:54', '19');
INSERT INTO `goods_goodsimage` VALUES ('44', 'goods/images/21_P_1448946793153.jpg', '2017-07-31 23:53:54', '19');
INSERT INTO `goods_goodsimage` VALUES ('45', 'goods/images/15_P_1448947257324.jpg', '2017-07-31 23:53:54', '20');
INSERT INTO `goods_goodsimage` VALUES ('46', 'goods/images/15_P_1448947257580.jpg', '2017-07-31 23:53:54', '20');
INSERT INTO `goods_goodsimage` VALUES ('47', 'goods/images/13_P_1448947460386.jpg', '2017-07-31 23:53:54', '21');
INSERT INTO `goods_goodsimage` VALUES ('48', 'goods/images/13_P_1448947460276.jpg', '2017-07-31 23:53:54', '21');
INSERT INTO `goods_goodsimage` VALUES ('49', 'goods/images/13_P_1448947460353.jpg', '2017-07-31 23:53:54', '21');
INSERT INTO `goods_goodsimage` VALUES ('50', 'goods/images/50_P_1448946543091.jpg', '2017-07-31 23:53:54', '22');
INSERT INTO `goods_goodsimage` VALUES ('51', 'goods/images/50_P_1448946542182.jpg', '2017-07-31 23:53:54', '22');
INSERT INTO `goods_goodsimage` VALUES ('52', 'goods/images/51_P_1448946466595.jpg', '2017-07-31 23:53:54', '23');
INSERT INTO `goods_goodsimage` VALUES ('53', 'goods/images/51_P_1448946466208.jpg', '2017-07-31 23:53:54', '23');
INSERT INTO `goods_goodsimage` VALUES ('54', 'goods/images/17_P_1448947102246.jpg', '2017-07-31 23:53:54', '24');
INSERT INTO `goods_goodsimage` VALUES ('55', 'goods/images/20_P_1448946850602.jpg', '2017-07-31 23:53:54', '25');
INSERT INTO `goods_goodsimage` VALUES ('56', 'goods/images/19_P_1448946951581.jpg', '2017-07-31 23:53:54', '26');
INSERT INTO `goods_goodsimage` VALUES ('57', 'goods/images/19_P_1448946951726.jpg', '2017-07-31 23:53:54', '26');
INSERT INTO `goods_goodsimage` VALUES ('58', 'goods/images/18_P_1448947011435.jpg', '2017-07-31 23:53:54', '27');
INSERT INTO `goods_goodsimage` VALUES ('59', 'goods/images/22_P_1448946729629.jpg', '2017-07-31 23:53:54', '28');
INSERT INTO `goods_goodsimage` VALUES ('60', 'goods/images/45_P_1448946661303.jpg', '2017-07-31 23:53:54', '29');
INSERT INTO `goods_goodsimage` VALUES ('61', 'goods/images/32_P_1448948525620.jpg', '2017-07-31 23:53:54', '30');
INSERT INTO `goods_goodsimage` VALUES ('62', 'goods/images/30_P_1448948663450.jpg', '2017-07-31 23:53:54', '31');
INSERT INTO `goods_goodsimage` VALUES ('63', 'goods/images/30_P_1448948662571.jpg', '2017-07-31 23:53:54', '31');
INSERT INTO `goods_goodsimage` VALUES ('64', 'goods/images/30_P_1448948663221.jpg', '2017-07-31 23:53:54', '31');
INSERT INTO `goods_goodsimage` VALUES ('65', 'goods/images/31_P_1448948598947.jpg', '2017-07-31 23:53:55', '32');
INSERT INTO `goods_goodsimage` VALUES ('66', 'goods/images/31_P_1448948598475.jpg', '2017-07-31 23:53:55', '32');
INSERT INTO `goods_goodsimage` VALUES ('67', 'goods/images/35_P_1448948333610.jpg', '2017-07-31 23:53:55', '33');
INSERT INTO `goods_goodsimage` VALUES ('68', 'goods/images/35_P_1448948333313.jpg', '2017-07-31 23:53:55', '33');
INSERT INTO `goods_goodsimage` VALUES ('69', 'goods/images/36_P_1448948234405.jpg', '2017-07-31 23:53:55', '34');
INSERT INTO `goods_goodsimage` VALUES ('70', 'goods/images/36_P_1448948234250.jpg', '2017-07-31 23:53:55', '34');
INSERT INTO `goods_goodsimage` VALUES ('71', 'goods/images/33_P_1448948479966.jpg', '2017-07-31 23:53:55', '35');
INSERT INTO `goods_goodsimage` VALUES ('72', 'goods/images/33_P_1448948479886.jpg', '2017-07-31 23:53:55', '35');
INSERT INTO `goods_goodsimage` VALUES ('73', 'goods/images/34_P_1448948399009.jpg', '2017-07-31 23:53:55', '36');
INSERT INTO `goods_goodsimage` VALUES ('74', 'goods/images/43_P_1448948762645.jpg', '2017-07-31 23:53:55', '37');
INSERT INTO `goods_goodsimage` VALUES ('75', 'goods/images/38_P_1448949220255.jpg', '2017-07-31 23:53:55', '38');
INSERT INTO `goods_goodsimage` VALUES ('76', 'goods/images/44_P_1448948850187.jpg', '2017-07-31 23:53:55', '39');
INSERT INTO `goods_goodsimage` VALUES ('77', 'images/201511/goods_img/49_P_1448162819889.jpg', '2017-07-31 23:53:55', '40');
INSERT INTO `goods_goodsimage` VALUES ('78', 'goods/images/40_P_1448949038702.jpg', '2017-07-31 23:53:55', '41');
INSERT INTO `goods_goodsimage` VALUES ('79', 'goods/images/39_P_1448949115481.jpg', '2017-07-31 23:53:55', '42');
INSERT INTO `goods_goodsimage` VALUES ('80', 'goods/images/41_P_1448948980358.jpg', '2017-07-31 23:53:55', '43');
INSERT INTO `goods_goodsimage` VALUES ('81', 'goods/images/37_P_1448949284365.jpg', '2017-07-31 23:53:55', '44');
INSERT INTO `goods_goodsimage` VALUES ('82', 'goods/images/42_P_1448948895193.jpg', '2017-07-31 23:53:55', '45');
INSERT INTO `goods_goodsimage` VALUES ('83', 'goods/images/27_P_1448947771805.jpg', '2017-07-31 23:53:55', '46');
INSERT INTO `goods_goodsimage` VALUES ('84', 'goods/images/23_P_1448948070348.jpg', '2017-07-31 23:53:55', '47');
INSERT INTO `goods_goodsimage` VALUES ('85', 'goods/images/26_P_1448947825754.jpg', '2017-07-31 23:53:55', '48');
INSERT INTO `goods_goodsimage` VALUES ('86', 'goods/images/28_P_1448947699948.jpg', '2017-07-31 23:53:55', '49');
INSERT INTO `goods_goodsimage` VALUES ('87', 'goods/images/28_P_1448947699777.jpg', '2017-07-31 23:53:55', '49');
INSERT INTO `goods_goodsimage` VALUES ('88', 'goods/images/24_P_1448948023823.jpg', '2017-07-31 23:53:55', '50');
INSERT INTO `goods_goodsimage` VALUES ('89', 'goods/images/24_P_1448948023977.jpg', '2017-07-31 23:53:55', '50');
INSERT INTO `goods_goodsimage` VALUES ('90', 'goods/images/25_P_1448947875346.jpg', '2017-07-31 23:53:55', '51');
INSERT INTO `goods_goodsimage` VALUES ('91', 'goods/images/29_P_1448947631994.jpg', '2017-07-31 23:53:55', '52');
INSERT INTO `goods_goodsimage` VALUES ('92', '2_20170719161405_249.jpg', '2017-08-05 22:45:36', '2');
INSERT INTO `goods_goodsimage` VALUES ('93', '9_P_1448944791617.jpg', '2017-08-05 22:48:54', '2');

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_hotsearchwords
-- ----------------------------
INSERT INTO `goods_hotsearchwords` VALUES ('1', '水果', '0', '2017-08-04 21:59:00');
INSERT INTO `goods_hotsearchwords` VALUES ('2', '牛奶', '1', '2017-08-04 21:59:00');
INSERT INTO `goods_hotsearchwords` VALUES ('3', '蔬菜', '2', '2017-08-04 21:59:00');
INSERT INTO `goods_hotsearchwords` VALUES ('4', '啤酒', '4', '2017-08-04 22:07:00');

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` (`category_id`),
  KEY `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`),
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_indexad
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_association
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_association`;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of social_auth_association
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_code`;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`) USING BTREE,
  KEY `social_auth_code_code_a2393167` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of social_auth_code
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_nonce
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_nonce`;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of social_auth_nonce
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_partial
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_partial`;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of social_auth_partial
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_usersocialauth
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_usersocialauth`;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`) USING BTREE,
  KEY `social_auth_usersoci_user_id_17d28448_fk_users_use` (`user_id`) USING BTREE,
  CONSTRAINT `social_auth_usersocialauth_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of social_auth_usersocialauth
-- ----------------------------
INSERT INTO `social_auth_usersocialauth` VALUES ('1', 'weibo', '1272188234', '{\"auth_time\": 1503506548, \"id\": 1272188234, \"username\": \"bobby_liyao\", \"profile_image_url\": \"http://tva4.sinaimg.cn/crop.0.0.350.350.50/4bd40d4ajw1esqo1cu2iyj209q09qdg4.jpg\", \"gender\": \"m\", \"access_token\": \"2.00ERyF5B0VZcGQ913bba86110dM5ML\", \"token_type\": null}', '1');

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trade_ordergoods_goods_id_e77dc520` (`goods_id`) USING BTREE,
  KEY `trade_ordergoods_order_id_e046f633` (`order_id`) USING BTREE,
  CONSTRAINT `trade_ordergoods_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`goods_id`) REFER `mxshop/goods_goods`(`id`); (`order_id`';

-- ----------------------------
-- Records of trade_ordergoods
-- ----------------------------
INSERT INTO `trade_ordergoods` VALUES ('4', '1', '2017-08-13 20:21:52', '2', '6');
INSERT INTO `trade_ordergoods` VALUES ('7', '1', '2017-08-17 22:37:29', '2', '8');
INSERT INTO `trade_ordergoods` VALUES ('8', '1', '2017-08-17 22:56:44', '46', '12');
INSERT INTO `trade_ordergoods` VALUES ('9', '1', '2017-08-17 22:59:40', '48', '13');
INSERT INTO `trade_ordergoods` VALUES ('10', '1', '2017-08-17 23:41:02', '16', '14');
INSERT INTO `trade_ordergoods` VALUES ('11', '1', '2017-08-17 23:44:11', '17', '15');
INSERT INTO `trade_ordergoods` VALUES ('13', '1', '2017-08-17 23:53:27', '17', '19');
INSERT INTO `trade_ordergoods` VALUES ('14', '1', '2017-08-17 23:54:56', '17', '20');
INSERT INTO `trade_ordergoods` VALUES ('15', '1', '2017-08-18 00:03:33', '17', '21');
INSERT INTO `trade_ordergoods` VALUES ('16', '1', '2017-08-18 00:13:50', '3', '22');
INSERT INTO `trade_ordergoods` VALUES ('17', '5', '2017-09-15 19:09:29', '2', '23');
INSERT INTO `trade_ordergoods` VALUES ('18', '1', '2017-09-15 19:09:29', '15', '23');
INSERT INTO `trade_ordergoods` VALUES ('19', '2', '2017-09-15 19:09:29', '17', '23');
INSERT INTO `trade_ordergoods` VALUES ('20', '1', '2017-09-15 19:09:29', '47', '23');
INSERT INTO `trade_ordergoods` VALUES ('21', '1', '2017-09-15 19:09:29', '30', '23');
INSERT INTO `trade_ordergoods` VALUES ('22', '4', '2017-09-15 19:09:29', '1', '23');
INSERT INTO `trade_ordergoods` VALUES ('23', '1', '2017-09-15 19:09:29', '16', '23');
INSERT INTO `trade_ordergoods` VALUES ('24', '1', '2017-09-25 18:51:40', '16', '25');
INSERT INTO `trade_ordergoods` VALUES ('25', '1', '2017-09-28 10:37:49', '17', '26');
INSERT INTO `trade_ordergoods` VALUES ('28', '1', '2017-09-28 12:01:03', '2', '28');
INSERT INTO `trade_ordergoods` VALUES ('32', '5', '2017-09-28 13:47:47', '30', '31');

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) DEFAULT NULL,
  `trade_no` varchar(100) DEFAULT NULL,
  `pay_status` varchar(30) NOT NULL,
  `post_script` varchar(200) NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(20) NOT NULL,
  `singer_mobile` varchar(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`) USING BTREE,
  UNIQUE KEY `trade_no` (`trade_no`) USING BTREE,
  KEY `trade_orderinfo_user_id_08ffa22c` (`user_id`) USING BTREE,
  CONSTRAINT `trade_orderinfo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`user_id`) REFER `mxshop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of trade_orderinfo
-- ----------------------------
INSERT INTO `trade_orderinfo` VALUES ('5', '20170813184159127', null, 'paying', '测试', '1000', null, '测试', 'bobby', '18888888888', '2017-08-13 18:41:59', '1');
INSERT INTO `trade_orderinfo` VALUES ('6', '20170813202151150', null, 'paying', '测试一下', '88', null, '江苏省南京市秦淮区新街口', 'bobby', '18888888886', '2017-08-13 20:21:51', '1');
INSERT INTO `trade_orderinfo` VALUES ('8', '20170817223729133', null, 'paying', 'test', '10', null, '成都市高新区天府大道', 'bobby', '18888888888', '2017-08-17 22:37:29', '1');
INSERT INTO `trade_orderinfo` VALUES ('9', '20170817224029168', null, 'paying', 'test', '10', null, '成都市高新区天府大道', 'bobby', '18888888888', '2017-08-17 22:37:29', '1');
INSERT INTO `trade_orderinfo` VALUES ('10', '20170817224215136', null, 'paying', 'test', '10', null, '成都市高新区天府大道', 'bobby', '18888888888', '2017-08-17 22:37:29', '1');
INSERT INTO `trade_orderinfo` VALUES ('11', '20170817224346192', null, 'paying', 'test', '10', null, '成都市高新区天府大道', 'bobby', '18888888888', '2017-08-17 22:37:29', '1');
INSERT INTO `trade_orderinfo` VALUES ('12', '20170817225644147', null, 'paying', '八点以后', '156', null, '江苏省南京市秦淮区新街口', 'bobby', '18888888886', '2017-08-17 22:56:44', '1');
INSERT INTO `trade_orderinfo` VALUES ('13', '20170817225940180', null, 'paying', '测试', '45', null, '江苏省南京市秦淮区新街口', 'bobby', '18888888886', '2017-08-17 22:59:40', '1');
INSERT INTO `trade_orderinfo` VALUES ('14', '20170817234102171', null, 'paying', 'dddd', '36', null, '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-08-17 23:41:02', '1');
INSERT INTO `trade_orderinfo` VALUES ('15', '20170817234411176', null, 'paying', 'dggss', '158', null, '江苏省南京市秦淮区新街口', 'bobby', '18888888886', '2017-08-17 23:44:11', '1');
INSERT INTO `trade_orderinfo` VALUES ('16', '20170817234447153', null, 'paying', 'dgwgwgw', '158', null, '江苏省南京市秦淮区新街口', 'bobby', '18888888886', '2017-08-17 23:44:47', '1');
INSERT INTO `trade_orderinfo` VALUES ('17', '20170817234555179', '2017081721001004340200204793', 'TRADE_SUCCESS', 'dgwgwgw', '158', '2017-08-17 23:50:28', '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-08-17 23:45:55', '1');
INSERT INTO `trade_orderinfo` VALUES ('19', '20170817235327119', '2017081721001004340200204794', 'TRADE_SUCCESS', 'sggwg', '158', '2017-08-17 23:57:31', '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-08-17 23:53:27', '1');
INSERT INTO `trade_orderinfo` VALUES ('20', '20170817235456132', '2017081721001004340200204795', 'TRADE_SUCCESS', 'dgwgweg', '158', '2017-08-17 23:59:32', '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-08-17 23:54:56', '1');
INSERT INTO `trade_orderinfo` VALUES ('21', '20170818000333129', '2017081821001004340200204646', 'TRADE_SUCCESS', 'dggwww', '158', '2017-08-18 00:07:21', '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-08-18 00:03:33', '1');
INSERT INTO `trade_orderinfo` VALUES ('22', '20170818001350122', '2017081821001004340200204647', 'TRADE_SUCCESS', 'dshgwgw', '238', '2017-08-18 00:18:31', '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-08-18 00:13:50', '1');
INSERT INTO `trade_orderinfo` VALUES ('23', '20170915190929123', null, 'paying', '哈哈', '1486', null, '江苏省南京市秦淮区新街口', 'bobby', '18888888886', '2017-09-15 19:09:29', '1');
INSERT INTO `trade_orderinfo` VALUES ('24', '20170915190957198', null, 'paying', '哈哈', '1486', null, '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-09-15 19:09:57', '1');
INSERT INTO `trade_orderinfo` VALUES ('25', '20170925185140188', null, 'paying', 'gfghfhgfghfh', '36', null, '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-09-25 18:51:40', '1');
INSERT INTO `trade_orderinfo` VALUES ('26', '20170928103749167', null, 'paying', 'wew', '158', null, '江苏省南京市秦淮区新街口', 'bobby', '18888888886', '2017-09-28 10:37:49', '1');
INSERT INTO `trade_orderinfo` VALUES ('28', '20170928120102181', null, 'paying', '测试', '88', null, '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-09-28 12:01:03', '1');
INSERT INTO `trade_orderinfo` VALUES ('31', '20170928134746168', null, 'paying', 'hhhh', '180', null, '北京市市辖区西城区西城区', 'bobby', '18888888887', '2017-09-28 13:47:47', '1');

-- ----------------------------
-- Table structure for trade_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `trade_shoppingcart`;
CREATE TABLE `trade_shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_shoppingcart_user_id_goods_id_92225e66_uniq` (`user_id`,`goods_id`) USING BTREE,
  KEY `trade_shoppingcart_goods_id_8b0f3cb4` (`goods_id`) USING BTREE,
  KEY `trade_shoppingcart_user_id_da423c9c` (`user_id`) USING BTREE,
  CONSTRAINT `trade_shoppingcart_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_shoppingcart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`goods_id`) REFER `mxshop/goods_goods`(`id`); (`user_id`)';

-- ----------------------------
-- Records of trade_shoppingcart
-- ----------------------------
INSERT INTO `trade_shoppingcart` VALUES ('18', '1', '2017-09-29 10:30:20', '1', '1');

-- ----------------------------
-- Table structure for user_operation_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_useraddress`;
CREATE TABLE `user_operation_useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(100) NOT NULL,
  `signer_mobile` varchar(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_usera_user_id_fe128593_fk_users_use` (`user_id`) USING BTREE,
  CONSTRAINT `user_operation_useraddress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`user_id`) REFER `mxshop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of user_operation_useraddress
-- ----------------------------
INSERT INTO `user_operation_useraddress` VALUES ('2', '西城区', '西城区', 'bobby', '18888888887', '2017-08-07 23:39:33', '1', '市辖区', '北京市');
INSERT INTO `user_operation_useraddress` VALUES ('6', '秦淮区', '新街口', 'bobby', '18888888886', '2017-08-13 12:12:42', '1', '南京市', '江苏省');

-- ----------------------------
-- Table structure for user_operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userfav`;
CREATE TABLE `user_operation_userfav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_operation_userfav_user_id_goods_id_2dbadda7_uniq` (`user_id`,`goods_id`) USING BTREE,
  KEY `user_operation_userfav_goods_id_57fc554f` (`goods_id`) USING BTREE,
  KEY `user_operation_userfav_user_id_4e4de070` (`user_id`) USING BTREE,
  CONSTRAINT `user_operation_userfav_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `user_operation_userfav_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`goods_id`) REFER `mxshop/goods_goods`(`id`); (`user_id`)';

-- ----------------------------
-- Records of user_operation_userfav
-- ----------------------------
INSERT INTO `user_operation_userfav` VALUES ('1', '2017-08-05 23:53:21', '1', '2');
INSERT INTO `user_operation_userfav` VALUES ('3', '2017-08-06 01:18:39', '4', '2');
INSERT INTO `user_operation_userfav` VALUES ('7', '2017-08-06 22:25:57', '4', '1');

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_userleavingmessage_user_id_70d909d6` (`user_id`) USING BTREE,
  CONSTRAINT `user_operation_userleavingmessage_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`user_id`) REFER `mxshop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of user_operation_userleavingmessage
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$36000$yqtsB3mx3UFt$3p5cAcrHBW0QxYB0KdlyRBOlmEPKFfN4WuWI0pYvw9s=', '2017-09-27 23:14:48', '1', 'admin', 'bobby_liyao', '', '1', '1', '2017-07-26 14:26:58', 'bobby5', '2017-09-01', 'male', '', '1@1.com');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$36000$JNZmtqYtC0yr$DHv/BPXSbbeK3DQ4XQsW0TlM4U5bjQS3FdZhKvmZv4o=', null, '1', 'admin2', '', '', '1', '1', '2017-08-02 23:32:06', null, null, 'female', '', '2@2.com');
INSERT INTO `users_userprofile` VALUES ('12', 'pbkdf2_sha256$36000$4zDn8NYms1Rs$BU+pt9UvmRW+mJDs3nLKFucssRYJMjMniVEDqw1zmHQ=', null, '0', '123456', '', '', '0', '1', '2017-08-05 12:40:19', null, null, 'female', null, '');
INSERT INTO `users_userprofile` VALUES ('14', 'pbkdf2_sha256$36000$EVOgK1KLf0t6$+viUrE+pGkVtxjMReHo5iR7QPg8ZlBa4mp48e0QZxF0=', null, '0', '18256454875', '', '', '0', '1', '2017-08-05 13:08:57', null, null, 'female', '18256454875', null);
INSERT INTO `users_userprofile` VALUES ('15', 'pbkdf2_sha256$36000$8TiStq4N5Exc$Kwo8ssP/ARiF1w5pn3DhMH7ZCARHiP9z9cDM2hm8Nb8=', null, '1', 'zp', '', '', '1', '1', '2017-09-13 10:41:51', null, null, 'female', null, 'zp@11.com');
INSERT INTO `users_userprofile` VALUES ('16', 'pbkdf2_sha256$36000$evodNb70KRoH$S5KXJmr4/iW+N34+Hv//b2yb9kQvVu7rXdh7pCeHyPg=', null, '1', 'yuqianpeng', '', '', '1', '1', '2017-09-28 23:31:52', null, null, 'female', null, '');
INSERT INTO `users_userprofile` VALUES ('17', 'pbkdf2_sha256$36000$jQDSWDovd7PO$4Dg8b6rzjM2Z4K9j6txTIB2VYZhMcWzx7bWPouUogRo=', null, '1', 'yqp', '', '', '1', '1', '2017-09-28 23:34:31', null, null, 'female', null, '');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`) USING BTREE,
  KEY `users_userprofile_groups_userprofile_id_a4496a80` (`userprofile_id`) USING BTREE,
  KEY `users_userprofile_groups_group_id_3de53dbf` (`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_userprofile_groups_ibfk_2` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`group_id`) REFER `mxshop/auth_group`(`id`); (`userprofil';

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`) USING BTREE,
  KEY `users_userprofile_user_permissions_userprofile_id_34544737` (`userprofile_id`) USING BTREE,
  KEY `users_userprofile_user_permissions_permission_id_393136b6` (`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_user_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_user_permissions_ibfk_2` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 9216 kB; (`permission_id`) REFER `mxshop/auth_permission`(`id`); (`';

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_verifycode`;
CREATE TABLE `users_verifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_verifycode
-- ----------------------------
INSERT INTO `users_verifycode` VALUES ('4', '9729', '18782902568', '2017-08-08 22:02:04');
