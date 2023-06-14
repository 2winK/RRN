-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: rrn
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add news',8,'add_news'),(30,'Can change news',8,'change_news'),(31,'Can delete news',8,'delete_news'),(32,'Can view news',8,'view_news'),(33,'Can add comment',9,'add_comment'),(34,'Can change comment',9,'change_comment'),(35,'Can delete comment',9,'delete_comment'),(36,'Can view comment',9,'view_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$JOb5zwIoug1s7FPnJbZwOC$oBF1ASevkbqC1vrbUJuF1qWxfg1gVwUfZnT5GXg0Hk0=','2023-06-07 16:49:51.380093',1,'serewka','Serhii','Kadebskyi','kssteamail0@gmail.com',1,1,'2023-05-24 11:30:39.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-05-24 11:34:31.772372','1','Війна',1,'[{\"added\": {}}]',7,1),(2,'2023-05-24 11:34:56.641461','2','Політика',1,'[{\"added\": {}}]',7,1),(3,'2023-05-24 11:35:21.704442','3','Економіка',1,'[{\"added\": {}}]',7,1),(4,'2023-05-24 11:35:58.349361','4','Наука',1,'[{\"added\": {}}]',7,1),(5,'2023-05-24 11:36:22.162269','5','Здоров\'я',1,'[{\"added\": {}}]',7,1),(6,'2023-05-24 11:36:49.318530','6','Події Рівненщини',1,'[{\"added\": {}}]',7,1),(7,'2023-05-24 11:37:08.776475','7','Спорт',1,'[{\"added\": {}}]',7,1),(8,'2023-05-24 11:37:36.534538','8','Культура',1,'[{\"added\": {}}]',7,1),(9,'2023-05-24 11:38:07.029389','9','Технології',1,'[{\"added\": {}}]',7,1),(10,'2023-05-24 11:54:28.151265','1','У Костополі повідомили про замінування навчальних закладів',1,'[{\"added\": {}}]',8,1),(11,'2023-05-24 11:54:36.916825','1','У Костополі повідомили про замінування навчальних закладів',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,1),(12,'2023-05-24 11:58:41.068155','2','Парламент Словенії визнав Голодомор геноцидом українського народу',1,'[{\"added\": {}}]',8,1),(13,'2023-05-24 11:59:50.776868','1','Частина Бахмута все ще під контролем ЗСУ - Данілов',2,'[{\"changed\": {\"fields\": [\"Title\", \"detail\"]}}]',8,1),(14,'2023-05-24 12:02:00.259520','3','Яким буде курс долара у червні 2023-го: з\'явився свіжий прогноз',1,'[{\"added\": {}}]',8,1),(15,'2023-05-24 12:07:19.022259','1','serewka',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(16,'2023-06-07 15:46:28.055794','3','Яким буде курс долара у червні 2023-го: з\'явився свіжий прогноз',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1),(17,'2023-06-07 15:47:13.814879','3','Яким буде курс долара у червні 2023-го: з\'явився свіжий прогноз',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1),(18,'2023-06-07 15:47:25.365541','3','Яким буде курс долара у червні 2023-го: з\'явився свіжий прогноз',2,'[]',8,1),(19,'2023-06-10 12:31:27.447891','4','Біля Бахмута українські захисники за добу просунулись на понад кілометр – Череватий',1,'[{\"added\": {}}]',8,1),(20,'2023-06-10 12:35:05.137404','4','Біля Бахмута українські захисники за добу просунулись на понад кілометр – Череватий',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(21,'2023-06-10 12:47:26.257201','5','Чи можна їсти картоплю з зеленими плямами: остаточна відповідь',1,'[{\"added\": {}}]',8,1),(22,'2023-06-10 12:50:05.995193','5','Чи можна їсти картоплю з зеленими плямами: остаточна відповідь',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1),(23,'2023-06-10 12:52:20.618890','6','Вчені знайшли підземні гори, які у 4,5 раза вищі за Еверест',1,'[{\"added\": {}}]',8,1),(24,'2023-06-10 12:54:36.815713','7','Українців \"атакують\" мошки: які натуральні засоби врятують',1,'[{\"added\": {}}]',8,1),(25,'2023-06-10 12:58:50.274820','8','Як почистити роз\'єм зарядки смартфона вручну: процедура займає не більше хвилини',1,'[{\"added\": {}}]',8,1),(26,'2023-06-10 13:00:19.790496','8','Як почистити роз\'єм зарядки смартфона вручну: процедура займає не більше хвилини',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1),(27,'2023-06-10 13:04:27.116949','9','Каталася на велосипеді: на Рівненщині трагічно загинула 5-річна дівчинка',1,'[{\"added\": {}}]',8,1),(28,'2023-06-10 13:04:39.124342','7','Українців \"атакують\" мошки: які натуральні засоби врятують',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1),(29,'2023-06-10 13:04:43.982267','6','Вчені знайшли підземні гори, які у 4,5 раза вищі за Еверест',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1),(30,'2023-06-10 13:04:49.872301','5','Чи можна їсти картоплю з зеленими плямами: остаточна відповідь',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1),(31,'2023-06-10 13:04:55.005132','4','Біля Бахмута українські захисники за добу просунулись на понад кілометр – Череватий',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1),(32,'2023-06-10 13:06:40.432243','10','Проігнорували табличку з попередженням: на Рівненщині у полі підірвався трактор',1,'[{\"added\": {}}]',8,1),(33,'2023-06-10 13:08:49.989806','10','Проігнорували табличку з попередженням: на Рівненщині у полі підірвався трактор',2,'[{\"changed\": {\"fields\": [\"detail\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'main','category'),(9,'main','comment'),(8,'main','news'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-24 11:28:03.533138'),(2,'auth','0001_initial','2023-05-24 11:28:03.918569'),(3,'admin','0001_initial','2023-05-24 11:28:04.014835'),(4,'admin','0002_logentry_remove_auto_add','2023-05-24 11:28:04.024418'),(5,'admin','0003_logentry_add_action_flag_choices','2023-05-24 11:28:04.032964'),(6,'contenttypes','0002_remove_content_type_name','2023-05-24 11:28:04.091650'),(7,'auth','0002_alter_permission_name_max_length','2023-05-24 11:28:04.137419'),(8,'auth','0003_alter_user_email_max_length','2023-05-24 11:28:04.167640'),(9,'auth','0004_alter_user_username_opts','2023-05-24 11:28:04.176610'),(10,'auth','0005_alter_user_last_login_null','2023-05-24 11:28:04.253674'),(11,'auth','0006_require_contenttypes_0002','2023-05-24 11:28:04.258247'),(12,'auth','0007_alter_validators_add_error_messages','2023-05-24 11:28:04.267245'),(13,'auth','0008_alter_user_username_max_length','2023-05-24 11:28:04.320382'),(14,'auth','0009_alter_user_last_name_max_length','2023-05-24 11:28:04.382422'),(15,'auth','0010_alter_group_name_max_length','2023-05-24 11:28:04.422800'),(16,'auth','0011_update_proxy_permissions','2023-05-24 11:28:04.432462'),(17,'auth','0012_alter_user_first_name_max_length','2023-05-24 11:28:04.477455'),(18,'main','0001_initial','2023-05-24 11:28:04.497602'),(19,'main','0002_news','2023-05-24 11:28:04.550771'),(20,'main','0003_auto_20210805_1926','2023-05-24 11:28:04.602320'),(21,'main','0004_rename_news_comment_news_and_more','2023-05-24 11:28:04.668614'),(22,'main','0005_news_views_alter_comment_status','2023-05-24 11:28:04.699940'),(23,'main','0006_remove_news_views','2023-05-24 11:28:04.716477'),(24,'main','0007_news_views_count','2023-05-24 11:28:04.774272'),(25,'sessions','0001_initial','2023-05-24 11:28:04.808312');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('biem7p2ws73fqt1t1mug4n6f6ntyejaj','.eJxVjDEOwyAQBP9CHSGMgeNSpvcbEHAQnERYMnYV5e_Bkouk2GZndt_M-X0rbm9pdTOxKxvY5bcLPj5TPQA9fL0vPC51W-fAD4WftPFpofS6ne7fQfGt9LUyKgg9otESetAS5CjlKFGAAIhysAYpKyukwm5iBtLBgzBJgKXAPl-TUDY9:1q6wM3:sIAP7IdM-ar2Y1RE2hVaKkVYcqLCn_GQv4QrgCBSuQc','2023-06-21 16:49:51.385577'),('n2cvf3yrsovs8xukpsm2j6sqboye0qct','.eJxVjDEOwyAQBP9CHSGMgeNSpvcbEHAQnERYMnYV5e_Bkouk2GZndt_M-X0rbm9pdTOxKxvY5bcLPj5TPQA9fL0vPC51W-fAD4WftPFpofS6ne7fQfGt9LUyKgg9otESetAS5CjlKFGAAIhysAYpKyukwm5iBtLBgzBJgKXAPl-TUDY9:1q1mhj:vd-VWfad4HtkSIq5nKfwOBWtJU0d6F4SvoJ0P7H2Zno','2023-06-07 11:30:55.158141');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_category`
--

DROP TABLE IF EXISTS `main_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `category_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_category`
--

LOCK TABLES `main_category` WRITE;
/*!40000 ALTER TABLE `main_category` DISABLE KEYS */;
INSERT INTO `main_category` VALUES (1,'Війна','imgs/війна_TuLCRqs.jpg'),(2,'Політика','imgs/політика_F4eBfJw.jpg'),(3,'Економіка','imgs/економіка_J1Pm1PN.jpg'),(4,'Наука','imgs/наука_bmtTo3I.jpg'),(5,'Здоров\'я','imgs/здоровя_f6x4LvM.jpg'),(6,'Події Рівненщини','imgs/події_l3qFqMs.jpg'),(7,'Спорт','imgs/спорт_jCD4Wdw.jpg'),(8,'Культура','imgs/культура_5fyIRVy.jpeg'),(9,'Технології','imgs/технології_YlGmBrt.jpg');
/*!40000 ALTER TABLE `main_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_comment`
--

DROP TABLE IF EXISTS `main_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `news_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_comment_news_id_d0972b8f_fk_main_news_id` (`news_id`),
  CONSTRAINT `main_comment_news_id_d0972b8f_fk_main_news_id` FOREIGN KEY (`news_id`) REFERENCES `main_news` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_comment`
--

LOCK TABLES `main_comment` WRITE;
/*!40000 ALTER TABLE `main_comment` DISABLE KEYS */;
INSERT INTO `main_comment` VALUES (1,'Serhii Kadebskyi','kssteamail0@gmail.com','Файно',1,2);
/*!40000 ALTER TABLE `main_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_news`
--

DROP TABLE IF EXISTS `main_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  `views_count` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_news_category_id_10349cdb_fk_main_category_id` (`category_id`),
  CONSTRAINT `main_news_category_id_10349cdb_fk_main_category_id` FOREIGN KEY (`category_id`) REFERENCES `main_category` (`id`),
  CONSTRAINT `main_news_chk_1` CHECK ((`views_count` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_news`
--

LOCK TABLES `main_news` WRITE;
/*!40000 ALTER TABLE `main_news` DISABLE KEYS */;
INSERT INTO `main_news` VALUES (1,'Частина Бахмута все ще під контролем ЗСУ - Данілов','Imgs/01.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Секретар Ради національної безпеки і оборони України Олексій Данілов заявив, що українські військовослужбовці досі контролюють певну частину Бахмута Донецької області.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;Якщо вони (росіяни &ndash; ред.) вважають, що взяли Бахмут, я можу сказати, що це не так. На сьогоднішній день частина Бахмута знаходиться під нашим контролем. Я не можу сказати всього, але частина Бахмута все ще під нашим вогнем&quot;, &ndash; розповів він CNN.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Він також підтримав рішення командування щодо утримання міста до останнього. За словами Данілова, на тому напрямку ворог зазнав великих втрат.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;На Бахмутському напрямку загинула велика кількість російських військовослужбовців, не тільки &quot;вагнерівців&quot;, а й спецназу, десантників та представників інших родів військ російської армії. Було знищено величезну кількість техніки, і вони витратили там величезну кількість боєприпасів&quot;, &ndash; наголосив секретар РНБО.</span></p>','2023-05-24 11:54:28.150264',1,7),(2,'Парламент Словенії визнав Голодомор геноцидом українського народу','Imgs/02.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">У вівторок, 23 травня 2023 року, парламент Словенії визнав Голодомор 1932-1933 років геноцидом українського народу. За це рішення проголосували 67 парламентарів, проти &ndash; 8.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Як повідомляє прес-служба&nbsp;Посольства України в Республіці Словенія,&nbsp;Державними Зборами країни було прийнято відповідну Декларацію з вшанування пам&rsquo;яті масового вбивства голодом &ndash; геноциду в Україні.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;Відповідно до положень Декларації, парламент Республіки Словенія висловлює жаль з приводу &quot;геноцидного характеру Голодомора, яким сталінський режим в 1932-33 роках знищив цілу верству населення та привів до відсутності основних продуктів харчування необхідних для виживання населення, засуджує геноцидні діяння, що спричинили смерть мільйонів українців і завдали великих збитків основам українського суспільства, вшановує пам&#39;ять всіх жертвам Голодомору, що постраждали в цій трагедії, і згадує всіх, хто загинув в результаті цих злочинних дій, засуджує та відкидає спроби спотворення історичних фактів, висловлює солідарність з тими, хто пережив Голодомор, та з їхніми родинами, зобов&#39;язується зберігати пам&#39;ять про всіх жертв цих навмисних, жорстоких і злочинних дій, зобов&rsquo;язується сприяти усвідомленню трагічних історичних подій в Україні цього періоду&quot;, &ndash; йдеться у повідомленні.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">На це рішення парламенту Словенії вже відреагував президент України Володимир Зеленський.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;Вдячний парламентарям Словенії за ухвалення декларації, яка вшановує памʼять мільйонів українських жертв Голодомору &ndash; геноциду в Україні 1932-1933 років.&nbsp;Міжнародна коаліція держав, відданих відновленню історичної справедливості, і далі зміцнюється. Разом до правди, а отже, й відповідальності&quot;, &ndash; написав глава держави уTwitter.</span></p>','2023-05-24 11:58:41.068155',2,10),(3,'Яким буде курс долара у червні 2023-го: з\'явився свіжий прогноз','Imgs/03.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Курс долара в Україні у червні 2023-го року навряд чи різко зміниться. Швидше за все, він коливатиметься у межах коридору від 36,5 до 37,5 грн/дол.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Як прогнозує заступник директора з торгівлі цінними паперами Dragon Capital Сергій Фурса, у червні ситуація на валютному ринку України буде стабільною, передає 24 канал.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Причина - відсутність потенційних факторів, які можуть змінити поточну ситуацію.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;Зараз все стабільно. Однак, якщо з&#39;являться фактори, які збільшать попит або пропозицію, зможемо побачити будь-які зміни. Втім, потенційних передумов для цього зараз немає&quot;, - зазначив він.&quot;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Зазначається, що такої ж думки дотримується і керівник аналітичного департаменту Concorde Capital Олександр Паращій:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;Відтоку валюти у нас за фінансовими операціями не буде. Експорт, швидше за все, буде на відносно високому рівні. Відповідно, попит на долар буде відносно низьким. Таким чином, поки немає ознак, щоб ситуація якось змінилася в порівнянні з тим, що маємо сьогодні&quot;.</span></p>','2023-05-24 12:02:00.258540',3,14),(4,'Біля Бахмута українські захисники за добу просунулись на понад кілометр – Череватий','Imgs/04.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">На Бахмутському напрямку за добу українським військовим&nbsp;вдалося на різних ділянках просунутися до 1,4 тис. метрів.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;За цю добу вдалося на різних ділянках просунутися до 1400 метрів&quot;, - повідомив речник Східного угруповання військ Збройних сил України Сергій Череватий в ефірі інформаційного телемарафону.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">За словами Череватого, сили оборони завдають ударів по ворогу, контратакують, користуючись тим, що росіяни проводять ротаційні заходи, замінюють свої підрозділи. Водночас, зауважив він, ворог веде активну оборону, намагається бити по українських підрозділах. Так, окупанти здійснили за добу 330 ударів зі ствольної реактивної артилерії, завдали 8 авіаударів.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;Загалом відбулось шість боєзіткнень, в ході яких ми знищили 138 окупантів, 236 зазнали поранень, одного взяли в полон. Знищено також самохідну артилерійську установку &quot;Гвоздика&quot;, 3 бронеавтомобілі, гаубицю Д-30, зенітну гармату С-60, безпілотний апарат ZALA, 8 складів боєприпасів та 7 авто, які підвозили боєприпаси та зброю&quot;, - розповів Череватий.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Він зазначив, що ворог намагається паралельно вибудувати свою оборону і контратакувати українські позиції.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;Проте всі ці спроби зазнали невдач. Ми в принципі знаємо, які підрозділи заходять &ndash; це мотострілецькі та повітряно-десантні підрозділи здебільшого, знаємо їх потенціал, командування, знаємо можливості. І все це максимально використовуємо&quot;, - сказав речник.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Череватий наголосив, що головна мета сил оборони України залишається незмінною: максимальна шкода ворогу, максимальні втрати ворогу і для цього використовуються всі заходи.&nbsp;Він зазначив, що нині наші військові зайняли вже ряд висот, які є тактично-вигідними позиціями.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;В принципі одна з головних цілей &ndash; це зайняти більш вигідніші позиції, щоб ще дошкульніше бити по ворогу, ще більшу шкоду йому наносити. І в принципі, у нас же досвідчені командири, які максимально знають цю місцевість, вони на ній воювали і багато хто ще з 2014 року, і вони максимально роблять все для того, щоб зайняти такі позиції і з них вражати ворога&quot;, - зазначив Череватий.</span></p>','2023-06-10 12:31:27.440891',1,5),(5,'Чи можна їсти картоплю з зеленими плямами: остаточна відповідь','Imgs/05.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Чому картопля Зелена під шкіркою</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Зелені плями на бульбах утворюються через вплив прямих сонячних променів або зберігання в прозорій упаковці. Під дією сонця в бульбах збільшується кількість токсину&nbsp;соланіну. У нормі соланін в картоплі є завжди в невеликій кількості, але в зелених ділянках його набагато більше. Ця отрута потрібна картоплі для захисту від шкідників. Однак для людини вона смертельно отруйна.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Зелені плями - не єдина ознака підвищеного вмісту соланіну. Токсину також багато в сильно&nbsp;пророслій картоплі, тому її теж не можна їсти.</span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Чи можна їсти зелену картоплю</span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Лікарі однозначно сходяться в тому, що&nbsp;зелену картоплю їсти не можна. Вміст соланіну в зелених ділянках небезпечний для здоров&#39;я.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Немає однозначної думки про те,&nbsp;чи можна обрізати зелену картоплю&nbsp;і з&#39;їсти білу м&#39;якоть. Існують різні дані про те, чи небезпечні тільки зелені ділянки або вся бульба цілком. Якщо турбуєтеся про своє здоров&#39;я, то краще від вживання відмовитися. І однозначно не варто давати таку картоплю дітям.</span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Що буде якщо з&#39;їсти зелену картоплю</span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">При вживанні зелених плям картоплі є ризик отруєння.&nbsp;Симптоми отруєння соланіном&nbsp;такі:</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">головний біль;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">нудота;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">спазми в області шлунка;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">блювота;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">утруднене дихання;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">розширення зіниць;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">прискорений пульс;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">відчуття холоду в кінцівках;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">у найважчих випадках - судоми,&nbsp;непритомність і летальний кінець.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Для серйозного отруєння потрібно з&#39;їсти близько 2 кілограмів зелених плодів за раз, що досить багато. Однак токсин виводиться з організму тільки через добу, тому отруїтися можна і на наступний день.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Отруєння соланіном трапляються дуже рідко, але все ж краще не ризикувати. Особливо небезпечний токсин для дітей, адже вони можуть отруїтися меншою дозою, ніж дорослі.</span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Чи можна посадити зелену картоплю</span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Хороша новина для дачників -&nbsp;садити зелену картоплю можна! Соланін в бульбах не перейде в майбутній урожай. Крім того, перевірено, що бульби з зеленими плямами краще зберігаються до весни. Тому викидати їх не обов&#39;язково - відкладіть для посадки в наступному році.</span></p>','2023-06-10 12:47:26.250201',5,0),(6,'Вчені знайшли підземні гори, які у 4,5 раза вищі за Еверест','Imgs/06.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Вчені впевнені, що у надрах планети заховані вершини, які&nbsp;4,5 раза вищі за Еверест.&nbsp;Наразі ця гора, висотою&nbsp;8,8 км, вважається найвищою на Землі.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Як пише Futurism,&nbsp;таємничі гігантські гірські хребти називаються&nbsp;зонами наднизьких швидкостей. За даними дослідників,&nbsp;вони заховані на межі ядра та мантії Землі на глибині близько 3000 км.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Геологиня з Алабамського університету Саманта Хансен розповіла про своє дослідження з колегами. Вони виявили, що ці заховані під землею хребти розташовані буквально всюди, однак їхнє походження наразі не зрозуміле. За однією з теорій, це залишки древніх океанічних кірок, які були втиснути глибоко в надра планети. Інша теорія стверджує, що це перегріті ядром частини мантії.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Вчені виявили приховані&nbsp;гірські хребти за допомогою сейсмологічних станцій в Антарктиді. Найвищі з них часом досягають приголомшливих 38 кілометрів. Вони повністю приховані від очей людей.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Водночас зазначається, що&nbsp;поряд із внутрішніми горами також розташовані й інші таємничі структури глибокої Землі - провінції з низькою швидкістю зсуву або &quot;краплі&quot;, як їх ще називають вчені. На думку науковців, нові об&#39;єкти можуть дати цінні підказки, щодо зміщення та зіткнення тектонічних плит, коли вони рухаються із земної кори у глибші шари мантії.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">За словами Гансен, ці гігантські містичні внутрішні піки, ймовірно існують по всій планеті, що суперечить ідеї, що вони були дном древнього океану. Нове дослідження доводить, що ці таємничі структури набагато складніші, ніж вважалося раніше, але потрібно більше досліджень.</span></p>','2023-06-10 12:52:20.617892',4,1),(7,'Українців \"атакують\" мошки: які натуральні засоби врятують','Imgs/07.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">У північних та західних областях України мешканців &quot;атакують&quot; мошки, науковці радять захищатися від комах&nbsp;не репелентами.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Мошки звикають до репелентів, тому з ними краще боротися такими натуральними засобами як пижмо, полинь, гвоздична олія та ванілін, розповів завідувач кафедри екології та охорони природи Національного університету &quot;Чернігівський колегіум&quot; імені Тараса Шевченка Юрій Карпенко, повідомляє ТСН.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">За його словами, однією з причин великої кількості мошок є те, що не всі переліткі птахи, які ними харчуються, прилетіли. &quot;Багато птахів, особливо оці перелітні, на шляхах міграційних, у нас тут Дніпровський міграційний шлях, і по Десні мігрують, а це все прикордоння, коли воно бомбить, горить все, це все фактор неспокою і це фактор такий лімітуючий&quot;, - зазначив експерт.</span></p>','2023-06-10 12:54:36.810862',5,1),(8,'Як почистити роз\'єм зарядки смартфона вручну: процедура займає не більше хвилини','Imgs/08.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Досить часто користувачі забувають про необхідність очищення порту зарядки в своїх смартфонах, через що пристрій може заряджатися повільніше, або й зовсім перестати заряджатися.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">У процесі використання смартфона, чи то&nbsp; iPhone&nbsp;чи то Android-девайс, його роз&#39;єм для підключення кабелю зарядки або навушників неминуче забивається пилом і брудом або окислюється.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Як визначити, коли пора очистити роз&#39;єм? Ось кілька ознак, на які варто звернути увагу:</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">Нестійке підключення:&nbsp;якщо ви помічаєте, що кабель зарядки не замикається міцно або з легкістю від&#39;єднується навіть при невеликому русі, це може бути ознакою забруднення роз&#39;єму.</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">Проблеми із зарядкою:&nbsp;телефон або перестає повністю заряджатися, або процес повного відновлення заряду вимагає більше часу, ніж раніше.</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#ecf0f1\">Шуми або перебої в звуці:&nbsp;при використанні навушників відтворення музики стає нестабільним або присутні нетипові шуми.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Якщо ви помітили хоча б один з цих ознак, то, ймовірно, пора очистити роз&#39;єм. Особливо, якщо ви ніколи до цього не виконували цю процедуру.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Важливо наголосити, що порт зарядки може забруднюватися сам по собі. Для цього зовсім не обов&#39;язково упускати телефон в пісок або недбало до нього ставиться. Навіть якщо ви носите свій гаджет в чохлі, дрібні порошинки, ворс і бруд з часом накопичуються всередині всіх отворів і роз&#39;ємів.&nbsp;В результаті чого кабель може не повністю вставлятися в порт, що призводить до порушення контакту і неможливості зарядки телефону.</span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Чистимо роз&#39;єм для зарядки своїми руками</span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Зауважимо, що для того, щоб очистити порт від пилу, не потрібні спеціальні інструменти. Досить звичайної голки або тонкого металевого пінцета. Тут головне &ndash;&nbsp;не поспішати і бути дуже акуратним. Різкий рух може пошкодити контакти порту, і тоді телефон перестане заряджатися.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Процедуру очищення слід проводити повільними й обережними рухами, спрямованими на виштовхування сміття з роз&#39;єму. Чого точно не потрібно робити, так це тиснути пінцетом або голкою всередину роз&#39;єму, тим самим ще більше утрамбовуючи пил і сміття.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Якщо у вас вдома є тільки зубочистка, рекомендується перед виконанням процедури намотати невелику кількість бавовни (бавовняної пряжі) на кінчик зубочистки.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\"><img alt=\"\" src=\"https://images.unian.net/photos/2023_06/1686238518-8392.png?r=323629\" title=\"Скріншот\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Мінімізувати можливі пошкодження можна, купивши балончик зі стисненим повітрям, який часто використовується для чищення комп&#39;ютерних компонентів. Досить направити струмінь стисненого повітря в гніздо зарядки і виконати декілька коротких і сильних потоків, щоб видалити пил. Всі забруднення під тиском вилетять назовні.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Загалом, очищати роз&#39;єм краще регулярно, але акуратно. Як можна переконатися, це не складний процес, який вимагає декількох хвилин вашого часу, проте допоможе зберегти працездатність вашого пристрою.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Якщо після очищення роз&#39;єму ваш пристрій не став краще заряджатися, тоді все ж варто звернутися в сервісний центр, де його протестують фахівці.</span></p>','2023-06-10 12:58:50.272814',9,3),(9,'Каталася на велосипеді: на Рівненщині трагічно загинула 5-річна дівчинка','Imgs/09.jpg','<p style=\"text-align:justify\"><span style=\"background-color:#ecf0f1\">У селі Річки Рівненської області трагічно загинула дитина.&nbsp;П&rsquo;ятирічна дівчинка пішла кататися на велосипеді та потонула у штучній водоймі.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"background-color:#ecf0f1\">Як розповіли&nbsp;у прес-службі поліції Рівненської області, повідомлення про трагедію правоохоронці отримали від медиків, що констатували смерть дівчинки. Попри вжиті реанімаційні заходи, її життя врятувати не вдалося.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"background-color:#ecf0f1\">&quot;Слідчо-оперативна група відділення №7 (м.Корець) на місці події з&rsquo;ясувала, що близько 13:40 п&rsquo;ятирічна донька сказала 24-річній мамі, що їде кататися на велосипеді на дитмайданчик неподалік освітнього закладу, а вже за 20 хвилин її там ніхто не бачив. Батьки та односельці кинулися шукати дитину. Її виявила місцева жителька у штучній водоймі приватного господарства. Попередньо, дівчинка не впоралась із керуванням і впала у воду&quot;, &ndash; йдеться у повідомленні.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"background-color:#ecf0f1\">Слідчі внесли відомості до ЄРДР за п. 2 ч. 2 ст. 115 ККУ з відміткою нещасний випадок. Поліцейські зʼясовують усі обставини події. Зазначається, що сім&rsquo;я загиблої дитини характеризується позитивно та на соцобліках не перебуває.</span></p>','2023-06-10 13:04:27.114985',6,1),(10,'Проігнорували табличку з попередженням: на Рівненщині у полі підірвався трактор','Imgs/10.jpg','<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">На Рівненщині у полі трактор підірвався на міні. В результаті цього одна людина загинула, а ще одна - поранена.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">&quot;Сьогодні на півночі області в прикордонній смузі на міні підірвався трактор. Ситуація сталася в полі на території Дубровицької територіальної громади. На жаль &ndash; один чоловік загинув, інший - травмований. Проігнорувавши табличку маркувального знаку та огородження про замінування території, трактор заїхав на поле&quot;, - повідомив</span><a href=\"https://t.me/vitalykoval8/11384\" rel=\"nofollow noopener\" target=\"_blank\"><span style=\"color:#ecf0f1\">&nbsp;</span></a><span style=\"color:#ecf0f1\">начальник Рівненської обласної військової адміністрації Віталій Коваль.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\">Коваль зазначив, що зараз на місці події працюють всі відповідні служби.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#ecf0f1\"><img alt=\"Внаслідок інциденту загинула одна людина / фото t.me/vitalykoval8\" src=\"https://images.unian.net/photos/2023_05/1683725652-6006.jpg?r=67797\" style=\"height:580px; width:774px\" title=\"Внаслідок інциденту загинула одна людина / фото t.me/vitalykoval8\" /></span></p>','2023-06-10 13:06:40.431243',6,2);
/*!40000 ALTER TABLE `main_news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11 21:33:09
