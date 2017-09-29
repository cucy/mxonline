-- MySQL dump 10.13  Distrib 5.6.35, for Win64 (x86_64)
--
-- Host: localhost    Database: mxonline
-- ------------------------------------------------------
-- Server version	5.6.35-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add 用户信息',7,'add_userprofile'),(20,'Can change 用户信息',7,'change_userprofile'),(21,'Can delete 用户信息',7,'delete_userprofile'),(22,'Can add 邮箱验证码',8,'add_emailverifyrecord'),(23,'Can change 邮箱验证码',8,'change_emailverifyrecord'),(24,'Can delete 邮箱验证码',8,'delete_emailverifyrecord'),(25,'Can add 轮播图',9,'add_banner'),(26,'Can change 轮播图',9,'change_banner'),(27,'Can delete 轮播图',9,'delete_banner'),(28,'Can add 课程',10,'add_course'),(29,'Can change 课程',10,'change_course'),(30,'Can delete 课程',10,'delete_course'),(31,'Can add 章节',11,'add_lesson'),(32,'Can change 章节',11,'change_lesson'),(33,'Can delete 章节',11,'delete_lesson'),(34,'Can add 视频',12,'add_video'),(35,'Can change 视频',12,'change_video'),(36,'Can delete 视频',12,'delete_video'),(37,'Can add 课程资源',13,'add_courseresource'),(38,'Can change 课程资源',13,'change_courseresource'),(39,'Can delete 课程资源',13,'delete_courseresource'),(40,'Can add 城市',14,'add_citydict'),(41,'Can change 城市',14,'change_citydict'),(42,'Can delete 城市',14,'delete_citydict'),(43,'Can add 课程机构',15,'add_courseorg'),(44,'Can change 课程机构',15,'change_courseorg'),(45,'Can delete 课程机构',15,'delete_courseorg'),(46,'Can add 教师',16,'add_teacher'),(47,'Can change 教师',16,'change_teacher'),(48,'Can delete 教师',16,'delete_teacher'),(49,'Can add 用户咨询',17,'add_userask'),(50,'Can change 用户咨询',17,'change_userask'),(51,'Can delete 用户咨询',17,'delete_userask'),(52,'Can add 课程评论',18,'add_coursecomments'),(53,'Can change 课程评论',18,'change_coursecomments'),(54,'Can delete 课程评论',18,'delete_coursecomments'),(55,'Can add 用户收藏',19,'add_userfavorite'),(56,'Can change 用户收藏',19,'change_userfavorite'),(57,'Can delete 用户收藏',19,'delete_userfavorite'),(58,'Can add 用户消息',20,'add_usermessage'),(59,'Can change 用户消息',20,'change_usermessage'),(60,'Can delete 用户消息',20,'delete_usermessage'),(61,'Can add 用户课程',21,'add_usercourse'),(62,'Can change 用户课程',21,'change_usercourse'),(63,'Can delete 用户课程',21,'delete_usercourse'),(64,'Can view log entry',1,'view_logentry'),(65,'Can view group',3,'view_group'),(66,'Can view permission',2,'view_permission'),(67,'Can view content type',5,'view_contenttype'),(68,'Can view 课程',10,'view_course'),(69,'Can view 课程资源',13,'view_courseresource'),(70,'Can view 章节',11,'view_lesson'),(71,'Can view 视频',12,'view_video'),(72,'Can view 课程评论',18,'view_coursecomments'),(73,'Can view 用户咨询',17,'view_userask'),(74,'Can view 用户课程',21,'view_usercourse'),(75,'Can view 用户收藏',19,'view_userfavorite'),(76,'Can view 用户消息',20,'view_usermessage'),(77,'Can view 城市',14,'view_citydict'),(78,'Can view 课程机构',15,'view_courseorg'),(79,'Can view 教师',16,'view_teacher'),(80,'Can view session',6,'view_session'),(81,'Can view 轮播图',9,'view_banner'),(82,'Can view 邮箱验证码',8,'view_emailverifyrecord'),(83,'Can view 用户信息',7,'view_userprofile'),(84,'Can add Bookmark',22,'add_bookmark'),(85,'Can change Bookmark',22,'change_bookmark'),(86,'Can delete Bookmark',22,'delete_bookmark'),(87,'Can add User Setting',23,'add_usersettings'),(88,'Can change User Setting',23,'change_usersettings'),(89,'Can delete User Setting',23,'delete_usersettings'),(90,'Can add User Widget',24,'add_userwidget'),(91,'Can change User Widget',24,'change_userwidget'),(92,'Can delete User Widget',24,'delete_userwidget'),(93,'Can add log entry',25,'add_log'),(94,'Can change log entry',25,'change_log'),(95,'Can delete log entry',25,'delete_log'),(96,'Can view Bookmark',22,'view_bookmark'),(97,'Can view log entry',25,'view_log'),(98,'Can view User Setting',23,'view_usersettings'),(99,'Can view User Widget',24,'view_userwidget'),(100,'Can add captcha store',26,'add_captchastore'),(101,'Can change captcha store',26,'change_captchastore'),(102,'Can delete captcha store',26,'delete_captchastore'),(103,'Can view captcha store',26,'view_captchastore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$J87GzMyoSogM$0eC4BVyssIxpfto2EL+FtpscMveaVb9s+yuLhS7YX2k=',NULL,1,'admin','1','1','111@qq.com',1,1,'2017-03-31 11:14:19.344996');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (1,'XTOR','xtor','4d347c325e4cd9485fdc0b13b632e10e6d8a4830','2017-04-04 15:34:15.264000'),(2,'CSCV','cscv','5b88f446acfe99dee0cfd1872891dfed5e29a852','2017-04-04 15:35:59.015000'),(3,'TUUS','tuus','0b2ba6b2193547fc65e12ac9a946e944a5d85d81','2017-04-04 15:36:09.588000'),(4,'JTRK','jtrk','d9bdb4fd0b895f27945085e9f1b75c4a85fe9452','2017-04-04 15:36:10.277000'),(5,'SSDX','ssdx','1f4aa42183bd24dceb7e94081b9a619a98a5944f','2017-04-04 15:36:10.574000'),(6,'ZBSI','zbsi','cf58523e490a4fdf544de31d91a92bd42e71d6ff','2017-04-04 15:36:10.866000'),(7,'YMWO','ymwo','31d70ff16a3989df22dc41db05c10ea2f9c3f8c4','2017-04-04 15:36:11.152000'),(8,'AWMR','awmr','a9fa8843c590898b119d3aa72c04f41a37bbfef6','2017-04-04 15:36:11.934000'),(9,'MCJN','mcjn','ca080f3cb1535ae245d89f95e0d725619d38e24f','2017-04-04 15:36:12.172000'),(10,'NYRS','nyrs','7a3516dd37874a6cc606e33d3c3c6d42e7c696fa','2017-04-04 15:36:12.619000'),(11,'UINL','uinl','331277547d7115af66021379330fa04aeb6d7d5c','2017-04-04 15:36:12.831000'),(12,'ENXL','enxl','44437e3c3f4d05492b3bfc78391914092c7a6982','2017-04-04 15:36:13.022000'),(13,'OBYV','obyv','afe1404c48f0e3ba4d56a8f279689556ebbfd067','2017-04-04 15:36:13.237000'),(14,'RQZD','rqzd','cc57d8530ca6fc02ad449f83fb26e38133c17a19','2017-04-04 15:36:13.452000'),(15,'XNMV','xnmv','76fda320bdd2ea19953e08639c5097f9fd12a134','2017-04-04 15:36:13.676000'),(16,'GYRB','gyrb','7ada045aeda2905fbf6483d790cc3bde40abe4c8','2017-04-04 15:37:52.864000'),(17,'OOMN','oomn','6133c1910d2ee5c4daaa4fdc4d1ff5fe4f55f9cb','2017-04-04 15:37:55.632000'),(18,'IEGW','iegw','60b5b25661d76616fc93e1a55fe43dee685f9945','2017-04-04 15:37:56.099000'),(19,'WVJB','wvjb','72c4a02c95cf0c4854753225bb3c2253298f28ac','2017-04-04 15:37:56.293000'),(20,'PLHV','plhv','5b23e5bff56c0f5d8993538c3f58e68f90304981','2017-04-04 15:37:56.493000'),(21,'EPFL','epfl','58906629869205f303baf98d6eff0c30e26785ff','2017-04-04 15:37:56.667000'),(22,'OPUW','opuw','ae6bd2c81ed2338e71882cd407c027281a0c984b','2017-04-04 15:37:56.840000'),(23,'SMPX','smpx','cff7730d7b61ef7b210e595f0349be46aef0d308','2017-04-04 15:37:56.993000'),(24,'SESY','sesy','86cdb63620b5b5083867f3be1c2897ae307279ab','2017-04-04 15:39:49.062000'),(25,'ZZLJ','zzlj','51f97274ca53b3720464879171d2ed4deb74e0f3','2017-04-04 15:40:08.765000'),(26,'ACTR','actr','f592d29140d9e7cd733dcbf645eebe5fb4c5a707','2017-04-04 15:41:15.703000'),(27,'QOWL','qowl','9dd670ddec7c75fec84581278ff9372c509551ec','2017-04-04 15:41:16.462000'),(28,'XLRD','xlrd','493c44e78bc3d4fb8a54ea28f478c2d392d63267','2017-04-04 15:41:17.129000'),(29,'RRSG','rrsg','d360ee9ddd4036aab3afec662b03405734b53e2a','2017-04-04 15:41:17.376000'),(30,'QALG','qalg','862d98ddae978cd65fbc2091dd9856e992761646','2017-04-04 15:41:18.066000'),(31,'YCOY','ycoy','8430230c6ef57c7134c722b6ef2bf0b55d1f4666','2017-04-04 15:41:19.470000'),(32,'BHFV','bhfv','5c655e0fc0eb95d440df674b71008565c6ef23ff','2017-04-04 15:41:20.046000'),(33,'ASCP','ascp','288e4172b8dd2eb819490f4f4c52911ec410d645','2017-04-04 15:41:20.496000'),(34,'AGCI','agci','6cdf869f40cf43a83c62ab235bfb6b544b7c9e6b','2017-04-04 15:41:20.760000'),(35,'MQPL','mqpl','e2d9313b9f4c3cca566410d149e00f321012e4c3','2017-04-04 15:41:21.075000');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(5) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `yuoneed_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  KEY `courses_course_d9614d40` (`teacher_id`),
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'django入门','django入门 描述','django入门 详情','cj',1,1,0,'courses/2017/04/57035ff200014b8a06000338-240-135.jpg',8,'2017-04-06 15:49:00.000000',1,'后端开发','',NULL,'','',0),(2,'python入门','python入门 点点滴滴','python入门 详情','cj',0,3,0,'courses/2017/04/540e57300001d6d906000338-240-135.jpg',19,'2017-04-07 15:08:00.000000',2,'后端开发','python',NULL,'python','python',1),(3,'java入门','java入门 描述','java入门 详情','gj',0,2,1,'courses/2017/04/57035ff200014b8a06000338-240-135_0nFiBSI.jpg',4,'2017-04-07 15:09:00.000000',4,'后端开发','',NULL,'','',0),(4,'go中级','go中级描述','go中级描述','zj',0,0,0,'courses/2017/04/python面向对象.jpg',3,'2017-04-07 15:09:00.000000',1,'后端开发','golang',1,'golang','golang',1),(5,'python错误异常','python错误异常 描述','python错误异常 描述详情','cj',0,0,0,'courses/2017/04/python错误和异常.jpg',1,'2017-04-07 15:10:00.000000',5,'后端开发','',NULL,'','',0),(6,'python面向对象','python面向对象 描述','python面向对象 描述详情','cj',0,0,0,'courses/2017/04/python面向对象_Q7bDNUz.jpg',2,'2017-04-07 15:11:00.000000',6,'后端开发','',NULL,'','',0),(7,'python文件处理','python文件处理 描述','python文件处理 描述 详情','zj',0,0,0,'courses/2017/04/python文件处理.jpg',5,'2017-04-07 15:12:00.000000',5,'后端开发','python',NULL,'','',0),(8,'mysql复制','mysql复制 描述','mysql复制 描述 详情','gj',13,0,0,'courses/2017/04/mysql.jpg',8,'2017-04-07 15:12:00.000000',10,'后端开发','',NULL,'','',0),(9,'python入门1','python入门1 描述','python入门1 详情','gj',12,0,0,'courses/2017/04/540e57300001d6d906000338-240-135_wH52IED.jpg',22,'2017-04-07 15:13:00.000000',9,'后端开发','python',1,'','',0),(10,'python入门2','python入门2 描述','python入门2 描述详情','cj',0,24,0,'courses/2017/04/540e57300001d6d906000338-240-135_n0L8vbw.jpg',51,'2017-04-07 15:14:00.000000',8,'后端开发','python',1,'Django的开发知识 等等','会使用电脑 python基础',1);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_courseresource`
--

DROP TABLE IF EXISTS `courses_courseresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_courseresource`
--

LOCK TABLES `courses_courseresource` WRITE;
/*!40000 ALTER TABLE `courses_courseresource` DISABLE KEYS */;
INSERT INTO `courses_courseresource` VALUES (1,'前端页面','course/resource/2017/04/blog.zip','2017-04-08 22:16:00.000000',10);
/*!40000 ALTER TABLE `courses_courseresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson`
--

DROP TABLE IF EXISTS `courses_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson`
--

LOCK TABLES `courses_lesson` WRITE;
/*!40000 ALTER TABLE `courses_lesson` DISABLE KEYS */;
INSERT INTO `courses_lesson` VALUES (1,'第一章 基础开发','2017-04-08 21:28:00.000000',10,0),(2,'第二章 开发进阶','2017-04-08 21:30:00.000000',10,0),(3,'第一章','2017-04-10 13:15:00.000000',10,0);
/*!40000 ALTER TABLE `courses_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_video`
--

DROP TABLE IF EXISTS `courses_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_video`
--

LOCK TABLES `courses_video` WRITE;
/*!40000 ALTER TABLE `courses_video` DISABLE KEYS */;
INSERT INTO `courses_video` VALUES (1,'1.1 hello world','2017-04-08 21:32:00.000000',1,'http://7xt7vj.com1.z0.glb.clouddn.com/1-1.mp4'),(2,'1.2 基本概念','2017-04-08 21:43:00.000000',1,'http://7xt7vj.com1.z0.glb.clouddn.com/1-1.mp4'),(3,'2.1 test','2017-04-08 21:44:00.000000',2,'http://7xt7vj.com1.z0.glb.clouddn.com/1-1.mp4'),(4,'2.2 test2','2017-04-08 21:45:00.000000',2,'http://7xt7vj.com1.z0.glb.clouddn.com/1-1.mp4'),(5,'1.1 入门','2017-04-10 13:15:00.000000',3,'http://7xt7vj.com1.z0.glb.clouddn.com/1-1.mp4');
/*!40000 ALTER TABLE `courses_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-04-04 17:27:06.598000','1','CityDict object',1,'已添加。',14,1),(2,'2017-04-04 17:27:23.128000','2','CityDict object',1,'已添加。',14,1),(3,'2017-04-04 17:27:48.043000','3','CityDict object',1,'已添加。',14,1),(4,'2017-04-04 17:27:56.651000','4','CityDict object',1,'已添加。',14,1),(5,'2017-04-04 17:28:06.626000','5','CityDict object',1,'已添加。',14,1),(6,'2017-04-04 17:29:37.062000','5','天津市',2,'已修改 add_time 。',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(26,'captcha','captchastore'),(5,'contenttypes','contenttype'),(10,'courses','course'),(13,'courses','courseresource'),(11,'courses','lesson'),(12,'courses','video'),(18,'operation','coursecomments'),(17,'operation','userask'),(21,'operation','usercourse'),(19,'operation','userfavorite'),(20,'operation','usermessage'),(14,'organization','citydict'),(15,'organization','courseorg'),(16,'organization','teacher'),(6,'sessions','session'),(9,'users','banner'),(8,'users','emailverifyrecord'),(7,'users','userprofile'),(22,'xadmin','bookmark'),(25,'xadmin','log'),(23,'xadmin','usersettings'),(24,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-31 03:45:51.758000'),(2,'auth','0001_initial','2017-03-31 03:45:52.905000'),(3,'admin','0001_initial','2017-03-31 03:45:53.205000'),(4,'admin','0002_logentry_remove_auto_add','2017-03-31 03:45:53.243000'),(5,'contenttypes','0002_remove_content_type_name','2017-03-31 03:45:53.457000'),(6,'auth','0002_alter_permission_name_max_length','2017-03-31 03:45:53.591000'),(7,'auth','0003_alter_user_email_max_length','2017-03-31 03:45:53.737000'),(8,'auth','0004_alter_user_username_opts','2017-03-31 03:45:53.762000'),(9,'auth','0005_alter_user_last_login_null','2017-03-31 03:45:53.864000'),(10,'auth','0006_require_contenttypes_0002','2017-03-31 03:45:53.872000'),(11,'auth','0007_alter_validators_add_error_messages','2017-03-31 03:45:53.891000'),(12,'sessions','0001_initial','2017-03-31 03:45:53.992000'),(13,'users','0001_initial','2017-03-31 04:30:14.036000'),(14,'users','0002_banner_emailverifyrecord','2017-03-31 06:46:48.380000'),(15,'courses','0001_initial','2017-03-31 10:31:26.726000'),(16,'operation','0001_initial','2017-03-31 10:31:27.586000'),(17,'operation','0002_auto_20170331_1831','2017-03-31 10:31:27.599000'),(18,'organization','0001_initial','2017-03-31 10:31:27.971000'),(19,'captcha','0001_initial','2017-04-04 10:26:42.731000'),(20,'courses','0002_auto_20170402_1203','2017-04-04 10:26:42.783000'),(21,'operation','0002_auto_20170331_1332','2017-04-04 10:27:17.503000'),(22,'operation','0003_remove_userfavorite_course','2017-04-04 10:27:17.514000'),(23,'users','0002_auto_20170331_2305','2017-04-04 10:27:17.538000'),(24,'users','0003_auto_20170331_2313','2017-04-04 10:27:17.548000'),(25,'users','0004_auto_20170331_2332','2017-04-04 10:27:17.557000'),(26,'users','0005_auto_20170401_0029','2017-04-04 10:27:17.565000'),(27,'xadmin','0001_initial','2017-04-04 10:27:17.572000'),(30,'users','0006_auto_20170404_1034','2017-04-04 10:34:14.889000'),(36,'organization','0002_auto_20170404_1848','2017-04-04 18:57:45.713000'),(37,'xadmin','0002_log','2017-04-04 22:20:09.804798'),(38,'xadmin','0003_auto_20160715_0100','2017-04-04 22:20:18.054697'),(39,'organization','0002_auto_20170404_2230','2017-04-04 22:30:58.881866'),(40,'organization','0003_auto_20170404_2242','2017-04-04 22:43:22.534466'),(41,'organization','0004_auto_20170405_2312','2017-04-05 23:14:05.695130'),(42,'organization','0005_auto_20170405_2313','2017-04-05 23:14:05.704427'),(43,'operation','0004_auto_20170406_1417','2017-04-06 14:17:46.536920'),(44,'organization','0006_auto_20170406_1417','2017-04-06 14:18:07.561306'),(45,'operation','0005_auto_20170406_1524','2017-04-06 15:24:55.152078'),(46,'organization','0007_auto_20170406_1547','2017-04-06 15:48:01.490465'),(47,'courses','0003_course_course_org','2017-04-06 15:48:01.759891'),(48,'organization','0008_teacher_image','2017-04-06 18:32:49.336832'),(49,'courses','0004_course_category','2017-04-07 21:19:04.313333'),(50,'courses','0005_course_tag','2017-04-07 21:58:33.445779'),(51,'courses','0006_auto_20170408_2141','2017-04-08 21:41:17.663037'),(52,'courses','0007_auto_20170408_2142','2017-04-08 21:42:58.805474'),(53,'courses','0008_lesson_learn_times','2017-04-08 21:58:35.037873'),(54,'courses','0009_course_teacher','2017-04-08 22:44:05.372350'),(55,'courses','0010_auto_20170408_2300','2017-04-08 23:00:13.818403'),(56,'organization','0009_teacher_age','2017-04-10 15:51:47.368053'),(57,'users','0006_auto_20170411_1727','2017-04-11 17:27:48.206515'),(58,'users','0007_auto_20170411_1751','2017-04-11 17:51:11.424392'),(59,'users','0008_auto_20170411_1803','2017-04-11 18:03:21.103107'),(60,'users','0009_auto_20170411_1843','2017-04-11 18:43:07.510597'),(61,'operation','0006_auto_20170411_2122','2017-04-11 21:22:41.640947'),(62,'courses','0011_course_is_banner','2017-04-12 12:09:19.247548'),(63,'organization','0010_courseorg_tag','2017-04-12 13:16:36.938537');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('k87y3pf5ih08458clylfi6yfg7cza9hn','YzRhNWFlYWRlNzI5ZTQ0ODNkZjljMjE1NTlmZTZkZjJlMjdmN2I3OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwiY291cnNlb3JnIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIxM2FmYjBmMGNiZDNlMTBjMzBiNjMzMWY3MDU5ZTA1MDg0NzQ0NThmIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9','2017-04-18 18:58:10.087000'),('n7iqt1bar2fa246e0lpsi5laij0po1l9','M2VkZTE3NDg2YjhhYzY4MDk1NTIxMjcwMzBiNjk1OTU1MjE1NGMyMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3BlcmF0aW9uIiwidXNlcm1lc3NhZ2UiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6ImJiODhmZGYzYjFhNTEwZGIyZGU4OGVkMGE2MDJkZWFlZWE2ZTEzZTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2017-04-25 23:26:29.572071'),('symlrhx2fumwf600jl7nu9m44uesn3mk','OWVjYzg1YmRmNmJkOGUxMDlhN2JkMjYzZDZlZTIyOTBiNmMxM2NiYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImJiODhmZGYzYjFhNTEwZGIyZGU4OGVkMGE2MDJkZWFlZWE2ZTEzZTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-04-26 13:27:45.399379');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_coursecomments`
--

DROP TABLE IF EXISTS `operation_coursecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_coursecomments`
--

LOCK TABLES `operation_coursecomments` WRITE;
/*!40000 ALTER TABLE `operation_coursecomments` DISABLE KEYS */;
INSERT INTO `operation_coursecomments` VALUES (1,'aaaaa','2017-04-10 10:47:45.109423',10,1),(2,'aaaaaqqq','2017-04-10 10:48:40.984571',10,1),(3,'jdhdhhdddad','2017-04-10 10:59:36.987562',10,1),(4,'jdhdhhdddad','2017-04-10 10:59:46.969633',10,1),(5,'jdhdhhdddad','2017-04-10 10:59:48.268949',10,1),(6,'jdhdhhdddad','2017-04-10 10:59:48.845319',10,1),(7,'jdhdhhdddad','2017-04-10 10:59:49.067102',10,1),(8,'jdhdhhdddad','2017-04-10 10:59:49.354301',10,1),(9,'jdhdhhdddad','2017-04-10 10:59:49.543424',10,1),(10,'jdhdhhdddad','2017-04-10 10:59:49.828639',10,1),(11,'jdhdhhdddad','2017-04-10 10:59:50.073241',10,1),(12,'jjjdd','2017-04-10 11:00:46.802073',10,1),(13,'ssss','2017-04-10 11:03:05.822070',10,1),(14,'ffff','2017-04-10 11:12:05.531739',10,1),(15,'fffffff','2017-04-10 11:12:10.456675',10,1),(16,'fffffff','2017-04-10 11:12:11.402208',10,1),(17,'fffffff','2017-04-10 11:12:11.636847',10,1),(18,'fffffff','2017-04-10 11:12:11.805420',10,1),(19,'fffffff','2017-04-10 11:12:11.956317',10,1),(20,'fffffff','2017-04-10 11:12:12.104017',10,1),(21,'fffffff','2017-04-10 11:12:12.235522',10,1),(22,'fffffff','2017-04-10 11:12:12.518903',10,1),(23,'fffffff','2017-04-10 11:12:12.667207',10,1),(24,'fffffff','2017-04-10 11:12:12.813109',10,1),(25,'fffffff','2017-04-10 11:12:12.967214',10,1),(26,'fffffff','2017-04-10 11:12:13.130440',10,1),(27,'fffffffsss','2017-04-10 11:13:02.923532',10,1),(28,'fffffffsss','2017-04-10 11:13:04.193926',10,1),(29,'fffffffsss','2017-04-10 11:13:04.743341',10,1),(30,'fffffffsss','2017-04-10 11:13:04.935971',10,1),(31,'fffffffsss','2017-04-10 11:13:07.909296',10,1),(32,'fffffffsss','2017-04-10 11:13:09.034622',10,1),(33,'fffffffsss','2017-04-10 11:13:09.490457',10,1),(34,'fffffffsss','2017-04-10 11:13:10.210340',10,1),(35,'fffffffsss','2017-04-10 11:13:10.419340',10,1),(36,'fffffffsss','2017-04-10 11:13:10.590573',10,1),(37,'fffffffsss','2017-04-10 11:13:10.736420',10,1),(38,'fffffffsss','2017-04-10 11:13:10.892011',10,1),(39,'fffffffsss','2017-04-10 11:13:11.087651',10,1),(40,'fffffffsss','2017-04-10 11:13:11.242172',10,1),(41,'fffffffsss','2017-04-10 11:13:11.389636',10,1),(42,'fffffffsss','2017-04-10 11:13:11.551871',10,1),(43,'fffffffsss','2017-04-10 11:13:11.707015',10,1),(44,'fffffffsss','2017-04-10 11:13:11.854239',10,1),(45,'fffffffsss','2017-04-10 11:13:12.009071',10,1),(46,'fffffffsss','2017-04-10 11:13:12.179737',10,1),(47,'fffffffsss','2017-04-10 11:13:12.344087',10,1);
/*!40000 ALTER TABLE `operation_coursecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userask`
--

DROP TABLE IF EXISTS `operation_userask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userask`
--

LOCK TABLES `operation_userask` WRITE;
/*!40000 ALTER TABLE `operation_userask` DISABLE KEYS */;
INSERT INTO `operation_userask` VALUES (21,'admin','18519509259','django','2017-04-06 15:25:39.670699');
/*!40000 ALTER TABLE `operation_userask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usercourse`
--

DROP TABLE IF EXISTS `operation_usercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `learn_times` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usercourse`
--

LOCK TABLES `operation_usercourse` WRITE;
/*!40000 ALTER TABLE `operation_usercourse` DISABLE KEYS */;
INSERT INTO `operation_usercourse` VALUES (1,'2017-04-07 21:29:00.000000',1,1),(2,'2017-04-07 21:30:00.000000',3,1),(3,'2017-04-10 11:45:00.000000',10,1),(4,'2017-04-10 11:46:00.000000',5,1),(5,'2017-04-10 12:14:04.744814',7,1),(6,'2017-04-10 12:14:56.759856',4,1);
/*!40000 ALTER TABLE `operation_usercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userfavorite`
--

DROP TABLE IF EXISTS `operation_userfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userfavorite`
--

LOCK TABLES `operation_userfavorite` WRITE;
/*!40000 ALTER TABLE `operation_userfavorite` DISABLE KEYS */;
INSERT INTO `operation_userfavorite` VALUES (15,8,2,'2017-04-07 22:41:23.567461',1),(30,10,1,'2017-04-11 11:54:30.939070',1),(32,1,3,'2017-04-11 22:30:48.103746',1),(33,7,2,'2017-04-11 23:00:10.400127',1),(35,3,1,'2017-04-12 13:02:27.560776',1);
/*!40000 ALTER TABLE `operation_userfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usermessage`
--

DROP TABLE IF EXISTS `operation_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usermessage`
--

LOCK TABLES `operation_usermessage` WRITE;
/*!40000 ALTER TABLE `operation_usermessage` DISABLE KEYS */;
INSERT INTO `operation_usermessage` VALUES (1,1,'欢迎',1,'2017-04-11 23:22:00.000000'),(2,1,'未读消息111111111111111111',1,'2017-04-11 23:24:00.000000');
/*!40000 ALTER TABLE `operation_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_citydict`
--

DROP TABLE IF EXISTS `organization_citydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_citydict`
--

LOCK TABLES `organization_citydict` WRITE;
/*!40000 ALTER TABLE `organization_citydict` DISABLE KEYS */;
INSERT INTO `organization_citydict` VALUES (1,'上海市','上海市','2017-04-04 17:26:00.000000'),(2,'北京市','北京市','2017-04-04 17:27:00.000000'),(3,'广州市','广州市','2017-04-04 17:27:00.000000'),(4,'深圳市','深圳市','2017-04-04 17:27:00.000000'),(5,'天津市','天津市','2017-04-04 17:29:00.000000'),(6,'南京市','南京市','2017-04-04 23:00:00.000000');
/*!40000 ALTER TABLE `organization_citydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_courseorg`
--

DROP TABLE IF EXISTS `organization_courseorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_course_city_id_4a842f85_fk_organization_citydict_id` (`city_id`),
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_courseorg`
--

