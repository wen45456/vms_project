
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add log entry',1,'add_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (2,'Can change log entry',1,'change_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (3,'Can delete log entry',1,'delete_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (4,'Can view log entry',1,'view_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (5,'Can add permission',2,'add_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (6,'Can change permission',2,'change_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (7,'Can delete permission',2,'delete_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (8,'Can view permission',2,'view_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (9,'Can add group',3,'add_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (10,'Can change group',3,'change_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (11,'Can delete group',3,'delete_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (12,'Can view group',3,'view_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (13,'Can add user',4,'add_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (14,'Can change user',4,'change_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (15,'Can delete user',4,'delete_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (16,'Can view user',4,'view_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (17,'Can add content type',5,'add_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (18,'Can change content type',5,'change_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (19,'Can delete content type',5,'delete_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (20,'Can view content type',5,'view_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (21,'Can add session',6,'add_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (22,'Can change session',6,'change_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (23,'Can delete session',6,'delete_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (24,'Can view session',6,'view_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (25,'Can add product',7,'add_product');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (26,'Can change product',7,'change_product');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (27,'Can delete product',7,'delete_product');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (28,'Can view product',7,'view_product');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (29,'Can add user profile',8,'add_userprofile');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (30,'Can change user profile',8,'change_userprofile');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (31,'Can delete user profile',8,'delete_userprofile');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (32,'Can view user profile',8,'view_userprofile');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (33,'Can add warehouse',9,'add_warehouse');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (34,'Can change warehouse',9,'change_warehouse');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (35,'Can delete warehouse',9,'delete_warehouse');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (36,'Can view warehouse',9,'view_warehouse');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (37,'Can add transaction',10,'add_transaction');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (38,'Can change transaction',10,'change_transaction');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (39,'Can delete transaction',10,'delete_transaction');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (40,'Can view transaction',10,'view_transaction');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (41,'Can add inventory',11,'add_inventory');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (42,'Can change inventory',11,'change_inventory');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (43,'Can delete inventory',11,'delete_inventory');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (44,'Can view inventory',11,'view_inventory');
DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (1,'pbkdf2_sha256$720000$tt7zeKs2GwyH2Hpv726QaR$QMc6rXRrUC7u+xRhb7gDARjk0BlZlz60pNh5GqixQXw=','2025-05-26 04:00:23.691382',1,'admin','','','2488728763@qq.com',1,1,'2025-05-12 09:30:25.254555');
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (12,'pbkdf2_sha256$720000$liZz7BCUNWDDotpGdPnVVc$CvXWsWOf6RdPvheIH0DXqSgtx7njvn/IjnfSA+MELnQ=','2025-05-29 05:45:39.726157',1,'saler','','','2488728763@qq.com',1,1,'2025-05-13 09:26:25.258513');
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (14,'pbkdf2_sha256$720000$hpylgNrKFqOYnustEe0rgB$g+ZUPlUVMR3lv2FLIX+nzUrjREkaDR+s30X5PV0ynb0=','2025-05-14 01:16:01.012357',0,'purchase','','','',0,1,'2025-05-14 01:15:16.242129');
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (15,'pbkdf2_sha256$720000$35r3kQD14t8TcIcTFHXqrK$1AogeZnlAtEaK5vhFJsFGTdd9by7SQbg/gTKjYDmvH0=','2025-05-29 09:44:05.523625',0,'useradmin','','','',0,1,'2025-05-14 02:56:39.153764');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (3,'auth','group');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (2,'auth','permission');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (4,'auth','user');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (5,'contenttypes','contenttype');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (6,'sessions','session');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (11,'warehouse','inventory');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (7,'warehouse','product');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (10,'warehouse','transaction');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (8,'warehouse','userprofile');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (9,'warehouse','warehouse');
DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (1,'contenttypes','0001_initial','2025-05-12 09:29:33.282029');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (2,'auth','0001_initial','2025-05-12 09:29:34.214540');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (3,'admin','0001_initial','2025-05-12 09:29:34.424291');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (4,'admin','0002_logentry_remove_auto_add','2025-05-12 09:29:34.443533');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (5,'admin','0003_logentry_add_action_flag_choices','2025-05-12 09:29:34.460388');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (6,'contenttypes','0002_remove_content_type_name','2025-05-12 09:29:34.763944');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (7,'auth','0002_alter_permission_name_max_length','2025-05-12 09:29:34.844981');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (8,'auth','0003_alter_user_email_max_length','2025-05-12 09:29:34.861016');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (9,'auth','0004_alter_user_username_opts','2025-05-12 09:29:34.880930');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (10,'auth','0005_alter_user_last_login_null','2025-05-12 09:29:34.935478');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (11,'auth','0006_require_contenttypes_0002','2025-05-12 09:29:34.948176');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (12,'auth','0007_alter_validators_add_error_messages','2025-05-12 09:29:34.948176');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (13,'auth','0008_alter_user_username_max_length','2025-05-12 09:29:35.095941');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (14,'auth','0009_alter_user_last_name_max_length','2025-05-12 09:29:35.178448');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (15,'auth','0010_alter_group_name_max_length','2025-05-12 09:29:35.196485');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (16,'auth','0011_update_proxy_permissions','2025-05-12 09:29:35.204915');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (17,'auth','0012_alter_user_first_name_max_length','2025-05-12 09:29:35.290418');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (18,'sessions','0001_initial','2025-05-12 09:29:35.349196');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (19,'warehouse','0001_initial','2025-05-12 09:29:36.322434');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (20,'warehouse','0002_transaction_sale_price','2025-05-16 08:14:40.583410');
DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('cawapvmkhrp29pcbrfxhiuqa71ve2dbq','.eJxVjLsOgjAYRt-lsyGltPSvozHGxajEuDalF4pcmlBYML67kLCwfud854ukjoMbQ2N7dERdoYTg9XW8UxfCs5vfja8mf3mQ-XWmbYEOSKpp9HKKdpC1WS4p24-l0ktrJeaj-iokOvTjUJfJqiQbjcktGNueNncX8Cr6tWuISLkFIYTSFhjnQIVy2lmTE-aohlLnaQ7EaAIYAwPLMUldhlXGS07R7w-OwUfa:1uJMSt:3kr6S7u0gS8_CEvCmPn6JdCQoAldmQuM6tEvX4H-RF8','2025-06-09 01:17:19.978371');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('dinowc3qw58ytwpzepi5006knuodh71n','.eJxVjL1uwjAURt_FM4rsBMdJNmiHCAmmIiFVyLLvvW4CxUb-6VL13RskFtbvfOf8Mg0puhyu5NnAxp9J-uZtx2-juxw2x20p16PCD3U6zfAuR7Zi2pQ86ZIo6hkXRbxu1sCSegC8GP8VKgg-x9lWj0v1pKnaB6Tv7fP7EphMmha7obrrW0FOmN7U0nXGkEGOrew51mrtBBK2CrjoO2uFbB3nsLYdgQPVOLtE59s9xKwpxhATGz7PK5YKAKWkIRSf2SD__gFdT1Wm:1uKZYA:WFV_Z_ktSI332nrnpgvkCMf5InpbX5AMrTHoQibAVbA','2025-06-12 09:27:46.451387');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('mq54litbao97xb4sn9fin8060k6nuvkx','.eJzNUU1vmzAY_iuWL2wSRUACmNyWRdMOndod2rUdEzIvL8UL8Uv9oayq-t_nRJHWHHvbxbKf9_my_cJbsGZwtEXNV7y7evo60sN3_JGN2fry5s5cb-x49WW_vv5s5eUtj3krvRtbb9G0qg-SrDgHOwnB6zDpf0v9SAmQdkZ1yYGSnKY2-UY9TusT98xglHY8-PZ5nVUo6rqWgKKoKrGs5QAD9mVeDEsQHZRZKfIecpGmohBYpXk2LFK5qLpqGUzVbibjWjSGjOWrny_c0J6v8pi75xlDRuPLokrDuiix8XWR1Y0XHQ5Bu0Nr5eOB9CFLyzxmDd_4eVIgHTIMN3pmkYWLvVYRG8iwLQZgLw2OFG7RzoZ6Dy6xM0LU8I_8NT6lL96X_kmzY39GAN4Y7JnSzI3IjiftmDNSWwlOkU7YPXkGUkeO4R8EH6o-eTQKLfPaqekoDA_OaDhuI-lopyBi3USwTf6VXP7PJX_F3HqAkN4CBQlfpQFxYdiSf_Pdgdf5afsGeP0LjOb7Yw:1uK6Xo:jTHghxCPWLAmGg-ICkrlgVYu9CTPOpDUzZcQT0pvM6w','2025-06-11 02:29:28.664922');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('no9sgd3ddkhl5cyj8knlhlrbqh7gd7mv','.eJxVjLsOgkAQRf9la0NYcDeDpVFj4SOxQDoysw8BEQy7xKjx34WEhvaec-6X5cp11rd307AV254eB9r5c8YL657vpas3rwteU59-qn2a9WzBcux9kffOdHmph4RH85FQDV8j0RU2tzZQbeO7koJRCSbqgmOrTb2e3NlBga4YatAkkABCMIhCaaVjISgBKYSSoeWgk5gDQGR4bIGkiSSnGIcNSSYhsN8fBAhIsA:1uKW5D:Eq2ql48gSiXebLSFFgJYeAyfkuxkO-PY7AsYqy6HiaE','2025-06-12 05:45:39.726157');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('qnplvdxj57sdukoa9zmhm5mc85cp4vid','.eJxVjLsOgjAYRt-lsyFtofSvo2EwQXHR6EZKL1xEGiiYGOO7CwkL63fOd74oV36wo3uaDu1Rf5yw6cmlbT5ZmiWPqy_1qXu97ynub8mQoB3K5TRW-eTNkNd6vhC2HQup5tZCdCO70gXKdeNQF8GiBCv1wdlp0x5WdxOopK-WrqaCcANCCKkMMM4hEtIqa3RMmY0UFComMVCtKGAMDAzHlNgQy5AXPEK_P6kPR_s:1uKZnx:Nl3X_PdPFjTJ4zUjFPmvklbhB_A9wBTnEQZf3vZDjTc','2025-06-12 09:44:05.523625');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('u5a6ojeyyl7vnysyloylh6m5notji114','eyJfY3NyZnRva2VuIjoiMmQ2d2xmbDM2cFM4bUh3SXJqQm1uOHlHRGxLY1RvMjQifQ:1uKW4U:dPo9MEZrS1lGIjiiIRnbDuwfp3e5oym2S9slkfFRKxQ','2025-06-12 05:44:54.106766');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('v02dy5k6gs3d4bbywgakrkgxr1nnu29f','.eJxVjs1OwzAQhN_F5yqKHf_2WOAGXDggRKrIsddNoY2LHatA1XdniwJSL6PV7jezcyKdyylM8R1GsiQvj7GoG9-vxuHZfN_uqDR34l4eP9nH3j6ZQhaks2UaupIhdVuPFiqul711mHW5-Dc7bmLl4jilbV9dkGq-5uohetitZvYqYLB5uOR6ZqgCbYyxDrRQSnNjgwvgJROBO907SaVm3jFd11poUDWjoalto3rFMXS7P8Q0dZBSTJksX08kxSNZsgWZvg6AP9oihapRGwltMYKatugeAnr3kLPdzJBiFpUphARr0CCaBlFDuW-Lkpq3hYNVuOeO4hwAVdYykPN6QXJxDtM6F8s4_b6fiyXIZTdhs9MfgyXR8F94fT7_ACdrh2E:1uIOVY:EW8wlx0zwuUmI4vYt14GxrffOcVuEHaSTmt5b1xR4As','2025-06-06 09:16:04.205143');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('zxl7f9wozarfhrt5i0pwt140y2mt0811','eyJfY3NyZnRva2VuIjoiSWpnQ2VjZFBkR0hhQUQ4eXlVRFVxOGtReDVGcXFPeFoifQ:1uJTG4:SUwxmUo0byrRwVXeptGL9FRoItEriBOHLos636GS0Xs','2025-06-09 08:32:32.054162');
DROP TABLE IF EXISTS `warehouse_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_inventory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `last_updated` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `warehouse_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `warehouse_inventory_product_id_warehouse_id_eadff49b_uniq` (`product_id`,`warehouse_id`),
  KEY `warehouse_inventory_warehouse_id_502d821d_fk_warehouse` (`warehouse_id`),
  KEY `warehouse_i_product_e7212c_idx` (`product_id`,`warehouse_id`),
  KEY `warehouse_i_last_up_f3b5e6_idx` (`last_updated`),
  CONSTRAINT `warehouse_inventory_product_id_cae4e192_fk_warehouse_product_id` FOREIGN KEY (`product_id`) REFERENCES `warehouse_product` (`id`),
  CONSTRAINT `warehouse_inventory_warehouse_id_502d821d_fk_warehouse` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (1,0,'2025-05-16 02:55:10.677854',2,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (2,50,'2025-05-27 07:45:41.442425',3,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (3,4,'2025-05-16 08:16:16.399237',2,2);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (4,0,'2025-05-16 08:48:14.110280',4,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (5,0,'2025-05-16 08:56:09.337518',6,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (6,0,'2025-05-16 09:01:26.074280',8,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (7,5,'2025-05-21 08:52:27.393267',9,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (8,0,'2025-05-23 06:11:24.129245',10,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (9,0,'2025-05-23 06:11:24.129245',11,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (10,0,'2025-05-23 06:42:22.204659',12,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (11,5,'2025-05-28 02:29:28.664922',10,9);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (12,15,'2025-05-23 08:54:38.606625',11,9);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (13,15,'2025-05-23 08:54:38.614444',12,9);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (14,0,'2025-05-26 08:40:27.877347',23,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (15,0,'2025-05-26 08:40:27.887655',24,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (16,0,'2025-05-26 08:40:27.887655',25,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (17,0,'2025-05-26 08:40:27.887655',26,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (18,0,'2025-05-26 08:40:27.892864',27,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (19,0,'2025-05-26 08:40:27.892864',28,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (20,0,'2025-05-26 08:40:27.892864',29,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (21,0,'2025-05-26 08:40:27.892864',30,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (22,0,'2025-05-26 08:40:27.901247',31,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (23,24,'2025-05-26 08:41:04.579000',23,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (24,24,'2025-05-26 08:41:04.600037',24,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (25,1,'2025-05-26 08:41:04.610687',25,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (26,7,'2025-05-26 08:41:04.619211',26,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (27,6,'2025-05-26 08:41:04.624999',27,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (28,5,'2025-05-26 08:41:04.631081',28,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (29,2,'2025-05-26 08:41:04.636087',29,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (30,3,'2025-05-26 08:41:04.642169',30,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (31,1,'2025-05-26 08:41:04.647175',31,10);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (32,0,'2025-05-27 01:41:28.722272',32,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (33,0,'2025-05-27 01:41:28.722272',33,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (34,0,'2025-05-27 01:41:28.733304',34,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (35,0,'2025-05-29 09:14:08.765052',35,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (36,0,'2025-05-29 09:24:08.582905',36,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (37,0,'2025-05-29 09:24:08.584606',37,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (38,0,'2025-05-29 09:24:08.584606',38,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (39,0,'2025-05-29 09:24:08.584606',39,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (40,0,'2025-05-29 09:24:08.584606',40,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (41,0,'2025-05-29 09:24:08.597901',41,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (42,0,'2025-05-29 09:24:08.597901',42,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (43,0,'2025-05-29 09:24:08.597901',43,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (44,0,'2025-05-29 09:24:08.597901',44,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (45,0,'2025-05-29 09:27:46.438301',45,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (46,0,'2025-05-29 09:27:46.438301',46,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (47,0,'2025-05-29 09:27:46.438301',47,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (48,0,'2025-05-29 09:27:46.438301',48,1);
INSERT INTO `warehouse_inventory` (`id`, `quantity`, `last_updated`, `product_id`, `warehouse_id`) VALUES (49,0,'2025-05-29 09:27:46.438301',49,1);
DROP TABLE IF EXISTS `warehouse_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `material_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `warehouse_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `material_number` (`material_number`),
  UNIQUE KEY `spec` (`spec`),
  KEY `warehouse_product_warehouse_id_cc3ddf8b_fk_warehouse` (`warehouse_id`),
  CONSTRAINT `warehouse_product_warehouse_id_cc3ddf8b_fk_warehouse` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse_warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (2,'TEST001','娴嬭瘯浜у搧','T-100','娴嬭瘯渚涘簲鍟?,100.50,234.00,5,'2025-05-16 08:16:16.394593',2);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (3,'01234','PLC','6XSM-ABSC','瑗块棬瀛?,689.00,780.00,0,'2025-05-21 03:09:46.988731',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (4,'E0321 1G53','FX2N,CPU','FX2N-128MR','涓夎彵',600.00,0.00,0,'2025-05-16 08:48:14.107160',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (6,'E0321 6153','FX2N,CPU','FX2N-128MR-001','涓夎彵',720.00,0.00,0,'2025-05-16 08:56:09.337518',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (8,'E03211G53','FX2N,CPU','FX2N-128MR-002','涓夎彵',280.00,0.00,0,'2025-05-16 09:01:26.058569',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (9,'10023','瑙︽懜灞?,'T403-10','鎯犳櫘',12.00,0.00,0,'2025-05-20 09:14:10.033861',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (10,'12345','瑙︽懜灞?,'sc-wni','pc',1345.90,1400.00,0,'2025-05-28 02:29:28.652288',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (11,'23456','PLC','wndi-wo','pv',2345.80,0.00,0,'2025-05-23 06:11:24.129245',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (12,'12354','PLC','sc-wne','pc',1345.00,0.00,0,'2025-05-23 06:42:22.201660',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (23,'E0115-RCCN PG/7W','鐢电紗闃叉按鎺ュご','PG7鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.877347',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (24,'E0115-RCCN PG/9W','鐢电紗闃叉按鎺ュご','PG9鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.887655',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (25,'E0115-RCCN PG/16W','鐢电紗闃叉按鎺ュご','PG16鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.887655',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (26,'E0115-RCCN PG/19W','鐢电紗闃叉按鎺ュご','PG19鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.887655',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (27,'E0115-RCCN PG/21W','鐢电紗闃叉按鎺ュご','PG21鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.892864',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (28,'E0115-RCCN PG/25W','鐢电紗闃叉按鎺ュご','PG25鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.892864',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (29,'E0115-RCCN PG/29W','鐢电紗闃叉按鎺ュご','PG29鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.892864',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (30,'E0115-RCCN PG/42W','鐢电紗闃叉按鎺ュご','PG42鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.892864',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (31,'E0115-RCCN PG/48W','鐢电紗闃叉按鎺ュご','PG48鐧借壊','鏃ユ垚鐢靛瓙',1.00,0.00,0,'2025-05-26 08:40:27.901247',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (32,'12','瑙︽懜灞?,'ab-1','pc-1',1345.90,0.00,0,'2025-05-27 01:41:28.709179',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (33,'13','PLC','ab-2','pv-2',2345.80,0.00,0,'2025-05-27 01:41:28.722272',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (34,'34','PLC','ab-3','pc-3',1345.00,0.00,0,'2025-05-27 01:41:28.722272',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (35,'TEST-1','骞虫澘','TEST-PB01','鍗庝负',3200.00,0.00,0,'2025-05-29 09:14:08.752266',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (36,'TEST-2','骞虫澘','TEST-PB02','鍗庝负',3200.00,0.00,0,'2025-05-29 09:24:08.580896',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (37,'TEST-3','骞虫澘','TEST-PB03','鍗庝负',3201.00,0.00,0,'2025-05-29 09:24:08.584606',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (38,'TEST-4','骞虫澘','TEST-PB04','鍗庝负',3202.00,0.00,0,'2025-05-29 09:24:08.584606',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (39,'TEST-5','骞虫澘','TEST-PB05','鍗庝负',3203.00,0.00,0,'2025-05-29 09:24:08.584606',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (40,'TEST-6','骞虫澘','TEST-PB06','鍗庝负',3204.00,0.00,0,'2025-05-29 09:24:08.584606',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (41,'TEST-7','骞虫澘','TEST-PB07','鍗庝负',3205.00,0.00,0,'2025-05-29 09:24:08.597183',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (42,'TEST-8','骞虫澘','TEST-PB08','鍗庝负',3206.00,0.00,0,'2025-05-29 09:24:08.597901',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (43,'TEST-9','骞虫澘','TEST-PB09','鍗庝负',3207.00,0.00,0,'2025-05-29 09:24:08.597901',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (44,'TEST-10','骞虫澘','TEST-PB10','鍗庝负',3208.00,0.00,0,'2025-05-29 09:24:08.597901',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (45,' E0113-AD13/PG9','灏奸緳娉㈢汗绠℃帴澶达紙鐩磋L鍨嬶級PG9锛圓D13','SQW1-P9/AD13.0B鐩磋L鍨?,'鎬濆瘏鐢垫皵',15.00,0.00,0,'2025-05-29 09:27:46.434837',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (46,' E0113-AD15.8/PG16','灏奸緳娉㈢汗绠℃帴澶达紙鐩磋L鍨嬶級PG16','SQW1-P16/AD21.2B鐩磋L鍨?,'鎬濆瘏鐢垫皵',16.00,0.00,0,'2025-05-29 09:27:46.438301',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (47,' E0113-AD28.5/PG21','灏奸緳娉㈢汗绠℃帴澶达紙鐩磋L鍨嬶級PG21','SQW1-P21/AD28.5B鐩磋L鍨?,'鎬濆瘏鐢垫皵',17.00,0.00,0,'2025-05-29 09:27:46.438301',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (48,' E0113-AD34.5/PG29','灏奸緳娉㈢汗绠℃帴澶达紙鐩磋鍨嬶級PG29','BGW-PG29B(BG29) AD34.5鐩磋L鍨?,'鎬濆瘏鐢垫皵',18.00,0.00,0,'2025-05-29 09:27:46.438301',1);
INSERT INTO `warehouse_product` (`id`, `material_number`, `name`, `spec`, `supplier`, `purchase_price`, `sale_price`, `quantity`, `last_modified`, `warehouse_id`) VALUES (49,' E0113-AD42.5/PG36','灏奸緳娉㈢汗绠℃帴澶达紙鐩磋L鍨嬶級PG36','SQW1-P36/AD42.5B鐩磋L鍨?,'鎬濆瘏鐢垫皵',19.00,0.00,0,'2025-05-29 09:27:46.438301',1);
DROP TABLE IF EXISTS `warehouse_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `operator_id` int DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `warehouse_id` bigint NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouse_transaction_operator_id_6d051766_fk_auth_user_id` (`operator_id`),
  KEY `warehouse_transactio_product_id_004288d2_fk_warehouse` (`product_id`),
  KEY `warehouse_transactio_warehouse_id_39340d30_fk_warehouse` (`warehouse_id`),
  CONSTRAINT `warehouse_transactio_product_id_004288d2_fk_warehouse` FOREIGN KEY (`product_id`) REFERENCES `warehouse_product` (`id`),
  CONSTRAINT `warehouse_transactio_warehouse_id_39340d30_fk_warehouse` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse_warehouse` (`id`),
  CONSTRAINT `warehouse_transaction_operator_id_6d051766_fk_auth_user_id` FOREIGN KEY (`operator_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (1,'IN',20,'2025-05-16 07:00:05.154460',15,3,1,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (2,'IN',3,'2025-05-16 07:00:44.746647',15,2,2,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (3,'OUT',2,'2025-05-16 08:15:38.467024',15,3,1,888.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (4,'OUT',2,'2025-05-16 08:16:16.401236',15,2,2,234.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (5,'OUT',2,'2025-05-16 08:21:12.960874',15,3,1,780.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (6,'IN',8,'2025-05-21 03:09:47.005598',15,3,1,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (7,'IN',3,'2025-05-21 08:52:27.382329',15,3,1,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (8,'IN',5,'2025-05-21 08:52:27.394266',15,9,1,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (9,'IN',5,'2025-05-23 08:52:34.205285',15,10,9,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (10,'IN',5,'2025-05-23 08:52:34.205285',15,11,9,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (11,'IN',5,'2025-05-23 08:52:34.218625',15,12,9,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (12,'IN',5,'2025-05-23 08:53:25.130682',15,10,9,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (13,'IN',5,'2025-05-23 08:53:25.130682',15,11,9,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (14,'IN',5,'2025-05-23 08:53:25.141094',15,12,9,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (15,'IN',5,'2025-05-23 08:54:38.614444',15,11,9,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (16,'IN',5,'2025-05-23 08:54:38.614444',15,12,9,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (17,'IN',24,'2025-05-26 08:41:04.579520',15,23,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (18,'IN',24,'2025-05-26 08:41:04.602078',15,24,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (19,'IN',1,'2025-05-26 08:41:04.612715',15,25,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (20,'IN',7,'2025-05-26 08:41:04.620210',15,26,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (21,'IN',6,'2025-05-26 08:41:04.626082',15,27,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (22,'IN',5,'2025-05-26 08:41:04.632089',15,28,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (23,'IN',2,'2025-05-26 08:41:04.637407',15,29,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (24,'IN',3,'2025-05-26 08:41:04.642169',15,30,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (25,'IN',1,'2025-05-26 08:41:04.647175',15,31,10,0.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (26,'OUT',5,'2025-05-27 07:45:41.453502',15,3,1,700.00);
INSERT INTO `warehouse_transaction` (`id`, `transaction_type`, `quantity`, `created_at`, `operator_id`, `product_id`, `warehouse_id`, `sale_price`) VALUES (27,'OUT',5,'2025-05-28 02:29:28.664922',15,10,9,1400.00);
DROP TABLE IF EXISTS `warehouse_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_userprofile` (
  `user_id` int NOT NULL,
  `permissions` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `warehouse_userprofile_user_id_4e359ed5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `warehouse_userprofile` (`user_id`, `permissions`, `created_at`, `last_login`) VALUES (1,'admin','2025-05-14 02:55:19.150391','2025-05-14 02:55:23.275166');
INSERT INTO `warehouse_userprofile` (`user_id`, `permissions`, `created_at`, `last_login`) VALUES (12,'sales','2025-05-14 01:14:35.572170','2025-05-29 05:45:12.102168');
INSERT INTO `warehouse_userprofile` (`user_id`, `permissions`, `created_at`, `last_login`) VALUES (14,'purchase','2025-05-14 01:15:16.636897','2025-05-16 08:39:54.020066');
INSERT INTO `warehouse_userprofile` (`user_id`, `permissions`, `created_at`, `last_login`) VALUES (15,'admin','2025-05-14 02:56:39.578915','2025-05-14 02:56:39.578915');
DROP TABLE IF EXISTS `warehouse_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_warehouse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `warehouse_w_name_690490_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `warehouse_warehouse` (`id`, `name`, `location`, `capacity`, `created_at`) VALUES (1,'榛樿浠撳簱','',1000,'2025-05-16 02:48:47.523480');
INSERT INTO `warehouse_warehouse` (`id`, `name`, `location`, `capacity`, `created_at`) VALUES (2,'1鍙蜂粨搴?,'榛樿浣嶇疆',1000,'2025-05-16 07:00:44.722607');
INSERT INTO `warehouse_warehouse` (`id`, `name`, `location`, `capacity`, `created_at`) VALUES (9,'5','5',1000,'2025-05-23 08:52:34.191616');
INSERT INTO `warehouse_warehouse` (`id`, `name`, `location`, `capacity`, `created_at`) VALUES (10,'01','01',1000,'2025-05-26 08:41:04.577437');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

