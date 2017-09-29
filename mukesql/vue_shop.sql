/*
Navicat MySQL Data Transfer

Source Server         : mx_aliyun
Source Server Version : 50637
Source Host           : 59.110.163.113:3306
Source Database       : vue_shop

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2017-09-29 10:43:36
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`group_id`) REFER `vue_shop/auth_group`(`id`); (`permissi';

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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`content_type_id`) REFER `vue_shop/django_content_type`(`';

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 配送地址', '6', 'add_useraddress');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 配送地址', '6', 'change_useraddress');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 配送地址', '6', 'delete_useraddress');
INSERT INTO `auth_permission` VALUES ('24', 'Can add 手机验证记录', '7', 'add_verifyrecord');
INSERT INTO `auth_permission` VALUES ('25', 'Can change 手机验证记录', '7', 'change_verifyrecord');
INSERT INTO `auth_permission` VALUES ('26', 'Can delete 手机验证记录', '7', 'delete_verifyrecord');
INSERT INTO `auth_permission` VALUES ('27', 'Can add 用户信息', '8', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('28', 'Can change 用户信息', '8', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('29', 'Can delete 用户信息', '8', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('30', 'Can view 配送地址', '6', 'view_useraddress');
INSERT INTO `auth_permission` VALUES ('31', 'Can view 用户信息', '8', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 手机验证记录', '7', 'view_verifyrecord');
INSERT INTO `auth_permission` VALUES ('33', 'Can add log entry', '9', 'add_log');
INSERT INTO `auth_permission` VALUES ('34', 'Can change log entry', '9', 'change_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete log entry', '9', 'delete_log');
INSERT INTO `auth_permission` VALUES ('36', 'Can add User Widget', '10', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('37', 'Can change User Widget', '10', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('38', 'Can delete User Widget', '10', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('39', 'Can add Bookmark', '11', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('40', 'Can change Bookmark', '11', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('41', 'Can delete Bookmark', '11', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('42', 'Can add User Setting', '12', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('43', 'Can change User Setting', '12', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('44', 'Can delete User Setting', '12', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('45', 'Can view Bookmark', '11', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('46', 'Can view log entry', '9', 'view_log');
INSERT INTO `auth_permission` VALUES ('47', 'Can view User Setting', '12', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('48', 'Can view User Widget', '10', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 商品搜索关键词', '13', 'add_goodskeywords');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 商品搜索关键词', '13', 'change_goodskeywords');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 商品搜索关键词', '13', 'delete_goodskeywords');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 商品图片', '14', 'add_goodsimages');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 商品图片', '14', 'change_goodsimages');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 商品图片', '14', 'delete_goodsimages');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 商品类别', '15', 'add_goodscategory');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 商品类别', '15', 'change_goodscategory');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 商品类别', '15', 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 商品价格区间', '16', 'add_categorypricerange');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 商品价格区间', '16', 'change_categorypricerange');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 商品价格区间', '16', 'delete_categorypricerange');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 商品', '17', 'add_goods');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 商品', '17', 'change_goods');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 商品', '17', 'delete_goods');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 商品价格区间', '16', 'view_categorypricerange');
INSERT INTO `auth_permission` VALUES ('65', 'Can view 商品', '17', 'view_goods');
INSERT INTO `auth_permission` VALUES ('66', 'Can view 商品类别', '15', 'view_goodscategory');
INSERT INTO `auth_permission` VALUES ('67', 'Can view 商品图片', '14', 'view_goodsimages');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 商品搜索关键词', '13', 'view_goodskeywords');
INSERT INTO `auth_permission` VALUES ('69', 'Can add user social auth', '18', 'add_usersocialauth');
INSERT INTO `auth_permission` VALUES ('70', 'Can change user social auth', '18', 'change_usersocialauth');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete user social auth', '18', 'delete_usersocialauth');
INSERT INTO `auth_permission` VALUES ('72', 'Can add nonce', '19', 'add_nonce');
INSERT INTO `auth_permission` VALUES ('73', 'Can change nonce', '19', 'change_nonce');
INSERT INTO `auth_permission` VALUES ('74', 'Can delete nonce', '19', 'delete_nonce');
INSERT INTO `auth_permission` VALUES ('75', 'Can add code', '20', 'add_code');
INSERT INTO `auth_permission` VALUES ('76', 'Can change code', '20', 'change_code');
INSERT INTO `auth_permission` VALUES ('77', 'Can delete code', '20', 'delete_code');
INSERT INTO `auth_permission` VALUES ('78', 'Can add partial', '21', 'add_partial');
INSERT INTO `auth_permission` VALUES ('79', 'Can change partial', '21', 'change_partial');
INSERT INTO `auth_permission` VALUES ('80', 'Can delete partial', '21', 'delete_partial');
INSERT INTO `auth_permission` VALUES ('81', 'Can add association', '22', 'add_association');
INSERT INTO `auth_permission` VALUES ('82', 'Can change association', '22', 'change_association');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete association', '22', 'delete_association');
INSERT INTO `auth_permission` VALUES ('84', 'Can view association', '22', 'view_association');
INSERT INTO `auth_permission` VALUES ('85', 'Can view code', '20', 'view_code');
INSERT INTO `auth_permission` VALUES ('86', 'Can view nonce', '19', 'view_nonce');
INSERT INTO `auth_permission` VALUES ('87', 'Can view partial', '21', 'view_partial');
INSERT INTO `auth_permission` VALUES ('88', 'Can view user social auth', '18', 'view_usersocialauth');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 用户收藏', '23', 'add_userfav');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 用户收藏', '23', 'change_userfav');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 用户收藏', '23', 'delete_userfav');
INSERT INTO `auth_permission` VALUES ('92', 'Can add 用户留言', '24', 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('93', 'Can change 用户留言', '24', 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('94', 'Can delete 用户留言', '24', 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('95', 'Can view 用户收藏', '23', 'view_userfav');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 用户留言', '24', 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('97', 'Can add pay log', '25', 'add_paylog');
INSERT INTO `auth_permission` VALUES ('98', 'Can change pay log', '25', 'change_paylog');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete pay log', '25', 'delete_paylog');
INSERT INTO `auth_permission` VALUES ('100', 'Can add 订单', '26', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('101', 'Can change 订单', '26', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('102', 'Can delete 订单', '26', 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES ('103', 'Can add order goods', '27', 'add_ordergoods');
INSERT INTO `auth_permission` VALUES ('104', 'Can change order goods', '27', 'change_ordergoods');
INSERT INTO `auth_permission` VALUES ('105', 'Can delete order goods', '27', 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES ('106', 'Can add 购物车', '28', 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES ('107', 'Can change 购物车', '28', 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES ('108', 'Can delete 购物车', '28', 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES ('109', 'Can view order goods', '27', 'view_ordergoods');
INSERT INTO `auth_permission` VALUES ('110', 'Can view 订单', '26', 'view_orderinfo');
INSERT INTO `auth_permission` VALUES ('111', 'Can view pay log', '25', 'view_paylog');
INSERT INTO `auth_permission` VALUES ('112', 'Can view 购物车', '28', 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES ('113', 'Can add goods brand', '29', 'add_goodsbrand');
INSERT INTO `auth_permission` VALUES ('114', 'Can change goods brand', '29', 'change_goodsbrand');
INSERT INTO `auth_permission` VALUES ('115', 'Can delete goods brand', '29', 'delete_goodsbrand');
INSERT INTO `auth_permission` VALUES ('116', 'Can view goods brand', '29', 'view_goodsbrand');
INSERT INTO `auth_permission` VALUES ('117', 'Can add 轮播图', '30', 'add_bannergoods');
INSERT INTO `auth_permission` VALUES ('118', 'Can change 轮播图', '30', 'change_bannergoods');
INSERT INTO `auth_permission` VALUES ('119', 'Can delete 轮播图', '30', 'delete_bannergoods');
INSERT INTO `auth_permission` VALUES ('120', 'Can view 轮播图', '30', 'view_bannergoods');
INSERT INTO `auth_permission` VALUES ('121', 'Can add 热门搜索词', '31', 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('122', 'Can change 热门搜索词', '31', 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('123', 'Can delete 热门搜索词', '31', 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('124', 'Can view 热门搜索词', '31', 'view_hotsearchwords');

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
  KEY `django_admin_log_user_id_c564eba6` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`content_type_id`) REFER `vue_shop/django_content_type`(`';

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('30', 'goods', 'bannergoods');
INSERT INTO `django_content_type` VALUES ('16', 'goods', 'categorypricerange');
INSERT INTO `django_content_type` VALUES ('17', 'goods', 'goods');
INSERT INTO `django_content_type` VALUES ('29', 'goods', 'goodsbrand');
INSERT INTO `django_content_type` VALUES ('15', 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES ('14', 'goods', 'goodsimages');
INSERT INTO `django_content_type` VALUES ('13', 'goods', 'goodskeywords');
INSERT INTO `django_content_type` VALUES ('31', 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('22', 'social_django', 'association');
INSERT INTO `django_content_type` VALUES ('20', 'social_django', 'code');
INSERT INTO `django_content_type` VALUES ('19', 'social_django', 'nonce');
INSERT INTO `django_content_type` VALUES ('21', 'social_django', 'partial');
INSERT INTO `django_content_type` VALUES ('18', 'social_django', 'usersocialauth');
INSERT INTO `django_content_type` VALUES ('27', 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES ('26', 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('25', 'trade', 'paylog');
INSERT INTO `django_content_type` VALUES ('28', 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'useraddress');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'verifyrecord');
INSERT INTO `django_content_type` VALUES ('23', 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES ('24', 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES ('11', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('12', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('10', 'xadmin', 'userwidget');

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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-07-19 09:38:34');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2017-07-19 09:38:34');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2017-07-19 09:38:37');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2017-07-19 09:38:37');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2017-07-19 09:38:37');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2017-07-19 09:38:37');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2017-07-19 09:38:37');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2017-07-19 09:38:37');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2017-07-19 09:38:37');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2017-07-19 09:38:37');
INSERT INTO `django_migrations` VALUES ('11', 'users', '0001_initial', '2017-07-19 09:38:39');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0001_initial', '2017-07-19 09:38:40');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2017-07-19 09:38:40');
INSERT INTO `django_migrations` VALUES ('14', 'goods', '0001_initial', '2017-07-19 09:38:41');
INSERT INTO `django_migrations` VALUES ('15', 'goods', '0002_auto_20170710_2118', '2017-07-19 09:38:42');
INSERT INTO `django_migrations` VALUES ('16', 'goods', '0003_auto_20170718_2253', '2017-07-19 09:38:43');
INSERT INTO `django_migrations` VALUES ('17', 'goods', '0004_categorypricerange_index', '2017-07-19 09:38:43');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2017-07-19 09:38:44');
INSERT INTO `django_migrations` VALUES ('19', 'default', '0001_initial', '2017-07-19 09:38:45');
INSERT INTO `django_migrations` VALUES ('20', 'social_auth', '0001_initial', '2017-07-19 09:38:45');
INSERT INTO `django_migrations` VALUES ('21', 'default', '0002_add_related_name', '2017-07-19 09:38:45');
INSERT INTO `django_migrations` VALUES ('22', 'social_auth', '0002_add_related_name', '2017-07-19 09:38:45');
INSERT INTO `django_migrations` VALUES ('23', 'default', '0003_alter_email_max_length', '2017-07-19 09:38:46');
INSERT INTO `django_migrations` VALUES ('24', 'social_auth', '0003_alter_email_max_length', '2017-07-19 09:38:46');
INSERT INTO `django_migrations` VALUES ('25', 'default', '0004_auto_20160423_0400', '2017-07-19 09:38:46');
INSERT INTO `django_migrations` VALUES ('26', 'social_auth', '0004_auto_20160423_0400', '2017-07-19 09:38:46');
INSERT INTO `django_migrations` VALUES ('27', 'social_auth', '0005_auto_20160727_2333', '2017-07-19 09:38:46');
INSERT INTO `django_migrations` VALUES ('28', 'social_django', '0006_partial', '2017-07-19 09:38:46');
INSERT INTO `django_migrations` VALUES ('29', 'social_django', '0007_auto_20170614_2343', '2017-07-19 09:38:46');
INSERT INTO `django_migrations` VALUES ('30', 'trade', '0001_initial', '2017-07-19 09:38:47');
INSERT INTO `django_migrations` VALUES ('31', 'user_operation', '0001_initial', '2017-07-19 09:38:48');
INSERT INTO `django_migrations` VALUES ('32', 'user_operation', '0002_userleavingmessage_add_time', '2017-07-19 09:38:48');
INSERT INTO `django_migrations` VALUES ('33', 'users', '0002_auto_20170707_1718', '2017-07-19 09:38:49');
INSERT INTO `django_migrations` VALUES ('34', 'users', '0003_auto_20170707_1816', '2017-07-19 09:38:50');
INSERT INTO `django_migrations` VALUES ('35', 'xadmin', '0001_initial', '2017-07-19 09:38:51');
INSERT INTO `django_migrations` VALUES ('36', 'xadmin', '0002_log', '2017-07-19 09:38:52');
INSERT INTO `django_migrations` VALUES ('37', 'xadmin', '0003_auto_20160715_0100', '2017-07-19 09:38:52');
INSERT INTO `django_migrations` VALUES ('38', 'social_django', '0005_auto_20160727_2333', '2017-07-19 09:38:52');
INSERT INTO `django_migrations` VALUES ('39', 'social_django', '0004_auto_20160423_0400', '2017-07-19 09:38:52');
INSERT INTO `django_migrations` VALUES ('40', 'social_django', '0001_initial', '2017-07-19 09:38:52');
INSERT INTO `django_migrations` VALUES ('41', 'social_django', '0003_alter_email_max_length', '2017-07-19 09:38:52');
INSERT INTO `django_migrations` VALUES ('42', 'social_django', '0002_add_related_name', '2017-07-19 09:38:52');
INSERT INTO `django_migrations` VALUES ('43', 'trade', '0002_remove_shoppingcart_is_deleted', '2017-07-19 09:57:14');
INSERT INTO `django_migrations` VALUES ('44', 'trade', '0003_auto_20170719_1048', '2017-07-19 10:49:00');
INSERT INTO `django_migrations` VALUES ('45', 'goods', '0005_auto_20170719_1052', '2017-07-19 10:52:55');
INSERT INTO `django_migrations` VALUES ('46', 'goods', '0006_auto_20170719_1418', '2017-07-19 14:18:11');
INSERT INTO `django_migrations` VALUES ('47', 'goods', '0007_auto_20170719_1508', '2017-07-19 15:08:55');
INSERT INTO `django_migrations` VALUES ('48', 'goods', '0008_auto_20170719_1545', '2017-07-19 15:45:59');
INSERT INTO `django_migrations` VALUES ('49', 'goods', '0009_auto_20170719_1559', '2017-07-19 15:59:13');
INSERT INTO `django_migrations` VALUES ('50', 'goods', '0010_auto_20170719_2135', '2017-07-20 10:31:57');
INSERT INTO `django_migrations` VALUES ('51', 'user_operation', '0003_auto_20170719_2132', '2017-07-20 10:31:57');
INSERT INTO `django_migrations` VALUES ('52', 'users', '0004_auto_20170720_0013', '2017-07-20 10:31:57');
INSERT INTO `django_migrations` VALUES ('53', 'goods', '0011_goodsbrand', '2017-07-20 15:21:41');
INSERT INTO `django_migrations` VALUES ('54', 'goods', '0012_auto_20170720_1541', '2017-07-20 15:42:02');
INSERT INTO `django_migrations` VALUES ('55', 'goods', '0013_bannergoods', '2017-07-20 17:09:33');
INSERT INTO `django_migrations` VALUES ('56', 'goods', '0014_hotsearchwords', '2017-07-20 17:33:02');
INSERT INTO `django_migrations` VALUES ('57', 'goods', '0015_hotsearchwords_index', '2017-07-20 17:35:27');
INSERT INTO `django_migrations` VALUES ('58', 'goods', '0016_auto_20170720_1821', '2017-07-20 18:22:06');

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
INSERT INTO `django_session` VALUES ('0a3u72rzspjslvn7cdejv9tqlijueg3a', 'MzM1NmFhMGEzMDJjODFhMjg4MDljZDI2YjkwODQwZGY0MTczOTM5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFlNWI4ZDBmMTFiNDEzYmNmNjdjMTcwNWM5NzI1ZTVlMjE4MWZhZSIsIkxJU1RfUVVFUlkiOltbImdvb2RzIiwiZ29vZHMiXSwiIl0sIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-02 16:16:42');
INSERT INTO `django_session` VALUES ('15w65oayhp4li0fy63g76menuk4rv8gw', 'ZDA2YWQzNWI5M2NiNTFmNDYzNjU3MzE1MzE4MDFiM2E0OTFiMmY2ODp7IndlaWJvX3N0YXRlIjoieVpWZTcxdjRKV1dLV0xjd09nUGp4cVhUMm9JNkg2ME0iLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLndlaWJvLldlaWJvT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFlNWI4ZDBmMTFiNDEzYmNmNjdjMTcwNWM5NzI1ZTVlMjE4MWZhZSIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6IndlaWJvIn0=', '2017-08-06 00:35:32');
INSERT INTO `django_session` VALUES ('2kmeh5394ambsg3epv00g92ylr5z51f7', 'ODkzNmIzMDM4MDU2NTVjMzE1YTdhYWFhYTJmNGNhODZhOTc3Yzc1Nzp7InFxX3N0YXRlIjoib0xTTU00UkxJZ2dFR0N0TlVUUEtCVkZCSndqN2VlVjciLCJ3ZWlib19zdGF0ZSI6ImVQcjh2cGNkSlFRaVlpdzhsQTNta0FjVmM5MzVvSXBDIn0=', '2017-09-06 23:54:37');
INSERT INTO `django_session` VALUES ('3hbv9wvtuierl3f9gw0fzl4gdd4hiyrs', 'YjQwYjdiYWVjZDFkMjY0MjFhYjIzZDEyZjE1NTczMzgyNWYzZTFkYjp7IndlaWJvX3N0YXRlIjoiQ1Q1TXJxNW56c202QzFGZG1GNUNEazJhd0RwVDQyaEQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLndlaWJvLldlaWJvT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFlNWI4ZDBmMTFiNDEzYmNmNjdjMTcwNWM5NzI1ZTVlMjE4MWZhZSIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6IndlaWJvIn0=', '2017-08-12 00:20:04');
INSERT INTO `django_session` VALUES ('3utkweopanrnmob14ubfndmh46ezuntr', 'NGJmYmIwMWRjNWY4NDQxMzVmZjFjODM0YjU2NTZjM2IyY2JkODBmMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWU1YjhkMGYxMWI0MTNiY2Y2N2MxNzA1Yzk3MjVlNWUyMTgxZmFlIn0=', '2017-08-05 20:05:07');
INSERT INTO `django_session` VALUES ('6src3pc8958s0e92s85kymbo4sqqc0lj', 'MmZlZTlkZjdjN2ZkMzRiZmRiYjc3MzdkZjEyZDdmNmM4NTE2NzYyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWU1YjhkMGYxMWI0MTNiY2Y2N2MxNzA1Yzk3MjVlNWUyMTgxZmFlIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VyYWRkcmVzcyJdLCIiXX0=', '2017-08-27 00:04:13');
INSERT INTO `django_session` VALUES ('9wx5jghei5xecu1vfhatwnh675kks6s9', 'Njk2ZjIwOWIxNjg1NWQ1Y2ZlMjk5ZDgwNzI4MTVkYTc0ODRkNWVlNDp7IndlaWJvX3N0YXRlIjoiSmtiVmE0S0xKdmZzVTZqSklQSXpDcmIzR1RiQUhVVnIiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLndlaWJvLldlaWJvT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFlNWI4ZDBmMTFiNDEzYmNmNjdjMTcwNWM5NzI1ZTVlMjE4MWZhZSIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6IndlaWJvIn0=', '2017-08-11 22:53:02');
INSERT INTO `django_session` VALUES ('dr22ndgi097m2o1s0h4c3qliokl38xur', 'NGJmYmIwMWRjNWY4NDQxMzVmZjFjODM0YjU2NTZjM2IyY2JkODBmMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWU1YjhkMGYxMWI0MTNiY2Y2N2MxNzA1Yzk3MjVlNWUyMTgxZmFlIn0=', '2017-08-26 22:18:43');
INSERT INTO `django_session` VALUES ('fzpushbow5xd3lyefdcbz4zhviv4hrsm', 'Y2E0MjM2MDc4Yjk5OGRkMGZiN2ZhNTkyMmU4NjdmODI4YTI0NDk4Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWU1YjhkMGYxMWI0MTNiY2Y2N2MxNzA1Yzk3MjVlNWUyMTgxZmFlIiwid2VpYm9fc3RhdGUiOiJJN0N3bnNaZmhESE9oRU5KWllpeEJRRTBTdEpUdHVPVCJ9', '2017-08-11 22:39:43');
INSERT INTO `django_session` VALUES ('sokgv6swouqi6arlg5o389ctbc81sv4g', 'ZjU1YjRlYTkyYTk2MDc4ZWY5ZGRmOTM3YmE1ZTQ5YmVmNTQ3NTRmNzp7IkxJU1RfUVVFUlkiOltbImdvb2RzIiwiaG90c2VhcmNod29yZHMiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjMxZTViOGQwZjExYjQxM2JjZjY3YzE3MDVjOTcyNWU1ZTIxODFmYWUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-08-03 17:40:29');
INSERT INTO `django_session` VALUES ('uvlek3snymhl1aprljmdsqi5xdkfe9g4', 'MmZlZTlkZjdjN2ZkMzRiZmRiYjc3MzdkZjEyZDdmNmM4NTE2NzYyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWU1YjhkMGYxMWI0MTNiY2Y2N2MxNzA1Yzk3MjVlNWUyMTgxZmFlIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VyYWRkcmVzcyJdLCIiXX0=', '2017-08-20 21:32:00');
INSERT INTO `django_session` VALUES ('vhy18xv2zq2q5zhmv7q3be0de2dqd0o6', 'NWViYjRmMDFiM2I3MWRkNTllMDBhY2ZhMTMyMzczMTU5Y2FiOTMxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMxZTViOGQwZjExYjQxM2JjZjY3YzE3MDVjOTcyNWU1ZTIxODFmYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-02 16:21:00');
INSERT INTO `django_session` VALUES ('x5ftjtmdyfv31lv79kcro13r5qcbv4nw', 'NmU5YjBkNjQ1M2NkZjVhNTE3YzNlNGQ3ZDg4NWVmYmQwNmRiZmVlYTp7IndlaWJvX3N0YXRlIjoiWGNSVHNLYWZrcVRoTmZyaXlaTTBhTlprMVFjdVczeFQifQ==', '2017-08-06 00:36:01');

-- ----------------------------
-- Table structure for goods_bannergoods
-- ----------------------------
DROP TABLE IF EXISTS `goods_bannergoods`;
CREATE TABLE `goods_bannergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `index` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_bannergoods_goods_id_97aea9cf_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `goods_bannergoods_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`goods_id`) REFER `vue_shop/goods_goods`(`id`)';

-- ----------------------------
-- Records of goods_bannergoods
-- ----------------------------
INSERT INTO `goods_bannergoods` VALUES ('1', 'banner/banner1.jpg', '5', '139');
INSERT INTO `goods_bannergoods` VALUES ('2', 'banner/banner2.jpg', '3', '140');
INSERT INTO `goods_bannergoods` VALUES ('3', 'banner/banner3.jpg', '2', '157');

-- ----------------------------
-- Table structure for goods_categorypricerange
-- ----------------------------
DROP TABLE IF EXISTS `goods_categorypricerange`;
CREATE TABLE `goods_categorypricerange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_min` int(11) NOT NULL,
  `price_max` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_categorypricer_category_id_d10db78a_fk_goods_goo` (`category_id`) USING BTREE,
  CONSTRAINT `goods_categorypricerange_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`category_id`) REFER `vue_shop/goods_goodscategory`(`id`)';

-- ----------------------------
-- Records of goods_categorypricerange
-- ----------------------------

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) NOT NULL,
  `name` varchar(300) NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` varchar(500) NOT NULL,
  `goods_desc` longtext NOT NULL,
  `goods_front_image` varchar(100) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `goods_front_image_url` varchar(300) NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` (`category_id`) USING BTREE,
  CONSTRAINT `goods_goods_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`category_id`) REFER `vue_shop/goods_goodscategory`(`id`)';

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES ('139', '', '新鲜水果甜蜜香脆单果约800克', '0', '0', '0', '0', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:20', '21', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889889.jpg', '1');
INSERT INTO `goods_goods` VALUES ('140', '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '0', '0', '0', '0', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:20', '8', 'http://sx.youxueshop.com/images/201512/goods_img/2_P_1448945810202.jpg', '1');
INSERT INTO `goods_goods` VALUES ('141', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '0', '0', '0', '0', '286', '238', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:20', '16', 'http://sx.youxueshop.com/images/201512/goods_img/7_P_1448945104883.jpg', '1');
INSERT INTO `goods_goods` VALUES ('142', '', '日本蒜蓉粉丝扇贝270克6只装', '0', '0', '0', '0', '156', '108', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:20', '21', 'http://sx.youxueshop.com/images/201512/goods_img/47_P_1448946213263.jpg', '1');
INSERT INTO `goods_goods` VALUES ('143', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '0', '0', '0', '0', '106', '88', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '8', 'http://sx.youxueshop.com/images/201512/goods_img/10_P_1448944572085.jpg', '1');
INSERT INTO `goods_goods` VALUES ('144', '', '乌拉圭进口牛肉卷特级肥牛卷', '0', '0', '0', '0', '90', '75', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '22', 'http://sx.youxueshop.com/images/201512/goods_img/4_P_1448945381985.jpg', '1');
INSERT INTO `goods_goods` VALUES ('145', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '24', 'http://sx.youxueshop.com/images/201512/goods_img/8_P_1448945032810.jpg', '1');
INSERT INTO `goods_goods` VALUES ('146', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '8', 'http://sx.youxueshop.com/images/201512/goods_img/11_P_1448944388277.jpg', '1');
INSERT INTO `goods_goods` VALUES ('147', '', '潮香村澳洲进口牛排家庭团购套餐20片', '0', '0', '0', '0', '239', '199', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '23', 'http://sx.youxueshop.com/images/201512/goods_img/6_P_1448945167279.jpg', '1');
INSERT INTO `goods_goods` VALUES ('148', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '0', '0', '0', '0', '202', '168', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '21', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791617.jpg', '1');
INSERT INTO `goods_goods` VALUES ('149', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '0', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '3', 'http://sx.youxueshop.com/images/201512/goods_img/3_P_1448945490837.jpg', '1');
INSERT INTO `goods_goods` VALUES ('150', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '0', '0', '0', '0', '126', '88', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '8', 'http://sx.youxueshop.com/images/201512/goods_img/48_P_1448943988970.jpg', '1');
INSERT INTO `goods_goods` VALUES ('151', '', '澳洲进口安格斯牛切片上脑牛排1000g', '0', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '13', 'http://sx.youxueshop.com/images/201512/goods_img/5_P_1448945270390.jpg', '1');
INSERT INTO `goods_goods` VALUES ('152', '', '帐篷出租', '0', '0', '0', '0', '120', '100', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '22', 'http://sx.youxueshop.com/images/201705/goods_img/53_P_1495068879687.jpg', '1');
INSERT INTO `goods_goods` VALUES ('153', '', '52度茅台集团国隆双喜酒500mlx6', '0', '0', '0', '0', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '38', 'http://sx.youxueshop.com/images/201512/goods_img/16_P_1448947194687.jpg', '1');
INSERT INTO `goods_goods` VALUES ('154', '', '52度水井坊臻酿八號500ml', '0', '0', '0', '0', '43', '36', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '37', 'http://sx.youxueshop.com/images/201512/goods_img/14_P_1448947354031.jpg', '1');
INSERT INTO `goods_goods` VALUES ('155', '', '53度茅台仁酒500ml', '0', '0', '0', '0', '190', '158', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '33', 'http://sx.youxueshop.com/images/201512/goods_img/12_P_1448947547989.jpg', '1');
INSERT INTO `goods_goods` VALUES ('156', '', '双响炮洋酒JimBeamwhiskey美国白占边', '0', '0', '0', '0', '38', '28', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:21', '30', 'http://sx.youxueshop.com/images/201512/goods_img/46_P_1448946598711.jpg', '1');
INSERT INTO `goods_goods` VALUES ('157', '', '西夫拉姆进口洋酒小酒版', '0', '0', '0', '0', '55', '46', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:22', '37', 'http://sx.youxueshop.com/images/201512/goods_img/21_P_1448946793276.jpg', '1');
INSERT INTO `goods_goods` VALUES ('158', '', '茅台53度飞天茅台500ml', '0', '0', '0', '0', '22', '18', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:22', '31', 'http://sx.youxueshop.com/images/201512/goods_img/15_P_1448947257324.jpg', '1');
INSERT INTO `goods_goods` VALUES ('159', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:22', '30', 'http://sx.youxueshop.com/images/201512/goods_img/13_P_1448947460386.jpg', '1');
INSERT INTO `goods_goods` VALUES ('160', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:22', '37', 'http://sx.youxueshop.com/images/201512/goods_img/50_P_1448946543091.jpg', '1');
INSERT INTO `goods_goods` VALUES ('161', '', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n       ', '', '0', '0', '2017-07-19 16:16:22', '31', 'http://sx.youxueshop.com/images/201512/goods_img/51_P_1448946466595.jpg', '1');
INSERT INTO `goods_goods` VALUES ('162', '', '张裕干红葡萄酒750ml*6支', '0', '0', '0', '0', '54', '45', '', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n    ', '', '0', '0', '2017-07-19 16:16:22', '32', 'http://sx.youxueshop.com/images/201512/goods_img/17_P_1448947102246.jpg', '1');
INSERT INTO `goods_goods` VALUES ('163', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n      ', '', '1', '0', '2017-07-19 16:16:00', '30', 'http://sx.youxueshop.com/images/201512/goods_img/20_P_1448946850602.jpg', '1');
INSERT INTO `goods_goods` VALUES ('164', '', '法国原装进口圣贝克干红葡萄酒750ml', '0', '0', '0', '0', '82', '68', '', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n     ', '', '0', '0', '2017-07-19 16:16:22', '26', 'http://sx.youxueshop.com/images/201512/goods_img/19_P_1448946951581.jpg', '1');
INSERT INTO `goods_goods` VALUES ('165', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n      ', '', '0', '0', '2017-07-19 16:16:22', '26', 'http://sx.youxueshop.com/images/201512/goods_img/18_P_1448947011435.jpg', '1');
INSERT INTO `goods_goods` VALUES ('166', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n     ', '', '0', '0', '2017-07-19 16:16:22', '31', 'http://sx.youxueshop.com/images/201512/goods_img/22_P_1448946729629.jpg', '1');
INSERT INTO `goods_goods` VALUES ('167', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n     ', '', '0', '0', '2017-07-19 16:16:22', '37', 'http://sx.youxueshop.com/images/201512/goods_img/45_P_1448946661303.jpg', '1');
INSERT INTO `goods_goods` VALUES ('168', '', '赣南脐橙特级果10斤装', '0', '0', '0', '0', '43', '36', '', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n    ', '', '0', '0', '2017-07-19 16:16:22', '63', 'http://sx.youxueshop.com/images/201512/goods_img/32_P_1448948525620.jpg', '1');
INSERT INTO `goods_goods` VALUES ('169', '', '泰国菠萝蜜16-18斤1个装', '0', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n     ', '', '0', '0', '2017-07-19 16:16:22', '67', 'http://sx.youxueshop.com/images/201512/goods_img/30_P_1448948663450.jpg', '1');
INSERT INTO `goods_goods` VALUES ('170', '', '四川双流草莓新鲜水果礼盒2盒', '0', '0', '0', '0', '22', '18', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:22', '71', 'http://sx.youxueshop.com/images/201512/goods_img/31_P_1448948598947.jpg', '1');
INSERT INTO `goods_goods` VALUES ('171', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:22', '59', 'http://sx.youxueshop.com/images/201512/goods_img/35_P_1448948333610.jpg', '1');
INSERT INTO `goods_goods` VALUES ('172', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:22', '59', 'http://sx.youxueshop.com/images/201512/goods_img/36_P_1448948234405.jpg', '1');
INSERT INTO `goods_goods` VALUES ('173', '', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '63', 'http://sx.youxueshop.com/images/201512/goods_img/33_P_1448948479966.jpg', '1');
INSERT INTO `goods_goods` VALUES ('174', '', '潍坊萝卜5斤/箱礼盒', '0', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '71', 'http://sx.youxueshop.com/images/201512/goods_img/34_P_1448948399009.jpg', '1');
INSERT INTO `goods_goods` VALUES ('175', '', '休闲零食膨化食品焦糖/奶油/椒麻味', '0', '0', '0', '0', '154', '99', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '75', 'http://sx.youxueshop.com/images/201512/goods_img/43_P_1448948762645.jpg', '1');
INSERT INTO `goods_goods` VALUES ('176', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '106', 'http://sx.youxueshop.com/images/201512/goods_img/38_P_1448949220255.jpg', '1');
INSERT INTO `goods_goods` VALUES ('177', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '104', 'http://sx.youxueshop.com/images/201512/goods_img/44_P_1448948850187.jpg', '1');
INSERT INTO `goods_goods` VALUES ('178', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '103', 'http://sx.youxueshop.com/images/201511/goods_img/49_P_1448162819889.jpg', '1');
INSERT INTO `goods_goods` VALUES ('179', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '104', 'http://sx.youxueshop.com/images/201512/goods_img/40_P_1448949038702.jpg', '1');
INSERT INTO `goods_goods` VALUES ('180', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '107', 'http://sx.youxueshop.com/images/201512/goods_img/39_P_1448949115481.jpg', '1');
INSERT INTO `goods_goods` VALUES ('181', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '108', 'http://sx.youxueshop.com/images/201512/goods_img/41_P_1448948980358.jpg', '1');
INSERT INTO `goods_goods` VALUES ('182', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-19 16:16:23', '105', 'http://sx.youxueshop.com/images/201512/goods_img/37_P_1448949284365.jpg', '1');
INSERT INTO `goods_goods` VALUES ('183', 'ssss', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '测试', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', '', '1', '0', '2017-07-19 16:16:00', '104', 'http://sx.youxueshop.com/images/201512/goods_img/42_P_1448948895193.jpg', '1');
INSERT INTO `goods_goods` VALUES ('184', '', '新鲜水果甜蜜香脆单果约800克', '0', '0', '0', '0', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:15', '21', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889889.jpg', '1');
INSERT INTO `goods_goods` VALUES ('185', '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '0', '0', '0', '0', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:15', '8', 'http://sx.youxueshop.com/images/201512/goods_img/2_P_1448945810202.jpg', '1');
INSERT INTO `goods_goods` VALUES ('186', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '0', '0', '0', '0', '286', '238', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:15', '16', 'http://sx.youxueshop.com/images/201512/goods_img/7_P_1448945104883.jpg', '1');
INSERT INTO `goods_goods` VALUES ('187', '', '日本蒜蓉粉丝扇贝270克6只装', '0', '0', '0', '0', '156', '108', '', '\r\n        <p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://59.110.163.113:8001/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p>\r\n      ', '', '0', '0', '2017-07-20 16:25:16', '21', 'http://sx.youxueshop.com/images/201512/goods_img/47_P_1448946213263.jpg', '1');
INSERT INTO `goods_goods` VALUES ('188', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '0', '0', '0', '0', '106', '88', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:16', '8', 'http://sx.youxueshop.com/images/201512/goods_img/10_P_1448944572085.jpg', '1');
INSERT INTO `goods_goods` VALUES ('189', '', '乌拉圭进口牛肉卷特级肥牛卷', '0', '0', '0', '0', '90', '75', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:16', '22', 'http://sx.youxueshop.com/images/201512/goods_img/4_P_1448945381985.jpg', '1');
INSERT INTO `goods_goods` VALUES ('190', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:16', '24', 'http://sx.youxueshop.com/images/201512/goods_img/8_P_1448945032810.jpg', '1');
INSERT INTO `goods_goods` VALUES ('191', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:16', '8', 'http://sx.youxueshop.com/images/201512/goods_img/11_P_1448944388277.jpg', '1');
INSERT INTO `goods_goods` VALUES ('192', '', '潮香村澳洲进口牛排家庭团购套餐20片', '0', '0', '0', '0', '239', '199', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:16', '23', 'http://sx.youxueshop.com/images/201512/goods_img/6_P_1448945167279.jpg', '1');
INSERT INTO `goods_goods` VALUES ('193', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '0', '0', '0', '0', '202', '168', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:16', '21', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791617.jpg', '1');
INSERT INTO `goods_goods` VALUES ('194', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '0', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:16', '3', 'http://sx.youxueshop.com/images/201512/goods_img/3_P_1448945490837.jpg', '1');
INSERT INTO `goods_goods` VALUES ('195', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '0', '0', '0', '0', '126', '88', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:16', '8', 'http://sx.youxueshop.com/images/201512/goods_img/48_P_1448943988970.jpg', '1');
INSERT INTO `goods_goods` VALUES ('196', '', '澳洲进口安格斯牛切片上脑牛排1000g', '0', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:17', '13', 'http://sx.youxueshop.com/images/201512/goods_img/5_P_1448945270390.jpg', '1');
INSERT INTO `goods_goods` VALUES ('197', '', '帐篷出租', '0', '0', '0', '0', '120', '100', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:17', '22', 'http://sx.youxueshop.com/images/201705/goods_img/53_P_1495068879687.jpg', '1');
INSERT INTO `goods_goods` VALUES ('198', '', '52度茅台集团国隆双喜酒500mlx6', '0', '0', '0', '0', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:17', '38', 'http://sx.youxueshop.com/images/201512/goods_img/16_P_1448947194687.jpg', '1');
INSERT INTO `goods_goods` VALUES ('199', '', '52度水井坊臻酿八號500ml', '0', '0', '0', '0', '43', '36', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:17', '37', 'http://sx.youxueshop.com/images/201512/goods_img/14_P_1448947354031.jpg', '1');
INSERT INTO `goods_goods` VALUES ('200', '', '53度茅台仁酒500ml', '0', '0', '0', '0', '190', '158', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:17', '33', 'http://sx.youxueshop.com/images/201512/goods_img/12_P_1448947547989.jpg', '1');
INSERT INTO `goods_goods` VALUES ('201', '', '双响炮洋酒JimBeamwhiskey美国白占边', '0', '0', '0', '0', '38', '28', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:17', '30', 'http://sx.youxueshop.com/images/201512/goods_img/46_P_1448946598711.jpg', '1');
INSERT INTO `goods_goods` VALUES ('202', '', '西夫拉姆进口洋酒小酒版', '0', '0', '0', '0', '55', '46', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:17', '37', 'http://sx.youxueshop.com/images/201512/goods_img/21_P_1448946793276.jpg', '1');
INSERT INTO `goods_goods` VALUES ('203', '', '茅台53度飞天茅台500ml', '0', '0', '0', '0', '22', '18', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:17', '31', 'http://sx.youxueshop.com/images/201512/goods_img/15_P_1448947257324.jpg', '1');
INSERT INTO `goods_goods` VALUES ('204', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '30', 'http://sx.youxueshop.com/images/201512/goods_img/13_P_1448947460386.jpg', '1');
INSERT INTO `goods_goods` VALUES ('205', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '37', 'http://sx.youxueshop.com/images/201512/goods_img/50_P_1448946543091.jpg', '1');
INSERT INTO `goods_goods` VALUES ('206', '', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '31', 'http://sx.youxueshop.com/images/201512/goods_img/51_P_1448946466595.jpg', '1');
INSERT INTO `goods_goods` VALUES ('207', '', '张裕干红葡萄酒750ml*6支', '0', '0', '0', '0', '54', '45', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '32', 'http://sx.youxueshop.com/images/201512/goods_img/17_P_1448947102246.jpg', '1');
INSERT INTO `goods_goods` VALUES ('208', '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '30', 'http://sx.youxueshop.com/images/201512/goods_img/20_P_1448946850602.jpg', '1');
INSERT INTO `goods_goods` VALUES ('209', '', '法国原装进口圣贝克干红葡萄酒750ml', '0', '0', '0', '0', '82', '68', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '26', 'http://sx.youxueshop.com/images/201512/goods_img/19_P_1448946951581.jpg', '1');
INSERT INTO `goods_goods` VALUES ('210', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '26', 'http://sx.youxueshop.com/images/201512/goods_img/18_P_1448947011435.jpg', '1');
INSERT INTO `goods_goods` VALUES ('211', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '31', 'http://sx.youxueshop.com/images/201512/goods_img/22_P_1448946729629.jpg', '1');
INSERT INTO `goods_goods` VALUES ('212', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '37', 'http://sx.youxueshop.com/images/201512/goods_img/45_P_1448946661303.jpg', '1');
INSERT INTO `goods_goods` VALUES ('213', '', '赣南脐橙特级果10斤装', '0', '0', '0', '0', '43', '36', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '63', 'http://sx.youxueshop.com/images/201512/goods_img/32_P_1448948525620.jpg', '1');
INSERT INTO `goods_goods` VALUES ('214', '', '泰国菠萝蜜16-18斤1个装', '0', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '67', 'http://sx.youxueshop.com/images/201512/goods_img/30_P_1448948663450.jpg', '1');
INSERT INTO `goods_goods` VALUES ('215', '', '四川双流草莓新鲜水果礼盒2盒', '0', '0', '0', '0', '22', '18', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '71', 'http://sx.youxueshop.com/images/201512/goods_img/31_P_1448948598947.jpg', '1');
INSERT INTO `goods_goods` VALUES ('216', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '59', 'http://sx.youxueshop.com/images/201512/goods_img/35_P_1448948333610.jpg', '1');
INSERT INTO `goods_goods` VALUES ('217', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '59', 'http://sx.youxueshop.com/images/201512/goods_img/36_P_1448948234405.jpg', '1');
INSERT INTO `goods_goods` VALUES ('218', '', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '63', 'http://sx.youxueshop.com/images/201512/goods_img/33_P_1448948479966.jpg', '1');
INSERT INTO `goods_goods` VALUES ('219', '', '潍坊萝卜5斤/箱礼盒', '0', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:18', '71', 'http://sx.youxueshop.com/images/201512/goods_img/34_P_1448948399009.jpg', '1');
INSERT INTO `goods_goods` VALUES ('220', '', '休闲零食膨化食品焦糖/奶油/椒麻味', '0', '0', '0', '0', '154', '99', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '75', 'http://sx.youxueshop.com/images/201512/goods_img/43_P_1448948762645.jpg', '1');
INSERT INTO `goods_goods` VALUES ('221', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '106', 'http://sx.youxueshop.com/images/201512/goods_img/38_P_1448949220255.jpg', '1');
INSERT INTO `goods_goods` VALUES ('222', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '104', 'http://sx.youxueshop.com/images/201512/goods_img/44_P_1448948850187.jpg', '1');
INSERT INTO `goods_goods` VALUES ('223', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '103', 'http://sx.youxueshop.com/images/201511/goods_img/49_P_1448162819889.jpg', '1');
INSERT INTO `goods_goods` VALUES ('224', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '104', 'http://sx.youxueshop.com/images/201512/goods_img/40_P_1448949038702.jpg', '1');
INSERT INTO `goods_goods` VALUES ('225', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '107', 'http://sx.youxueshop.com/images/201512/goods_img/39_P_1448949115481.jpg', '1');
INSERT INTO `goods_goods` VALUES ('226', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '108', 'http://sx.youxueshop.com/images/201512/goods_img/41_P_1448948980358.jpg', '1');
INSERT INTO `goods_goods` VALUES ('227', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '105', 'http://sx.youxueshop.com/images/201512/goods_img/37_P_1448949284365.jpg', '1');
INSERT INTO `goods_goods` VALUES ('228', '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:25:19', '104', 'http://sx.youxueshop.com/images/201512/goods_img/42_P_1448948895193.jpg', '1');
INSERT INTO `goods_goods` VALUES ('229', '', '维纳斯橄榄菜籽油5L/桶', '0', '0', '0', '0', '187', '156', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:26:21', '52', 'http://sx.youxueshop.com/images/201512/goods_img/27_P_1448947771805.jpg', '1');
INSERT INTO `goods_goods` VALUES ('230', '', '糙米450gx3包粮油米面', '0', '0', '0', '0', '18', '15', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:26:21', '42', 'http://sx.youxueshop.com/images/201512/goods_img/23_P_1448948070348.jpg', '1');
INSERT INTO `goods_goods` VALUES ('231', '', '精炼一级大豆油5L色拉油粮油食用油', '0', '0', '0', '0', '54', '45', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:26:21', '57', 'http://sx.youxueshop.com/images/201512/goods_img/26_P_1448947825754.jpg', '1');
INSERT INTO `goods_goods` VALUES ('232', '', '橄榄玉米油5L*2桶', '0', '0', '0', '0', '31', '26', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:26:21', '55', 'http://sx.youxueshop.com/images/201512/goods_img/28_P_1448947699948.jpg', '1');
INSERT INTO `goods_goods` VALUES ('233', '', '山西黑米农家黑米4斤', '0', '0', '0', '0', '11', '9', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:26:21', '56', 'http://sx.youxueshop.com/images/201512/goods_img/24_P_1448948023823.jpg', '1');
INSERT INTO `goods_goods` VALUES ('234', 'ggggg', '稻园牌稻米油粮油米糠油绿色植物油', '0', '0', '0', '0', '14', '12', '测试', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', '', '1', '0', '2017-07-20 16:26:00', '48', 'http://sx.youxueshop.com/images/201512/goods_img/25_P_1448947875346.jpg', '1');
INSERT INTO `goods_goods` VALUES ('235', '', '融氏纯玉米胚芽油5l桶', '0', '0', '0', '0', '14', '12', '', '\n        <p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>\n    ', '', '0', '0', '2017-07-20 16:26:21', '42', 'http://sx.youxueshop.com/images/201512/goods_img/29_P_1448947631994.jpg', '1');

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `add_time` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` (`category_id`) USING BTREE,
  CONSTRAINT `goods_goodsbrand_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`category_id`) REFER `vue_shop/goods_goodscategory`(`id`)';

-- ----------------------------
-- Records of goods_goodsbrand
-- ----------------------------
INSERT INTO `goods_goodsbrand` VALUES ('1', 'brands/sxsp-1.jpg', '金赏', '2017-07-20 15:25:00', '2');
INSERT INTO `goods_goodsbrand` VALUES ('2', 'brands/sxsp-2.jpg', '艾尔Aier', '2017-07-20 15:28:00', '2');
INSERT INTO `goods_goodsbrand` VALUES ('3', 'brands/sxsp-3.jpg', '发育宝Haipet', '2017-07-20 15:28:00', '2');
INSERT INTO `goods_goodsbrand` VALUES ('4', 'brands/sxsp-3_jG6lwp4.jpg', '发育宝Haipet', '2017-07-20 15:28:00', '58');
INSERT INTO `goods_goodsbrand` VALUES ('5', 'brands/scsg-2.jpg', '维洛司', '2017-07-20 15:29:00', '58');
INSERT INTO `goods_goodsbrand` VALUES ('6', 'brands/scsg-3.jpg', '森美', '2017-07-20 15:29:00', '58');
INSERT INTO `goods_goodsbrand` VALUES ('7', 'brands/lyfs-1.jpg', '森美', '2017-07-20 15:31:00', '41');
INSERT INTO `goods_goodsbrand` VALUES ('8', 'brands/lyfs-2.jpg', '维洛司', '2017-07-20 15:31:00', '41');
INSERT INTO `goods_goodsbrand` VALUES ('9', 'brands/sxsp-3_p6QnMEd.jpg', '发育宝Haipet', '2017-07-20 15:31:00', '41');
INSERT INTO `goods_goodsbrand` VALUES ('10', 'brands/sxsp-1_KDntI6h.jpg', '森美', '2017-07-20 15:32:00', '25');
INSERT INTO `goods_goodsbrand` VALUES ('11', 'brands/sxsp-1_HPZZvbI.jpg', '金赏', '2017-07-20 15:32:00', '25');
INSERT INTO `goods_goodsbrand` VALUES ('12', 'brands/scsg-2_G6LV34f.jpg', '维洛司', '2017-07-20 15:32:00', '25');

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `category_type` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `code` varchar(30) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `category_imgage` varchar(100) DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` (`parent_category_id`) USING BTREE,
  CONSTRAINT `goods_goodscategory_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`parent_category_id`) REFER `vue_shop';

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES ('2', '生鲜食品', '测试', '1', '2017-07-19 14:24:00', null, '生鲜食品', '1', 'category/images/sxsp-image.jpg', null);
INSERT INTO `goods_goodscategory` VALUES ('3', '精品肉类', '', '2', '2017-07-19 14:24:27', '2', '精品肉类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('4', '羊肉', '', '3', '2017-07-19 14:24:27', '3', '羊肉', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('5', '禽类', '', '3', '2017-07-19 14:24:27', '3', '禽类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('6', '猪肉', '', '3', '2017-07-19 14:24:27', '3', '猪肉', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('7', '牛肉', '', '3', '2017-07-19 14:24:27', '3', '牛肉', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('8', '海鲜水产', '', '2', '2017-07-19 14:24:27', '2', '海鲜水产', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('9', '参鲍', '', '3', '2017-07-19 14:24:27', '8', '参鲍', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('10', '鱼', '', '3', '2017-07-19 14:24:27', '8', '鱼', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('11', '虾', '', '3', '2017-07-19 14:24:27', '8', '虾', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('12', '蟹/贝', '', '3', '2017-07-19 14:24:27', '8', '蟹/贝', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('13', '蛋制品', '', '2', '2017-07-19 14:24:27', '2', '蛋制品', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('14', '松花蛋/咸鸭蛋', '', '3', '2017-07-19 14:24:27', '13', '松花蛋/咸鸭蛋', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('15', '鸡蛋', '', '3', '2017-07-19 14:24:27', '13', '鸡蛋', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('16', '叶菜类', '', '2', '2017-07-19 14:24:27', '2', '叶菜类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('17', '生菜', '', '3', '2017-07-19 14:24:27', '16', '生菜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('18', '菠菜', '', '3', '2017-07-19 14:24:27', '16', '菠菜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('19', '圆椒', '', '3', '2017-07-19 14:24:27', '16', '圆椒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('20', '西兰花', '', '3', '2017-07-19 14:24:27', '16', '西兰花', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('21', '根茎类', '', '2', '2017-07-19 14:24:27', '2', '根茎类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('22', '茄果类', '', '2', '2017-07-19 14:24:27', '2', '茄果类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('23', '菌菇类', '', '2', '2017-07-19 14:24:28', '2', '菌菇类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('24', '进口生鲜', '', '2', '2017-07-19 14:24:28', '2', '进口生鲜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('25', '酒水饮料', '测试', '1', '2017-07-19 14:24:00', null, '酒水饮料', '1', 'category/images/jsyl-image.jpg', null);
INSERT INTO `goods_goodscategory` VALUES ('26', '白酒', '', '2', '2017-07-19 14:24:28', '25', '白酒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('27', '五粮液', '', '3', '2017-07-19 14:24:28', '26', '五粮液', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('28', '泸州老窖', '', '3', '2017-07-19 14:24:28', '26', '泸州老窖', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('29', '茅台', '', '3', '2017-07-19 14:24:28', '26', '茅台', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('30', '葡萄酒', '', '2', '2017-07-19 14:24:28', '25', '葡萄酒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('31', '洋酒', '', '2', '2017-07-19 14:24:28', '25', '洋酒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('32', '啤酒', '', '2', '2017-07-19 14:24:28', '25', '啤酒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('33', '其他酒品', '', '2', '2017-07-19 14:24:28', '25', '其他酒品', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('34', '其他品牌', '', '3', '2017-07-19 14:24:28', '33', '其他品牌', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('35', '黄酒', '', '3', '2017-07-19 14:24:28', '33', '黄酒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('36', '养生酒', '', '3', '2017-07-19 14:24:28', '33', '养生酒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('37', '饮料/水', '', '2', '2017-07-19 14:24:28', '25', '饮料/水', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('38', '红酒', '', '2', '2017-07-19 14:24:28', '25', '红酒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('39', '白兰地', '', '3', '2017-07-19 14:24:28', '38', '白兰地', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('40', '威士忌', '', '3', '2017-07-19 14:24:28', '38', '威士忌', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('41', '粮油副食', '测试', '1', '2017-07-19 14:24:00', null, '粮油副食', '1', 'category/images/lyfs-image.jpg', null);
INSERT INTO `goods_goodscategory` VALUES ('42', '食用油', '', '2', '2017-07-19 14:24:28', '41', '食用油', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('43', '其他食用油', '', '3', '2017-07-19 14:24:28', '42', '其他食用油', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('44', '菜仔油', '', '3', '2017-07-19 14:24:28', '42', '菜仔油', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('45', '花生油', '', '3', '2017-07-19 14:24:28', '42', '花生油', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('46', '橄榄油', '', '3', '2017-07-19 14:24:28', '42', '橄榄油', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('47', '礼盒', '', '3', '2017-07-19 14:24:28', '42', '礼盒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('48', '米面杂粮', '', '2', '2017-07-19 14:24:28', '41', '米面杂粮', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('49', '面粉/面条', '', '3', '2017-07-19 14:24:28', '48', '面粉/面条', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('50', '大米', '', '3', '2017-07-19 14:24:28', '48', '大米', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('51', '意大利面', '', '3', '2017-07-19 14:24:28', '48', '意大利面', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('52', '厨房调料', '', '2', '2017-07-19 14:24:28', '41', '厨房调料', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('53', '调味油/汁', '', '3', '2017-07-19 14:24:28', '52', '调味油/汁', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('54', '酱油/醋', '', '3', '2017-07-19 14:24:28', '52', '酱油/醋', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('55', '南北干货', '', '2', '2017-07-19 14:24:28', '41', '南北干货', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('56', '方便速食', '', '2', '2017-07-19 14:24:28', '41', '方便速食', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('57', '调味品', '', '2', '2017-07-19 14:24:28', '41', '调味品', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('58', '蔬菜水果', '测试', '1', '2017-07-19 14:24:00', null, '蔬菜水果', '1', 'category/images/scsg-image.jpg', null);
INSERT INTO `goods_goodscategory` VALUES ('59', '有机蔬菜', '', '2', '2017-07-19 14:24:28', '58', '有机蔬菜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('60', '西红柿', '', '3', '2017-07-19 14:24:28', '59', '西红柿', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('61', '韭菜', '', '3', '2017-07-19 14:24:28', '59', '韭菜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('62', '青菜', '', '3', '2017-07-19 14:24:28', '59', '青菜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('63', '精选蔬菜', '', '2', '2017-07-19 14:24:28', '58', '精选蔬菜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('64', '甘蓝', '', '3', '2017-07-19 14:24:28', '63', '甘蓝', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('65', '胡萝卜', '', '3', '2017-07-19 14:24:28', '63', '胡萝卜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('66', '黄瓜', '', '3', '2017-07-19 14:24:29', '63', '黄瓜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('67', '进口水果', '', '2', '2017-07-19 14:24:29', '58', '进口水果', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('68', '火龙果', '', '3', '2017-07-19 14:24:29', '67', '火龙果', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('69', '菠萝蜜', '', '3', '2017-07-19 14:24:29', '67', '菠萝蜜', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('70', '奇异果', '', '3', '2017-07-19 14:24:29', '67', '奇异果', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('71', '国产水果', '', '2', '2017-07-19 14:24:29', '58', '国产水果', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('72', '水果礼盒', '', '3', '2017-07-19 14:24:29', '71', '水果礼盒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('73', '苹果', '', '3', '2017-07-19 14:24:29', '71', '苹果', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('74', '雪梨', '', '3', '2017-07-19 14:24:29', '71', '雪梨', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('75', '休闲食品', '', '1', '2017-07-19 14:24:29', null, '休闲食品', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('76', '休闲零食', '', '2', '2017-07-19 14:24:29', '75', '休闲零食', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('77', '果冻', '', '3', '2017-07-19 14:24:29', '76', '果冻', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('78', '枣类', '', '3', '2017-07-19 14:24:29', '76', '枣类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('79', '蜜饯', '', '3', '2017-07-19 14:24:29', '76', '蜜饯', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('80', '肉类零食', '', '3', '2017-07-19 14:24:29', '76', '肉类零食', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('81', '坚果炒货', '', '3', '2017-07-19 14:24:29', '76', '坚果炒货', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('82', '糖果', '', '2', '2017-07-19 14:24:29', '75', '糖果', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('83', '创意喜糖', '', '3', '2017-07-19 14:24:29', '82', '创意喜糖', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('84', '口香糖', '', '3', '2017-07-19 14:24:29', '82', '口香糖', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('85', '软糖', '', '3', '2017-07-19 14:24:29', '82', '软糖', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('86', '棒棒糖', '', '3', '2017-07-19 14:24:29', '82', '棒棒糖', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('87', '巧克力', '', '2', '2017-07-19 14:24:29', '75', '巧克力', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('88', '夹心巧克力', '', '3', '2017-07-19 14:24:29', '87', '夹心巧克力', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('89', '白巧克力', '', '3', '2017-07-19 14:24:29', '87', '白巧克力', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('90', '松露巧克力', '', '3', '2017-07-19 14:24:29', '87', '松露巧克力', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('91', '黑巧克力', '', '3', '2017-07-19 14:24:29', '87', '黑巧克力', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('92', '肉干肉脯/豆干', '', '2', '2017-07-19 14:24:29', '75', '肉干肉脯/豆干', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('93', '牛肉干', '', '3', '2017-07-19 14:24:29', '92', '牛肉干', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('94', '猪肉脯', '', '3', '2017-07-19 14:24:29', '92', '猪肉脯', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('95', '牛肉粒', '', '3', '2017-07-19 14:24:29', '92', '牛肉粒', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('96', '猪肉干', '', '3', '2017-07-19 14:24:29', '92', '猪肉干', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('97', '鱿鱼丝/鱼干', '', '2', '2017-07-19 14:24:29', '75', '鱿鱼丝/鱼干', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('98', '鱿鱼足', '', '3', '2017-07-19 14:24:29', '97', '鱿鱼足', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('99', '鱿鱼丝', '', '3', '2017-07-19 14:24:29', '97', '鱿鱼丝', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('100', '墨鱼/乌贼', '', '3', '2017-07-19 14:24:29', '97', '墨鱼/乌贼', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('101', '鱿鱼仔', '', '3', '2017-07-19 14:24:29', '97', '鱿鱼仔', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('102', '鱿鱼片', '', '3', '2017-07-19 14:24:29', '97', '鱿鱼片', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('103', '奶类食品', '', '1', '2017-07-19 14:24:29', null, '奶类食品', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('104', '进口奶品', '', '2', '2017-07-19 14:24:29', '103', '进口奶品', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('105', '国产奶品', '', '2', '2017-07-19 14:24:29', '103', '国产奶品', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('106', '奶粉', '', '2', '2017-07-19 14:24:29', '103', '奶粉', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('107', '有机奶', '', '2', '2017-07-19 14:24:29', '103', '有机奶', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('108', '原料奶', '', '2', '2017-07-19 14:24:30', '103', '原料奶', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('109', '天然干货', '', '1', '2017-07-19 14:24:30', null, '天然干货', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('110', '菌菇类', '', '2', '2017-07-19 14:24:30', '109', '菌菇类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('111', '腌干海产', '', '2', '2017-07-19 14:24:30', '109', '腌干海产', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('112', '汤料', '', '2', '2017-07-19 14:24:30', '109', '汤料', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('113', '豆类', '', '2', '2017-07-19 14:24:30', '109', '豆类', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('114', '干菜/菜干', '', '2', '2017-07-19 14:24:30', '109', '干菜/菜干', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('115', '干果/果干', '', '2', '2017-07-19 14:24:30', '109', '干果/果干', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('116', '豆制品', '', '2', '2017-07-19 14:24:30', '109', '豆制品', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('117', '腊味', '', '2', '2017-07-19 14:24:30', '109', '腊味', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('118', '精选茗茶', '测试', '1', '2017-07-19 14:24:00', null, '精选茗茶', '1', '', null);
INSERT INTO `goods_goodscategory` VALUES ('119', '白茶', '', '2', '2017-07-19 14:24:30', '118', '白茶', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('120', '红茶', '', '2', '2017-07-19 14:24:30', '118', '红茶', '0', null, null);
INSERT INTO `goods_goodscategory` VALUES ('121', '绿茶', '', '2', '2017-07-19 14:24:30', '118', '绿茶', '0', null, null);

-- ----------------------------
-- Table structure for goods_goodsimages
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimages`;
CREATE TABLE `goods_goodsimages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int(11) NOT NULL,
  `image_url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsimages_goods_id_4baff3f1_fk_goods_goods_id` (`goods_id`) USING BTREE,
  CONSTRAINT `goods_goodsimages_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`goods_id`) REFER `vue_shop/goods_goods`(`id`)';

-- ----------------------------
-- Records of goods_goodsimages
-- ----------------------------
INSERT INTO `goods_goodsimages` VALUES ('328', '', '2017-07-19 16:16:20', '139', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889889.jpg');
INSERT INTO `goods_goodsimages` VALUES ('329', '', '2017-07-19 16:16:20', '139', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889264.jpg');
INSERT INTO `goods_goodsimages` VALUES ('330', '', '2017-07-19 16:16:20', '139', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889726.jpg');
INSERT INTO `goods_goodsimages` VALUES ('331', '', '2017-07-19 16:16:20', '139', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889018.jpg');
INSERT INTO `goods_goodsimages` VALUES ('332', '', '2017-07-19 16:16:20', '139', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889287.jpg');
INSERT INTO `goods_goodsimages` VALUES ('333', '', '2017-07-19 16:16:20', '140', 'http://sx.youxueshop.com/images/201512/goods_img/2_P_1448945810202.jpg');
INSERT INTO `goods_goodsimages` VALUES ('334', '', '2017-07-19 16:16:20', '140', 'http://sx.youxueshop.com/images/201512/goods_img/2_P_1448945810814.jpg');
INSERT INTO `goods_goodsimages` VALUES ('335', '', '2017-07-19 16:16:20', '141', 'http://sx.youxueshop.com/images/201512/goods_img/7_P_1448945104883.jpg');
INSERT INTO `goods_goodsimages` VALUES ('336', '', '2017-07-19 16:16:20', '141', 'http://sx.youxueshop.com/images/201512/goods_img/7_P_1448945104734.jpg');
INSERT INTO `goods_goodsimages` VALUES ('337', '', '2017-07-19 16:16:21', '142', 'http://sx.youxueshop.com/images/201512/goods_img/47_P_1448946213263.jpg');
INSERT INTO `goods_goodsimages` VALUES ('338', '', '2017-07-19 16:16:21', '142', 'http://sx.youxueshop.com/images/201512/goods_img/47_P_1448946213157.jpg');
INSERT INTO `goods_goodsimages` VALUES ('339', '', '2017-07-19 16:16:21', '143', 'http://sx.youxueshop.com/images/201512/goods_img/10_P_1448944572085.jpg');
INSERT INTO `goods_goodsimages` VALUES ('340', '', '2017-07-19 16:16:21', '143', 'http://sx.youxueshop.com/images/201512/goods_img/10_P_1448944572532.jpg');
INSERT INTO `goods_goodsimages` VALUES ('341', '', '2017-07-19 16:16:21', '143', 'http://sx.youxueshop.com/images/201512/goods_img/10_P_1448944572872.jpg');
INSERT INTO `goods_goodsimages` VALUES ('342', '', '2017-07-19 16:16:21', '144', 'http://sx.youxueshop.com/images/201512/goods_img/4_P_1448945381985.jpg');
INSERT INTO `goods_goodsimages` VALUES ('343', '', '2017-07-19 16:16:21', '144', 'http://sx.youxueshop.com/images/201512/goods_img/4_P_1448945381013.jpg');
INSERT INTO `goods_goodsimages` VALUES ('344', '', '2017-07-19 16:16:21', '145', 'http://sx.youxueshop.com/images/201512/goods_img/8_P_1448945032810.jpg');
INSERT INTO `goods_goodsimages` VALUES ('345', '', '2017-07-19 16:16:21', '145', 'http://sx.youxueshop.com/images/201512/goods_img/8_P_1448945032646.jpg');
INSERT INTO `goods_goodsimages` VALUES ('346', '', '2017-07-19 16:16:21', '146', 'http://sx.youxueshop.com/images/201512/goods_img/11_P_1448944388277.jpg');
INSERT INTO `goods_goodsimages` VALUES ('347', '', '2017-07-19 16:16:21', '146', 'http://sx.youxueshop.com/images/201512/goods_img/11_P_1448944388034.jpg');
INSERT INTO `goods_goodsimages` VALUES ('348', '', '2017-07-19 16:16:21', '146', 'http://sx.youxueshop.com/images/201512/goods_img/11_P_1448944388201.jpg');
INSERT INTO `goods_goodsimages` VALUES ('349', '', '2017-07-19 16:16:21', '147', 'http://sx.youxueshop.com/images/201512/goods_img/6_P_1448945167279.jpg');
INSERT INTO `goods_goodsimages` VALUES ('350', '', '2017-07-19 16:16:21', '147', 'http://sx.youxueshop.com/images/201512/goods_img/6_P_1448945167015.jpg');
INSERT INTO `goods_goodsimages` VALUES ('351', '', '2017-07-19 16:16:21', '148', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791617.jpg');
INSERT INTO `goods_goodsimages` VALUES ('352', '', '2017-07-19 16:16:21', '148', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791129.jpg');
INSERT INTO `goods_goodsimages` VALUES ('353', '', '2017-07-19 16:16:21', '148', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791077.jpg');
INSERT INTO `goods_goodsimages` VALUES ('354', '', '2017-07-19 16:16:21', '148', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791229.jpg');
INSERT INTO `goods_goodsimages` VALUES ('355', '', '2017-07-19 16:16:21', '149', 'http://sx.youxueshop.com/images/201512/goods_img/3_P_1448945490837.jpg');
INSERT INTO `goods_goodsimages` VALUES ('356', '', '2017-07-19 16:16:21', '149', 'http://sx.youxueshop.com/images/201512/goods_img/3_P_1448945490084.jpg');
INSERT INTO `goods_goodsimages` VALUES ('357', '', '2017-07-19 16:16:21', '150', 'http://sx.youxueshop.com/images/201512/goods_img/48_P_1448943988970.jpg');
INSERT INTO `goods_goodsimages` VALUES ('358', '', '2017-07-19 16:16:21', '150', 'http://sx.youxueshop.com/images/201512/goods_img/48_P_1448943988898.jpg');
INSERT INTO `goods_goodsimages` VALUES ('359', '', '2017-07-19 16:16:21', '150', 'http://sx.youxueshop.com/images/201512/goods_img/48_P_1448943988439.jpg');
INSERT INTO `goods_goodsimages` VALUES ('360', '', '2017-07-19 16:16:21', '151', 'http://sx.youxueshop.com/images/201512/goods_img/5_P_1448945270390.jpg');
INSERT INTO `goods_goodsimages` VALUES ('361', '', '2017-07-19 16:16:21', '151', 'http://sx.youxueshop.com/images/201512/goods_img/5_P_1448945270067.jpg');
INSERT INTO `goods_goodsimages` VALUES ('362', '', '2017-07-19 16:16:21', '151', 'http://sx.youxueshop.com/images/201512/goods_img/5_P_1448945270432.jpg');
INSERT INTO `goods_goodsimages` VALUES ('363', '', '2017-07-19 16:16:21', '152', 'http://sx.youxueshop.com/images/201705/goods_img/53_P_1495068879687.jpg');
INSERT INTO `goods_goodsimages` VALUES ('364', '', '2017-07-19 16:16:21', '153', 'http://sx.youxueshop.com/images/201512/goods_img/16_P_1448947194687.jpg');
INSERT INTO `goods_goodsimages` VALUES ('365', '', '2017-07-19 16:16:21', '154', 'http://sx.youxueshop.com/images/201512/goods_img/14_P_1448947354031.jpg');
INSERT INTO `goods_goodsimages` VALUES ('366', '', '2017-07-19 16:16:21', '154', 'http://sx.youxueshop.com/images/201512/goods_img/14_P_1448947354433.jpg');
INSERT INTO `goods_goodsimages` VALUES ('367', '', '2017-07-19 16:16:21', '155', 'http://sx.youxueshop.com/images/201512/goods_img/12_P_1448947547989.jpg');
INSERT INTO `goods_goodsimages` VALUES ('368', '', '2017-07-19 16:16:21', '156', 'http://sx.youxueshop.com/images/201512/goods_img/46_P_1448946598711.jpg');
INSERT INTO `goods_goodsimages` VALUES ('369', '', '2017-07-19 16:16:21', '156', 'http://sx.youxueshop.com/images/201512/goods_img/46_P_1448946598301.jpg');
INSERT INTO `goods_goodsimages` VALUES ('370', '', '2017-07-19 16:16:22', '157', 'http://sx.youxueshop.com/images/201512/goods_img/21_P_1448946793276.jpg');
INSERT INTO `goods_goodsimages` VALUES ('371', '', '2017-07-19 16:16:22', '157', 'http://sx.youxueshop.com/images/201512/goods_img/21_P_1448946793153.jpg');
INSERT INTO `goods_goodsimages` VALUES ('372', '', '2017-07-19 16:16:22', '158', 'http://sx.youxueshop.com/images/201512/goods_img/15_P_1448947257324.jpg');
INSERT INTO `goods_goodsimages` VALUES ('373', '', '2017-07-19 16:16:22', '158', 'http://sx.youxueshop.com/images/201512/goods_img/15_P_1448947257580.jpg');
INSERT INTO `goods_goodsimages` VALUES ('374', '', '2017-07-19 16:16:22', '159', 'http://sx.youxueshop.com/images/201512/goods_img/13_P_1448947460386.jpg');
INSERT INTO `goods_goodsimages` VALUES ('375', '', '2017-07-19 16:16:22', '159', 'http://sx.youxueshop.com/images/201512/goods_img/13_P_1448947460276.jpg');
INSERT INTO `goods_goodsimages` VALUES ('376', '', '2017-07-19 16:16:22', '159', 'http://sx.youxueshop.com/images/201512/goods_img/13_P_1448947460353.jpg');
INSERT INTO `goods_goodsimages` VALUES ('377', '', '2017-07-19 16:16:22', '160', 'http://sx.youxueshop.com/images/201512/goods_img/50_P_1448946543091.jpg');
INSERT INTO `goods_goodsimages` VALUES ('378', '', '2017-07-19 16:16:22', '160', 'http://sx.youxueshop.com/images/201512/goods_img/50_P_1448946542182.jpg');
INSERT INTO `goods_goodsimages` VALUES ('379', '', '2017-07-19 16:16:22', '161', 'http://sx.youxueshop.com/images/201512/goods_img/51_P_1448946466595.jpg');
INSERT INTO `goods_goodsimages` VALUES ('380', '', '2017-07-19 16:16:22', '161', 'http://sx.youxueshop.com/images/201512/goods_img/51_P_1448946466208.jpg');
INSERT INTO `goods_goodsimages` VALUES ('381', '', '2017-07-19 16:16:22', '162', 'http://sx.youxueshop.com/images/201512/goods_img/17_P_1448947102246.jpg');
INSERT INTO `goods_goodsimages` VALUES ('382', '', '2017-07-19 16:16:22', '163', 'http://sx.youxueshop.com/images/201512/goods_img/20_P_1448946850602.jpg');
INSERT INTO `goods_goodsimages` VALUES ('383', '', '2017-07-19 16:16:22', '164', 'http://sx.youxueshop.com/images/201512/goods_img/19_P_1448946951581.jpg');
INSERT INTO `goods_goodsimages` VALUES ('384', '', '2017-07-19 16:16:22', '164', 'http://sx.youxueshop.com/images/201512/goods_img/19_P_1448946951726.jpg');
INSERT INTO `goods_goodsimages` VALUES ('385', '', '2017-07-19 16:16:22', '165', 'http://sx.youxueshop.com/images/201512/goods_img/18_P_1448947011435.jpg');
INSERT INTO `goods_goodsimages` VALUES ('386', '', '2017-07-19 16:16:22', '166', 'http://sx.youxueshop.com/images/201512/goods_img/22_P_1448946729629.jpg');
INSERT INTO `goods_goodsimages` VALUES ('387', '', '2017-07-19 16:16:22', '167', 'http://sx.youxueshop.com/images/201512/goods_img/45_P_1448946661303.jpg');
INSERT INTO `goods_goodsimages` VALUES ('388', '', '2017-07-19 16:16:22', '168', 'http://sx.youxueshop.com/images/201512/goods_img/32_P_1448948525620.jpg');
INSERT INTO `goods_goodsimages` VALUES ('389', '', '2017-07-19 16:16:22', '169', 'http://sx.youxueshop.com/images/201512/goods_img/30_P_1448948663450.jpg');
INSERT INTO `goods_goodsimages` VALUES ('390', '', '2017-07-19 16:16:22', '169', 'http://sx.youxueshop.com/images/201512/goods_img/30_P_1448948662571.jpg');
INSERT INTO `goods_goodsimages` VALUES ('391', '', '2017-07-19 16:16:22', '169', 'http://sx.youxueshop.com/images/201512/goods_img/30_P_1448948663221.jpg');
INSERT INTO `goods_goodsimages` VALUES ('392', '', '2017-07-19 16:16:22', '170', 'http://sx.youxueshop.com/images/201512/goods_img/31_P_1448948598947.jpg');
INSERT INTO `goods_goodsimages` VALUES ('393', '', '2017-07-19 16:16:22', '170', 'http://sx.youxueshop.com/images/201512/goods_img/31_P_1448948598475.jpg');
INSERT INTO `goods_goodsimages` VALUES ('394', '', '2017-07-19 16:16:22', '171', 'http://sx.youxueshop.com/images/201512/goods_img/35_P_1448948333610.jpg');
INSERT INTO `goods_goodsimages` VALUES ('395', '', '2017-07-19 16:16:22', '171', 'http://sx.youxueshop.com/images/201512/goods_img/35_P_1448948333313.jpg');
INSERT INTO `goods_goodsimages` VALUES ('396', '', '2017-07-19 16:16:22', '172', 'http://sx.youxueshop.com/images/201512/goods_img/36_P_1448948234405.jpg');
INSERT INTO `goods_goodsimages` VALUES ('397', '', '2017-07-19 16:16:23', '172', 'http://sx.youxueshop.com/images/201512/goods_img/36_P_1448948234250.jpg');
INSERT INTO `goods_goodsimages` VALUES ('398', '', '2017-07-19 16:16:23', '173', 'http://sx.youxueshop.com/images/201512/goods_img/33_P_1448948479966.jpg');
INSERT INTO `goods_goodsimages` VALUES ('399', '', '2017-07-19 16:16:23', '173', 'http://sx.youxueshop.com/images/201512/goods_img/33_P_1448948479886.jpg');
INSERT INTO `goods_goodsimages` VALUES ('400', '', '2017-07-19 16:16:23', '174', 'http://sx.youxueshop.com/images/201512/goods_img/34_P_1448948399009.jpg');
INSERT INTO `goods_goodsimages` VALUES ('401', '', '2017-07-19 16:16:23', '175', 'http://sx.youxueshop.com/images/201512/goods_img/43_P_1448948762645.jpg');
INSERT INTO `goods_goodsimages` VALUES ('402', '', '2017-07-19 16:16:23', '176', 'http://sx.youxueshop.com/images/201512/goods_img/38_P_1448949220255.jpg');
INSERT INTO `goods_goodsimages` VALUES ('403', '', '2017-07-19 16:16:23', '177', 'http://sx.youxueshop.com/images/201512/goods_img/44_P_1448948850187.jpg');
INSERT INTO `goods_goodsimages` VALUES ('404', '', '2017-07-19 16:16:23', '178', 'http://sx.youxueshop.com/images/201511/goods_img/49_P_1448162819889.jpg');
INSERT INTO `goods_goodsimages` VALUES ('405', '', '2017-07-19 16:16:23', '179', 'http://sx.youxueshop.com/images/201512/goods_img/40_P_1448949038702.jpg');
INSERT INTO `goods_goodsimages` VALUES ('406', '', '2017-07-19 16:16:23', '180', 'http://sx.youxueshop.com/images/201512/goods_img/39_P_1448949115481.jpg');
INSERT INTO `goods_goodsimages` VALUES ('407', '', '2017-07-19 16:16:23', '181', 'http://sx.youxueshop.com/images/201512/goods_img/41_P_1448948980358.jpg');
INSERT INTO `goods_goodsimages` VALUES ('408', '', '2017-07-19 16:16:23', '182', 'http://sx.youxueshop.com/images/201512/goods_img/37_P_1448949284365.jpg');
INSERT INTO `goods_goodsimages` VALUES ('409', '', '2017-07-19 16:16:23', '183', 'http://sx.youxueshop.com/images/201512/goods_img/42_P_1448948895193.jpg');
INSERT INTO `goods_goodsimages` VALUES ('410', '', '2017-07-20 16:25:15', '184', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889889.jpg');
INSERT INTO `goods_goodsimages` VALUES ('411', '', '2017-07-20 16:25:15', '184', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889264.jpg');
INSERT INTO `goods_goodsimages` VALUES ('412', '', '2017-07-20 16:25:15', '184', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889726.jpg');
INSERT INTO `goods_goodsimages` VALUES ('413', '', '2017-07-20 16:25:15', '184', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889018.jpg');
INSERT INTO `goods_goodsimages` VALUES ('414', '', '2017-07-20 16:25:15', '184', 'http://sx.youxueshop.com/images/201512/goods_img/1_P_1449024889287.jpg');
INSERT INTO `goods_goodsimages` VALUES ('415', '', '2017-07-20 16:25:15', '185', 'http://sx.youxueshop.com/images/201512/goods_img/2_P_1448945810202.jpg');
INSERT INTO `goods_goodsimages` VALUES ('416', '', '2017-07-20 16:25:15', '185', 'http://sx.youxueshop.com/images/201512/goods_img/2_P_1448945810814.jpg');
INSERT INTO `goods_goodsimages` VALUES ('417', '', '2017-07-20 16:25:15', '186', 'http://sx.youxueshop.com/images/201512/goods_img/7_P_1448945104883.jpg');
INSERT INTO `goods_goodsimages` VALUES ('418', '', '2017-07-20 16:25:16', '186', 'http://sx.youxueshop.com/images/201512/goods_img/7_P_1448945104734.jpg');
INSERT INTO `goods_goodsimages` VALUES ('419', '', '2017-07-20 16:25:16', '187', 'http://sx.youxueshop.com/images/201512/goods_img/47_P_1448946213263.jpg');
INSERT INTO `goods_goodsimages` VALUES ('420', '', '2017-07-20 16:25:16', '187', 'http://sx.youxueshop.com/images/201512/goods_img/47_P_1448946213157.jpg');
INSERT INTO `goods_goodsimages` VALUES ('421', '', '2017-07-20 16:25:16', '188', 'http://sx.youxueshop.com/images/201512/goods_img/10_P_1448944572085.jpg');
INSERT INTO `goods_goodsimages` VALUES ('422', '', '2017-07-20 16:25:16', '188', 'http://sx.youxueshop.com/images/201512/goods_img/10_P_1448944572532.jpg');
INSERT INTO `goods_goodsimages` VALUES ('423', '', '2017-07-20 16:25:16', '188', 'http://sx.youxueshop.com/images/201512/goods_img/10_P_1448944572872.jpg');
INSERT INTO `goods_goodsimages` VALUES ('424', '', '2017-07-20 16:25:16', '189', 'http://sx.youxueshop.com/images/201512/goods_img/4_P_1448945381985.jpg');
INSERT INTO `goods_goodsimages` VALUES ('425', '', '2017-07-20 16:25:16', '189', 'http://sx.youxueshop.com/images/201512/goods_img/4_P_1448945381013.jpg');
INSERT INTO `goods_goodsimages` VALUES ('426', '', '2017-07-20 16:25:16', '190', 'http://sx.youxueshop.com/images/201512/goods_img/8_P_1448945032810.jpg');
INSERT INTO `goods_goodsimages` VALUES ('427', '', '2017-07-20 16:25:16', '190', 'http://sx.youxueshop.com/images/201512/goods_img/8_P_1448945032646.jpg');
INSERT INTO `goods_goodsimages` VALUES ('428', '', '2017-07-20 16:25:16', '191', 'http://sx.youxueshop.com/images/201512/goods_img/11_P_1448944388277.jpg');
INSERT INTO `goods_goodsimages` VALUES ('429', '', '2017-07-20 16:25:16', '191', 'http://sx.youxueshop.com/images/201512/goods_img/11_P_1448944388034.jpg');
INSERT INTO `goods_goodsimages` VALUES ('430', '', '2017-07-20 16:25:16', '191', 'http://sx.youxueshop.com/images/201512/goods_img/11_P_1448944388201.jpg');
INSERT INTO `goods_goodsimages` VALUES ('431', '', '2017-07-20 16:25:16', '192', 'http://sx.youxueshop.com/images/201512/goods_img/6_P_1448945167279.jpg');
INSERT INTO `goods_goodsimages` VALUES ('432', '', '2017-07-20 16:25:16', '192', 'http://sx.youxueshop.com/images/201512/goods_img/6_P_1448945167015.jpg');
INSERT INTO `goods_goodsimages` VALUES ('433', '', '2017-07-20 16:25:16', '193', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791617.jpg');
INSERT INTO `goods_goodsimages` VALUES ('434', '', '2017-07-20 16:25:16', '193', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791129.jpg');
INSERT INTO `goods_goodsimages` VALUES ('435', '', '2017-07-20 16:25:16', '193', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791077.jpg');
INSERT INTO `goods_goodsimages` VALUES ('436', '', '2017-07-20 16:25:16', '193', 'http://sx.youxueshop.com/images/201512/goods_img/9_P_1448944791229.jpg');
INSERT INTO `goods_goodsimages` VALUES ('437', '', '2017-07-20 16:25:16', '194', 'http://sx.youxueshop.com/images/201512/goods_img/3_P_1448945490837.jpg');
INSERT INTO `goods_goodsimages` VALUES ('438', '', '2017-07-20 16:25:16', '194', 'http://sx.youxueshop.com/images/201512/goods_img/3_P_1448945490084.jpg');
INSERT INTO `goods_goodsimages` VALUES ('439', '', '2017-07-20 16:25:16', '195', 'http://sx.youxueshop.com/images/201512/goods_img/48_P_1448943988970.jpg');
INSERT INTO `goods_goodsimages` VALUES ('440', '', '2017-07-20 16:25:16', '195', 'http://sx.youxueshop.com/images/201512/goods_img/48_P_1448943988898.jpg');
INSERT INTO `goods_goodsimages` VALUES ('441', '', '2017-07-20 16:25:16', '195', 'http://sx.youxueshop.com/images/201512/goods_img/48_P_1448943988439.jpg');
INSERT INTO `goods_goodsimages` VALUES ('442', '', '2017-07-20 16:25:17', '196', 'http://sx.youxueshop.com/images/201512/goods_img/5_P_1448945270390.jpg');
INSERT INTO `goods_goodsimages` VALUES ('443', '', '2017-07-20 16:25:17', '196', 'http://sx.youxueshop.com/images/201512/goods_img/5_P_1448945270067.jpg');
INSERT INTO `goods_goodsimages` VALUES ('444', '', '2017-07-20 16:25:17', '196', 'http://sx.youxueshop.com/images/201512/goods_img/5_P_1448945270432.jpg');
INSERT INTO `goods_goodsimages` VALUES ('445', '', '2017-07-20 16:25:17', '197', 'http://sx.youxueshop.com/images/201705/goods_img/53_P_1495068879687.jpg');
INSERT INTO `goods_goodsimages` VALUES ('446', '', '2017-07-20 16:25:17', '198', 'http://sx.youxueshop.com/images/201512/goods_img/16_P_1448947194687.jpg');
INSERT INTO `goods_goodsimages` VALUES ('447', '', '2017-07-20 16:25:17', '199', 'http://sx.youxueshop.com/images/201512/goods_img/14_P_1448947354031.jpg');
INSERT INTO `goods_goodsimages` VALUES ('448', '', '2017-07-20 16:25:17', '199', 'http://sx.youxueshop.com/images/201512/goods_img/14_P_1448947354433.jpg');
INSERT INTO `goods_goodsimages` VALUES ('449', '', '2017-07-20 16:25:17', '200', 'http://sx.youxueshop.com/images/201512/goods_img/12_P_1448947547989.jpg');
INSERT INTO `goods_goodsimages` VALUES ('450', '', '2017-07-20 16:25:17', '201', 'http://sx.youxueshop.com/images/201512/goods_img/46_P_1448946598711.jpg');
INSERT INTO `goods_goodsimages` VALUES ('451', '', '2017-07-20 16:25:17', '201', 'http://sx.youxueshop.com/images/201512/goods_img/46_P_1448946598301.jpg');
INSERT INTO `goods_goodsimages` VALUES ('452', '', '2017-07-20 16:25:17', '202', 'http://sx.youxueshop.com/images/201512/goods_img/21_P_1448946793276.jpg');
INSERT INTO `goods_goodsimages` VALUES ('453', '', '2017-07-20 16:25:17', '202', 'http://sx.youxueshop.com/images/201512/goods_img/21_P_1448946793153.jpg');
INSERT INTO `goods_goodsimages` VALUES ('454', '', '2017-07-20 16:25:18', '203', 'http://sx.youxueshop.com/images/201512/goods_img/15_P_1448947257324.jpg');
INSERT INTO `goods_goodsimages` VALUES ('455', '', '2017-07-20 16:25:18', '203', 'http://sx.youxueshop.com/images/201512/goods_img/15_P_1448947257580.jpg');
INSERT INTO `goods_goodsimages` VALUES ('456', '', '2017-07-20 16:25:18', '204', 'http://sx.youxueshop.com/images/201512/goods_img/13_P_1448947460386.jpg');
INSERT INTO `goods_goodsimages` VALUES ('457', '', '2017-07-20 16:25:18', '204', 'http://sx.youxueshop.com/images/201512/goods_img/13_P_1448947460276.jpg');
INSERT INTO `goods_goodsimages` VALUES ('458', '', '2017-07-20 16:25:18', '204', 'http://sx.youxueshop.com/images/201512/goods_img/13_P_1448947460353.jpg');
INSERT INTO `goods_goodsimages` VALUES ('459', '', '2017-07-20 16:25:18', '205', 'http://sx.youxueshop.com/images/201512/goods_img/50_P_1448946543091.jpg');
INSERT INTO `goods_goodsimages` VALUES ('460', '', '2017-07-20 16:25:18', '205', 'http://sx.youxueshop.com/images/201512/goods_img/50_P_1448946542182.jpg');
INSERT INTO `goods_goodsimages` VALUES ('461', '', '2017-07-20 16:25:18', '206', 'http://sx.youxueshop.com/images/201512/goods_img/51_P_1448946466595.jpg');
INSERT INTO `goods_goodsimages` VALUES ('462', '', '2017-07-20 16:25:18', '206', 'http://sx.youxueshop.com/images/201512/goods_img/51_P_1448946466208.jpg');
INSERT INTO `goods_goodsimages` VALUES ('463', '', '2017-07-20 16:25:18', '207', 'http://sx.youxueshop.com/images/201512/goods_img/17_P_1448947102246.jpg');
INSERT INTO `goods_goodsimages` VALUES ('464', '', '2017-07-20 16:25:18', '208', 'http://sx.youxueshop.com/images/201512/goods_img/20_P_1448946850602.jpg');
INSERT INTO `goods_goodsimages` VALUES ('465', '', '2017-07-20 16:25:18', '209', 'http://sx.youxueshop.com/images/201512/goods_img/19_P_1448946951581.jpg');
INSERT INTO `goods_goodsimages` VALUES ('466', '', '2017-07-20 16:25:18', '209', 'http://sx.youxueshop.com/images/201512/goods_img/19_P_1448946951726.jpg');
INSERT INTO `goods_goodsimages` VALUES ('467', '', '2017-07-20 16:25:18', '210', 'http://sx.youxueshop.com/images/201512/goods_img/18_P_1448947011435.jpg');
INSERT INTO `goods_goodsimages` VALUES ('468', '', '2017-07-20 16:25:18', '211', 'http://sx.youxueshop.com/images/201512/goods_img/22_P_1448946729629.jpg');
INSERT INTO `goods_goodsimages` VALUES ('469', '', '2017-07-20 16:25:18', '212', 'http://sx.youxueshop.com/images/201512/goods_img/45_P_1448946661303.jpg');
INSERT INTO `goods_goodsimages` VALUES ('470', '', '2017-07-20 16:25:18', '213', 'http://sx.youxueshop.com/images/201512/goods_img/32_P_1448948525620.jpg');
INSERT INTO `goods_goodsimages` VALUES ('471', '', '2017-07-20 16:25:18', '214', 'http://sx.youxueshop.com/images/201512/goods_img/30_P_1448948663450.jpg');
INSERT INTO `goods_goodsimages` VALUES ('472', '', '2017-07-20 16:25:18', '214', 'http://sx.youxueshop.com/images/201512/goods_img/30_P_1448948662571.jpg');
INSERT INTO `goods_goodsimages` VALUES ('473', '', '2017-07-20 16:25:18', '214', 'http://sx.youxueshop.com/images/201512/goods_img/30_P_1448948663221.jpg');
INSERT INTO `goods_goodsimages` VALUES ('474', '', '2017-07-20 16:25:18', '215', 'http://sx.youxueshop.com/images/201512/goods_img/31_P_1448948598947.jpg');
INSERT INTO `goods_goodsimages` VALUES ('475', '', '2017-07-20 16:25:18', '215', 'http://sx.youxueshop.com/images/201512/goods_img/31_P_1448948598475.jpg');
INSERT INTO `goods_goodsimages` VALUES ('476', '', '2017-07-20 16:25:18', '216', 'http://sx.youxueshop.com/images/201512/goods_img/35_P_1448948333610.jpg');
INSERT INTO `goods_goodsimages` VALUES ('477', '', '2017-07-20 16:25:18', '216', 'http://sx.youxueshop.com/images/201512/goods_img/35_P_1448948333313.jpg');
INSERT INTO `goods_goodsimages` VALUES ('478', '', '2017-07-20 16:25:18', '217', 'http://sx.youxueshop.com/images/201512/goods_img/36_P_1448948234405.jpg');
INSERT INTO `goods_goodsimages` VALUES ('479', '', '2017-07-20 16:25:18', '217', 'http://sx.youxueshop.com/images/201512/goods_img/36_P_1448948234250.jpg');
INSERT INTO `goods_goodsimages` VALUES ('480', '', '2017-07-20 16:25:18', '218', 'http://sx.youxueshop.com/images/201512/goods_img/33_P_1448948479966.jpg');
INSERT INTO `goods_goodsimages` VALUES ('481', '', '2017-07-20 16:25:18', '218', 'http://sx.youxueshop.com/images/201512/goods_img/33_P_1448948479886.jpg');
INSERT INTO `goods_goodsimages` VALUES ('482', '', '2017-07-20 16:25:19', '219', 'http://sx.youxueshop.com/images/201512/goods_img/34_P_1448948399009.jpg');
INSERT INTO `goods_goodsimages` VALUES ('483', '', '2017-07-20 16:25:19', '220', 'http://sx.youxueshop.com/images/201512/goods_img/43_P_1448948762645.jpg');
INSERT INTO `goods_goodsimages` VALUES ('484', '', '2017-07-20 16:25:19', '221', 'http://sx.youxueshop.com/images/201512/goods_img/38_P_1448949220255.jpg');
INSERT INTO `goods_goodsimages` VALUES ('485', '', '2017-07-20 16:25:19', '222', 'http://sx.youxueshop.com/images/201512/goods_img/44_P_1448948850187.jpg');
INSERT INTO `goods_goodsimages` VALUES ('486', '', '2017-07-20 16:25:19', '223', 'http://sx.youxueshop.com/images/201511/goods_img/49_P_1448162819889.jpg');
INSERT INTO `goods_goodsimages` VALUES ('487', '', '2017-07-20 16:25:19', '224', 'http://sx.youxueshop.com/images/201512/goods_img/40_P_1448949038702.jpg');
INSERT INTO `goods_goodsimages` VALUES ('488', '', '2017-07-20 16:25:19', '225', 'http://sx.youxueshop.com/images/201512/goods_img/39_P_1448949115481.jpg');
INSERT INTO `goods_goodsimages` VALUES ('489', '', '2017-07-20 16:25:19', '226', 'http://sx.youxueshop.com/images/201512/goods_img/41_P_1448948980358.jpg');
INSERT INTO `goods_goodsimages` VALUES ('490', '', '2017-07-20 16:25:19', '227', 'http://sx.youxueshop.com/images/201512/goods_img/37_P_1448949284365.jpg');
INSERT INTO `goods_goodsimages` VALUES ('491', '', '2017-07-20 16:25:19', '228', 'http://sx.youxueshop.com/images/201512/goods_img/42_P_1448948895193.jpg');
INSERT INTO `goods_goodsimages` VALUES ('492', '', '2017-07-20 16:26:21', '229', 'http://sx.youxueshop.com/images/201512/goods_img/27_P_1448947771805.jpg');
INSERT INTO `goods_goodsimages` VALUES ('493', '', '2017-07-20 16:26:21', '230', 'http://sx.youxueshop.com/images/201512/goods_img/23_P_1448948070348.jpg');
INSERT INTO `goods_goodsimages` VALUES ('494', '', '2017-07-20 16:26:21', '231', 'http://sx.youxueshop.com/images/201512/goods_img/26_P_1448947825754.jpg');
INSERT INTO `goods_goodsimages` VALUES ('495', '', '2017-07-20 16:26:21', '232', 'http://sx.youxueshop.com/images/201512/goods_img/28_P_1448947699948.jpg');
INSERT INTO `goods_goodsimages` VALUES ('496', '', '2017-07-20 16:26:21', '232', 'http://sx.youxueshop.com/images/201512/goods_img/28_P_1448947699777.jpg');
INSERT INTO `goods_goodsimages` VALUES ('497', '', '2017-07-20 16:26:21', '233', 'http://sx.youxueshop.com/images/201512/goods_img/24_P_1448948023823.jpg');
INSERT INTO `goods_goodsimages` VALUES ('498', '', '2017-07-20 16:26:21', '233', 'http://sx.youxueshop.com/images/201512/goods_img/24_P_1448948023977.jpg');
INSERT INTO `goods_goodsimages` VALUES ('499', '', '2017-07-20 16:26:21', '234', 'http://sx.youxueshop.com/images/201512/goods_img/25_P_1448947875346.jpg');
INSERT INTO `goods_goodsimages` VALUES ('500', '', '2017-07-20 16:26:21', '235', 'http://sx.youxueshop.com/images/201512/goods_img/29_P_1448947631994.jpg');

-- ----------------------------
-- Table structure for goods_goodskeywords
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodskeywords`;
CREATE TABLE `goods_goodskeywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `goods_goodskeywords_goods_id_keywords_d90055a2_uniq` (`goods_id`,`keywords`) USING BTREE,
  CONSTRAINT `goods_goodskeywords_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`goods_id`) REFER `vue_shop/goods_goods`(`id`)';

-- ----------------------------
-- Records of goods_goodskeywords
-- ----------------------------

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_hotsearchwords
-- ----------------------------
INSERT INTO `goods_hotsearchwords` VALUES ('2', '牛奶', '2017-07-20 17:39:00', '0');
INSERT INTO `goods_hotsearchwords` VALUES ('3', '水果', '2017-07-20 17:39:00', '1');
INSERT INTO `goods_hotsearchwords` VALUES ('4', '威士忌', '2017-07-20 17:39:00', '3');
INSERT INTO `goods_hotsearchwords` VALUES ('5', '蔬菜', '2017-07-20 17:40:00', '4');
INSERT INTO `goods_hotsearchwords` VALUES ('6', '啤酒', '2017-07-20 17:40:00', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`user_id`) REFER `vue_shop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of social_auth_usersocialauth
-- ----------------------------
INSERT INTO `social_auth_usersocialauth` VALUES ('1', 'weibo', '1272188234', '{\"auth_time\": 1501258987, \"id\": 1272188234, \"username\": \"bobby_liyao\", \"profile_image_url\": \"http://tva4.sinaimg.cn/crop.0.0.350.350.50/4bd40d4ajw1esqo1cu2iyj209q09qdg4.jpg\", \"gender\": \"m\", \"access_token\": \"2.00ERyF5B0VZcGQ913bba86110dM5ML\", \"token_type\": null}', '1');
INSERT INTO `social_auth_usersocialauth` VALUES ('2', 'weibo', '2805704701', '{\"auth_time\": 1501255858, \"id\": 2805704701, \"username\": \"seasonRui\", \"profile_image_url\": \"http://tva1.sinaimg.cn/crop.0.0.720.720.50/a73ba7fdjw8edtb8qnitij20k00k0t9h.jpg\", \"gender\": \"f\", \"access_token\": \"2.00dx8sDD0VZcGQ353ef66220Esv5ID\", \"token_type\": null}', '1');

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `goods_price` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` (`goods_id`) USING BTREE,
  KEY `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` (`order_id`) USING BTREE,
  CONSTRAINT `trade_ordergoods_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`),
  CONSTRAINT `trade_ordergoods_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`order_id`) REFER `vue_shop/trade_orderinfo`(`id`); (`goo';

-- ----------------------------
-- Records of trade_ordergoods
-- ----------------------------

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) NOT NULL,
  `nonce_str` varchar(50) DEFAULT NULL,
  `trade_no` varchar(100) DEFAULT NULL,
  `pay_status` varchar(10) NOT NULL,
  `postscript` varchar(11) NOT NULL,
  `pay_type` varchar(10) NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_no` (`trade_no`) USING BTREE,
  KEY `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `trade_orderinfo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`user_id`) REFER `vue_shop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of trade_orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for trade_paylog
-- ----------------------------
DROP TABLE IF EXISTS `trade_paylog`;
CREATE TABLE `trade_paylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trade_paylog
-- ----------------------------

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
  KEY `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` (`goods_id`) USING BTREE,
  KEY `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `trade_shoppingcart_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_shoppingcart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`goods_id`) REFER `vue_shop/goods_goods`(`id`); (`user_id';

-- ----------------------------
-- Records of trade_shoppingcart
-- ----------------------------
INSERT INTO `trade_shoppingcart` VALUES ('2', '8', '2017-07-19 16:34:09', '149', '1');
INSERT INTO `trade_shoppingcart` VALUES ('4', '1', '2017-07-23 20:24:45', '139', '2');
INSERT INTO `trade_shoppingcart` VALUES ('5', '1', '2017-07-23 20:24:57', '140', '2');
INSERT INTO `trade_shoppingcart` VALUES ('6', '1', '2017-07-23 20:27:09', '140', '2');

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
  KEY `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` (`goods_id`) USING BTREE,
  KEY `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` (`user_id`) USING BTREE,
  CONSTRAINT `user_operation_userfav_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `user_operation_userfav_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`user_id`) REFER `vue_shop/users_userprofile`(`id`); (`go';

-- ----------------------------
-- Records of user_operation_userfav
-- ----------------------------
INSERT INTO `user_operation_userfav` VALUES ('1', '2017-07-19 17:13:00', '139', '1');
INSERT INTO `user_operation_userfav` VALUES ('2', '2017-07-19 17:13:12', '154', '1');
INSERT INTO `user_operation_userfav` VALUES ('3', '2017-07-19 17:23:45', '156', '1');

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_userl_user_id_70d909d6_fk_users_use` (`user_id`) USING BTREE,
  CONSTRAINT `user_operation_userleavingmessage_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`user_id`) REFER `vue_shop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of user_operation_userleavingmessage
-- ----------------------------

-- ----------------------------
-- Table structure for users_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `users_useraddress`;
CREATE TABLE `users_useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(200) NOT NULL,
  `mark` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_useraddress
-- ----------------------------
INSERT INTO `users_useraddress` VALUES ('1', '成都市高新区天府大道', 'bobby', '18782902568', 'bobby');

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
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$36000$gugD87PsonVT$64g39KfhKT+VbbctTNTvxBzEz+v1wOwzjx12dTtZYKg=', '2017-08-13 00:04:06', '1', 'admin', 'bobby_liyao', '', '1@1.com', '1', '1', '2017-07-19 09:50:55', null, 'female', null, null, null);
INSERT INTO `users_userprofile` VALUES ('11', 'pbkdf2_sha256$36000$5cyX7pM66Vnr$lcMfYeVXEBbnhAp9OkHA8o13uoj7H+Ktl4Watqae6uA=', null, '0', '18782902568', '', '', '', '0', '1', '2017-07-23 17:01:15', null, 'female', '18782902568', null, null);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`group_id`) REFER `vue_shop/auth_group`(`id`); (`userprof';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`permission_id`) REFER `vue_shop/auth_permission`(`id`); ';

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_verifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_verifyrecord`;
CREATE TABLE `users_verifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) DEFAULT NULL,
  `account` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_verifyrecord
-- ----------------------------
INSERT INTO `users_verifyrecord` VALUES ('5', '2802', '18782902568', '2017-07-23 14:47:20');
INSERT INTO `users_verifyrecord` VALUES ('6', '8290', '18910905872', '2017-07-23 14:52:09');
INSERT INTO `users_verifyrecord` VALUES ('7', '3308', '18910905872', '2017-07-23 16:07:57');
INSERT INTO `users_verifyrecord` VALUES ('8', '8862', '18910905872', '2017-07-23 17:21:14');
INSERT INTO `users_verifyrecord` VALUES ('9', '8579', '18311217529', '2017-07-23 17:33:01');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679` (`content_type_id`) USING BTREE,
  KEY `xadmin_bookmark_user_id_42d307fc` (`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`content_type_id`) REFER `vue_shop/django_content_type`(`';

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852` (`content_type_id`) USING BTREE,
  KEY `xadmin_log_user_id_bb16a176` (`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`content_type_id`) REFER `vue_shop/django_content_type`(`';

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-07-19 10:53:25', '127.0.0.1', '1', '导航栏类别(生鲜食品)', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-07-19 16:11:16', '127.0.0.1', null, '', 'delete', '批量删除 93 个 商品', null, '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-07-19 16:14:51', '127.0.0.1', '138', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', 'change', '修改 goods_sn，goods_brief 和 goods_desc', '17', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-07-19 16:16:14', '127.0.0.1', null, '', 'delete', '批量删除 45 个 商品', null, '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-07-20 15:28:01', '127.0.0.1', '1', '金赏', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2017-07-20 15:28:17', '127.0.0.1', '2', '艾尔Aier', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2017-07-20 15:28:33', '127.0.0.1', '3', '发育宝Haipet', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2017-07-20 15:29:37', '127.0.0.1', '4', '发育宝Haipet', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2017-07-20 15:29:56', '127.0.0.1', '5', '维洛司', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2017-07-20 15:30:13', '127.0.0.1', '6', '森美', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2017-07-20 15:31:47', '127.0.0.1', '7', '森美', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2017-07-20 15:31:57', '127.0.0.1', '8', '维洛司', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2017-07-20 15:32:10', '127.0.0.1', '9', '发育宝Haipet', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2017-07-20 15:32:29', '127.0.0.1', '10', '森美', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2017-07-20 15:32:43', '127.0.0.1', '11', '金赏', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2017-07-20 15:32:53', '127.0.0.1', '12', '维洛司', 'create', '已添加。', '29', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2017-07-20 15:44:31', '127.0.0.1', '2', '一级类目(生鲜食品)', 'change', '修改 desc 和 category_imgage', '15', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2017-07-20 15:45:23', '127.0.0.1', '58', '一级类目(蔬菜水果)', 'change', '修改 desc 和 category_imgage', '15', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2017-07-20 15:46:07', '127.0.0.1', '41', '一级类目(粮油副食)', 'change', '修改 desc 和 category_imgage', '15', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2017-07-20 15:46:55', '127.0.0.1', '25', '一级类目(酒水饮料)', 'change', '修改 desc 和 category_imgage', '15', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2017-07-20 16:46:05', '127.0.0.1', '183', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', '17', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2017-07-20 16:46:27', '127.0.0.1', '234', '稻园牌稻米油粮油米糠油绿色植物油', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', '17', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2017-07-20 16:58:49', '127.0.0.1', '163', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', '17', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2017-07-20 17:17:08', '127.0.0.1', '1', '新鲜水果甜蜜香脆单果约800克', 'create', '已添加。', '30', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2017-07-20 17:17:15', '127.0.0.1', '2', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', 'create', '已添加。', '30', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2017-07-20 17:17:29', '127.0.0.1', '3', '西夫拉姆进口洋酒小酒版', 'create', '已添加。', '30', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2017-07-20 17:26:09', '127.0.0.1', '2', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', 'change', '修改 index', '30', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2017-07-20 17:26:19', '127.0.0.1', '1', '新鲜水果甜蜜香脆单果约800克', 'change', '修改 index', '30', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2017-07-20 17:39:45', '127.0.0.1', '2', '牛奶', 'create', '已添加。', '31', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2017-07-20 17:39:54', '127.0.0.1', '3', '水果', 'create', '已添加。', '31', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2017-07-20 17:40:06', '127.0.0.1', '4', '威士忌', 'create', '已添加。', '31', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2017-07-20 17:40:18', '127.0.0.1', '5', '蔬菜', 'create', '已添加。', '31', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2017-07-20 17:40:29', '127.0.0.1', '6', '啤酒', 'create', '已添加。', '31', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2017-07-20 20:57:55', '110.184.71.68', '118', '一级类目(精选茗茶)', 'change', '修改 desc 和 is_tab', '15', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2017-07-20 20:58:32', '110.184.71.68', '58', '一级类目(蔬菜水果)', 'change', '修改 is_tab', '15', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2017-07-20 20:58:43', '110.184.71.68', '41', '一级类目(粮油副食)', 'change', '修改 is_tab', '15', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2017-07-20 20:58:52', '110.184.71.68', '2', '一级类目(生鲜食品)', 'change', '修改 is_tab', '15', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2017-07-20 20:59:00', '110.184.71.68', '25', '一级类目(酒水饮料)', 'change', '修改 is_tab', '15', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2017-08-06 21:31:58', '110.185.16.131', '1', 'bobby', 'create', '已添加。', '6', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a` (`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`user_id`) REFER `vue_shop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a` (`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB; (`user_id`) REFER `vue_shop/users_userprofile`(`id`)';

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