LOCK TABLES `organization_courseorg` WRITE;
/*!40000 ALTER TABLE `organization_courseorg` DISABLE KEYS */;
INSERT INTO `organization_courseorg` VALUES (1,'慕课网','慕课网在线网  机构描 描述想嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻',7,0,'org/2017/04/imooc.png','北京市','2017-04-04 18:25:00.000000',2,'pxjg',0,0,'全国知名'),(2,'北京大学','北京大学 机构描述',0,0,'org/2017/04/bjdx.jpg','北京北京大学','2017-04-04 18:29:00.000000',2,'pxjg',0,0,'全国知名'),(3,'慕课网1','慕课网1',0,0,'org/2017/04/imooc_Gn1sRjp.png','北京市00001','2017-04-04 18:30:00.000000',2,'pxjg',0,0,'全国知名'),(4,'慕课网2','慕课网2 222',0,0,'org/2017/04/imooc_klgAUn5.png','北京市00002','2017-04-04 18:31:00.000000',2,'gr',0,0,'全国知名'),(5,'清华大学','清华大学122222222222222222',1,0,'org/2017/04/qhdx-logo.png','清华大学地址','2017-04-04 18:32:00.000000',2,'pxjg',0,0,'全国知名'),(6,'慕课网3','慕课网333333333333333333333333333333333333333333333333',1,0,'org/2017/04/imooc_OO2ykYP.png','慕课网333333','2017-04-04 18:33:00.000000',2,'pxjg',0,0,'全国知名'),(7,'南京大学','南京大学 描述',0,0,'org/2017/04/njdx.jpg','南京大学地址','2017-04-04 18:34:00.000000',6,'pxjg',0,0,'全国知名'),(8,'天津大学','天津大学 机构',1,0,'org/2017/04/tjdx.jpg','天津大学','2017-04-04 18:35:00.000000',5,'pxjg',0,0,'全国知名'),(9,'广州大学','广州大学 机构',0,0,'org/2017/04/guangzhoudx.jpg','广州大学地址','2017-04-04 18:37:00.000000',3,'pxjg',0,0,'全国知名'),(10,'深圳大学','深圳大学 描述',1,0,'org/2017/04/shenzhendaxue.jpg','深圳大学地址','2017-04-04 18:38:00.000000',4,'pxjg',0,0,'全国知名'),(11,'上海大学','上海大学',0,0,'org/2017/04/shanghaidx.jpg','上海市','2017-04-04 18:40:00.000000',1,'pxjg',0,0,'全国知名'),(12,'北京航空航天大学','北京航空航天大学 . miaosu',1,0,'org/2017/04/bjhtdx.jpg','北京市航天xxxxx','2017-04-04 22:24:00.000000',3,'gx',0,0,'全国知名');
/*!40000 ALTER TABLE `organization_courseorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_teacher`
--

DROP TABLE IF EXISTS `organization_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_ccompany` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` (`org_id`),
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_teacher`
--

LOCK TABLES `organization_teacher` WRITE;
/*!40000 ALTER TABLE `organization_teacher` DISABLE KEYS */;
INSERT INTO `organization_teacher` VALUES (1,'奥巴马',3,'白宫','总统','xxx',1,0,'2017-04-06 15:37:00.000000',1,'teacher/2017/04/default_middile_1.png',18),(2,'n老师',5,'xxxx','xxx','xxx',0,0,'2017-04-06 15:41:00.000000',1,'teacher/2017/04/aobama_CXWwMef.png',18);
/*!40000 ALTER TABLE `organization_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
INSERT INTO `users_banner` VALUES (1,'第一个','banner/2017/04/57aa86a0000145c512000460_nMwvoQD.jpg','http://www.baidu.com',1,'2017-04-12 12:17:00.000000'),(2,'第二个','banner/2017/04/57a801860001c34b12000460_z4Vb8zl.jpg','http://www.baidu.com',2,'2017-04-12 12:18:00.000000'),(3,'第三个','banner/2017/04/mysql.jpg','http://www.baidu.com',3,'2017-04-12 12:19:00.000000'),(4,'第四个','banner/2017/04/python面向对象.jpg','http://www.baidu.com',4,'2017-04-12 12:20:00.000000'),(5,'第五个','banner/2017/04/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg','http://www.baidu.com',5,'2017-04-12 12:20:00.000000');
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(18) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` VALUES (1,'54dY','292016176@qq.com','update_email','2017-04-11 18:04:04.640716'),(2,'7IaG','292016176@qq.com','update_email','2017-04-11 18:19:13.719774'),(3,'Y4iE','292016176@qq.com','update_email','2017-04-11 18:25:03.525702'),(4,'44dr','292016176@qq.com','update_email','2017-04-11 20:58:49.155971');
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$24000$1Lf501q2GD6F$pBzaMiMrKcV6pALLbQRqTwkSvlT2TqUn8KCJffapiqI=','2017-04-12 13:27:45.392036',1,'admin','','','292016176@qq.com',1,1,'2017-04-04 10:35:00.903000','admin_nike','2017-04-11','male','us','15676745538','image/2017/04/aobama.png');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2017-04-04 18:25:29.231000','127.0.0.1','1','CourseOrg object','create','已添加。',15,1),(2,'2017-04-04 18:27:33.628000','127.0.0.1','1','慕课网','change','没有字段被修改。',15,1),(3,'2017-04-04 18:30:37.257000','127.0.0.1','2','北京大学','create','已添加。',15,1),(4,'2017-04-04 18:31:33.404000','127.0.0.1','3','慕课网1','create','已添加。',15,1),(5,'2017-04-04 18:32:12.387000','127.0.0.1','4','慕课网2','create','已添加。',15,1),(6,'2017-04-04 18:33:07.178000','127.0.0.1','5','清华大学','create','已添加。',15,1),(7,'2017-04-04 18:33:40.319000','127.0.0.1','6','慕课网3','create','已添加。',15,1),(8,'2017-04-04 18:34:54.033000','127.0.0.1','7','南京大学','create','已添加。',15,1),(9,'2017-04-04 18:36:06.083000','127.0.0.1','8','天津大学','create','已添加。',15,1),(10,'2017-04-04 18:37:56.153000','127.0.0.1','9','广州大学','create','已添加。',15,1),(11,'2017-04-04 18:39:02.446000','127.0.0.1','10','深圳大学','create','已添加。',15,1),(12,'2017-04-04 18:41:40.051000','127.0.0.1','11','上海大学','create','已添加。',15,1),(13,'2017-04-04 22:32:47.787712','127.0.0.1','12','北京航空航天大学','create','已添加。',15,1),(14,'2017-04-04 23:00:38.990640','127.0.0.1','6','南京市','create','已添加。',14,1),(15,'2017-04-05 22:42:50.490588','127.0.0.1','12','北京航空航天大学','change','已修改 category 。',15,1),(16,'2017-04-05 22:44:29.943686','127.0.0.1','4','慕课网2','change','已修改 category 。',15,1),(17,'2017-04-05 22:45:29.636258','127.0.0.1','7','南京大学','change','已修改 city 。',15,1),(18,'2017-04-06 15:40:22.988663','192.168.1.82','1','奥巴马','create','已添加。',16,1),(19,'2017-04-06 15:41:53.601935','192.168.1.82','2','n老师','create','已添加。',16,1),(20,'2017-04-06 15:50:23.147042','192.168.1.82','1','django入门','create','已添加。',10,1),(21,'2017-04-06 15:51:53.029788','192.168.1.82','1','django入门','change','已修改 degree 。',10,1),(22,'2017-04-06 18:00:56.402811','192.168.1.82','1','django入门','change','没有字段被修改。',10,1),(23,'2017-04-06 18:33:22.754114','192.168.1.82','1','奥巴马','change','已修改 image 。',16,1),(24,'2017-04-06 18:33:43.685069','192.168.1.82','2','n老师','change','已修改 image 。',16,1),(25,'2017-04-06 18:33:50.518607','192.168.1.82','1','奥巴马','change','没有字段被修改。',16,1),(26,'2017-04-06 18:33:54.800110','192.168.1.82','2','n老师','change','没有字段被修改。',16,1),(27,'2017-04-07 11:23:00.452373','192.168.1.82','1','奥巴马','change','已修改 work_years 。',16,1),(28,'2017-04-07 15:08:56.848610','192.168.1.82','2','python入门','create','已添加。',10,1),(29,'2017-04-07 15:09:52.439714','192.168.1.82','3','java入门','create','已添加。',10,1),(30,'2017-04-07 15:10:52.104956','192.168.1.82','4','go中级','create','已添加。',10,1),(31,'2017-04-07 15:11:36.804317','192.168.1.82','5','python错误异常','create','已添加。',10,1),(32,'2017-04-07 15:12:14.110473','192.168.1.82','6','python面向对象','create','已添加。',10,1),(33,'2017-04-07 15:12:47.297609','192.168.1.82','7','python文件处理','create','已添加。',10,1),(34,'2017-04-07 15:13:25.047230','192.168.1.82','8','mysql复制','create','已添加。',10,1),(35,'2017-04-07 15:14:16.904262','192.168.1.82','9','python入门1','create','已添加。',10,1),(36,'2017-04-07 15:15:06.997708','192.168.1.82','10','python入门2','create','已添加。',10,1),(37,'2017-04-07 21:29:46.763400','127.0.0.1','1','UserCourse object','create','已添加。',21,1),(38,'2017-04-07 21:31:02.686569','127.0.0.1','2','UserCourse object','create','已添加。',21,1),(39,'2017-04-07 22:11:46.668676','127.0.0.1','10','python入门2','change','已修改 tag 。',10,1),(40,'2017-04-07 22:11:55.978926','127.0.0.1','9','python入门1','change','已修改 tag 。',10,1),(41,'2017-04-07 22:12:08.630400','127.0.0.1','7','python文件处理','change','已修改 tag 。',10,1),(42,'2017-04-08 21:28:53.781790','127.0.0.1','1','Lesson object','create','已添加。',11,1),(43,'2017-04-08 21:29:45.869676','127.0.0.1','1','Lesson object','change','已修改 name 。',11,1),(44,'2017-04-08 21:30:33.077305','127.0.0.1','2','Lesson object','create','已添加。',11,1),(45,'2017-04-08 21:33:07.319919','127.0.0.1','1','1.1 hello world','create','已添加。',12,1),(46,'2017-04-08 21:44:05.448578','127.0.0.1','2','1.2 基本概念','create','已添加。',12,1),(47,'2017-04-08 21:44:57.227044','127.0.0.1','3','test','create','已添加。',12,1),(48,'2017-04-08 21:45:21.995046','127.0.0.1','3','2.1 test','change','已修改 name 。',12,1),(49,'2017-04-08 21:45:33.300410','127.0.0.1','4','2.2 test2','create','已添加。',12,1),(50,'2017-04-08 22:18:02.767860','127.0.0.1','1','前端页面','create','已添加。',13,1),(51,'2017-04-08 22:45:01.247415','127.0.0.1','10','python入门2','change','已修改 teacher 。',10,1),(52,'2017-04-08 22:45:17.206114','127.0.0.1','9','python入门1','change','已修改 teacher 。',10,1),(53,'2017-04-08 23:01:59.699591','127.0.0.1','10','python入门2','change','已修改 yuoneed_know 和 teacher_tell 。',10,1),(54,'2017-04-10 11:45:04.436997','127.0.0.1','2','UserCourse object','change','已修改 course 。',21,1),(55,'2017-04-10 11:45:26.624336','127.0.0.1','3','UserCourse object','create','已添加。',21,1),(56,'2017-04-10 11:46:43.917354','127.0.0.1','4','UserCourse object','create','已添加。',21,1),(57,'2017-04-10 13:15:39.056359','127.0.0.1','3','第一章','create','已添加。',11,1),(58,'2017-04-10 13:16:09.045563','127.0.0.1','5','1.1 入门','create','已添加。',12,1),(59,'2017-04-10 13:39:50.879648','127.0.0.1','5','1.1 入门','change','已修改 url 。',12,1),(60,'2017-04-10 13:39:56.128816','127.0.0.1','4','2.2 test2','change','已修改 url 。',12,1),(61,'2017-04-10 13:40:05.139462','127.0.0.1','3','2.1 test','change','已修改 url 。',12,1),(62,'2017-04-10 13:40:08.419302','127.0.0.1','3','2.1 test','change','没有字段被修改。',12,1),(63,'2017-04-10 13:40:16.337581','127.0.0.1','3','2.1 test','change','没有字段被修改。',12,1),(64,'2017-04-10 13:40:22.644152','127.0.0.1','2','1.2 基本概念','change','已修改 url 。',12,1),(65,'2017-04-10 13:40:32.030674','127.0.0.1','1','1.1 hello world','change','已修改 url 。',12,1),(66,'2017-04-11 23:24:11.111185','127.0.0.1','1','UserMessage object','create','已添加。',20,1),(67,'2017-04-11 23:26:28.110635','127.0.0.1','2','UserMessage object','create','已添加。',20,1),(68,'2017-04-12 12:18:50.621046','192.168.1.82','1','Banner object','create','已添加。',9,1),(69,'2017-04-12 12:19:09.719719','192.168.1.82','2','Banner object','create','已添加。',9,1),(70,'2017-04-12 12:19:47.821850','192.168.1.82','3','Banner object','create','已添加。',9,1),(71,'2017-04-12 12:20:22.399506','192.168.1.82','4','Banner object','create','已添加。',9,1),(72,'2017-04-12 12:20:33.427796','192.168.1.82','5','Banner object','create','已添加。',9,1),(73,'2017-04-12 13:07:42.963894','192.168.1.82','10','python入门2','change','已修改 is_banner 。',10,1),(74,'2017-04-12 13:08:12.078914','192.168.1.82','2','python入门','change','已修改 is_banner，tag，yuoneed_know 和 teacher_tell 。',10,1),(75,'2017-04-12 13:08:34.609622','192.168.1.82','4','go中级','change','已修改 is_banner，teacher，tag，yuoneed_know 和 teacher_tell 。',10,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-12 14:15:03
