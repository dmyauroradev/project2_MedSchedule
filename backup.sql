-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: dj_pro1
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Token',7,'add_token'),(26,'Can change Token',7,'change_token'),(27,'Can delete Token',7,'delete_token'),(28,'Can view Token',7,'view_token'),(29,'Can add Token',8,'add_tokenproxy'),(30,'Can change Token',8,'change_tokenproxy'),(31,'Can delete Token',8,'delete_tokenproxy'),(32,'Can view Token',8,'view_tokenproxy'),(33,'Can add user',9,'add_medicalstaff'),(34,'Can change user',9,'change_medicalstaff'),(35,'Can delete user',9,'delete_medicalstaff'),(36,'Can view user',9,'view_medicalstaff'),(37,'Can add department',10,'add_department'),(38,'Can change department',10,'change_department'),(39,'Can delete department',10,'delete_department'),(40,'Can view department',10,'view_department'),(41,'Can add shift',11,'add_shift'),(42,'Can change shift',11,'change_shift'),(43,'Can delete shift',11,'delete_shift'),(44,'Can view shift',11,'view_shift'),(45,'Can add work schedule',12,'add_workschedule'),(46,'Can change work schedule',12,'change_workschedule'),(47,'Can delete work schedule',12,'delete_workschedule'),(48,'Can view work schedule',12,'view_workschedule'),(49,'Can add shift',13,'add_shift'),(50,'Can change shift',13,'change_shift'),(51,'Can delete shift',13,'delete_shift'),(52,'Can view shift',13,'view_shift');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$kiS5m2bPDXtv1lJxBrp97G$biNVchJ0DCvOwO8lHv4pAPw2NyJfo0S+FelfJKIjcG4=','2025-02-22 17:19:26.173308',1,'myran','','','myran@gmail.com',1,1,'2025-02-18 07:59:56.193009'),(2,'pbkdf2_sha256$870000$501WZVjnPqcW7e2AynXj1t$u9T06TM9IiqVO+tlrsQSWGxxhH67pZBDh0t+0d2QF+A=','2025-02-22 18:22:37.741196',0,'Butter','','','butter@gmail.com',0,1,'2025-02-18 10:03:22.376615'),(3,'pbkdf2_sha256$870000$qajxDMn7chJbGJTgnhCDVT$Way/+tvKE9wUuj7C0XBPWRE5eFhgsjY30WfWTXrk68Q=',NULL,0,'Cat','','','',0,1,'2025-02-22 18:37:44.175734');
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
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('ffe85af422ed8c7f5d334e545e71e09ebe91a009','2025-02-18 10:25:27.810498',2);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-02-19 16:56:32.456756','1','Khoa Ngoß║íi',1,'[{\"added\": {}}]',10,1),(2,'2025-02-19 16:56:59.107945','2','Khoa Nß╗Öi',1,'[{\"added\": {}}]',10,1),(3,'2025-02-19 16:58:53.546301','3','Khoa R─âng - H├ám - Mß║╖t',1,'[{\"added\": {}}]',10,1),(4,'2025-02-19 16:59:17.731279','2','Khoa Nß╗Öi soi',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(5,'2025-02-19 16:59:48.679383','1','Khoa Ngoß║íi tß╗òng hß╗úp',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(6,'2025-02-19 17:04:27.194661','1','Huynhthong - doctor',1,'[{\"added\": {}}]',9,1),(7,'2025-02-19 17:06:17.329626','2','Thanhthao - nurse',1,'[{\"added\": {}}]',9,1),(8,'2025-02-19 17:08:11.630954','1','Khoa Ngoß║íi tß╗òng hß╗úp - 2025-02-21 (Ca s├íng)',1,'[{\"added\": {}}]',11,1),(9,'2025-02-19 17:08:34.802422','2','Khoa R─âng - H├ám - Mß║╖t - 2025-02-21 (Ca s├íng)',1,'[{\"added\": {}}]',11,1),(10,'2025-02-19 17:08:49.169567','3','Khoa Nß╗Öi soi - 2025-02-21 (Ca s├íng)',1,'[{\"added\": {}}]',11,1),(11,'2025-02-19 17:09:33.947144','4','Khoa Ngoß║íi tß╗òng hß╗úp - 2025-02-21 (Ca chiß╗üu)',1,'[{\"added\": {}}]',11,1),(12,'2025-02-19 17:09:46.013945','5','Khoa R─âng - H├ám - Mß║╖t - 2025-02-21 (Ca chiß╗üu)',1,'[{\"added\": {}}]',11,1),(13,'2025-02-19 17:09:56.056164','6','Khoa Nß╗Öi soi - 2025-02-21 (Ca chiß╗üu)',1,'[{\"added\": {}}]',11,1),(14,'2025-02-19 17:10:36.655582','1','Huynhthong - doctor -> Khoa Ngoß║íi tß╗òng hß╗úp - 2025-02-21 (Ca s├íng)',1,'[{\"added\": {}}]',12,1),(15,'2025-02-20 16:20:33.717545','2','Khoa Nß╗Öi',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(16,'2025-02-20 16:21:04.743713','4','Khoa Cß║Ñp cß╗⌐u',1,'[{\"added\": {}}]',10,1),(17,'2025-02-20 16:21:17.570561','5','Khoa ICU',1,'[{\"added\": {}}]',10,1),(18,'2025-02-20 16:23:44.371024','2','Khoa Nß╗Öi (Tim mß║ích, Ti├¬u h├│a, Nß╗Öi tß╗òng qu├ít, v.v.)',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(19,'2025-02-20 16:24:35.707917','1','Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v)',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(20,'2025-02-20 16:24:54.271029','6','Khoa sß║ún',1,'[{\"added\": {}}]',10,1),(21,'2025-02-20 16:27:05.678139','3','Thanhlam - nurse',1,'[{\"added\": {}}]',9,1),(22,'2025-02-20 16:28:35.237720','4','Quocthien - doctor',1,'[{\"added\": {}}]',9,1),(23,'2025-02-20 16:29:07.389024','5','Duyngai - doctor',1,'[{\"added\": {}}]',9,1),(24,'2025-02-20 16:29:44.692806','6','Tantai - doctor',1,'[{\"added\": {}}]',9,1),(25,'2025-02-20 16:30:32.209397','7','Anhduong - nurse',1,'[{\"added\": {}}]',9,1),(26,'2025-02-20 16:31:03.707251','8','Tuongduy - nurse',1,'[{\"added\": {}}]',9,1),(27,'2025-02-20 16:31:54.104331','9','Congdang - doctor',1,'[{\"added\": {}}]',9,1),(28,'2025-02-20 16:32:50.910611','10','Hieunghia - doctor',1,'[{\"added\": {}}]',9,1),(29,'2025-02-20 16:33:28.958838','11','Myngoc - nurse',1,'[{\"added\": {}}]',9,1),(30,'2025-02-20 16:34:13.690493','12','Truclinh - orderly',1,'[{\"added\": {}}]',9,1),(31,'2025-02-20 16:34:55.083872','13','Hongtham - orderly',1,'[{\"added\": {}}]',9,1),(32,'2025-02-20 16:35:38.858878','14','Thanhtruc - orderly',1,'[{\"added\": {}}]',9,1),(33,'2025-02-20 16:36:25.199786','15','Yenlinh - nurse',1,'[{\"added\": {}}]',9,1),(34,'2025-02-20 17:10:00.047328','1','Huynhthong - doctor - Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v) -> Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v) - 2025-02-21 (Ca s├íng)',3,'',12,1),(35,'2025-02-20 17:10:34.997103','16','Halinh - doctor - Khoa sß║ún',1,'[{\"added\": {}}]',9,1),(36,'2025-02-20 17:11:20.984590','17','Honghanh - doctor - Khoa Cß║Ñp cß╗⌐u',1,'[{\"added\": {}}]',9,1),(37,'2025-02-20 17:12:18.091849','18','Thuquyen - nurse - Khoa Cß║Ñp cß╗⌐u',1,'[{\"added\": {}}]',9,1),(38,'2025-02-22 14:37:33.285550','1','2025-02-22: Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v) - night (Huynhthong)',2,'[{\"changed\": {\"fields\": [\"Staff\"]}}]',12,1),(39,'2025-02-22 14:39:33.910676','2','2025-02-22: Khoa Nß╗Öi (Tim mß║ích, Ti├¬u h├│a, Nß╗Öi tß╗òng qu├ít, v.v.) - night (Honghanh)',2,'[{\"changed\": {\"fields\": [\"Staff\"]}}]',12,1),(40,'2025-02-22 14:56:04.585357','3','2025-02-22: Khoa R─âng - H├ám - Mß║╖t - night (Duyngai)',2,'[{\"changed\": {\"fields\": [\"Staff\"]}}]',12,1),(41,'2025-02-22 14:56:36.141202','4','2025-02-22: Khoa Cß║Ñp cß╗⌐u - night (Honghanh)',2,'[{\"changed\": {\"fields\": [\"Staff\"]}}]',12,1),(42,'2025-02-22 14:58:34.071143','18','Thuquyen - doctor - Khoa Cß║Ñp cß╗⌐u',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(43,'2025-02-22 14:59:09.746588','15','Yenlinh - doctor - Khoa Cß║Ñp cß╗⌐u',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(44,'2025-02-22 14:59:22.606888','3','Thanhlam - doctor - Khoa Cß║Ñp cß╗⌐u',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(45,'2025-02-22 14:59:33.887973','13','Hongtham - doctor - Khoa Cß║Ñp cß╗⌐u',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(46,'2025-02-22 14:59:50.750885','8','Tuongduy - doctor - Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v)',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(47,'2025-02-22 15:00:02.405282','7','Anhduong - doctor - Khoa R─âng - H├ám - Mß║╖t',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(48,'2025-02-22 15:00:18.848816','12','Truclinh - doctor - Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v)',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(49,'2025-02-22 15:00:30.650360','2','Thanhthao - doctor - Khoa R─âng - H├ám - Mß║╖t',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(50,'2025-02-22 15:00:56.092792','14','Thanhtruc - doctor - Khoa R─âng - H├ám - Mß║╖t',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(51,'2025-02-22 15:01:04.493390','11','Myngoc - doctor - Khoa sß║ún',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',9,1),(52,'2025-02-22 15:02:22.544246','19','Diemtrinh - doctor - Khoa Nß╗Öi (Tim mß║ích, Ti├¬u h├│a, Nß╗Öi tß╗òng qu├ít, v.v.)',1,'[{\"added\": {}}]',9,1),(53,'2025-02-22 15:02:46.942841','20','Kimthoa - doctor - Khoa Nß╗Öi (Tim mß║ích, Ti├¬u h├│a, Nß╗Öi tß╗òng qu├ít, v.v.)',1,'[{\"added\": {}}]',9,1),(54,'2025-02-22 15:03:13.841955','21','Trunghieu - doctor - Khoa ICU',1,'[{\"added\": {}}]',9,1),(55,'2025-02-22 15:04:20.623275','22','Phuongoanh - doctor - Khoa sß║ún',1,'[{\"added\": {}}]',9,1),(56,'2025-02-22 15:04:49.296236','23','Quocthao - doctor - Khoa Nß╗Öi (Tim mß║ích, Ti├¬u h├│a, Nß╗Öi tß╗òng qu├ít, v.v.)',1,'[{\"added\": {}}]',9,1),(57,'2025-02-22 16:27:21.620886','25','Quochuy - doctor - Khoa ICU',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',9,1),(58,'2025-02-22 16:28:29.921495','24','Lehuyen - doctor - Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v)',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',9,1),(59,'2025-02-22 18:03:24.372786','27','Butter - doctor - Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v)',1,'[{\"added\": {}}]',9,1),(60,'2025-02-22 18:37:45.087569','3','Cat',1,'[{\"added\": {}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'authtoken','token'),(8,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(10,'nucleus','department'),(9,'nucleus','medicalstaff'),(13,'schedule','shift'),(12,'schedule','workschedule'),(6,'sessions','session'),(11,'shift','shift');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-02-18 07:49:36.176420'),(2,'auth','0001_initial','2025-02-18 07:49:36.760391'),(3,'admin','0001_initial','2025-02-18 07:49:36.927975'),(4,'admin','0002_logentry_remove_auto_add','2025-02-18 07:49:36.935508'),(5,'admin','0003_logentry_add_action_flag_choices','2025-02-18 07:49:36.944270'),(6,'contenttypes','0002_remove_content_type_name','2025-02-18 07:49:37.029264'),(7,'auth','0002_alter_permission_name_max_length','2025-02-18 07:49:37.101486'),(8,'auth','0003_alter_user_email_max_length','2025-02-18 07:49:37.128762'),(9,'auth','0004_alter_user_username_opts','2025-02-18 07:49:37.138085'),(10,'auth','0005_alter_user_last_login_null','2025-02-18 07:49:37.205915'),(11,'auth','0006_require_contenttypes_0002','2025-02-18 07:49:37.208805'),(12,'auth','0007_alter_validators_add_error_messages','2025-02-18 07:49:37.217826'),(13,'auth','0008_alter_user_username_max_length','2025-02-18 07:49:37.285414'),(14,'auth','0009_alter_user_last_name_max_length','2025-02-18 07:49:37.353461'),(15,'auth','0010_alter_group_name_max_length','2025-02-18 07:49:37.372583'),(16,'auth','0011_update_proxy_permissions','2025-02-18 07:49:37.381409'),(17,'auth','0012_alter_user_first_name_max_length','2025-02-18 07:49:37.451463'),(18,'sessions','0001_initial','2025-02-18 07:49:37.487836'),(19,'authtoken','0001_initial','2025-02-18 08:46:34.979751'),(20,'authtoken','0002_auto_20160226_1747','2025-02-18 08:46:35.009428'),(21,'authtoken','0003_tokenproxy','2025-02-18 08:46:35.014783'),(22,'authtoken','0004_alter_tokenproxy_options','2025-02-18 08:46:35.020350'),(23,'nucleus','0001_initial','2025-02-19 16:40:50.006353'),(24,'shift','0001_initial','2025-02-19 16:40:50.091084'),(26,'shift','0002_shift_staff','2025-02-20 16:19:38.306020'),(27,'shift','0003_alter_shift_date_alter_shift_department','2025-02-20 18:27:46.043788'),(28,'shift','0004_remove_shift_staff_alter_shift_date_and_more','2025-02-20 18:48:20.295299'),(29,'shift','0005_shift_staff','2025-02-20 18:49:10.284736'),(38,'schedule','0001_initial','2025-02-22 12:19:00.006532'),(39,'schedule','0002_alter_shift_department','2025-02-22 12:42:11.695785'),(40,'nucleus','0002_alter_medicalstaff_department','2025-02-22 15:23:40.933269');
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
INSERT INTO `django_session` VALUES ('63cfxtyhmz5ygzyunxzv8i5jhijgk5my','.eJxVjEEOwiAQRe_C2pCOFAou3fcMZJgZpGpKUtqV8e7apAvd_vfef6mI21ri1mSJE6uLAnX63RLSQ-Yd8B3nW9VU53WZkt4VfdCmx8ryvB7u30HBVr61iEUiYtsn9uwSZsnngSAMwQj3DqQnZxxkD9L5bMEndsZ2ASF476x6fwAdUDhL:1tlt9y:8AxE2CKmhd8gkDQFZj6Q395v8X2OXFac48wfl7x0--g','2025-03-08 17:19:26.178242');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nucleus_department`
--

DROP TABLE IF EXISTS `nucleus_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nucleus_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nucleus_department`
--

LOCK TABLES `nucleus_department` WRITE;
/*!40000 ALTER TABLE `nucleus_department` DISABLE KEYS */;
INSERT INTO `nucleus_department` VALUES (1,'Khoa Ngoß║íi  (Ngoß║íi tß╗òng qu├ít, Chß║Ñn th╞░╞íng chß╗ënh h├¼nh, Thß║ºn kinh, v.v)',''),(2,'Khoa Nß╗Öi (Tim mß║ích, Ti├¬u h├│a, Nß╗Öi tß╗òng qu├ít, v.v.)',''),(3,'Khoa R─âng - H├ám - Mß║╖t',''),(4,'Khoa Cß║Ñp cß╗⌐u',''),(5,'Khoa ICU',''),(6,'Khoa sß║ún','');
/*!40000 ALTER TABLE `nucleus_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nucleus_medicalstaff`
--

DROP TABLE IF EXISTS `nucleus_medicalstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nucleus_medicalstaff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `role` varchar(10) NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `nucleus_medicalstaff_department_id_fe629b09_fk_nucleus_d` (`department_id`),
  CONSTRAINT `nucleus_medicalstaff_department_id_fe629b09_fk_nucleus_d` FOREIGN KEY (`department_id`) REFERENCES `nucleus_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nucleus_medicalstaff`
--

LOCK TABLES `nucleus_medicalstaff` WRITE;
/*!40000 ALTER TABLE `nucleus_medicalstaff` DISABLE KEYS */;
INSERT INTO `nucleus_medicalstaff` VALUES (1,'pbkdf2_sha256$870000$86xFRicmVhXum9Mo2cZeMy$7rOV3BqLvK1jUAZdgwgXWSJlv+p5CU2r/RrjL/Eru5U=',NULL,0,'Huynhthong','Huß╗│nh Th├┤ng','Nguyß╗àn','thong@gmail.com',0,1,'2025-02-19 17:00:57.000000','doctor',1),(2,'pbkdf2_sha256$870000$7knuUCXw9QsoTWcpWsRkVy$caeJczHTbVrh9xxokbgkexI+8aaxqkWxpIXbBYecEOg=',NULL,0,'Thanhthao','Thanh Thß║úo','D╞░╞íng','thao@gmail.com',0,1,'2025-02-19 17:04:54.000000','doctor',3),(3,'pbkdf2_sha256$870000$zsPLG45d6rsBF6IQHAb8zZ$5HAmU5vNILhKYwXumJMBN3Jit3v51nvu5AQFAUvk5GY=',NULL,0,'Thanhlam','Thanh Lam','Nguyß╗àn','lam@gmail.com',0,1,'2025-02-20 16:25:35.000000','doctor',4),(4,'pbkdf2_sha256$870000$h9Nbt5sVNSllqCP41oLWQU$E41I+OucbPjYejHE/3V4CefOOp3NbdlEWYURdieO6X4=',NULL,0,'Quocthien','Quß╗æc Thi├¬n','Trß║ºn','thien@gmail.com',0,1,'2025-02-20 16:27:05.000000','doctor',5),(5,'pbkdf2_sha256$870000$aIL5xvMFnmEQ4VgcSbWxrS$5rkNwRmvGI8Hg6oAbGjhc2QjMZsBFcsW1vACZgtKawU=',NULL,0,'Duyngai','','','',0,1,'2025-02-20 16:28:35.000000','doctor',3),(6,'pbkdf2_sha256$870000$F7uJExLDp2wrAXq8dJtEGf$U8duvh/SmrwpAKHlskH0RH8QpVRzEDTfnIJ0XIcWzfg=',NULL,0,'Tantai','','','',0,1,'2025-02-20 16:29:07.000000','doctor',1),(7,'pbkdf2_sha256$870000$CX6xIiCxbRYiXSWOAlqIRS$rrDniEC7UuJlSSGIkkOfJUCcfzwz+ohheik8mpQQRys=',NULL,0,'Anhduong','','','',0,1,'2025-02-20 16:29:44.000000','doctor',3),(8,'pbkdf2_sha256$870000$luli54DC4SgfEperrRXD5n$UIvzF2peI7D2NGn/LasM+1TfC1l36Fsx70mJUBT9OJU=',NULL,0,'Tuongduy','','','',0,1,'2025-02-20 16:30:32.000000','doctor',1),(9,'pbkdf2_sha256$870000$dbD0UYGnSav8urcsTwn7HD$2/tf7tgJj21GIXCGFOGfBlDYJ4H9RpBKkDGcwReQpxg=',NULL,0,'Congdang','','','',0,1,'2025-02-20 16:31:03.000000','doctor',5),(10,'pbkdf2_sha256$870000$tT0lHTP6qxTUPuPhZa52bn$QxuHS4l6v+mmB0hG98d1BGd2XO9fQC8xWt09PdeqY/M=',NULL,0,'Hieunghia','','','',0,1,'2025-02-20 16:31:54.000000','doctor',6),(11,'pbkdf2_sha256$870000$BRPsj00CcrXR1nWf3YXLt7$tp16zgbhWmBrQZZSrvCwXAMzawutxM8KnTvSs+tX0GY=',NULL,0,'Myngoc','','','',0,1,'2025-02-20 16:32:50.000000','doctor',6),(12,'pbkdf2_sha256$870000$n2jVNX29mdQB7mFOx22SR1$zOxFA5XEq/MDmJLB4+LV0zd2JAjkfV3eI3rLIsFdm/Q=',NULL,0,'Truclinh','','','',0,1,'2025-02-20 16:33:29.000000','doctor',1),(13,'pbkdf2_sha256$870000$Gc51F8lINrcpZJaGCY9uh5$Q2L+EDX+qqpHNohBjUA+b/GY7hD7MVZiY407VcolF2Y=',NULL,0,'Hongtham','','','',0,1,'2025-02-20 16:34:13.000000','doctor',4),(14,'pbkdf2_sha256$870000$Sq6yL8bvCu1QicpBNUgqQP$Vjaazswu77QkGRezZodb8dgUK+9hL+zcqsXLUZ5vCt0=',NULL,0,'Thanhtruc','','','',0,1,'2025-02-20 16:34:55.000000','doctor',3),(15,'pbkdf2_sha256$870000$YQnuyV6leJlOQO9iGdBcfI$TkIFrqzGktM/BuxwN35WoR2yCUASdLzzx+UMLLRchHY=',NULL,0,'Yenlinh','','','',0,1,'2025-02-20 16:35:38.000000','doctor',4),(16,'pbkdf2_sha256$870000$N5lyJOfk9zL55JeuacQlZM$lqWnMmyiqHnFFRgg3tTAj8evuiy2/WGYGpGghGZOdjA=',NULL,0,'Halinh','','','',0,1,'2025-02-20 17:10:06.000000','doctor',6),(17,'pbkdf2_sha256$870000$imMhyr7hU7UiBvZplcTkg8$xbphRQzWOJ3gPGXYAtlo1JyShe5eQwEK5qkor5Hkk5I=',NULL,0,'Honghanh','','','',0,1,'2025-02-20 17:10:35.000000','doctor',4),(18,'pbkdf2_sha256$870000$I1qcMlZn8iYKzmDeHrNtuO$bCM/A/948adke5Poy/5kNLTneb5LNLJYnmy7EBD5YhM=',NULL,0,'Thuquyen','','','',0,1,'2025-02-20 17:11:21.000000','doctor',4),(19,'pbkdf2_sha256$870000$Xxx2cA1l5Sh8RcT2yVB2A4$2n/5K50ZAMrbRcOV+pKp9JObOhOlbplO4tUj6xDrxZo=',NULL,0,'Diemtrinh','','','',0,1,'2025-02-22 15:01:38.000000','doctor',2),(20,'pbkdf2_sha256$870000$hflMItLGrcvP2IlH3Udsni$s3zLkm0uqeq2KnRSWmhEdmYyIkpP1cdFxpPydsruVFg=',NULL,0,'Kimthoa','','','',0,1,'2025-02-22 15:02:22.000000','doctor',2),(21,'pbkdf2_sha256$870000$dekPtEQvJX9Sc6kb8coCEr$8sdh26MR4RGPTb0hoF3weQc9GDZdVhNyVpA4uDCU+Fw=',NULL,0,'Trunghieu','','','',0,1,'2025-02-22 15:02:47.000000','doctor',5),(22,'pbkdf2_sha256$870000$MqLGoS5Lo0VgbEZSLSy0SS$fnC6WJHoGOGT9TOHRvvIJwOwzfu2At7RB0KTLTsl32A=',NULL,0,'Phuongoanh','','','',0,1,'2025-02-22 15:03:13.000000','doctor',6),(23,'pbkdf2_sha256$870000$WrnrLO8QV22J2hYAm72doG$NvayWfHr81oVz9m4L0zgP6xk8wpLAAr9GZkKaJOZkhs=',NULL,0,'Quocthao','','','',0,1,'2025-02-22 15:04:20.000000','doctor',2),(24,'pbkdf2_sha256$870000$g4fIS7HUJcrNsJgFgXqqfq$AeVNeWcD4/1lRTL5iDOZB/wZT/zzpuvgeO5tBksbA9c=',NULL,0,'Lehuyen','','','',0,1,'2025-02-22 16:21:43.000000','doctor',1),(25,'pbkdf2_sha256$870000$yrDYMgCTNe1c3uuuVkf99g$8G9pEo0qEhD6+YxyuNZgP8qkZLGeUjiJkcHHYKKkK7c=',NULL,0,'Quochuy','','','',0,1,'2025-02-22 16:26:30.000000','doctor',5),(26,'pbkdf2_sha256$870000$oW7SNCFhZGTH3tjdYW6c06$UAd/9daNna0nsS+HlmwLyfveP0dGq5K0ksEiguC7Igc=',NULL,0,'Quanghung','','','',0,1,'2025-02-22 16:29:30.318385','doctor',5),(27,'pbkdf2_sha256$870000$zaR39Ya459nZUw7w9z2ux9$0BT4+QQL1eTVv0dpJtS4VqSpSIFMlgtLZJwE2y8VLlw=',NULL,0,'Butter','','','',0,1,'2025-02-22 18:02:29.000000','doctor',1),(28,'pbkdf2_sha256$870000$wn4w8tycy9JxYrNXSBm9p2$4Hi8jy/UmFYRHEMDeylosGAdBxCxXBeXCZlZUvaDSeY=',NULL,0,'Huynhanh','','','',0,1,'2025-02-22 18:28:58.960665','doctor',3),(29,'pbkdf2_sha256$870000$caQRDQ6OsaJ6F5QSbVk4IK$QbiAqyIuXeY06IsCFQ9+kt1ncS+DYSFvUFAKQzf8TLQ=',NULL,0,'Cat','','','',0,1,'2025-02-22 18:34:03.858868','doctor',6);
/*!40000 ALTER TABLE `nucleus_medicalstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nucleus_medicalstaff_groups`
--

DROP TABLE IF EXISTS `nucleus_medicalstaff_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nucleus_medicalstaff_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `medicalstaff_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nucleus_medicalstaff_gro_medicalstaff_id_group_id_1611edb1_uniq` (`medicalstaff_id`,`group_id`),
  KEY `nucleus_medicalstaff_groups_group_id_6ce1c68e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `nucleus_medicalstaff_groups_group_id_6ce1c68e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `nucleus_medicalstaff_medicalstaff_id_4a298d02_fk_nucleus_m` FOREIGN KEY (`medicalstaff_id`) REFERENCES `nucleus_medicalstaff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nucleus_medicalstaff_groups`
--

LOCK TABLES `nucleus_medicalstaff_groups` WRITE;
/*!40000 ALTER TABLE `nucleus_medicalstaff_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `nucleus_medicalstaff_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nucleus_medicalstaff_user_permissions`
--

DROP TABLE IF EXISTS `nucleus_medicalstaff_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nucleus_medicalstaff_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `medicalstaff_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nucleus_medicalstaff_use_medicalstaff_id_permissi_9057894f_uniq` (`medicalstaff_id`,`permission_id`),
  KEY `nucleus_medicalstaff_permission_id_cda7c5b3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `nucleus_medicalstaff_medicalstaff_id_374b32d6_fk_nucleus_m` FOREIGN KEY (`medicalstaff_id`) REFERENCES `nucleus_medicalstaff` (`id`),
  CONSTRAINT `nucleus_medicalstaff_permission_id_cda7c5b3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nucleus_medicalstaff_user_permissions`
--

LOCK TABLES `nucleus_medicalstaff_user_permissions` WRITE;
/*!40000 ALTER TABLE `nucleus_medicalstaff_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `nucleus_medicalstaff_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_shift`
--

DROP TABLE IF EXISTS `schedule_shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_shift` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shift_type` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `schedule_shift_shift_type_date_department_id_c653c3c7_uniq` (`shift_type`,`date`,`department_id`),
  KEY `schedule_shift_department_id_d8fac55a_fk_nucleus_department_id` (`department_id`),
  CONSTRAINT `schedule_shift_department_id_d8fac55a_fk_nucleus_department_id` FOREIGN KEY (`department_id`) REFERENCES `nucleus_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_shift`
--

LOCK TABLES `schedule_shift` WRITE;
/*!40000 ALTER TABLE `schedule_shift` DISABLE KEYS */;
INSERT INTO `schedule_shift` VALUES (1,'night','2025-02-22',1),(2,'night','2025-02-22',2),(3,'night','2025-02-22',3),(4,'night','2025-02-22',4),(5,'night','2025-02-22',5),(6,'night','2025-02-22',6),(7,'night','2025-02-23',1),(8,'night','2025-02-23',2),(9,'night','2025-02-23',3),(10,'night','2025-02-23',4),(11,'night','2025-02-23',5),(12,'night','2025-02-23',6),(13,'night','2025-02-24',1),(14,'night','2025-02-24',2),(15,'night','2025-02-24',3),(16,'night','2025-02-24',4),(17,'night','2025-02-24',5),(18,'night','2025-02-24',6),(19,'night','2025-02-25',1),(20,'night','2025-02-25',2),(21,'night','2025-02-25',3),(22,'night','2025-02-25',4),(23,'night','2025-02-25',5),(24,'night','2025-02-25',6),(25,'night','2025-02-26',1),(26,'night','2025-02-26',2),(27,'night','2025-02-26',3),(28,'night','2025-02-26',4),(29,'night','2025-02-26',5),(30,'night','2025-02-26',6),(31,'night','2025-02-27',1),(32,'night','2025-02-27',2),(33,'night','2025-02-27',3),(34,'night','2025-02-27',4),(35,'night','2025-02-27',5),(36,'night','2025-02-27',6),(37,'night','2025-02-28',1),(38,'night','2025-02-28',2),(39,'night','2025-02-28',3),(40,'night','2025-02-28',4),(41,'night','2025-02-28',5),(42,'night','2025-02-28',6);
/*!40000 ALTER TABLE `schedule_shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_shift_department`
--

DROP TABLE IF EXISTS `schedule_shift_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_shift_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shift_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_shift_department`
--

LOCK TABLES `schedule_shift_department` WRITE;
/*!40000 ALTER TABLE `schedule_shift_department` DISABLE KEYS */;
INSERT INTO `schedule_shift_department` VALUES (223,223,1),(224,224,2),(225,225,3),(226,226,4),(227,227,5),(228,228,6),(229,229,1),(230,230,2),(231,231,3),(232,232,4),(233,233,5),(234,234,6),(235,235,1),(236,236,2),(237,237,3),(238,238,4),(239,239,5),(240,240,6),(241,241,1),(242,242,2),(243,243,3),(244,244,4),(245,245,5),(246,246,6),(247,247,1),(248,248,2),(249,249,3),(250,250,4),(251,251,5),(252,252,6),(253,253,1),(254,254,2),(255,255,3),(256,256,4),(257,257,5),(258,258,6),(259,259,1),(260,260,2),(261,261,3),(262,262,4),(263,263,5),(264,264,6),(265,265,1),(266,266,2),(267,267,3),(268,268,4),(269,269,5),(270,270,6),(271,271,1),(272,272,2),(273,273,3),(274,274,4),(275,275,5),(276,276,6),(277,277,1),(278,278,2),(279,279,3),(280,280,4),(281,281,5),(282,282,6),(283,283,1),(284,284,2),(285,285,3),(286,286,4),(287,287,5),(288,288,6),(289,289,1),(290,290,2),(291,291,3),(292,292,4),(293,293,5),(294,294,6),(295,295,1),(296,296,2),(297,297,3),(298,298,4),(299,299,5),(300,300,6),(301,301,1),(302,302,2),(303,303,3),(304,304,4),(305,305,5),(306,306,6),(307,307,1),(308,308,2),(309,309,3),(310,310,4),(311,311,5),(312,312,6),(313,313,1),(314,314,2),(315,315,3),(316,316,4),(317,317,5),(318,318,6),(319,319,1),(320,320,2),(321,321,3),(322,322,4),(323,323,5),(324,324,6),(325,325,1),(326,326,2),(327,327,3),(328,328,4),(329,329,5),(330,330,6),(331,331,1),(332,332,2),(333,333,3),(334,334,4),(335,335,5),(336,336,6),(337,337,1),(338,338,2),(339,339,3),(340,340,4),(341,341,5),(342,342,6),(343,343,1),(344,344,2),(345,345,3),(346,346,4),(347,347,5),(348,348,6),(349,349,1),(350,350,2),(351,351,3),(352,352,4),(353,353,5),(354,354,6),(355,355,1),(356,356,2),(357,357,3),(358,358,4),(359,359,5),(360,360,6),(361,361,1),(362,362,2),(363,363,3),(364,364,4),(365,365,5),(366,366,6),(367,367,1),(368,368,2),(369,369,3),(370,370,4),(371,371,5),(372,372,6),(373,373,1),(374,374,2),(375,375,3),(376,376,4),(377,377,5),(378,378,6),(379,379,1),(380,380,2),(381,381,3),(382,382,4),(383,383,5),(384,384,6),(385,385,1),(386,386,2),(387,387,3),(388,388,4),(389,389,5),(390,390,6),(391,391,1),(392,392,2),(393,393,3),(394,394,4),(395,395,5),(396,396,6),(397,397,1),(398,398,2),(399,399,3),(400,400,4),(401,401,5),(402,402,6);
/*!40000 ALTER TABLE `schedule_shift_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_shift_staff`
--

DROP TABLE IF EXISTS `schedule_shift_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_shift_staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shift_id` bigint NOT NULL,
  `medicalstaff_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_shift_staff`
--

LOCK TABLES `schedule_shift_staff` WRITE;
/*!40000 ALTER TABLE `schedule_shift_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_shift_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_workschedule`
--

DROP TABLE IF EXISTS `schedule_workschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_workschedule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shift_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_workschedule_shift_id_0229a595_fk_schedule_shift_id` (`shift_id`),
  CONSTRAINT `schedule_workschedule_shift_id_0229a595_fk_schedule_shift_id` FOREIGN KEY (`shift_id`) REFERENCES `schedule_shift` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_workschedule`
--

LOCK TABLES `schedule_workschedule` WRITE;
/*!40000 ALTER TABLE `schedule_workschedule` DISABLE KEYS */;
INSERT INTO `schedule_workschedule` VALUES (43,1),(44,2),(45,3),(46,4),(47,5),(48,6),(49,7),(50,8),(51,9),(52,10),(53,11),(54,12),(55,13),(56,14),(57,15),(58,16),(59,17),(60,18),(61,19),(62,20),(63,21),(64,22),(65,23),(66,24),(67,25),(68,26),(69,27),(70,28),(71,29),(72,30),(73,31),(74,32),(75,33),(76,34),(77,35),(78,36),(79,37),(80,38),(81,39),(82,40),(83,41),(84,42);
/*!40000 ALTER TABLE `schedule_workschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_workschedule_staff`
--

DROP TABLE IF EXISTS `schedule_workschedule_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_workschedule_staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `workschedule_id` bigint NOT NULL,
  `medicalstaff_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `schedule_workschedule_st_workschedule_id_medicals_59e6e9b4_uniq` (`workschedule_id`,`medicalstaff_id`),
  KEY `schedule_workschedul_medicalstaff_id_fe4d9e58_fk_nucleus_m` (`medicalstaff_id`),
  CONSTRAINT `schedule_workschedul_medicalstaff_id_fe4d9e58_fk_nucleus_m` FOREIGN KEY (`medicalstaff_id`) REFERENCES `nucleus_medicalstaff` (`id`),
  CONSTRAINT `schedule_workschedul_workschedule_id_90f5ee7d_fk_schedule_` FOREIGN KEY (`workschedule_id`) REFERENCES `schedule_workschedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_workschedule_staff`
--

LOCK TABLES `schedule_workschedule_staff` WRITE;
/*!40000 ALTER TABLE `schedule_workschedule_staff` DISABLE KEYS */;
INSERT INTO `schedule_workschedule_staff` VALUES (115,43,1),(116,43,6),(114,43,8),(117,44,19),(118,44,20),(119,44,23),(120,45,2),(121,45,5),(122,45,7),(123,46,3),(124,46,13),(125,46,15),(126,46,17),(127,46,18),(129,47,4),(128,47,9),(130,47,21),(132,48,10),(133,48,11),(131,48,16),(134,49,1),(136,49,6),(135,49,12),(137,50,19),(138,50,20),(139,50,23),(140,51,2),(141,51,5),(142,51,14),(143,52,3),(144,52,13),(145,52,15),(146,52,17),(147,52,18),(149,53,4),(148,53,9),(150,53,21),(151,54,10),(152,54,11),(153,54,22),(155,55,1),(154,55,8),(156,55,12),(157,56,19),(158,56,20),(159,56,23),(160,57,2),(162,57,7),(161,57,14),(163,58,3),(164,58,13),(165,58,15),(166,58,17),(167,58,18),(169,59,4),(168,59,9),(170,59,21),(172,60,10),(171,60,16),(173,60,22),(176,61,6),(174,61,8),(175,61,12),(177,62,19),(178,62,20),(179,62,23),(180,63,5),(182,63,7),(181,63,14),(183,64,3),(184,64,13),(185,64,15),(186,64,17),(187,64,18),(189,65,4),(188,65,9),(190,65,21),(192,66,11),(191,66,16),(193,66,22),(195,67,1),(196,67,6),(194,67,8),(197,68,19),(198,68,20),(199,68,23),(200,69,2),(201,69,5),(202,69,7),(203,70,3),(204,70,13),(205,70,15),(206,70,17),(207,70,18),(209,71,4),(208,71,9),(210,71,21),(212,72,10),(213,72,11),(211,72,16),(214,73,1),(216,73,6),(215,73,12),(217,75,2),(218,75,5),(219,75,14),(220,78,10),(221,78,11),(222,78,22);
/*!40000 ALTER TABLE `schedule_workschedule_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_shift_department`
--

DROP TABLE IF EXISTS `shift_shift_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift_shift_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shift_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shift_shift_department_shift_id_department_id_48cb864b_uniq` (`shift_id`,`department_id`),
  KEY `shift_shift_departme_department_id_21b75162_fk_nucleus_d` (`department_id`),
  CONSTRAINT `shift_shift_departme_department_id_21b75162_fk_nucleus_d` FOREIGN KEY (`department_id`) REFERENCES `nucleus_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_shift_department`
--

LOCK TABLES `shift_shift_department` WRITE;
/*!40000 ALTER TABLE `shift_shift_department` DISABLE KEYS */;
INSERT INTO `shift_shift_department` VALUES (1,8,1),(2,8,2),(3,8,3),(4,8,4),(5,8,5),(6,8,6),(7,9,1),(8,9,2),(9,9,3),(10,9,4),(11,9,5),(12,9,6),(13,10,1),(14,10,2),(15,10,3),(16,10,4),(17,10,5),(18,10,6),(19,11,1),(20,11,2),(21,11,3),(22,11,4),(23,11,5),(24,11,6),(25,12,1),(26,12,2),(27,12,3),(28,12,4),(29,12,5),(30,12,6),(31,13,1),(32,13,2),(33,13,3),(34,13,4),(35,13,5),(36,13,6),(37,14,1),(38,14,2),(39,14,3),(40,14,4),(41,14,5),(42,14,6),(43,15,1),(44,15,2),(45,15,3),(46,15,4),(47,15,5),(48,15,6),(49,16,1),(50,16,2),(51,16,3),(52,16,4),(53,16,5),(54,16,6),(55,17,1),(56,17,2),(57,17,3),(58,17,4),(59,17,5),(60,17,6),(61,18,1),(62,18,2),(63,18,3),(64,18,4),(65,18,5),(66,18,6),(67,19,1),(68,19,2),(69,19,3),(70,19,4),(71,19,5),(72,19,6),(73,20,1),(74,20,2),(75,20,3),(76,20,4),(77,20,5),(78,20,6),(79,21,1),(80,21,2),(81,21,3),(82,21,4),(83,21,5),(84,21,6),(85,22,1),(86,22,2),(87,22,3),(88,22,4),(89,22,5),(90,22,6),(91,23,1),(92,23,2),(93,23,3),(94,23,4),(95,23,5),(96,23,6),(97,24,1),(98,24,2),(99,24,3),(100,24,4),(101,24,5),(102,24,6),(103,25,1),(104,25,2),(105,25,3),(106,25,4),(107,25,5),(108,25,6),(109,26,1),(110,26,2),(111,26,3),(112,26,4),(113,26,5),(114,26,6),(115,27,1),(116,27,2),(117,27,3),(118,27,4),(119,27,5),(120,27,6),(121,28,1),(122,28,2),(123,28,3),(124,28,4),(125,28,5),(126,28,6),(127,29,1),(128,29,2),(129,29,3),(130,29,4),(131,29,5),(132,29,6),(133,30,1),(134,30,2),(135,30,3),(136,30,4),(137,30,5),(138,30,6),(139,31,1),(140,31,2),(141,31,3),(142,31,4),(143,31,5),(144,31,6),(145,32,1),(146,32,2),(147,32,3),(148,32,4),(149,32,5),(150,32,6),(151,33,1),(152,33,2),(153,33,3),(154,33,4),(155,33,5),(156,33,6),(157,34,1),(158,34,2),(159,34,3),(160,34,4),(161,34,5),(162,34,6),(163,35,1),(164,35,2),(165,35,3),(166,35,4),(167,35,5),(168,35,6),(169,36,1),(170,36,2),(171,36,3),(172,36,4),(173,36,5),(174,36,6),(175,37,1),(176,37,2),(177,37,3),(178,37,4),(179,37,5),(180,37,6),(181,38,1),(182,39,2),(183,40,3),(184,41,4),(185,42,5),(186,43,6),(187,44,1),(188,45,2),(189,46,3),(190,47,4),(191,48,5),(192,49,6),(193,50,1),(194,51,2),(195,52,3),(196,53,4),(197,54,5),(198,55,6),(199,56,1),(200,57,2),(201,58,3),(202,59,4),(203,60,5),(204,61,6),(205,62,1),(206,63,2),(207,64,3),(208,65,4),(209,66,5),(210,67,6),(211,68,1),(212,69,2),(213,70,3),(214,71,4),(215,72,5),(216,73,6),(217,74,1),(218,75,2),(219,76,3),(220,77,4),(221,78,5),(222,79,6),(223,80,1),(224,81,2),(225,82,3),(226,83,4),(227,84,5),(228,85,6),(229,86,1),(230,87,2),(231,88,3),(232,89,4),(233,90,5),(234,91,6),(235,92,1),(236,93,2),(237,94,3),(238,95,4),(239,96,5),(240,97,6),(241,98,1),(242,99,2),(243,100,3),(244,101,4),(245,102,5),(246,103,6),(247,104,1),(248,105,2),(249,106,3),(250,107,4),(251,108,5),(252,109,6),(253,110,1),(254,111,2),(255,112,3),(256,113,4),(257,114,5),(258,115,6),(259,116,1),(260,117,2),(261,118,3),(262,119,4),(263,120,5),(264,121,6),(265,122,1),(266,123,2),(267,124,3),(268,125,4),(269,126,5),(270,127,6),(271,128,1),(272,129,2),(273,130,3),(274,131,4),(275,132,5),(276,133,6),(277,134,1),(278,135,2),(279,136,3),(280,137,4),(281,138,5),(282,139,6),(283,140,1),(284,141,2),(285,142,3),(286,143,4),(287,144,5),(288,145,6),(289,146,1),(290,147,2),(291,148,3),(292,149,4),(293,150,5),(294,151,6),(295,152,1),(296,153,2),(297,154,3),(298,155,4),(299,156,5),(300,157,6),(301,158,1),(302,159,2),(303,160,3),(304,161,4),(305,162,5),(306,163,6),(307,164,1),(308,165,2),(309,166,3),(310,167,4),(311,168,5),(312,169,6),(313,170,1),(314,171,2),(315,172,3),(316,173,4),(317,174,5),(318,175,6),(319,176,1),(320,177,2),(321,178,3),(322,179,4),(323,180,5),(324,181,6),(325,182,1),(326,183,2),(327,184,3),(328,185,4),(329,186,5),(330,187,6),(331,188,1),(332,189,2),(333,190,3),(334,191,4),(335,192,5),(336,193,6),(337,194,1),(338,195,2),(339,196,3),(340,197,4),(341,198,5),(342,199,6),(343,200,1),(344,201,2),(345,202,3),(346,203,4),(347,204,5),(348,205,6),(349,206,1),(350,207,2),(351,208,3),(352,209,4),(353,210,5),(354,211,6),(355,212,1),(356,213,2),(357,214,3),(358,215,4),(359,216,5),(360,217,6);
/*!40000 ALTER TABLE `shift_shift_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_shift_staff`
--

DROP TABLE IF EXISTS `shift_shift_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift_shift_staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shift_id` bigint NOT NULL,
  `medicalstaff_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shift_shift_staff_shift_id_medicalstaff_id_5f36900e_uniq` (`shift_id`,`medicalstaff_id`),
  KEY `shift_shift_staff_medicalstaff_id_08c0069b_fk_nucleus_m` (`medicalstaff_id`),
  CONSTRAINT `shift_shift_staff_medicalstaff_id_08c0069b_fk_nucleus_m` FOREIGN KEY (`medicalstaff_id`) REFERENCES `nucleus_medicalstaff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_shift_staff`
--

LOCK TABLES `shift_shift_staff` WRITE;
/*!40000 ALTER TABLE `shift_shift_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `shift_shift_staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-23 13:14:14
