-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: shoptown
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int DEFAULT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=709 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (537,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-07 07:25:06','2023-02-07 07:25:06'),(538,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-07 07:34:41','2023-02-07 07:34:41'),(539,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-07 23:39:55','2023-02-07 23:39:55'),(540,'LOGNAME_STORE_STORED','Store Stored',11,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-07 23:41:26','2023-02-07 23:41:26'),(541,'LOGNAME_PRODUCT_STORED','Product Stored',124,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-07 23:44:41','2023-02-07 23:44:41'),(542,'LOGNAME_PRODUCT_STORED','Product Stored',125,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-07 23:46:04','2023-02-07 23:46:04'),(543,'LOGNAME_PRODUCT_STORED','Product Stored',126,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-07 23:52:37','2023-02-07 23:52:37'),(544,'LOGNAME_PRODUCT_STORED','Product Stored',127,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-07 23:54:14','2023-02-07 23:54:14'),(545,'LOGNAME_PRODUCT_STORED','Product Stored',128,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 00:39:57','2023-02-08 00:39:57'),(546,'LOGNAME_PRODUCT_STORED','Product Stored',129,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 00:41:42','2023-02-08 00:41:42'),(547,'LOGNAME_PRODUCT_STORED','Product Stored',130,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 00:42:30','2023-02-08 00:42:30'),(548,'LOGNAME_PRODUCT_STORED','Product Stored',131,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 00:43:30','2023-02-08 00:43:30'),(549,'LOGNAME_PRODUCT_STORED','Product Stored',132,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 00:45:28','2023-02-08 00:45:28'),(550,'LOGNAME_PRODUCT_STORED','Product Stored',133,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 00:59:10','2023-02-08 00:59:10'),(551,'LOGNAME_PRODUCT_STORED','Product Stored',134,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:00:15','2023-02-08 01:00:15'),(552,'LOGNAME_PRODUCT_STORED','Product Stored',135,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:01:13','2023-02-08 01:01:13'),(553,'LOGNAME_PRODUCT_STORED','Product Stored',136,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:01:59','2023-02-08 01:01:59'),(554,'LOGNAME_PRODUCT_STORED','Product Stored',137,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:25:18','2023-02-08 01:25:18'),(555,'LOGNAME_PRODUCT_STORED','Product Stored',138,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:29:10','2023-02-08 01:29:10'),(556,'LOGNAME_PRODUCT_STORED','Product Stored',139,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:30:12','2023-02-08 01:30:12'),(557,'LOGNAME_PRODUCT_STORED','Product Stored',140,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:31:07','2023-02-08 01:31:07'),(558,'LOGNAME_PRODUCT_STORED','Product Stored',141,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:32:16','2023-02-08 01:32:16'),(559,'LOGNAME_PRODUCT_STORED','Product Stored',142,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:33:19','2023-02-08 01:33:19'),(560,'LOGNAME_PRODUCT_STORED','Product Stored',143,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:34:46','2023-02-08 01:34:46'),(561,'LOGNAME_PRODUCT_STORED','Product Stored',144,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:36:44','2023-02-08 01:36:44'),(562,'LOGNAME_PRODUCT_STORED','Product Stored',145,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:39:41','2023-02-08 01:39:41'),(563,'LOGNAME_PRODUCT_STORED','Product Stored',146,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:40:41','2023-02-08 01:40:41'),(564,'LOGNAME_PRODUCT_STORED','Product Stored',147,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:41:36','2023-02-08 01:41:36'),(565,'LOGNAME_PRODUCT_STORED','Product Stored',148,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:42:49','2023-02-08 01:42:49'),(566,'LOGNAME_PRODUCT_STORED','Product Stored',149,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:43:43','2023-02-08 01:43:43'),(567,'LOGNAME_PRODUCT_STORED','Product Stored',150,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:46:21','2023-02-08 01:46:21'),(568,'LOGNAME_PRODUCT_STORED','Product Stored',151,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:47:10','2023-02-08 01:47:10'),(569,'LOGNAME_PRODUCT_STORED','Product Stored',152,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:47:58','2023-02-08 01:47:58'),(570,'LOGNAME_PRODUCT_STORED','Product Stored',153,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:49:18','2023-02-08 01:49:18'),(571,'LOGNAME_PRODUCT_STORED','Product Stored',154,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:50:08','2023-02-08 01:50:08'),(572,'LOGNAME_PRODUCT_STORED','Product Stored',155,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:53:56','2023-02-08 01:53:56'),(573,'LOGNAME_PRODUCT_UPDATED','Product Updated',155,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:54:45','2023-02-08 01:54:45'),(574,'LOGNAME_PRODUCT_UPDATED','Product Updated',155,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 01:54:59','2023-02-08 01:54:59'),(575,'LOGNAME_USER_REGISTERED','User Registered',104,'App\\Models\\User',NULL,NULL,'{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-08 02:20:52','2023-02-08 02:20:52'),(576,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-08 02:21:24','2023-02-08 02:21:24'),(577,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-08 02:24:36','2023-02-08 02:24:36'),(578,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-08 02:30:42','2023-02-08 02:30:42'),(579,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-08 02:32:33','2023-02-08 02:32:33'),(580,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 02:36:13','2023-02-08 02:36:13'),(581,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-08 02:38:43','2023-02-08 02:38:43'),(582,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 02:39:11','2023-02-08 02:39:11'),(583,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-08 04:08:57','2023-02-08 04:08:57'),(584,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 23:50:07','2023-02-08 23:50:07'),(585,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-08 23:52:05','2023-02-08 23:52:05'),(586,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 05:00:25','2023-02-09 05:00:25'),(587,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 05:02:49','2023-02-09 05:02:49'),(588,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 05:16:36','2023-02-09 05:16:36'),(589,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.107\",\"details\":\"Mozilla\\/5.0 (Linux; Android 12; RMX3381) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 05:18:17','2023-02-09 05:18:17'),(590,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.107\",\"details\":\"Mozilla\\/5.0 (Linux; Android 12; RMX3381) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 05:26:09','2023-02-09 05:26:09'),(591,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 05:31:53','2023-02-09 05:31:53'),(592,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 05:32:24','2023-02-09 05:32:24'),(593,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 05:36:53','2023-02-09 05:36:53'),(594,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-09 05:51:28','2023-02-09 05:51:28'),(595,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 06:14:33','2023-02-09 06:14:33'),(596,'LOGNAME_USER_REGISTERED','User Registered',105,'App\\Models\\User',NULL,NULL,'{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 06:18:12','2023-02-09 06:18:12'),(597,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 06:19:00','2023-02-09 06:19:00'),(598,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 06:53:31','2023-02-09 06:53:31'),(599,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 07:09:58','2023-02-09 07:09:58'),(600,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.105\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-09 07:11:10','2023-02-09 07:11:10'),(601,'LOGNAME_USER_REGISTERED','User Registered',106,'App\\Models\\User',NULL,NULL,'{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-10 00:28:50','2023-02-10 00:28:50'),(602,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-10 00:35:10','2023-02-10 00:35:10'),(603,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-10 00:35:31','2023-02-10 00:35:31'),(604,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-10 03:24:39','2023-02-10 03:24:39'),(605,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/13.0.3 Mobile\\/15E148 Safari\\/604.1\"}','2023-02-10 04:28:17','2023-02-10 04:28:17'),(606,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-10 04:37:05','2023-02-10 04:37:05'),(607,'LOGNAME_PRODUCT_STORED','Product Stored',156,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-10 04:38:35','2023-02-10 04:38:35'),(608,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-10 05:21:09','2023-02-10 05:21:09'),(609,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-10 06:07:37','2023-02-10 06:07:37'),(610,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-10 06:17:59','2023-02-10 06:17:59'),(611,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"PostmanRuntime\\/7.30.1\"}','2023-02-10 06:21:24','2023-02-10 06:21:24'),(612,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"PostmanRuntime\\/7.30.1\"}','2023-02-10 06:25:11','2023-02-10 06:25:11'),(613,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"192.168.0.104\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\"}','2023-02-11 00:22:25','2023-02-11 00:22:25'),(614,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-11 01:39:50','2023-02-11 01:39:50'),(615,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.108\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-11 01:40:28','2023-02-11 01:40:28'),(616,'LOGNAME_ADDRESS_STORED','Address Stored',8,'App\\Models\\Address',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-11 04:30:40','2023-02-11 04:30:40'),(617,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',81,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-11 04:31:31','2023-02-11 04:31:31'),(618,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"192.168.0.120\",\"details\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/13.0.3 Mobile\\/15E148 Safari\\/604.1\"}','2023-02-11 05:18:35','2023-02-11 05:18:35'),(619,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-12 23:47:25','2023-02-12 23:47:25'),(620,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 00:14:07','2023-02-13 00:14:07'),(621,'LOGNAME_PRODUCT_STORED','Product Stored',157,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 00:15:22','2023-02-13 00:15:22'),(622,'LOGNAME_PRODUCT_STORED','Product Stored',158,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 00:17:05','2023-02-13 00:17:05'),(623,'LOGNAME_PRODUCT_UPDATED','Product Updated',158,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 00:17:44','2023-02-13 00:17:44'),(624,'LOGNAME_PRODUCT_UPDATED','Product Updated',158,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 00:18:27','2023-02-13 00:18:27'),(625,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 01:05:27','2023-02-13 01:05:27'),(626,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 01:13:44','2023-02-13 01:13:44'),(627,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 01:51:46','2023-02-13 01:51:46'),(628,'LOGNAME_PRODUCT_STORED','Product Stored',159,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 01:53:31','2023-02-13 01:53:31'),(629,'LOGNAME_PRODUCT_UPDATED','Product Updated',159,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 01:54:09','2023-02-13 01:54:09'),(630,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"192.168.0.100\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-13 03:50:08','2023-02-13 03:50:08'),(631,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 05:14:37','2023-02-13 05:14:37'),(632,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-13 06:04:24','2023-02-13 06:04:24'),(633,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 00:39:11','2023-02-14 00:39:11'),(634,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 04:26:29','2023-02-14 04:26:29'),(635,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 04:38:14','2023-02-14 04:38:14'),(636,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 04:39:19','2023-02-14 04:39:19'),(637,'LOGNAME_STORE_STORED','Store Stored',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 05:44:43','2023-02-14 05:44:43'),(638,'LOGNAME_STORE_UPDATED','Stored Updated',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 05:55:27','2023-02-14 05:55:27'),(639,'LOGNAME_STORE_UPDATED','Stored Updated',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:05:12','2023-02-14 06:05:12'),(640,'LOGNAME_STORE_UPDATED','Stored Updated',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:18:14','2023-02-14 06:18:14'),(641,'LOGNAME_STORE_UPDATED','Stored Updated',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:20:41','2023-02-14 06:20:41'),(642,'LOGNAME_STORE_UPDATED','Stored Updated',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:23:58','2023-02-14 06:23:58'),(643,'LOGNAME_STORE_UPDATED','Stored Updated',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:24:19','2023-02-14 06:24:19'),(644,'LOGNAME_STORE_UPDATED','Stored Updated',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:24:36','2023-02-14 06:24:36'),(645,'LOGNAME_STORE_UPDATED','Stored Updated',12,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:25:43','2023-02-14 06:25:43'),(646,'LOGNAME_STORE_UPDATED','Stored Updated',11,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:29:26','2023-02-14 06:29:26'),(647,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:33:11','2023-02-14 06:33:11'),(648,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:33:17','2023-02-14 06:33:17'),(649,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 06:36:24','2023-02-14 06:36:24'),(650,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"192.168.0.103\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\"}','2023-02-14 07:34:41','2023-02-14 07:34:41'),(651,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 07:52:44','2023-02-14 07:52:44'),(652,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-14 23:33:56','2023-02-14 23:33:56'),(653,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.107\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-15 00:33:14','2023-02-15 00:33:14'),(654,'LOGNAME_USER_REGISTERED','User Registered',107,'App\\Models\\User',NULL,NULL,'{\"ip\":\"192.168.0.107\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-15 00:35:50','2023-02-15 00:35:50'),(655,'LOGNAME_LOGIN','Logged In',107,'App\\Models\\User',107,'App\\Models\\User','{\"ip\":\"192.168.0.107\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-15 00:36:37','2023-02-15 00:36:37'),(656,'LOGNAME_LOGIN','Logged In',104,'App\\Models\\User',104,'App\\Models\\User','{\"ip\":\"192.168.0.107\",\"details\":\"Mozilla\\/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Mobile Safari\\/537.36\"}','2023-02-15 00:37:18','2023-02-15 00:37:18'),(657,'LOGNAME_USER_REGISTERED','User Registered',108,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:14:31','2023-02-15 02:14:31'),(658,'LOGNAME_LOGIN','Logged In',108,'App\\Models\\User',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:15:15','2023-02-15 02:15:15'),(659,'LOGNAME_SELLER_PROFILE_STORED','Seller Profile Stored',17,'App\\Models\\SellerProfile',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:15:51','2023-02-15 02:15:51'),(660,'LOGNAME_USER_ACTIVED','User Actived',108,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:16:38','2023-02-15 02:16:38'),(661,'LOGNAME_LOGIN','Logged In',108,'App\\Models\\User',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:16:47','2023-02-15 02:16:47'),(662,'LOGNAME_STORE_STORED','Store Stored',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:17:24','2023-02-15 02:17:24'),(663,'LOGNAME_PRODUCT_STORED','Product Stored',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:19:55','2023-02-15 02:19:55'),(664,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:21:07','2023-02-15 02:21:07'),(665,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:27:01','2023-02-15 02:27:01'),(666,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:27:16','2023-02-15 02:27:16'),(667,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:29:40','2023-02-15 02:29:40'),(668,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:35:05','2023-02-15 02:35:05'),(669,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:35:48','2023-02-15 02:35:48'),(670,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:36:00','2023-02-15 02:36:00'),(671,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:36:15','2023-02-15 02:36:15'),(672,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:36:43','2023-02-15 02:36:43'),(673,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:36:49','2023-02-15 02:36:49'),(674,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:45:59','2023-02-15 02:45:59'),(675,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:46:05','2023-02-15 02:46:05'),(676,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:47:09','2023-02-15 02:47:09'),(677,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:47:19','2023-02-15 02:47:19'),(678,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:49:00','2023-02-15 02:49:00'),(679,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:49:06','2023-02-15 02:49:06'),(680,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:53:54','2023-02-15 02:53:54'),(681,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 02:54:45','2023-02-15 02:54:45'),(682,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:14:23','2023-02-15 03:14:23'),(683,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:14:31','2023-02-15 03:14:31'),(684,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:41:23','2023-02-15 03:41:23'),(685,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:41:28','2023-02-15 03:41:28'),(686,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:41:34','2023-02-15 03:41:34'),(687,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:41:41','2023-02-15 03:41:41'),(688,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:41:44','2023-02-15 03:41:44'),(689,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:41:50','2023-02-15 03:41:50'),(690,'LOGNAME_STORE_UPDATED','Stored Updated',13,'App\\Models\\Store',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:41:53','2023-02-15 03:41:53'),(691,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:43:21','2023-02-15 03:43:21'),(692,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:45:12','2023-02-15 03:45:12'),(693,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:46:55','2023-02-15 03:46:55'),(694,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:47:02','2023-02-15 03:47:02'),(695,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:47:09','2023-02-15 03:47:09'),(696,'LOGNAME_PRODUCT_UPDATED','Product Updated',160,'App\\Models\\Product',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 03:47:17','2023-02-15 03:47:17'),(697,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 04:19:24','2023-02-15 04:19:24'),(698,'LOGNAME_LOGIN','Logged In',108,'App\\Models\\User',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 04:19:52','2023-02-15 04:19:52'),(699,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 04:55:19','2023-02-15 04:55:19'),(700,'LOGNAME_USER_REGISTERED','User Registered',109,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 04:58:06','2023-02-15 04:58:06'),(701,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 04:59:40','2023-02-15 04:59:40'),(702,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 05:00:27','2023-02-15 05:00:27'),(703,'LOGNAME_LOGIN','Logged In',109,'App\\Models\\User',109,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 05:00:38','2023-02-15 05:00:38'),(704,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 05:00:58','2023-02-15 05:00:58'),(705,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 05:01:53','2023-02-15 05:01:53'),(706,'LOGNAME_LOGIN','Logged In',108,'App\\Models\\User',108,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 05:02:00','2023-02-15 05:02:00'),(707,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 05:02:13','2023-02-15 05:02:13'),(708,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-02-15 05:02:55','2023-02-15 05:02:55');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `country_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobileno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `state_id` int unsigned DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_index` (`user_id`),
  KEY `addresses_country_id_index` (`country_id`),
  KEY `addresses_city_id_index` (`city_id`),
  KEY `addresses_state_id_index` (`state_id`),
  CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (8,6,1,'Ranjeet sINGH','Ranjeet','sINGH','4568885555','225 uDAIPUR INDIA',NULL,1,1,'313001','2023-02-11 04:30:40','2023-02-11 04:30:40',1,NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_product`
--

DROP TABLE IF EXISTS `attribute_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `attribute_id` int unsigned NOT NULL,
  `attribute_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_product_product_id_index` (`product_id`),
  KEY `attribute_product_attribute_id_index` (`attribute_id`),
  CONSTRAINT `attribute_product_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=667 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_product`
--

LOCK TABLES `attribute_product` WRITE;
/*!40000 ALTER TABLE `attribute_product` DISABLE KEYS */;
INSERT INTO `attribute_product` VALUES (439,124,10,'blue-small','2023-02-07 23:44:41','2023-02-07 23:44:41',NULL),(440,124,10,'red-small','2023-02-07 23:44:41','2023-02-07 23:44:41',NULL),(441,124,10,'white-small','2023-02-07 23:44:41','2023-02-07 23:44:41',NULL),(442,124,10,'blue-medium','2023-02-07 23:44:41','2023-02-07 23:44:41',NULL),(443,124,10,'red-medium','2023-02-07 23:44:41','2023-02-07 23:44:41',NULL),(444,124,10,'white-medium','2023-02-07 23:44:41','2023-02-07 23:44:41',NULL),(445,125,10,'blue-small','2023-02-07 23:46:04','2023-02-07 23:46:04',NULL),(446,125,10,'red-small','2023-02-07 23:46:04','2023-02-07 23:46:04',NULL),(447,125,10,'white-small','2023-02-07 23:46:04','2023-02-07 23:46:04',NULL),(448,125,10,'blue-medium','2023-02-07 23:46:04','2023-02-07 23:46:04',NULL),(449,125,10,'red-medium','2023-02-07 23:46:04','2023-02-07 23:46:04',NULL),(450,125,10,'white-medium','2023-02-07 23:46:04','2023-02-07 23:46:04',NULL),(451,126,10,'blue-small','2023-02-07 23:52:37','2023-02-07 23:52:37',NULL),(452,126,10,'red-small','2023-02-07 23:52:37','2023-02-07 23:52:37',NULL),(453,126,10,'white-small','2023-02-07 23:52:37','2023-02-07 23:52:37',NULL),(454,126,10,'blue-medium','2023-02-07 23:52:37','2023-02-07 23:52:37',NULL),(455,126,10,'red-medium','2023-02-07 23:52:37','2023-02-07 23:52:37',NULL),(456,126,10,'white-medium','2023-02-07 23:52:37','2023-02-07 23:52:37',NULL),(457,127,10,'blue-small','2023-02-07 23:54:14','2023-02-07 23:54:14',NULL),(458,127,10,'red-small','2023-02-07 23:54:14','2023-02-07 23:54:14',NULL),(459,127,10,'white-small','2023-02-07 23:54:14','2023-02-07 23:54:14',NULL),(460,127,10,'blue-medium','2023-02-07 23:54:14','2023-02-07 23:54:14',NULL),(461,127,10,'red-medium','2023-02-07 23:54:14','2023-02-07 23:54:14',NULL),(462,127,10,'white-medium','2023-02-07 23:54:14','2023-02-07 23:54:14',NULL),(463,128,10,'blue-small','2023-02-08 00:39:57','2023-02-08 00:39:57',NULL),(464,128,10,'red-small','2023-02-08 00:39:57','2023-02-08 00:39:57',NULL),(465,128,10,'white-small','2023-02-08 00:39:57','2023-02-08 00:39:57',NULL),(466,128,10,'blue-medium','2023-02-08 00:39:57','2023-02-08 00:39:57',NULL),(467,128,10,'red-medium','2023-02-08 00:39:57','2023-02-08 00:39:57',NULL),(468,128,10,'white-medium','2023-02-08 00:39:57','2023-02-08 00:39:57',NULL),(469,129,10,'blue-small','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(470,129,10,'red-small','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(471,129,10,'white-small','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(472,129,10,'blue-medium','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(473,129,10,'red-medium','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(474,129,10,'white-medium','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(475,130,10,'blue-small','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(476,130,10,'red-small','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(477,130,10,'white-small','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(478,130,10,'blue-medium','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(479,130,10,'red-medium','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(480,130,10,'white-medium','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(481,131,10,'blue-small','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(482,131,10,'red-small','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(483,131,10,'white-small','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(484,131,10,'blue-medium','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(485,131,10,'red-medium','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(486,131,10,'white-medium','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(487,132,10,'blue-small','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(488,132,10,'red-small','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(489,132,10,'white-small','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(490,132,10,'blue-medium','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(491,132,10,'red-medium','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(492,132,10,'white-medium','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(493,133,2,'blue','2023-02-08 00:59:10','2023-02-08 00:59:10',NULL),(494,133,2,'black','2023-02-08 00:59:10','2023-02-08 00:59:10',NULL),(495,133,3,'8GB','2023-02-08 00:59:10','2023-02-08 00:59:10',NULL),(496,133,3,'16GB','2023-02-08 00:59:10','2023-02-08 00:59:10',NULL),(497,133,3,'32GB','2023-02-08 00:59:10','2023-02-08 00:59:10',NULL),(498,133,3,'64GB','2023-02-08 00:59:10','2023-02-08 00:59:10',NULL),(499,133,3,'128GB','2023-02-08 00:59:10','2023-02-08 00:59:10',NULL),(500,134,2,'blue','2023-02-08 01:00:15','2023-02-08 01:00:15',NULL),(501,134,2,'black','2023-02-08 01:00:15','2023-02-08 01:00:15',NULL),(502,134,3,'8GB','2023-02-08 01:00:15','2023-02-08 01:00:15',NULL),(503,134,3,'16GB','2023-02-08 01:00:15','2023-02-08 01:00:15',NULL),(504,134,3,'32GB','2023-02-08 01:00:15','2023-02-08 01:00:15',NULL),(505,134,3,'64GB','2023-02-08 01:00:15','2023-02-08 01:00:15',NULL),(506,134,3,'128GB','2023-02-08 01:00:15','2023-02-08 01:00:15',NULL),(507,135,2,'blue','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(508,135,2,'black','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(509,135,3,'8GB','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(510,135,3,'16GB','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(511,135,3,'32GB','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(512,135,3,'64GB','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(513,135,3,'128GB','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(514,136,2,'blue','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(515,136,2,'black','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(516,136,3,'8GB','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(517,136,3,'16GB','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(518,136,3,'32GB','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(519,136,3,'64GB','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(520,136,3,'128GB','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(521,137,10,'blue-small','2023-02-08 01:25:18','2023-02-08 01:25:18',NULL),(522,137,10,'red-small','2023-02-08 01:25:18','2023-02-08 01:25:18',NULL),(523,137,10,'white-small','2023-02-08 01:25:18','2023-02-08 01:25:18',NULL),(524,137,10,'blue-medium','2023-02-08 01:25:18','2023-02-08 01:25:18',NULL),(525,137,10,'red-medium','2023-02-08 01:25:18','2023-02-08 01:25:18',NULL),(526,137,10,'white-medium','2023-02-08 01:25:18','2023-02-08 01:25:18',NULL),(527,138,10,'blue-small','2023-02-08 01:29:10','2023-02-08 01:29:10',NULL),(528,138,10,'red-small','2023-02-08 01:29:10','2023-02-08 01:29:10',NULL),(529,138,10,'white-small','2023-02-08 01:29:10','2023-02-08 01:29:10',NULL),(530,138,10,'blue-medium','2023-02-08 01:29:10','2023-02-08 01:29:10',NULL),(531,138,10,'red-medium','2023-02-08 01:29:10','2023-02-08 01:29:10',NULL),(532,138,10,'white-medium','2023-02-08 01:29:10','2023-02-08 01:29:10',NULL),(533,139,10,'blue-small','2023-02-08 01:30:12','2023-02-08 01:30:12',NULL),(534,139,10,'red-small','2023-02-08 01:30:12','2023-02-08 01:30:12',NULL),(535,139,10,'white-small','2023-02-08 01:30:12','2023-02-08 01:30:12',NULL),(536,139,10,'blue-medium','2023-02-08 01:30:12','2023-02-08 01:30:12',NULL),(537,139,10,'red-medium','2023-02-08 01:30:12','2023-02-08 01:30:12',NULL),(538,139,10,'white-medium','2023-02-08 01:30:12','2023-02-08 01:30:12',NULL),(539,140,10,'blue-small','2023-02-08 01:31:07','2023-02-08 01:31:07',NULL),(540,140,10,'red-small','2023-02-08 01:31:07','2023-02-08 01:31:07',NULL),(541,140,10,'white-small','2023-02-08 01:31:07','2023-02-08 01:31:07',NULL),(542,140,10,'blue-medium','2023-02-08 01:31:07','2023-02-08 01:31:07',NULL),(543,140,10,'red-medium','2023-02-08 01:31:07','2023-02-08 01:31:07',NULL),(544,140,10,'white-medium','2023-02-08 01:31:07','2023-02-08 01:31:07',NULL),(545,141,10,'blue-small','2023-02-08 01:32:16','2023-02-08 01:32:16',NULL),(546,141,10,'red-small','2023-02-08 01:32:16','2023-02-08 01:32:16',NULL),(547,141,10,'white-small','2023-02-08 01:32:16','2023-02-08 01:32:16',NULL),(548,141,10,'blue-medium','2023-02-08 01:32:16','2023-02-08 01:32:16',NULL),(549,141,10,'red-medium','2023-02-08 01:32:16','2023-02-08 01:32:16',NULL),(550,141,10,'white-medium','2023-02-08 01:32:16','2023-02-08 01:32:16',NULL),(551,142,10,'blue-small','2023-02-08 01:33:19','2023-02-08 01:33:19',NULL),(552,142,10,'red-small','2023-02-08 01:33:19','2023-02-08 01:33:19',NULL),(553,142,10,'white-small','2023-02-08 01:33:19','2023-02-08 01:33:19',NULL),(554,142,10,'blue-medium','2023-02-08 01:33:19','2023-02-08 01:33:19',NULL),(555,142,10,'red-medium','2023-02-08 01:33:19','2023-02-08 01:33:19',NULL),(556,142,10,'white-medium','2023-02-08 01:33:19','2023-02-08 01:33:19',NULL),(557,143,10,'blue-small','2023-02-08 01:34:46','2023-02-08 01:34:46',NULL),(558,143,10,'red-small','2023-02-08 01:34:46','2023-02-08 01:34:46',NULL),(559,143,10,'white-small','2023-02-08 01:34:46','2023-02-08 01:34:46',NULL),(560,143,10,'blue-medium','2023-02-08 01:34:46','2023-02-08 01:34:46',NULL),(561,143,10,'red-medium','2023-02-08 01:34:46','2023-02-08 01:34:46',NULL),(562,143,10,'white-medium','2023-02-08 01:34:46','2023-02-08 01:34:46',NULL),(563,144,10,'blue-small','2023-02-08 01:36:44','2023-02-08 01:36:44',NULL),(564,144,10,'red-small','2023-02-08 01:36:44','2023-02-08 01:36:44',NULL),(565,144,10,'white-small','2023-02-08 01:36:44','2023-02-08 01:36:44',NULL),(566,144,10,'blue-medium','2023-02-08 01:36:44','2023-02-08 01:36:44',NULL),(567,144,10,'red-medium','2023-02-08 01:36:44','2023-02-08 01:36:44',NULL),(568,144,10,'white-medium','2023-02-08 01:36:44','2023-02-08 01:36:44',NULL),(569,145,10,'blue-small','2023-02-08 01:39:41','2023-02-08 01:39:41',NULL),(570,145,10,'red-small','2023-02-08 01:39:41','2023-02-08 01:39:41',NULL),(571,145,10,'white-small','2023-02-08 01:39:41','2023-02-08 01:39:41',NULL),(572,145,10,'blue-medium','2023-02-08 01:39:41','2023-02-08 01:39:41',NULL),(573,145,10,'red-medium','2023-02-08 01:39:41','2023-02-08 01:39:41',NULL),(574,145,10,'white-medium','2023-02-08 01:39:41','2023-02-08 01:39:41',NULL),(575,146,10,'blue-small','2023-02-08 01:40:41','2023-02-08 01:40:41',NULL),(576,146,10,'red-small','2023-02-08 01:40:41','2023-02-08 01:40:41',NULL),(577,146,10,'white-small','2023-02-08 01:40:41','2023-02-08 01:40:41',NULL),(578,146,10,'blue-medium','2023-02-08 01:40:41','2023-02-08 01:40:41',NULL),(579,146,10,'red-medium','2023-02-08 01:40:41','2023-02-08 01:40:41',NULL),(580,146,10,'white-medium','2023-02-08 01:40:41','2023-02-08 01:40:41',NULL),(581,147,10,'blue-small','2023-02-08 01:41:36','2023-02-08 01:41:36',NULL),(582,147,10,'red-small','2023-02-08 01:41:36','2023-02-08 01:41:36',NULL),(583,147,10,'white-small','2023-02-08 01:41:36','2023-02-08 01:41:36',NULL),(584,147,10,'blue-medium','2023-02-08 01:41:36','2023-02-08 01:41:36',NULL),(585,147,10,'red-medium','2023-02-08 01:41:36','2023-02-08 01:41:36',NULL),(586,147,10,'white-medium','2023-02-08 01:41:36','2023-02-08 01:41:36',NULL),(587,148,10,'blue-small','2023-02-08 01:42:49','2023-02-08 01:42:49',NULL),(588,148,10,'red-small','2023-02-08 01:42:49','2023-02-08 01:42:49',NULL),(589,148,10,'white-small','2023-02-08 01:42:49','2023-02-08 01:42:49',NULL),(590,148,10,'blue-medium','2023-02-08 01:42:49','2023-02-08 01:42:49',NULL),(591,148,10,'red-medium','2023-02-08 01:42:49','2023-02-08 01:42:49',NULL),(592,148,10,'white-medium','2023-02-08 01:42:49','2023-02-08 01:42:49',NULL),(593,149,10,'blue-small','2023-02-08 01:43:43','2023-02-08 01:43:43',NULL),(594,149,10,'red-small','2023-02-08 01:43:43','2023-02-08 01:43:43',NULL),(595,149,10,'white-small','2023-02-08 01:43:43','2023-02-08 01:43:43',NULL),(596,149,10,'blue-medium','2023-02-08 01:43:43','2023-02-08 01:43:43',NULL),(597,149,10,'red-medium','2023-02-08 01:43:43','2023-02-08 01:43:43',NULL),(598,149,10,'white-medium','2023-02-08 01:43:43','2023-02-08 01:43:43',NULL),(599,150,10,'blue-small','2023-02-08 01:46:21','2023-02-08 01:46:21',NULL),(600,150,10,'red-small','2023-02-08 01:46:21','2023-02-08 01:46:21',NULL),(601,150,10,'white-small','2023-02-08 01:46:21','2023-02-08 01:46:21',NULL),(602,150,10,'blue-medium','2023-02-08 01:46:21','2023-02-08 01:46:21',NULL),(603,150,10,'red-medium','2023-02-08 01:46:21','2023-02-08 01:46:21',NULL),(604,150,10,'white-medium','2023-02-08 01:46:21','2023-02-08 01:46:21',NULL),(605,151,10,'blue-small','2023-02-08 01:47:10','2023-02-08 01:47:10',NULL),(606,151,10,'red-small','2023-02-08 01:47:10','2023-02-08 01:47:10',NULL),(607,151,10,'white-small','2023-02-08 01:47:10','2023-02-08 01:47:10',NULL),(608,151,10,'blue-medium','2023-02-08 01:47:10','2023-02-08 01:47:10',NULL),(609,151,10,'red-medium','2023-02-08 01:47:10','2023-02-08 01:47:10',NULL),(610,151,10,'white-medium','2023-02-08 01:47:10','2023-02-08 01:47:10',NULL),(611,152,10,'blue-small','2023-02-08 01:47:58','2023-02-08 01:47:58',NULL),(612,152,10,'red-small','2023-02-08 01:47:58','2023-02-08 01:47:58',NULL),(613,152,10,'white-small','2023-02-08 01:47:58','2023-02-08 01:47:58',NULL),(614,152,10,'blue-medium','2023-02-08 01:47:58','2023-02-08 01:47:58',NULL),(615,152,10,'red-medium','2023-02-08 01:47:58','2023-02-08 01:47:58',NULL),(616,152,10,'white-medium','2023-02-08 01:47:58','2023-02-08 01:47:58',NULL),(617,153,10,'blue-small','2023-02-08 01:49:18','2023-02-08 01:49:18',NULL),(618,153,10,'red-small','2023-02-08 01:49:18','2023-02-08 01:49:18',NULL),(619,153,10,'white-small','2023-02-08 01:49:18','2023-02-08 01:49:18',NULL),(620,153,10,'blue-medium','2023-02-08 01:49:18','2023-02-08 01:49:18',NULL),(621,153,10,'red-medium','2023-02-08 01:49:18','2023-02-08 01:49:18',NULL),(622,153,10,'white-medium','2023-02-08 01:49:18','2023-02-08 01:49:18',NULL),(623,154,10,'blue-small','2023-02-08 01:50:08','2023-02-08 01:50:08',NULL),(624,154,10,'red-small','2023-02-08 01:50:08','2023-02-08 01:50:08',NULL),(625,154,10,'white-small','2023-02-08 01:50:08','2023-02-08 01:50:08',NULL),(626,154,10,'blue-medium','2023-02-08 01:50:08','2023-02-08 01:50:08',NULL),(627,154,10,'red-medium','2023-02-08 01:50:08','2023-02-08 01:50:08',NULL),(628,154,10,'white-medium','2023-02-08 01:50:08','2023-02-08 01:50:08',NULL),(629,155,10,'blue-small','2023-02-08 01:53:56','2023-02-08 01:53:56',NULL),(630,155,10,'red-small','2023-02-08 01:53:56','2023-02-08 01:53:56',NULL),(631,155,10,'white-small','2023-02-08 01:53:56','2023-02-08 01:53:56',NULL),(632,155,10,'blue-medium','2023-02-08 01:53:56','2023-02-08 01:53:56',NULL),(633,155,10,'red-medium','2023-02-08 01:53:56','2023-02-08 01:53:56',NULL),(634,155,10,'white-medium','2023-02-08 01:53:56','2023-02-08 01:53:56',NULL),(635,156,10,'blue-small','2023-02-10 04:38:35','2023-02-10 04:38:35',NULL),(636,156,10,'red-small','2023-02-10 04:38:35','2023-02-10 04:38:35',NULL),(637,156,10,'white-small','2023-02-10 04:38:35','2023-02-10 04:38:35',NULL),(638,156,10,'blue-medium','2023-02-10 04:38:35','2023-02-10 04:38:35',NULL),(639,156,10,'red-medium','2023-02-10 04:38:35','2023-02-10 04:38:35',NULL),(640,156,10,'white-medium','2023-02-10 04:38:35','2023-02-10 04:38:35',NULL),(641,157,10,'blue-small','2023-02-13 00:15:22','2023-02-13 00:15:22',NULL),(642,157,10,'red-small','2023-02-13 00:15:22','2023-02-13 00:15:22',NULL),(643,157,10,'white-small','2023-02-13 00:15:22','2023-02-13 00:15:22',NULL),(644,157,10,'blue-medium','2023-02-13 00:15:22','2023-02-13 00:15:22',NULL),(645,157,10,'red-medium','2023-02-13 00:15:22','2023-02-13 00:15:22',NULL),(646,157,10,'white-medium','2023-02-13 00:15:22','2023-02-13 00:15:22',NULL),(647,158,10,'blue-small','2023-02-13 00:17:05','2023-02-13 00:17:05',NULL),(648,158,10,'red-small','2023-02-13 00:17:05','2023-02-13 00:17:05',NULL),(649,158,10,'white-small','2023-02-13 00:17:05','2023-02-13 00:17:05',NULL),(650,158,10,'blue-medium','2023-02-13 00:17:05','2023-02-13 00:17:05',NULL),(651,158,10,'red-medium','2023-02-13 00:17:05','2023-02-13 00:17:05',NULL),(652,158,10,'white-medium','2023-02-13 00:17:05','2023-02-13 00:17:05',NULL),(653,159,2,'blue','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(654,159,2,'black','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(655,159,3,'8GB','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(656,159,3,'16GB','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(657,159,3,'32GB','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(658,159,3,'64GB','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(659,159,3,'128GB','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(660,160,2,'blue','2023-02-15 02:19:55','2023-02-15 02:19:55',NULL),(661,160,2,'black','2023-02-15 02:19:55','2023-02-15 02:19:55',NULL),(662,160,3,'8GB','2023-02-15 02:19:55','2023-02-15 02:19:55',NULL),(663,160,3,'16GB','2023-02-15 02:19:55','2023-02-15 02:19:55',NULL),(664,160,3,'32GB','2023-02-15 02:19:55','2023-02-15 02:19:55',NULL),(665,160,3,'64GB','2023-02-15 02:19:55','2023-02-15 02:19:55',NULL),(666,160,3,'128GB','2023-02-15 02:19:55','2023-02-15 02:19:55',NULL);
/*!40000 ALTER TABLE `attribute_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributecodes`
--

DROP TABLE IF EXISTS `attributecodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributecodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributecodes`
--

LOCK TABLES `attributecodes` WRITE;
/*!40000 ALTER TABLE `attributecodes` DISABLE KEYS */;
INSERT INTO `attributecodes` VALUES (1,'No Variation','2022-12-10 02:20:16','2022-12-10 02:20:16'),(2,'Color','2022-12-10 02:20:16','2022-12-10 02:20:16'),(3,'Display Size','2022-12-10 02:20:16','2022-12-10 02:20:16'),(4,'Storage','2022-12-10 02:20:16','2022-12-10 02:20:16'),(5,'Weight','2022-12-10 02:20:16','2022-12-10 02:20:16'),(6,'Size','2022-12-10 02:20:16','2022-12-10 02:20:16'),(7,'Price','2022-12-10 02:20:16','2022-12-10 02:20:16');
/*!40000 ALTER TABLE `attributecodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `attributeset_id` int unsigned NOT NULL,
  `attribute_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `required` tinyint(1) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT NULL,
  `filterable` tinyint(1) DEFAULT NULL,
  `comparable` tinyint(1) DEFAULT NULL,
  `variation` tinyint(1) NOT NULL DEFAULT '0',
  `validation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attributes_attributeset_id_index` (`attributeset_id`),
  CONSTRAINT `attributes_attributeset_id_foreign` FOREIGN KEY (`attributeset_id`) REFERENCES `attributesets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,1,'no variation','No Variation','text',NULL,1,1,1,1,1,0,NULL,'2022-12-10 02:20:16','2022-12-23 01:19:12'),(2,2,'color','Color','checkbox','[\"blue\",\"black\"]',1,1,1,1,1,0,NULL,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(3,2,'storage','Storage','checkbox','{\"0\":\"8GB\",\"1\":\"16GB\",\"2\":\"32GB\",\"3\":\"64GB\",\"4\":\"128GB\"}',1,1,1,1,1,0,NULL,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(4,8,'display size','Display Size','checkbox','{\"0\":\"480×800\",\"1\":\"640×1136\",\"2\":\"720×1280\",\"3\":\"750×1334\",\"4\":\"1080×1920\"}',1,1,1,1,1,0,NULL,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(5,5,'no variation','No Variation','label',NULL,1,1,1,1,1,0,NULL,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(10,7,'color and size','Color & Size','checkbox','[\"blue-small\",\"red-small\",\"white-small\",\"blue-medium\",\"red-medium\",\"white-medium\"]',1,1,1,1,1,0,NULL,'2022-12-10 02:20:16','2022-12-10 02:20:16');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributeset_category`
--

DROP TABLE IF EXISTS `attributeset_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributeset_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `attributeset_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributeset_category_attributeset_id_category_id_unique` (`attributeset_id`,`category_id`),
  KEY `attributeset_category_attributeset_id_index` (`attributeset_id`),
  KEY `attributeset_category_category_id_index` (`category_id`),
  CONSTRAINT `attributeset_category_attributeset_id_foreign` FOREIGN KEY (`attributeset_id`) REFERENCES `attributesets` (`id`),
  CONSTRAINT `attributeset_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributeset_category`
--

LOCK TABLES `attributeset_category` WRITE;
/*!40000 ALTER TABLE `attributeset_category` DISABLE KEYS */;
INSERT INTO `attributeset_category` VALUES (1,2,8,'2022-12-23 01:21:28','2022-12-23 01:21:28'),(2,7,20,'2022-12-23 01:22:34','2022-12-23 01:22:34'),(3,7,23,'2022-12-23 01:22:53','2022-12-23 01:22:53'),(4,1,26,'2022-12-23 01:23:28','2022-12-23 01:23:28'),(5,7,21,'2023-02-07 23:43:20','2023-02-07 23:43:20');
/*!40000 ALTER TABLE `attributeset_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributesets`
--

DROP TABLE IF EXISTS `attributesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributesets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributesets`
--

LOCK TABLES `attributesets` WRITE;
/*!40000 ALTER TABLE `attributesets` DISABLE KEYS */;
INSERT INTO `attributesets` VALUES (1,'Standard',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(2,'Mobiles',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(3,'Tablets',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(4,'Bags',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(5,'Books',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(6,'Printer',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(7,'Clothing',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(8,'Accessiors',1,'2022-12-10 02:20:16','2022-12-10 02:20:16');
/*!40000 ALTER TABLE `attributesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_user`
--

DROP TABLE IF EXISTS `cart_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_user` (
  `user_id` int unsigned NOT NULL,
  `product_variation_id` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  `to_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_image` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `cart_user_card_image_foreign` (`card_image`),
  KEY `cart_user_user_id_index` (`user_id`),
  KEY `cart_user_product_variation_id_index` (`product_variation_id`),
  CONSTRAINT `cart_user_card_image_foreign` FOREIGN KEY (`card_image`) REFERENCES `products` (`id`),
  CONSTRAINT `cart_user_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`),
  CONSTRAINT `cart_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_user`
--

LOCK TABLES `cart_user` WRITE;
/*!40000 ALTER TABLE `cart_user` DISABLE KEYS */;
INSERT INTO `cart_user` VALUES (3,110,2,NULL,NULL,NULL,NULL,'2023-02-08 00:20:13','2023-02-13 05:25:55',NULL),(3,146,2,NULL,NULL,NULL,NULL,'2023-02-08 06:34:39','2023-02-13 05:24:50',NULL),(3,147,1,NULL,NULL,NULL,NULL,'2023-02-13 00:55:56','2023-02-13 05:27:18',NULL),(3,153,1,NULL,NULL,NULL,NULL,'2023-02-13 02:56:01','2023-02-13 05:27:23',NULL),(6,151,1,NULL,NULL,NULL,NULL,'2023-02-15 01:39:31','2023-02-15 01:39:31',NULL);
/*!40000 ALTER TABLE `cart_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int unsigned NOT NULL,
  `commission_fee` double(50,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_order_index` (`order`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Mobiles,Computers & Tablets','mobiles-computers-tablets',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',1,5.00),(2,'TV,Appliances & Electronics','tv-appliances-electronics',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',2,5.00),(3,'Men\'s Fashion','mens-fashion',NULL,1,'2022-12-10 02:20:16','2022-12-12 02:44:19',1,5.00),(4,'Women\'s Fashion','women-fashion',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',4,5.00),(5,'Books & Audible','books-audible',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',4,10.00),(6,'Gift Cards','gift-cards',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',4,0.00),(7,'Digital Products','digital-products',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',4,0.00),(8,'Mobiles Phone','mobiles-phone',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(9,'Mobile Accessories','mobile-accessories',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(10,'Power Bank','power-bank',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(11,'Printers & Link','printers-link',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(12,'Computers','computers',1,1,'2022-12-10 02:20:16','2022-12-21 07:25:00',1,0.00),(13,'Monitor','monitor',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(14,'Tablets','tablets',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(15,'Televisions','televisions',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(16,'HeadPhones','headphones',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(17,'Cameras','cameras',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(18,'Air Conditioners','air-conditioners',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(19,'Washing Machince','washing-machince',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(20,'Mens Clothing','mens-clothing',3,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',7,0.00),(21,'Mens Shoes','mens-shoes',3,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',7,0.00),(22,'Mens Accessories','mens-accessories',3,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',7,0.00),(23,'Womens Clothing','womens-clothing',4,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(24,'Womens Shoes','womens-shoes',4,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(25,'Womens Accessories','womens-accessories',4,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(26,'Books','books',5,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(27,'Audible Audiobooks','audible-audiobooks',5,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(28,'Birthday','birthday',6,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(29,'Wedding','wedding',6,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(30,'Festival','festival',6,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(31,'e-books','e-books',7,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(32,'videos','videos',7,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(33,'games','games',7,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_category_id_index` (`category_id`),
  KEY `category_product_product_id_index` (`product_id`),
  CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,21,124,NULL,NULL),(2,21,125,NULL,NULL),(3,21,126,NULL,NULL),(4,21,127,NULL,NULL),(5,20,128,NULL,NULL),(6,20,129,NULL,NULL),(7,20,130,NULL,NULL),(8,20,131,NULL,NULL),(9,20,132,NULL,NULL),(10,8,133,NULL,NULL),(11,8,134,NULL,NULL),(12,8,135,NULL,NULL),(13,8,136,NULL,NULL),(14,23,137,NULL,NULL),(15,23,138,NULL,NULL),(16,23,139,NULL,NULL),(17,21,140,NULL,NULL),(18,20,141,NULL,NULL),(19,23,142,NULL,NULL),(20,20,143,NULL,NULL),(21,23,144,NULL,NULL),(22,23,145,NULL,NULL),(23,23,146,NULL,NULL),(24,20,147,NULL,NULL),(25,21,148,NULL,NULL),(26,20,149,NULL,NULL),(27,23,150,NULL,NULL),(28,21,151,NULL,NULL),(29,21,152,NULL,NULL),(30,21,153,NULL,NULL),(31,23,154,NULL,NULL),(32,20,155,NULL,NULL),(33,20,156,NULL,NULL),(34,21,157,NULL,NULL),(35,20,158,NULL,NULL),(36,8,159,NULL,NULL),(37,8,160,NULL,NULL);
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_state_id_index` (`state_id`),
  CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'North and Middle Andaman',32,NULL,NULL),(2,'South Andaman',32,NULL,NULL),(3,'Nicobar',32,NULL,NULL),(4,'Adilabad',1,NULL,NULL),(5,'Anantapur',1,NULL,NULL),(6,'Chittoor',1,NULL,NULL),(7,'East Godavari',1,NULL,NULL),(8,'Guntur',1,NULL,NULL),(9,'Hyderabad',1,NULL,NULL),(10,'Kadapa',1,NULL,NULL),(11,'Karimnagar',1,NULL,NULL),(12,'Khammam',1,NULL,NULL),(13,'Krishna',1,NULL,NULL),(14,'Kurnool',1,NULL,NULL),(15,'Mahbubnagar',1,NULL,NULL),(16,'Medak',1,NULL,NULL),(17,'Nalgonda',1,NULL,NULL),(18,'Nellore',1,NULL,NULL),(19,'Nizamabad',1,NULL,NULL),(20,'Prakasam',1,NULL,NULL),(21,'Rangareddi',1,NULL,NULL),(22,'Srikakulam',1,NULL,NULL),(23,'Vishakhapatnam',1,NULL,NULL),(24,'Vizianagaram',1,NULL,NULL),(25,'Warangal',1,NULL,NULL),(26,'West Godavari',1,NULL,NULL),(27,'Anjaw',30,NULL,NULL),(28,'Changlang',3,NULL,NULL),(29,'East Kameng',3,NULL,NULL),(30,'Lohit',30,NULL,NULL),(31,'Lower Subansiri',3,NULL,NULL),(32,'Papum Pare',3,NULL,NULL),(33,'Tirap',3,NULL,NULL),(34,'Dibang Valley',30,NULL,NULL),(35,'Upper Subansiri',3,NULL,NULL),(36,'West Kameng',3,NULL,NULL),(37,'Barpeta',2,NULL,NULL),(38,'Bongaigaon',2,NULL,NULL),(39,'Cachar',2,NULL,NULL),(40,'Darrang',2,NULL,NULL),(41,'Dhemaji',2,NULL,NULL),(42,'Dhubri',2,NULL,NULL),(43,'Dibrugarh',2,NULL,NULL),(44,'Goalpara',2,NULL,NULL),(45,'Golaghat',31,NULL,NULL),(46,'Hailakandi',31,NULL,NULL),(47,'Jorhat',2,NULL,NULL),(48,'Karbi Anglong',2,NULL,NULL),(49,'Karimganj',2,NULL,NULL),(50,'Kokrajhar',2,NULL,NULL),(51,'Lakhimpur',2,NULL,NULL),(52,'Marigaon',2,NULL,NULL),(53,'Nagaon',2,NULL,NULL),(54,'Nalbari',2,NULL,NULL),(55,'North Cachar Hills',2,NULL,NULL),(56,'Sibsagar',2,NULL,NULL),(57,'Sonitpur',2,NULL,NULL),(58,'Tinsukia',2,NULL,NULL),(59,'Araria',4,NULL,NULL),(60,'Aurangabad',4,NULL,NULL),(61,'Banka',4,NULL,NULL),(62,'Begusarai',4,NULL,NULL),(63,'Bhagalpur',4,NULL,NULL),(64,'Bhojpur',4,NULL,NULL),(65,'Buxar',4,NULL,NULL),(66,'Darbhanga',4,NULL,NULL),(67,'Purba Champaran',4,NULL,NULL),(68,'Gaya',4,NULL,NULL),(69,'Gopalganj',4,NULL,NULL),(70,'Jamui',4,NULL,NULL),(71,'Jehanabad',4,NULL,NULL),(72,'Khagaria',4,NULL,NULL),(73,'Kishanganj',4,NULL,NULL),(74,'Kaimur',4,NULL,NULL),(75,'Katihar',4,NULL,NULL),(76,'Lakhisarai',4,NULL,NULL),(77,'Madhubani',4,NULL,NULL),(78,'Munger',4,NULL,NULL),(79,'Madhepura',4,NULL,NULL),(80,'Muzaffarpur',4,NULL,NULL),(81,'Nalanda',4,NULL,NULL),(82,'Nawada',4,NULL,NULL),(83,'Patna',4,NULL,NULL),(84,'Purnia',4,NULL,NULL),(85,'Rohtas',4,NULL,NULL),(86,'Saharsa',4,NULL,NULL),(87,'Samastipur',4,NULL,NULL),(88,'Sheohar',4,NULL,NULL),(89,'Sheikhpura',4,NULL,NULL),(90,'Saran',4,NULL,NULL),(91,'Sitamarhi',4,NULL,NULL),(92,'Supaul',4,NULL,NULL),(93,'Siwan',4,NULL,NULL),(94,'Vaishali',4,NULL,NULL),(95,'Pashchim Champaran',4,NULL,NULL),(96,'Bastar',30,NULL,NULL),(97,'Bilaspur',30,NULL,NULL),(98,'Dantewada',30,NULL,NULL),(99,'Dhamtari',35,NULL,NULL),(100,'Durg',35,NULL,NULL),(101,'Jashpur',30,NULL,NULL),(102,'Janjgir-Champa',30,NULL,NULL),(103,'Korba',30,NULL,NULL),(104,'Koriya',30,NULL,NULL),(105,'Kanker',30,NULL,NULL),(106,'Kawardha',30,NULL,NULL),(107,'Mahasamund',30,NULL,NULL),(108,'Raigarh',30,NULL,NULL),(109,'Rajnandgaon',30,NULL,NULL),(110,'Raipur',30,NULL,NULL),(111,'Surguja',30,NULL,NULL),(112,'Diu',29,NULL,NULL),(113,'Daman',29,NULL,NULL),(114,'Central Delhi',25,NULL,NULL),(115,'East Delhi',25,NULL,NULL),(116,'New Delhi',25,NULL,NULL),(117,'North Delhi',25,NULL,NULL),(118,'North East Delhi',25,NULL,NULL),(119,'North West Delhi',25,NULL,NULL),(120,'South Delhi',25,NULL,NULL),(121,'South West Delhi',25,NULL,NULL),(122,'West Delhi',25,NULL,NULL),(123,'North Goa',26,NULL,NULL),(124,'South Goa',26,NULL,NULL),(125,'Ahmedabad',5,NULL,NULL),(126,'Amreli District',5,NULL,NULL),(127,'Anand',5,NULL,NULL),(128,'Banaskantha',5,NULL,NULL),(129,'Bharuch',5,NULL,NULL),(130,'Bhavnagar',5,NULL,NULL),(131,'Dahod',5,NULL,NULL),(132,'The Dangs',5,NULL,NULL),(133,'Gandhinagar',5,NULL,NULL),(134,'Jamnagar',5,NULL,NULL),(135,'Junagadh',5,NULL,NULL),(136,'Kutch',5,NULL,NULL),(137,'Kheda',5,NULL,NULL),(138,'Mehsana',5,NULL,NULL),(139,'Narmada',5,NULL,NULL),(140,'Navsari',5,NULL,NULL),(141,'Patan',5,NULL,NULL),(142,'Panchmahal',5,NULL,NULL),(143,'Porbandar',5,NULL,NULL),(144,'Rajkot',5,NULL,NULL),(145,'Sabarkantha',5,NULL,NULL),(146,'Surendranagar',5,NULL,NULL),(147,'Surat',5,NULL,NULL),(148,'Vadodara',5,NULL,NULL),(149,'Valsad',5,NULL,NULL),(150,'Ambala',6,NULL,NULL),(151,'Bhiwani',6,NULL,NULL),(152,'Faridabad',6,NULL,NULL),(153,'Fatehabad',6,NULL,NULL),(154,'Gurgaon',6,NULL,NULL),(155,'Hissar',6,NULL,NULL),(156,'Jhajjar',6,NULL,NULL),(157,'Jind',6,NULL,NULL),(158,'Karnal',6,NULL,NULL),(159,'Kaithal',6,NULL,NULL),(160,'Kurukshetra',6,NULL,NULL),(161,'Mahendragarh',6,NULL,NULL),(162,'Mewat',6,NULL,NULL),(163,'Panchkula',6,NULL,NULL),(164,'Panipat',6,NULL,NULL),(165,'Rewari',6,NULL,NULL),(166,'Rohtak',6,NULL,NULL),(167,'Sirsa',6,NULL,NULL),(168,'Sonepat',6,NULL,NULL),(169,'Yamuna Nagar',6,NULL,NULL),(170,'Palwal',6,NULL,NULL),(171,'Bilaspur',7,NULL,NULL),(172,'Chamba',7,NULL,NULL),(173,'Hamirpur',7,NULL,NULL),(174,'Kangra',7,NULL,NULL),(175,'Kinnaur',7,NULL,NULL),(176,'Kulu',7,NULL,NULL),(177,'Lahaul and Spiti',7,NULL,NULL),(178,'Mandi',7,NULL,NULL),(179,'Shimla',7,NULL,NULL),(180,'Sirmaur',7,NULL,NULL),(181,'Solan',7,NULL,NULL),(182,'Una',7,NULL,NULL),(183,'Anantnag',8,NULL,NULL),(184,'Badgam',8,NULL,NULL),(185,'Bandipore',8,NULL,NULL),(186,'Baramula',8,NULL,NULL),(187,'Doda',8,NULL,NULL),(188,'Jammu',8,NULL,NULL),(189,'Kargil',8,NULL,NULL),(190,'Kathua',8,NULL,NULL),(191,'Kupwara',8,NULL,NULL),(192,'Leh',8,NULL,NULL),(193,'Poonch',8,NULL,NULL),(194,'Pulwama',8,NULL,NULL),(195,'Rajauri',8,NULL,NULL),(196,'Srinagar',8,NULL,NULL),(197,'Samba',8,NULL,NULL),(198,'Udhampur',8,NULL,NULL),(199,'Bokaro',34,NULL,NULL),(200,'Chatra',34,NULL,NULL),(201,'Deoghar',34,NULL,NULL),(202,'Dhanbad',34,NULL,NULL),(203,'Dumka',34,NULL,NULL),(204,'Purba Singhbhum',34,NULL,NULL),(205,'Garhwa',34,NULL,NULL),(206,'Giridih',34,NULL,NULL),(207,'Godda',34,NULL,NULL),(208,'Gumla',34,NULL,NULL),(209,'Hazaribagh',34,NULL,NULL),(210,'Koderma',34,NULL,NULL),(211,'Lohardaga',34,NULL,NULL),(212,'Pakur',34,NULL,NULL),(213,'Palamu',34,NULL,NULL),(214,'Ranchi',34,NULL,NULL),(215,'Sahibganj',34,NULL,NULL),(216,'Seraikela and Kharsawan',34,NULL,NULL),(217,'Pashchim Singhbhum',34,NULL,NULL),(218,'Ramgarh',34,NULL,NULL),(219,'Bidar',9,NULL,NULL),(220,'Belgaum',9,NULL,NULL),(221,'Bijapur',9,NULL,NULL),(222,'Bagalkot',9,NULL,NULL),(223,'Bellary',9,NULL,NULL),(224,'Bangalore Rural District',9,NULL,NULL),(225,'Bangalore Urban District',9,NULL,NULL),(226,'Chamarajnagar',9,NULL,NULL),(227,'Chikmagalur',9,NULL,NULL),(228,'Chitradurga',9,NULL,NULL),(229,'Davanagere',9,NULL,NULL),(230,'Dharwad',9,NULL,NULL),(231,'Dakshina Kannada',9,NULL,NULL),(232,'Gadag',9,NULL,NULL),(233,'Gulbarga',9,NULL,NULL),(234,'Hassan',9,NULL,NULL),(235,'Haveri District',9,NULL,NULL),(236,'Kodagu',9,NULL,NULL),(237,'Kolar',9,NULL,NULL),(238,'Koppal',9,NULL,NULL),(239,'Mandya',9,NULL,NULL),(240,'Mysore',9,NULL,NULL),(241,'Raichur',9,NULL,NULL),(242,'Shimoga',9,NULL,NULL),(243,'Tumkur',9,NULL,NULL),(244,'Udupi',9,NULL,NULL),(245,'Uttara Kannada',9,NULL,NULL),(246,'Ramanagara',9,NULL,NULL),(247,'Chikballapur',9,NULL,NULL),(248,'Yadagiri',9,NULL,NULL),(249,'Alappuzha',10,NULL,NULL),(250,'Ernakulam',10,NULL,NULL),(251,'Idukki',10,NULL,NULL),(252,'Kollam',10,NULL,NULL),(253,'Kannur',10,NULL,NULL),(254,'Kasaragod',10,NULL,NULL),(255,'Kottayam',10,NULL,NULL),(256,'Kozhikode',10,NULL,NULL),(257,'Malappuram',10,NULL,NULL),(258,'Palakkad',10,NULL,NULL),(259,'Pathanamthitta',10,NULL,NULL),(260,'Thrissur',10,NULL,NULL),(261,'Thiruvananthapuram',10,NULL,NULL),(262,'Wayanad',10,NULL,NULL),(263,'Alirajpur',11,NULL,NULL),(264,'Anuppur',11,NULL,NULL),(265,'Ashok Nagar',11,NULL,NULL),(266,'Balaghat',11,NULL,NULL),(267,'Barwani',11,NULL,NULL),(268,'Betul',11,NULL,NULL),(269,'Bhind',11,NULL,NULL),(270,'Bhopal',11,NULL,NULL),(271,'Burhanpur',11,NULL,NULL),(272,'Chhatarpur',11,NULL,NULL),(273,'Chhindwara',11,NULL,NULL),(274,'Damoh',11,NULL,NULL),(275,'Datia',11,NULL,NULL),(276,'Dewas',11,NULL,NULL),(277,'Dhar',11,NULL,NULL),(278,'Dindori',11,NULL,NULL),(279,'Guna',11,NULL,NULL),(280,'Gwalior',11,NULL,NULL),(281,'Harda',11,NULL,NULL),(282,'Hoshangabad',11,NULL,NULL),(283,'Indore',11,NULL,NULL),(284,'Jabalpur',11,NULL,NULL),(285,'Jhabua',11,NULL,NULL),(286,'Katni',11,NULL,NULL),(287,'Khandwa',11,NULL,NULL),(288,'Khargone',11,NULL,NULL),(289,'Mandla',11,NULL,NULL),(290,'Mandsaur',11,NULL,NULL),(291,'Morena',11,NULL,NULL),(292,'Narsinghpur',11,NULL,NULL),(293,'Neemuch',11,NULL,NULL),(294,'Panna',11,NULL,NULL),(295,'Rewa',11,NULL,NULL),(296,'Rajgarh',11,NULL,NULL),(297,'Ratlam',11,NULL,NULL),(298,'Raisen',11,NULL,NULL),(299,'Sagar',11,NULL,NULL),(300,'Satna',11,NULL,NULL),(301,'Sehore',11,NULL,NULL),(302,'Seoni',11,NULL,NULL),(303,'Shahdol',11,NULL,NULL),(304,'Shajapur',11,NULL,NULL),(305,'Sheopur',11,NULL,NULL),(306,'Shivpuri',11,NULL,NULL),(307,'Sidhi',11,NULL,NULL),(308,'Singrauli',11,NULL,NULL),(309,'Tikamgarh',11,NULL,NULL),(310,'Ujjain',11,NULL,NULL),(311,'Umaria',11,NULL,NULL),(312,'Vidisha',11,NULL,NULL),(313,'Ahmednagar',12,NULL,NULL),(314,'Akola',12,NULL,NULL),(315,'Amrawati',12,NULL,NULL),(316,'Aurangabad',12,NULL,NULL),(317,'Bhandara',12,NULL,NULL),(318,'Beed',12,NULL,NULL),(319,'Buldhana',12,NULL,NULL),(320,'Chandrapur',12,NULL,NULL),(321,'Dhule',12,NULL,NULL),(322,'Gadchiroli',12,NULL,NULL),(323,'Gondiya',12,NULL,NULL),(324,'Hingoli',12,NULL,NULL),(325,'Jalgaon',12,NULL,NULL),(326,'Jalna',12,NULL,NULL),(327,'Kolhapur',12,NULL,NULL),(328,'Latur',12,NULL,NULL),(329,'Mumbai City',12,NULL,NULL),(330,'Mumbai suburban',12,NULL,NULL),(331,'Nandurbar',12,NULL,NULL),(332,'Nanded',12,NULL,NULL),(333,'Nagpur',12,NULL,NULL),(334,'Nashik',12,NULL,NULL),(335,'Osmanabad',12,NULL,NULL),(336,'Parbhani',12,NULL,NULL),(337,'Pune',12,NULL,NULL),(338,'Raigad',12,NULL,NULL),(339,'Ratnagiri',12,NULL,NULL),(340,'Sindhudurg',12,NULL,NULL),(341,'Sangli',12,NULL,NULL),(342,'Solapur',12,NULL,NULL),(343,'Satara',12,NULL,NULL),(344,'Thane',12,NULL,NULL),(345,'Wardha',12,NULL,NULL),(346,'Washim',12,NULL,NULL),(347,'Yavatmal',12,NULL,NULL),(348,'Bishnupur',13,NULL,NULL),(349,'Churachandpur',13,NULL,NULL),(350,'Chandel',13,NULL,NULL),(351,'Imphal East',13,NULL,NULL),(352,'Senapati',13,NULL,NULL),(353,'Tamenglong',13,NULL,NULL),(354,'Thoubal',13,NULL,NULL),(355,'Ukhrul',13,NULL,NULL),(356,'Imphal West',13,NULL,NULL),(357,'East Garo Hills',14,NULL,NULL),(358,'East Khasi Hills',14,NULL,NULL),(359,'Jaintia Hills',14,NULL,NULL),(360,'Ri-Bhoi',14,NULL,NULL),(361,'South Garo Hills',14,NULL,NULL),(362,'West Garo Hills',14,NULL,NULL),(363,'West Khasi Hills',14,NULL,NULL),(364,'Aizawl',15,NULL,NULL),(365,'Champhai',15,NULL,NULL),(366,'Kolasib',15,NULL,NULL),(367,'Lawngtlai',15,NULL,NULL),(368,'Lunglei',15,NULL,NULL),(369,'Mamit',15,NULL,NULL),(370,'Saiha',15,NULL,NULL),(371,'Serchhip',15,NULL,NULL),(372,'Dimapur',16,NULL,NULL),(373,'Kohima',16,NULL,NULL),(374,'Mokokchung',16,NULL,NULL),(375,'Mon',16,NULL,NULL),(376,'Phek',16,NULL,NULL),(377,'Tuensang',16,NULL,NULL),(378,'Wokha',16,NULL,NULL),(379,'Zunheboto',16,NULL,NULL),(380,'Angul',17,NULL,NULL),(381,'Boudh',17,NULL,NULL),(382,'Bhadrak',17,NULL,NULL),(383,'Bolangir',17,NULL,NULL),(384,'Bargarh',17,NULL,NULL),(385,'Baleswar',17,NULL,NULL),(386,'Cuttack',17,NULL,NULL),(387,'Debagarh',17,NULL,NULL),(388,'Dhenkanal',17,NULL,NULL),(389,'Ganjam',17,NULL,NULL),(390,'Gajapati',17,NULL,NULL),(391,'Jharsuguda',17,NULL,NULL),(392,'Jajapur',17,NULL,NULL),(393,'Jagatsinghpur',17,NULL,NULL),(394,'Khordha',17,NULL,NULL),(395,'Kendujhar',17,NULL,NULL),(396,'Kalahandi',17,NULL,NULL),(397,'Kandhamal',17,NULL,NULL),(398,'Koraput',17,NULL,NULL),(399,'Kendrapara',17,NULL,NULL),(400,'Malkangiri',17,NULL,NULL),(401,'Mayurbhanj',17,NULL,NULL),(402,'Nabarangpur',17,NULL,NULL),(403,'Nuapada',17,NULL,NULL),(404,'Nayagarh',17,NULL,NULL),(405,'Puri',17,NULL,NULL),(406,'Rayagada',17,NULL,NULL),(407,'Sambalpur',17,NULL,NULL),(408,'Subarnapur',17,NULL,NULL),(409,'Sundargarh',17,NULL,NULL),(410,'Karaikal',27,NULL,NULL),(411,'Mahe',27,NULL,NULL),(412,'Puducherry',27,NULL,NULL),(413,'Yanam',27,NULL,NULL),(414,'Amritsar',18,NULL,NULL),(415,'Bathinda',18,NULL,NULL),(416,'Firozpur',18,NULL,NULL),(417,'Faridkot',18,NULL,NULL),(418,'Fatehgarh Sahib',18,NULL,NULL),(419,'Gurdaspur',18,NULL,NULL),(420,'Hoshiarpur',18,NULL,NULL),(421,'Jalandhar',18,NULL,NULL),(422,'Kapurthala',18,NULL,NULL),(423,'Ludhiana',18,NULL,NULL),(424,'Mansa',18,NULL,NULL),(425,'Moga',18,NULL,NULL),(426,'Mukatsar',18,NULL,NULL),(427,'Nawan Shehar',18,NULL,NULL),(428,'Patiala',18,NULL,NULL),(429,'Rupnagar',18,NULL,NULL),(430,'Sangrur',18,NULL,NULL),(431,'Ajmer',19,NULL,NULL),(432,'Alwar',19,NULL,NULL),(433,'Bikaner',19,NULL,NULL),(434,'Barmer',19,NULL,NULL),(435,'Banswara',19,NULL,NULL),(436,'Bharatpur',19,NULL,NULL),(437,'Baran',19,NULL,NULL),(438,'Bundi',19,NULL,NULL),(439,'Bhilwara',19,NULL,NULL),(440,'Churu',19,NULL,NULL),(441,'Chittorgarh',19,NULL,NULL),(442,'Dausa',19,NULL,NULL),(443,'Dholpur',19,NULL,NULL),(444,'Dungapur',19,NULL,NULL),(445,'Ganganagar',19,NULL,NULL),(446,'Hanumangarh',19,NULL,NULL),(447,'Juhnjhunun',19,NULL,NULL),(448,'Jalore',19,NULL,NULL),(449,'Jodhpur',19,NULL,NULL),(450,'Jaipur',19,NULL,NULL),(451,'Jaisalmer',19,NULL,NULL),(452,'Jhalawar',19,NULL,NULL),(453,'Karauli',19,NULL,NULL),(454,'Kota',19,NULL,NULL),(455,'Nagaur',19,NULL,NULL),(456,'Pali',19,NULL,NULL),(457,'Pratapgarh',19,NULL,NULL),(458,'Rajsamand',19,NULL,NULL),(459,'Sikar',19,NULL,NULL),(460,'Sawai Madhopur',19,NULL,NULL),(461,'Sirohi',19,NULL,NULL),(462,'Tonk',19,NULL,NULL),(463,'Udaipur',19,NULL,NULL),(464,'East Sikkim',20,NULL,NULL),(465,'North Sikkim',20,NULL,NULL),(466,'South Sikkim',20,NULL,NULL),(467,'West Sikkim',20,NULL,NULL),(468,'Ariyalur',21,NULL,NULL),(469,'Chennai',21,NULL,NULL),(470,'Coimbatore',21,NULL,NULL),(471,'Cuddalore',21,NULL,NULL),(472,'Dharmapuri',21,NULL,NULL),(473,'Dindigul',21,NULL,NULL),(474,'Erode',21,NULL,NULL),(475,'Kanchipuram',21,NULL,NULL),(476,'Kanyakumari',21,NULL,NULL),(477,'Karur',21,NULL,NULL),(478,'Madurai',21,NULL,NULL),(479,'Nagapattinam',21,NULL,NULL),(480,'The Nilgiris',21,NULL,NULL),(481,'Namakkal',21,NULL,NULL),(482,'Perambalur',21,NULL,NULL),(483,'Pudukkottai',21,NULL,NULL),(484,'Ramanathapuram',21,NULL,NULL),(485,'Salem',21,NULL,NULL),(486,'Sivagangai',21,NULL,NULL),(487,'Tiruppur',21,NULL,NULL),(488,'Tiruchirappalli',21,NULL,NULL),(489,'Theni',21,NULL,NULL),(490,'Tirunelveli',21,NULL,NULL),(491,'Thanjavur',21,NULL,NULL),(492,'Thoothukudi',21,NULL,NULL),(493,'Thiruvallur',21,NULL,NULL),(494,'Thiruvarur',21,NULL,NULL),(495,'Tiruvannamalai',21,NULL,NULL),(496,'Vellore',21,NULL,NULL),(497,'Villupuram',21,NULL,NULL),(498,'Dhalai',22,NULL,NULL),(499,'North Tripura',22,NULL,NULL),(500,'South Tripura',22,NULL,NULL),(501,'West Tripura',22,NULL,NULL),(502,'Almora',33,NULL,NULL),(503,'Bageshwar',33,NULL,NULL),(504,'Chamoli',33,NULL,NULL),(505,'Champawat',33,NULL,NULL),(506,'Dehradun',33,NULL,NULL),(507,'Haridwar',33,NULL,NULL),(508,'Nainital',33,NULL,NULL),(509,'Pauri Garhwal',33,NULL,NULL),(510,'Pithoragharh',33,NULL,NULL),(511,'Rudraprayag',33,NULL,NULL),(512,'Tehri Garhwal',33,NULL,NULL),(513,'Udham Singh Nagar',33,NULL,NULL),(514,'Uttarkashi',33,NULL,NULL),(515,'Agra',23,NULL,NULL),(516,'Allahabad',23,NULL,NULL),(517,'Aligarh',23,NULL,NULL),(518,'Ambedkar Nagar',23,NULL,NULL),(519,'Auraiya',23,NULL,NULL),(520,'Azamgarh',23,NULL,NULL),(521,'Barabanki',23,NULL,NULL),(522,'Badaun',23,NULL,NULL),(523,'Bagpat',23,NULL,NULL),(524,'Bahraich',23,NULL,NULL),(525,'Bijnor',23,NULL,NULL),(526,'Ballia',23,NULL,NULL),(527,'Banda',23,NULL,NULL),(528,'Balrampur',23,NULL,NULL),(529,'Bareilly',23,NULL,NULL),(530,'Basti',23,NULL,NULL),(531,'Bulandshahr',23,NULL,NULL),(532,'Chandauli',23,NULL,NULL),(533,'Chitrakoot',23,NULL,NULL),(534,'Deoria',23,NULL,NULL),(535,'Etah',23,NULL,NULL),(536,'Kanshiram Nagar',23,NULL,NULL),(537,'Etawah',23,NULL,NULL),(538,'Firozabad',23,NULL,NULL),(539,'Farrukhabad',23,NULL,NULL),(540,'Fatehpur',23,NULL,NULL),(541,'Faizabad',23,NULL,NULL),(542,'Gautam Buddha Nagar',23,NULL,NULL),(543,'Gonda',23,NULL,NULL),(544,'Ghazipur',23,NULL,NULL),(545,'Gorkakhpur',23,NULL,NULL),(546,'Ghaziabad',23,NULL,NULL),(547,'Hamirpur',23,NULL,NULL),(548,'Hardoi',23,NULL,NULL),(549,'Mahamaya Nagar',23,NULL,NULL),(550,'Jhansi',23,NULL,NULL),(551,'Jalaun',23,NULL,NULL),(552,'Jyotiba Phule Nagar',23,NULL,NULL),(553,'Jaunpur District',23,NULL,NULL),(554,'Kanpur Dehat',23,NULL,NULL),(555,'Kannauj',23,NULL,NULL),(556,'Kanpur Nagar',23,NULL,NULL),(557,'Kaushambi',23,NULL,NULL),(558,'Kushinagar',23,NULL,NULL),(559,'Lalitpur',23,NULL,NULL),(560,'Lakhimpur Kheri',23,NULL,NULL),(561,'Lucknow',23,NULL,NULL),(562,'Mau',23,NULL,NULL),(563,'Meerut',23,NULL,NULL),(564,'Maharajganj',23,NULL,NULL),(565,'Mahoba',23,NULL,NULL),(566,'Mirzapur',23,NULL,NULL),(567,'Moradabad',23,NULL,NULL),(568,'Mainpuri',23,NULL,NULL),(569,'Mathura',23,NULL,NULL),(570,'Muzaffarnagar',23,NULL,NULL),(571,'Pilibhit',23,NULL,NULL),(572,'Pratapgarh',23,NULL,NULL),(573,'Rampur',23,NULL,NULL),(574,'Rae Bareli',23,NULL,NULL),(575,'Saharanpur',23,NULL,NULL),(576,'Sitapur',23,NULL,NULL),(577,'Shahjahanpur',23,NULL,NULL),(578,'Sant Kabir Nagar',23,NULL,NULL),(579,'Siddharthnagar',23,NULL,NULL),(580,'Sonbhadra',23,NULL,NULL),(581,'Sant Ravidas Nagar',23,NULL,NULL),(582,'Sultanpur',23,NULL,NULL),(583,'Shravasti',23,NULL,NULL),(584,'Unnao',23,NULL,NULL),(585,'Varanasi',23,NULL,NULL),(586,'Birbhum',24,NULL,NULL),(587,'Bankura',24,NULL,NULL),(588,'Bardhaman',24,NULL,NULL),(589,'Darjeeling',24,NULL,NULL),(590,'Dakshin Dinajpur',24,NULL,NULL),(591,'Hooghly',24,NULL,NULL),(592,'Howrah',24,NULL,NULL),(593,'Jalpaiguri',24,NULL,NULL),(594,'Cooch Behar',24,NULL,NULL),(595,'Kolkata',24,NULL,NULL),(596,'Malda',24,NULL,NULL),(597,'Midnapore',24,NULL,NULL),(598,'Murshidabad',24,NULL,NULL),(599,'Nadia',24,NULL,NULL),(600,'North 24 Parganas',24,NULL,NULL),(601,'South 24 Parganas',24,NULL,NULL),(602,'Purulia',28,NULL,NULL),(603,'Uttar Dinajpur',28,NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citypincodes`
--

DROP TABLE IF EXISTS `citypincodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citypincodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int unsigned NOT NULL,
  `pincode` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citypincodes_city_id_index` (`city_id`),
  CONSTRAINT `citypincodes_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citypincodes`
--

LOCK TABLES `citypincodes` WRITE;
/*!40000 ALTER TABLE `citypincodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `citypincodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_products`
--

DROP TABLE IF EXISTS `collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `collection_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_products_product_id_index` (`product_id`),
  KEY `collection_products_collection_id_index` (`collection_id`),
  CONSTRAINT `collection_products_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`),
  CONSTRAINT `collection_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_products`
--

LOCK TABLES `collection_products` WRITE;
/*!40000 ALTER TABLE `collection_products` DISABLE KEYS */;
INSERT INTO `collection_products` VALUES (5,124,62,'2023-02-08 00:24:19','2023-02-08 00:24:19'),(6,125,62,'2023-02-08 00:24:19','2023-02-08 00:24:19'),(7,126,62,'2023-02-08 00:24:19','2023-02-08 00:24:19'),(8,127,62,'2023-02-08 00:24:19','2023-02-08 00:24:19'),(9,128,63,'2023-02-08 01:02:49','2023-02-08 01:02:49'),(10,129,63,'2023-02-08 01:02:49','2023-02-08 01:02:49'),(11,132,63,'2023-02-08 01:02:49','2023-02-08 01:02:49'),(12,131,63,'2023-02-08 01:02:49','2023-02-08 01:02:49'),(13,132,64,'2023-02-08 01:03:09','2023-02-08 01:03:09'),(14,129,64,'2023-02-08 01:03:09','2023-02-08 01:03:09'),(15,131,64,'2023-02-08 01:03:09','2023-02-08 01:03:09'),(16,130,64,'2023-02-08 01:03:09','2023-02-08 01:03:09'),(17,128,64,'2023-02-08 01:03:09','2023-02-08 01:03:09'),(18,135,65,'2023-02-08 01:03:30','2023-02-08 01:03:30'),(19,134,65,'2023-02-08 01:03:30','2023-02-08 01:03:30'),(20,133,65,'2023-02-08 01:03:30','2023-02-08 01:03:30'),(21,136,65,'2023-02-08 01:03:30','2023-02-08 01:03:30'),(22,126,66,'2023-02-08 01:04:00','2023-02-08 01:04:00'),(23,124,66,'2023-02-08 01:04:00','2023-02-08 01:04:00'),(24,131,66,'2023-02-08 01:04:00','2023-02-08 01:04:00'),(25,134,66,'2023-02-08 01:04:00','2023-02-08 01:04:00'),(26,125,66,'2023-02-08 01:04:00','2023-02-08 01:04:00'),(27,125,67,'2023-02-08 02:05:28','2023-02-08 02:05:28'),(28,126,67,'2023-02-08 02:05:28','2023-02-08 02:05:28'),(29,134,67,'2023-02-08 02:05:28','2023-02-08 02:05:28'),(30,135,67,'2023-02-08 02:05:28','2023-02-08 02:05:28'),(31,138,68,'2023-02-08 02:05:45','2023-02-08 02:05:45'),(32,137,68,'2023-02-08 02:05:45','2023-02-08 02:05:45'),(33,136,68,'2023-02-08 02:05:45','2023-02-08 02:05:45'),(34,148,68,'2023-02-08 02:05:45','2023-02-08 02:05:45'),(35,155,69,'2023-02-08 02:06:14','2023-02-08 02:06:14'),(36,154,69,'2023-02-08 02:06:14','2023-02-08 02:06:14'),(37,153,69,'2023-02-08 02:06:14','2023-02-08 02:06:14'),(38,150,69,'2023-02-08 02:06:14','2023-02-08 02:06:14'),(39,149,70,'2023-02-08 02:06:38','2023-02-08 02:06:38'),(40,151,70,'2023-02-08 02:06:38','2023-02-08 02:06:38'),(41,148,70,'2023-02-08 02:06:38','2023-02-08 02:06:38'),(42,146,70,'2023-02-08 02:06:38','2023-02-08 02:06:38'),(43,149,71,'2023-02-08 02:07:08','2023-02-08 02:07:08'),(44,146,71,'2023-02-08 02:07:08','2023-02-08 02:07:08'),(45,143,71,'2023-02-08 02:07:08','2023-02-08 02:07:08'),(46,144,71,'2023-02-08 02:07:08','2023-02-08 02:07:08'),(47,124,72,'2023-02-08 02:07:23','2023-02-08 02:07:23'),(48,125,72,'2023-02-08 02:07:23','2023-02-08 02:07:23'),(49,126,72,'2023-02-08 02:07:23','2023-02-08 02:07:23'),(50,127,72,'2023-02-08 02:07:23','2023-02-08 02:07:23'),(51,134,73,'2023-02-08 02:07:39','2023-02-08 02:07:39'),(52,131,73,'2023-02-08 02:07:39','2023-02-08 02:07:39'),(53,128,73,'2023-02-08 02:07:39','2023-02-08 02:07:39'),(54,132,73,'2023-02-08 02:07:39','2023-02-08 02:07:39'),(55,137,74,'2023-02-08 02:07:56','2023-02-08 02:07:56'),(56,138,74,'2023-02-08 02:07:56','2023-02-08 02:07:56'),(57,135,74,'2023-02-08 02:07:56','2023-02-08 02:07:56'),(58,126,74,'2023-02-08 02:07:56','2023-02-08 02:07:56'),(64,139,76,'2023-02-08 02:08:44','2023-02-08 02:08:44'),(65,142,76,'2023-02-08 02:08:44','2023-02-08 02:08:44'),(66,145,76,'2023-02-08 02:08:44','2023-02-08 02:08:44'),(67,148,76,'2023-02-08 02:08:44','2023-02-08 02:08:44'),(68,151,76,'2023-02-08 02:08:44','2023-02-08 02:08:44'),(79,152,79,'2023-02-08 02:09:53','2023-02-08 02:09:53'),(80,150,79,'2023-02-08 02:09:53','2023-02-08 02:09:53'),(81,153,79,'2023-02-08 02:09:53','2023-02-08 02:09:53'),(82,141,79,'2023-02-08 02:09:53','2023-02-08 02:09:53'),(83,139,79,'2023-02-08 02:09:53','2023-02-08 02:09:53'),(84,145,79,'2023-02-08 02:09:53','2023-02-08 02:09:53'),(85,142,79,'2023-02-08 02:09:53','2023-02-08 02:09:53'),(86,155,80,'2023-02-08 02:10:26','2023-02-08 02:10:26'),(87,154,80,'2023-02-08 02:10:26','2023-02-08 02:10:26'),(88,141,80,'2023-02-08 02:10:26','2023-02-08 02:10:26'),(89,150,80,'2023-02-08 02:10:26','2023-02-08 02:10:26'),(90,148,80,'2023-02-08 02:10:26','2023-02-08 02:10:26'),(91,127,78,'2023-02-08 02:13:26','2023-02-08 02:13:26'),(92,133,78,'2023-02-08 02:13:26','2023-02-08 02:13:26'),(93,128,78,'2023-02-08 02:13:26','2023-02-08 02:13:26'),(94,131,78,'2023-02-08 02:13:26','2023-02-08 02:13:26'),(95,137,78,'2023-02-08 02:13:26','2023-02-08 02:13:26'),(134,131,77,'2023-02-08 02:17:33','2023-02-08 02:17:33'),(135,137,77,'2023-02-08 02:17:33','2023-02-08 02:17:33'),(136,134,77,'2023-02-08 02:17:33','2023-02-08 02:17:33'),(137,144,77,'2023-02-08 02:17:33','2023-02-08 02:17:33'),(138,152,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(139,146,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(140,143,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(141,140,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(142,139,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(143,145,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(144,142,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(145,150,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(146,137,75,'2023-02-08 02:18:03','2023-02-08 02:18:03'),(152,141,81,'2023-02-10 04:39:47','2023-02-10 04:39:47'),(153,144,81,'2023-02-10 04:39:47','2023-02-10 04:39:47'),(154,124,81,'2023-02-10 04:39:47','2023-02-10 04:39:47'),(155,125,81,'2023-02-10 04:39:47','2023-02-10 04:39:47'),(156,156,81,'2023-02-10 04:39:47','2023-02-10 04:39:47');
/*!40000 ALTER TABLE `collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collections_user_id_index` (`user_id`),
  CONSTRAINT `collections_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (62,3,'Shoes To Elevate Your Style  222','2023-02-08 00:24:19','2023-02-08 00:24:19'),(63,3,'Celebrity Story | #GravityGrey','2023-02-08 01:02:49','2023-02-08 01:02:49'),(64,3,'Celebrity Story | #Shirid Demo','2023-02-08 01:03:09','2023-02-08 01:03:09'),(65,3,'MobileS #demoMobile','2023-02-08 01:03:30','2023-02-08 01:03:30'),(66,3,'New Boxers For You','2023-02-08 01:04:00','2023-02-08 01:04:00'),(67,3,'Update Your Collection','2023-02-08 02:05:28','2023-02-08 02:05:28'),(68,3,'Update Your Collection2','2023-02-08 02:05:45','2023-02-08 02:05:45'),(69,3,'FULL ON FUN STAPLES','2023-02-08 02:06:14','2023-02-08 02:06:14'),(70,3,'TEAM UP POLKA SHIRTS WITH SOLI','2023-02-08 02:06:38','2023-02-08 02:06:38'),(71,3,'THEY LOOK GOOD ON EVERYONE','2023-02-08 02:07:07','2023-02-08 02:07:07'),(72,3,'CELEBRITY WINTER #OOTD','2023-02-08 02:07:23','2023-02-08 02:07:23'),(73,3,'GET HRITHIK ROSHAN\'S LOOK','2023-02-08 02:07:39','2023-02-08 02:07:39'),(74,3,'PUNK UP YOUR LOOK','2023-02-08 02:07:56','2023-02-08 02:07:56'),(75,3,'GET STRIPED STYLES HERE11','2023-02-08 02:08:12','2023-02-08 02:16:01'),(76,3,'LET\'S #GETGRAPHIC','2023-02-08 02:08:44','2023-02-08 02:08:44'),(77,3,'FRESH PRINTS IN THE HOUSE','2023-02-08 02:08:58','2023-02-08 02:08:58'),(78,3,'FLAUNT THEM, LOVE THEM-2','2023-02-08 02:09:27','2023-02-08 02:09:27'),(79,3,'Picture-Perfect #PartyPicks','2023-02-08 02:09:53','2023-02-08 02:09:53'),(80,3,'NEW YEAR = NEW WARDROBE','2023-02-08 02:10:26','2023-02-08 02:10:26'),(81,3,'test collevction dkfjkl d','2023-02-10 04:39:35','2023-02-10 04:39:35');
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactnumber` bigint NOT NULL,
  `query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contacts_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonecode` int NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'IN','India',91,'active','2022-12-15 01:43:54','2022-12-15 01:43:54');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_shipping_method`
--

DROP TABLE IF EXISTS `country_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_shipping_method` (
  `country_id` int unsigned NOT NULL,
  `shipping_method_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `country_shipping_method_country_id_index` (`country_id`),
  KEY `country_shipping_method_shipping_method_id_index` (`shipping_method_id`),
  CONSTRAINT `country_shipping_method_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `country_shipping_method_shipping_method_id_foreign` FOREIGN KEY (`shipping_method_id`) REFERENCES `shipping_methods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_shipping_method`
--

LOCK TABLES `country_shipping_method` WRITE;
/*!40000 ALTER TABLE `country_shipping_method` DISABLE KEYS */;
INSERT INTO `country_shipping_method` VALUES (101,1,'2022-12-10 02:20:17','2022-12-10 02:20:17'),(8,2,'2022-12-10 02:20:17','2022-12-10 02:20:17'),(1,1,'2022-12-19 00:34:53','2022-12-19 00:34:53'),(1,1,'2022-12-19 00:36:56','2022-12-19 00:36:56'),(1,2,'2022-12-19 00:36:56','2022-12-19 00:36:56');
/*!40000 ALTER TABLE `country_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_settings`
--

DROP TABLE IF EXISTS `fee_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `min_amount` int DEFAULT NULL,
  `max_amount` int DEFAULT NULL,
  `fee` double(10,2) NOT NULL,
  `type` enum('order','withdraw') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'order',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_settings`
--

LOCK TABLES `fee_settings` WRITE;
/*!40000 ALTER TABLE `fee_settings` DISABLE KEYS */;
INSERT INTO `fee_settings` VALUES (1,0,250,2.00,'order','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(2,250,500,5.00,'order','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(3,500,1000,25.00,'order','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(4,1000,NULL,50.00,'order','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL);
/*!40000 ALTER TABLE `fee_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `fee` double(30,10) NOT NULL DEFAULT '0.0000000000',
  `status` enum('pending','approve','cancel','refund') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fees_user_id_foreign` (`user_id`),
  CONSTRAINT `fees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1,3,2.0000000000,'approve','cod',1,'order_item','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(2,3,50.0000000000,'approve','cod',1,'order_item','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giftcard_images`
--

DROP TABLE IF EXISTS `giftcard_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giftcard_images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `giftcard_images_category_id_foreign` (`category_id`),
  CONSTRAINT `giftcard_images_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcard_images`
--

LOCK TABLES `giftcard_images` WRITE;
/*!40000 ALTER TABLE `giftcard_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `giftcard_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giftcard_orders`
--

DROP TABLE IF EXISTS `giftcard_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giftcard_orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `amount` int NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_on` datetime NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `giftcard_orders_code_unique` (`code`),
  KEY `giftcard_orders_order_id_foreign` (`order_id`),
  KEY `giftcard_orders_item_id_foreign` (`item_id`),
  CONSTRAINT `giftcard_orders_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `order_item` (`id`),
  CONSTRAINT `giftcard_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcard_orders`
--

LOCK TABLES `giftcard_orders` WRITE;
/*!40000 ALTER TABLE `giftcard_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `giftcard_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `invoiceno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int unsigned NOT NULL,
  `order_item_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `invoicedate` date NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `filepath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_order_item_id_foreign` (`order_item_id`),
  KEY `invoices_order_id_index` (`order_id`),
  KEY `invoices_user_id_index` (`user_id`),
  CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `invoices_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_item` (`id`),
  CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_templates`
--

DROP TABLE IF EXISTS `mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mail_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_templates`
--

LOCK TABLES `mail_templates` WRITE;
/*!40000 ALTER TABLE `mail_templates` DISABLE KEYS */;
INSERT INTO `mail_templates` VALUES (1,'change_password','Change Password','Hi :name <br> \n                                Your Password is changed successfully. <br> \n                                Thanks & Regards <br> \n                                <p>Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(2,'new_message','Message','Hi <br> \n                                <p>:message</p><br>\n                                Thanks & Regards <br> \n                                :username <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(3,'register_new_user','Register New User','Hi :name <br> \n                                Your account was successfully created. <br>\n                                Thanks & Regards <br> \n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(4,'paytm_failure','PayTM Transaction Failure','Hi :name <br> \n                                Your PayTM transaction is failure. <br>\n                                Thanks & Regards <br> \n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(5,'new_order','New Order','Hi :name <br> \n                                Your ordered was successfully created. <br>\n                                :order <br>\n                                Thanks & Regards <br> \n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(6,'order_shipment','Order Shipment','Hi :name <br> \n                                Your ordered was successfully Shipped. <br>\n                               ORDER NUMNER--> :orderno <br>\n                                Thanks & Regards <br> \n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(7,'seller_new_order','Seller New Order','New Order Received <br>\n                               BUYER NAME --> :name <br>\n                               ADDRESS <br>\n                               :address1 <br>\n                               :address2 <br>\n                               Thanks & Regards <br> \n                               Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(8,'invoice','Invoice','Hi :name <br> \n                                Your Invoice is: <br>\n                                :invoice <br>\n                                Thanks & Regards <br> \n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(9,'reset_passsword','Reset Password','Hi :username <br> \n                                Your Password is :newpassword. <br> \n                                Thanks & Regards <br> \n                                <p>Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(10,'send_message','Admin Message','Hi :username<br> \n                                <p>:message</p><br>\n                                Thanks & Regards <br> \n                                 Administration Team ',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(11,'admin_register_new_user','Admin Register New User','Hi :name ,<br><br>\n                                Your account was successfully created. <br><br>\n                                account details:-<br>\n                                Username : :name<br>\n                                Email : :email<br>\n                                Password : :password<br><br>\n                                Thanks & Regards <br>\n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(12,'gift_order','Gift Order',' <div class=\"flex \">\n                       <div class=\"w-full lg:w-1/3\">\n                         <div class=\"border\">\n                           <img  src=\"src=\"http://admin-app.test/uploads/uploads/images/1EgAwhhaIucS1Ye1Wcot45PuP2K9lR7ZPKt5VgJ8.jpeg\" class=\"w-full px-1 py-1\">\n                           <div class=\"flex items-center px-2 py-3\">\n                             <div class=\"w-1/2 border-r\"><img src=\"/images/gift.png\" class=\"\"></div>\n                             <div class=\"w-1/2 px-5\"><h1 class=\"text-grey-darker font-medium\"> :amount</h1></div>\n                             \n                           </div>\n                           <div class=\" py-4  border-t\">\n                             <p class=\"text-base px-4 text-grey-darker\">Your Gift Card</p>\n                           </div>\n                         </div>\n                       </div></div>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(13,'giftvoucher_status','Gift voucher Status','Hi :name <br> \n                                Your gift voucher is used. <br>\n                                :message <br>\n                                Thanks & Regards <br> \n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(14,'question_mail','Question Mail','Hi :name <br> \n                                  :productname <br>\n                                  :question <br>\n                                Thanks & Regards <br> \n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(15,'answer_mail','Answer Mail','Hi :name <br> \n                                  :productname <br>\n                                  Question<br>\n                                  :question <br>\n                                  Answer<br>\n                                  :answer <br>\n                                Thanks & Regards <br> \n                                Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(16,'cancel_item_seller','Cancel Order Item','Hi :name <br> \n                                Your order item of :productname is canceled. <br> \n                                Thanks & Regards <br> \n                                <p>Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(17,'cancel_item_buyer','Cancel Order Item','Hi :name <br> \n                                Your order item of :productname is canceled. <br> \n                                Thanks & Regards <br> \n                                <p>Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(18,'hold_item_buyer','Cancel Order Item','Hi :name <br> \n                                Your order id :orderid in order item of :productname is Hold. <br> \n                                Thanks & Regards <br> \n                                <p>Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17'),(19,'hold_item_Seller','Cancel Order Item','Hi :name <br> \n                                Your order id :orderid in order item of :productname is Hold. <br> \n                                Thanks & Regards <br> \n                                <p>Administration Team <br>',NULL,'active','2022-12-10 02:20:17','2022-12-10 02:20:17');
/*!40000 ALTER TABLE `mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `seller_id` int unsigned NOT NULL,
  `buyer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `product_variation_id` int unsigned NOT NULL,
  `price` double(50,2) NOT NULL DEFAULT '0.00',
  `quantity` int NOT NULL,
  `tax_id` int unsigned NOT NULL,
  `producttaxrate` double(50,2) NOT NULL DEFAULT '0.00',
  `shippingtaxrate` double(50,2) NOT NULL DEFAULT '0.00',
  `shippingprice` double(50,2) NOT NULL DEFAULT '0.00',
  `productdetail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','processing','payment_failed','shipped','completed','refunded','cancel','hold','unhold') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `type` enum('pending','processing','payment_failed','shipped','completed','refunded') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `to_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `from` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `card_image` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_item_seller_id_foreign` (`seller_id`),
  KEY `order_item_buyer_id_foreign` (`buyer_id`),
  KEY `order_item_order_id_index` (`order_id`),
  KEY `order_item_tax_id_index` (`tax_id`),
  CONSTRAINT `order_item_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_item_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (79,47,3,6,155,146,6500.00,2,1,5.00,5.00,9.00,'{\"product\":{\"id\":155,\"user_id\":3,\"store_id\":11,\"name\":\"Demo Product 30\",\"slug\":\"demo-product-30\",\"description\":\"Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30\",\"price\":650000,\"tax_id\":1,\"status\":1,\"quantity\":2,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":146,\"name\":\"blue-small\",\"product_id\":155,\"price\":650000,\"attribute_product_id\":629,\"quantity\":2},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":173,\"product_id\":155,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/Z5a5iYITBN_1675841030.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_Z5a5iYITBN_1675841030.jpg\"},{\"id\":174,\"product_id\":155,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/SUxZlA5gsw_1675841031.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_SUxZlA5gsw_1675841031.jpg\"},{\"id\":175,\"product_id\":155,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/FJWpozd4Xz_1675841033.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_FJWpozd4Xz_1675841033.jpg\"},{\"id\":176,\"product_id\":155,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/H3Outcpdfu_1675841035.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_H3Outcpdfu_1675841035.jpg\"},{\"id\":177,\"product_id\":155,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/4YwaXjqYUt_1675841084.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_4YwaXjqYUt_1675841084.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-02-11 04:30:45','2023-02-11 04:30:45'),(80,47,3,6,141,131,1500.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":141,\"user_id\":3,\"store_id\":11,\"name\":\"Demo Product 15\",\"slug\":\"demo-product-15\",\"description\":\"Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15\",\"price\":150000,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":131,\"name\":\"blue-small\",\"product_id\":141,\"price\":150000,\"attribute_product_id\":545,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":97,\"product_id\":141,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/uB3GWRdwEP_1675839727.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_uB3GWRdwEP_1675839727.jpg\"},{\"id\":98,\"product_id\":141,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/DBQq2mlgI3_1675839729.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_DBQq2mlgI3_1675839729.jpg\"},{\"id\":99,\"product_id\":141,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/ZaLLrvno6n_1675839730.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_ZaLLrvno6n_1675839730.jpg\"},{\"id\":100,\"product_id\":141,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/XHM1k4JC9x_1675839732.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_XHM1k4JC9x_1675839732.jpg\"},{\"id\":101,\"product_id\":141,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/jxMRvCk0tM_1675839734.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_jxMRvCk0tM_1675839734.jpg\"},{\"id\":102,\"product_id\":141,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/TB3sifyhR4_1675839735.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_TB3sifyhR4_1675839735.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-02-11 04:30:45','2023-02-11 04:30:45'),(81,47,3,6,156,147,10.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":156,\"user_id\":3,\"store_id\":11,\"name\":\"demo proudvjt  ddd6 565\",\"slug\":\"demo-proudvjt-ddd6-565\",\"description\":\"dtg ret dfgfd gfdg fdg fdg df fdg\",\"price\":1000,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":147,\"name\":\"blue-small\",\"product_id\":156,\"price\":1000,\"attribute_product_id\":635,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":178,\"product_id\":156,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/1TsSBBbzYR_1676023707.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_1TsSBBbzYR_1676023707.jpg\"},{\"id\":179,\"product_id\":156,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/BhQdurOYJu_1676023709.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_BhQdurOYJu_1676023709.jpg\"},{\"id\":180,\"product_id\":156,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/zwPt78xEwl_1676023711.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_zwPt78xEwl_1676023711.jpg\"},{\"id\":181,\"product_id\":156,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/mJIM7iWV8Y_1676023713.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_mJIM7iWV8Y_1676023713.jpg\"},{\"id\":182,\"product_id\":156,\"position\":1,\"imagepath\":\"uploads\\/product_images\\/qmMkkz4VVQ_1676023714.jpg\",\"thumbnailimage\":\"uploads\\/thumbnail_images\\/thumbnail_qmMkkz4VVQ_1676023714.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-02-11 04:30:45','2023-02-11 04:30:45');
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_product_stores`
--

DROP TABLE IF EXISTS `order_product_stores`;
/*!50001 DROP VIEW IF EXISTS `order_product_stores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_product_stores` AS SELECT 
 1 AS `id`,
 1 AS `orderno`,
 1 AS `user_id`,
 1 AS `address_id`,
 1 AS `shipping_method_id`,
 1 AS `giftorder_id`,
 1 AS `status`,
 1 AS `subtotal`,
 1 AS `payment_method_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `deleted_at`,
 1 AS `product_variation_id`,
 1 AS `quantity`,
 1 AS `variationame`,
 1 AS `price`,
 1 AS `name`,
 1 AS `store_id`,
 1 AS `storename`,
 1 AS `sellerid`,
 1 AS `orderitemid`,
 1 AS `selleraddress`,
 1 AS `sellername`,
 1 AS `selleremail`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `order_item_id` int unsigned DEFAULT NULL,
  `from_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_status_order_id_foreign` (`order_id`),
  KEY `order_status_order_item_id_foreign` (`order_item_id`),
  KEY `order_status_created_by_foreign` (`created_by`),
  KEY `order_status_updated_by_foreign` (`updated_by`),
  CONSTRAINT `order_status_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `order_status_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_status_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_item` (`id`),
  CONSTRAINT `order_status_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_status_view`
--

DROP TABLE IF EXISTS `order_status_view`;
/*!50001 DROP VIEW IF EXISTS `order_status_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_status_view` AS SELECT 
 1 AS `orderid`,
 1 AS `orderno`,
 1 AS `sellerid`,
 1 AS `status`,
 1 AS `orderstatusid`,
 1 AS `from_status`,
 1 AS `to_status`,
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `order_trackings`
--

DROP TABLE IF EXISTS `order_trackings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_trackings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `shipping_method_id` int unsigned NOT NULL,
  `trackingnumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_trackings_order_id_index` (`order_id`),
  KEY `order_trackings_shipping_method_id_index` (`shipping_method_id`),
  CONSTRAINT `order_trackings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_trackings_shipping_method_id_foreign` FOREIGN KEY (`shipping_method_id`) REFERENCES `shipping_methods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_trackings`
--

LOCK TABLES `order_trackings` WRITE;
/*!40000 ALTER TABLE `order_trackings` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_trackings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orderdetailview`
--

DROP TABLE IF EXISTS `orderdetailview`;
/*!50001 DROP VIEW IF EXISTS `orderdetailview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orderdetailview` AS SELECT 
 1 AS `seller_id`,
 1 AS `orderid`,
 1 AS `orderno`,
 1 AS `order_item_id`,
 1 AS `to_email`,
 1 AS `fromaddress`,
 1 AS `productname`,
 1 AS `productslug`,
 1 AS `storeslug`,
 1 AS `purchased_on`,
 1 AS `storename`,
 1 AS `status`,
 1 AS `thumbnailimage`,
 1 AS `paymentmethod`,
 1 AS `quantity`,
 1 AS `variationid`,
 1 AS `variationname`,
 1 AS `productprice`,
 1 AS `tax_id`,
 1 AS `taxrate`,
 1 AS `billname`,
 1 AS `billaddress`,
 1 AS `billcity`,
 1 AS `product_type`,
 1 AS `card_name`,
 1 AS `cityname`,
 1 AS `state_id`,
 1 AS `statename`,
 1 AS `billpostcode`,
 1 AS `mobileno`,
 1 AS `country_id`,
 1 AS `country`,
 1 AS `shippingmethod`,
 1 AS `shippingprice`,
 1 AS `transaction_id`,
 1 AS `productsubtotal`,
 1 AS `created_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `address_id` int unsigned DEFAULT NULL,
  `shipping_method_id` int unsigned DEFAULT NULL,
  `giftorder_id` int unsigned DEFAULT NULL,
  `status` enum('pending','processing','payment_failed','shipped','completed','refunded','cancel','hold','unhold') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `subtotal` int NOT NULL,
  `payment_method_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_index` (`user_id`),
  KEY `orders_address_id_index` (`address_id`),
  KEY `orders_shipping_method_id_index` (`shipping_method_id`),
  KEY `orders_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  CONSTRAINT `orders_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  CONSTRAINT `orders_shipping_method_id_foreign` FOREIGN KEY (`shipping_method_id`) REFERENCES `shipping_methods` (`id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (47,'OR_001',6,8,1,NULL,'processing',1451000,2,'2023-02-11 04:30:45','2023-02-11 04:31:24',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navlabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seotitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seodescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seokeyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'About','About Description','About','en','about','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','About','About','About',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(2,'Privacy','Privacy Description','Privacy','en','privacy','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.','Privacy','Privacy','Privacy',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(3,'Terms and Condition','Terms and Condition Description','Terms and Condition','en','terms-condition','Duis quis elit cursus, varius libero nec, sodales lacus. Mauris finibus ornare sapien eu venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper imperdiet varius. Donec sollicitudin justo non mauris laoreet venenatis. Mauris nec tempor ante. Vestibulum feugiat nec arcu sit amet ultrices. Praesent scelerisque euismod orci vitae rutrum.\n\nCras accumsan lobortis dui, a bibendum massa ullamcorper at. Nunc nec ex eget leo ultricies scelerisque sit amet sit amet enim. Nulla scelerisque eros vel hendrerit tempus. Sed et diam mi. Nunc pharetra ullamcorper congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras eget ultrices leo, aliquam fringilla est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sagittis ipsum eu neque dapibus, gravida fermentum eros malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec eleifend nunc in diam tempus interdum.\n\nCras non urna dictum, consectetur arcu id, consequat magna. Praesent id leo at ligula ultricies tincidunt vitae vitae magna. Nam vehicula mi sed dui placerat dignissim. Curabitur ac nibh bibendum tortor pulvinar tincidunt. Etiam sed faucibus nulla. Sed vel sapien tincidunt, tempor mauris nec, dignissim urna. Duis gravida in tellus id imperdiet. Integer sed rutrum metus. Nulla sed euismod elit. Sed eleifend posuere dictum. Proin ac laoreet lorem, vitae facilisis nulla.\n\nFusce lobortis pharetra lectus sit amet volutpat. Nullam et ante at elit gravida ultricies at sit amet diam. Mauris vitae congue nunc, et consectetur dolor. Sed scelerisque dolor scelerisque metus molestie, vel eleifend neque dapibus. Suspendisse est nulla, commodo ac sem quis, posuere molestie purus. Phasellus vitae risus vel justo hendrerit vulputate. Integer condimentum odio purus, eu egestas augue fermentum ac. Cras aliquet lorem id volutpat venenatis. Donec id nunc odio. Maecenas tortor odio, mattis congue suscipit ut, volutpat non mi. Morbi quis nisi condimentum, auctor ligula ut, laoreet magna.\n\nFusce maximus at sapien sit amet condimentum. Fusce vitae lorem sollicitudin, dignissim velit quis, consectetur mi. Nam gravida lorem diam, a hendrerit diam cursus sed. Suspendisse potenti. Etiam pharetra nibh tortor, sollicitudin dignissim ante malesuada nec. Pellentesque vulputate magna eu dapibus pretium. Quisque accumsan cursus neque dignissim venenatis. Curabitur rutrum enim sed eros porta hendrerit ut sed mauris. Integer a sagittis nisi. Praesent id purus neque. Sed vulputate interdum ipsum vel varius. Cras maximus nisl eget libero luctus, vitae pulvinar quam elementum. Nullam id justo lacus. Nulla quis odio lectus.','Terms and Condition','Terms and Condition','Terms and Condition',3,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(4,'How it Works','How it Works Description','How it Works','en','how-it-works','How it Works Content Comes Here.','How it Works','How it Works','How it Works',4,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(5,'Our Story','Our Story Description','Our Story','en','our-story','Content Page for our story. You can login to admin panel and edit the story. \n\n            Duis quis elit cursus, varius libero nec, sodales lacus. Mauris finibus ornare sapien eu venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper imperdiet varius. Donec sollicitudin justo non mauris laoreet venenatis. Mauris nec tempor ante. Vestibulum feugiat nec arcu sit amet ultrices. Praesent scelerisque euismod orci vitae rutrum.\n\nCras accumsan lobortis dui, a bibendum massa ullamcorper at. Nunc nec ex eget leo ultricies scelerisque sit amet sit amet enim. Nulla scelerisque eros vel hendrerit tempus. Sed et diam mi. Nunc pharetra ullamcorper congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras eget ultrices leo, aliquam fringilla est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sagittis ipsum eu neque dapibus, gravida fermentum eros malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec eleifend nunc in diam tempus interdum.\n\nCras non urna dictum, consectetur arcu id, consequat magna. Praesent id leo at ligula ultricies tincidunt vitae vitae magna. Nam vehicula mi sed dui placerat dignissim. Curabitur ac nibh bibendum tortor pulvinar tincidunt. Etiam sed faucibus nulla. Sed vel sapien tincidunt, tempor mauris nec, dignissim urna. Duis gravida in tellus id imperdiet. Integer sed rutrum metus. Nulla sed euismod elit. Sed eleifend posuere dictum. Proin ac laoreet lorem, vitae facilisis nulla.\n\nFusce lobortis pharetra lectus sit amet volutpat. Nullam et ante at elit gravida ultricies at sit amet diam. Mauris vitae congue nunc, et consectetur dolor. Sed scelerisque dolor scelerisque metus molestie, vel eleifend neque dapibus. Suspendisse est nulla, commodo ac sem quis, posuere molestie purus. Phasellus vitae risus vel justo hendrerit vulputate. Integer condimentum odio purus, eu egestas augue fermentum ac. Cras aliquet lorem id volutpat venenatis. Donec id nunc odio. Maecenas tortor odio, mattis congue suscipit ut, volutpat non mi. Morbi quis nisi condimentum, auctor ligula ut, laoreet magna.\n\nFusce maximus at sapien sit amet condimentum. Fusce vitae lorem sollicitudin, dignissim velit quis, consectetur mi. Nam gravida lorem diam, a hendrerit diam cursus sed. Suspendisse potenti. Etiam pharetra nibh tortor, sollicitudin dignissim ante malesuada nec. Pellentesque vulputate magna eu dapibus pretium. Quisque accumsan cursus neque dignissim venenatis. Curabitur rutrum enim sed eros porta hendrerit ut sed mauris. Integer a sagittis nisi. Praesent id purus neque. Sed vulputate interdum ipsum vel varius. Cras maximus nisl eget libero luctus, vitae pulvinar quam elementum. Nullam id justo lacus. Nulla quis odio lectus.','About','About','About',5,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(6,'Leadership','Leadership Description','Leadership','en','leadership','Content Page for leadership. You can login to admin panel and edit. \n\n            Duis quis elit cursus, varius libero nec, sodales lacus. Mauris finibus ornare sapien eu venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper imperdiet varius. Donec sollicitudin justo non mauris laoreet venenatis. Mauris nec tempor ante. Vestibulum feugiat nec arcu sit amet ultrices. Praesent scelerisque euismod orci vitae rutrum.\n\nCras accumsan lobortis dui, a bibendum massa ullamcorper at. Nunc nec ex eget leo ultricies scelerisque sit amet sit amet enim. Nulla scelerisque eros vel hendrerit tempus. Sed et diam mi. Nunc pharetra ullamcorper congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras eget ultrices leo, aliquam fringilla est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sagittis ipsum eu neque dapibus, gravida fermentum eros malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec eleifend nunc in diam tempus interdum.\n\nCras non urna dictum, consectetur arcu id, consequat magna. Praesent id leo at ligula ultricies tincidunt vitae vitae magna. Nam vehicula mi sed dui placerat dignissim. Curabitur ac nibh bibendum tortor pulvinar tincidunt. Etiam sed faucibus nulla. Sed vel sapien tincidunt, tempor mauris nec, dignissim urna. Duis gravida in tellus id imperdiet. Integer sed rutrum metus. Nulla sed euismod elit. Sed eleifend posuere dictum. Proin ac laoreet lorem, vitae facilisis nulla.\n\nFusce lobortis pharetra lectus sit amet volutpat. Nullam et ante at elit gravida ultricies at sit amet diam. Mauris vitae congue nunc, et consectetur dolor. Sed scelerisque dolor scelerisque metus molestie, vel eleifend neque dapibus. Suspendisse est nulla, commodo ac sem quis, posuere molestie purus. Phasellus vitae risus vel justo hendrerit vulputate. Integer condimentum odio purus, eu egestas augue fermentum ac. Cras aliquet lorem id volutpat venenatis. Donec id nunc odio. Maecenas tortor odio, mattis congue suscipit ut, volutpat non mi. Morbi quis nisi condimentum, auctor ligula ut, laoreet magna.\n\nFusce maximus at sapien sit amet condimentum. Fusce vitae lorem sollicitudin, dignissim velit quis, consectetur mi. Nam gravida lorem diam, a hendrerit diam cursus sed. Suspendisse potenti. Etiam pharetra nibh tortor, sollicitudin dignissim ante malesuada nec. Pellentesque vulputate magna eu dapibus pretium. Quisque accumsan cursus neque dignissim venenatis. Curabitur rutrum enim sed eros porta hendrerit ut sed mauris. Integer a sagittis nisi. Praesent id purus neque. Sed vulputate interdum ipsum vel varius. Cras maximus nisl eget libero luctus, vitae pulvinar quam elementum. Nullam id justo lacus. Nulla quis odio lectus.','Leadership','Leadership','Leadership',6,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(7,'Compliance','Compliance Description','Compliance','en','compliance','Content Page for Compliance. You can login to admin panel and edit. \n\n            Duis quis elit cursus, varius libero nec, sodales lacus. Mauris finibus ornare sapien eu venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper imperdiet varius. Donec sollicitudin justo non mauris laoreet venenatis. Mauris nec tempor ante. Vestibulum feugiat nec arcu sit amet ultrices. Praesent scelerisque euismod orci vitae rutrum.\n\nCras accumsan lobortis dui, a bibendum massa ullamcorper at. Nunc nec ex eget leo ultricies scelerisque sit amet sit amet enim. Nulla scelerisque eros vel hendrerit tempus. Sed et diam mi. Nunc pharetra ullamcorper congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras eget ultrices leo, aliquam fringilla est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sagittis ipsum eu neque dapibus, gravida fermentum eros malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec eleifend nunc in diam tempus interdum.\n\nCras non urna dictum, consectetur arcu id, consequat magna. Praesent id leo at ligula ultricies tincidunt vitae vitae magna. Nam vehicula mi sed dui placerat dignissim. Curabitur ac nibh bibendum tortor pulvinar tincidunt. Etiam sed faucibus nulla. Sed vel sapien tincidunt, tempor mauris nec, dignissim urna. Duis gravida in tellus id imperdiet. Integer sed rutrum metus. Nulla sed euismod elit. Sed eleifend posuere dictum. Proin ac laoreet lorem, vitae facilisis nulla.\n\nFusce lobortis pharetra lectus sit amet volutpat. Nullam et ante at elit gravida ultricies at sit amet diam. Mauris vitae congue nunc, et consectetur dolor. Sed scelerisque dolor scelerisque metus molestie, vel eleifend neque dapibus. Suspendisse est nulla, commodo ac sem quis, posuere molestie purus. Phasellus vitae risus vel justo hendrerit vulputate. Integer condimentum odio purus, eu egestas augue fermentum ac. Cras aliquet lorem id volutpat venenatis. Donec id nunc odio. Maecenas tortor odio, mattis congue suscipit ut, volutpat non mi. Morbi quis nisi condimentum, auctor ligula ut, laoreet magna.\n\nFusce maximus at sapien sit amet condimentum. Fusce vitae lorem sollicitudin, dignissim velit quis, consectetur mi. Nam gravida lorem diam, a hendrerit diam cursus sed. Suspendisse potenti. Etiam pharetra nibh tortor, sollicitudin dignissim ante malesuada nec. Pellentesque vulputate magna eu dapibus pretium. Quisque accumsan cursus neque dignissim venenatis. Curabitur rutrum enim sed eros porta hendrerit ut sed mauris. Integer a sagittis nisi. Praesent id purus neque. Sed vulputate interdum ipsum vel varius. Cras maximus nisl eget libero luctus, vitae pulvinar quam elementum. Nullam id justo lacus. Nulla quis odio lectus.','Compliance','Compliance','Compliance',7,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(8,'careers','careers Description','careers','en','careers','Content Page for careers. You can login to admin panel and edit. \n\n            Duis quis elit cursus, varius libero nec, sodales lacus. Mauris finibus ornare sapien eu venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper imperdiet varius. Donec sollicitudin justo non mauris laoreet venenatis. Mauris nec tempor ante. Vestibulum feugiat nec arcu sit amet ultrices. Praesent scelerisque euismod orci vitae rutrum.\n\n            ','careers','careers','careers',8,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(9,'Press kit','Press kit Description','Press kit','en','press-kit','Content Page for Press kit. You can login to admin panel and edit. \n\n            Duis quis elit cursus, varius libero nec, sodales lacus. Mauris finibus ornare sapien eu venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper imperdiet varius. Donec sollicitudin justo non mauris laoreet venenatis. \n            ','Press Kit','Press Kit','Press Kit',9,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(10,'How Hayvn is Different','How Hayvn is Different','How Hayvn is Different','en','how-hayvn','Donec sit amet sapien et mi mattis vulputate a a neque. Mauris in odio et est feugiat pulvinar ac vitae magna. In eget lacinia nibh, sit amet suscipit felis. Integer eget massa sit amet nisi condimentum bibendum vel in ligula. Pellentesque ipsum nunc, facilisis a ipsum sit amet, pretium congue erat. Morbi erat nisl, mattis id euismod at, tempus ac leo. Nulla scelerisque est a dolor efficitur, in commodo enim consequat. Etiam eu imperdiet enim, a finibus felis. Suspendisse mollis nec erat eu euismod. Nunc scelerisque lacus dolor, sed posuere leo condimentum sit amet. Nam semper, tortor a vehicula blandit, erat arcu iaculis erat, eget aliquet quam ante at tortor. Nunc sapien nisl, posuere quis egestas id, lacinia at quam. Donec aliquam nisl vel leo pellentesque, at sagittis mi ultrices. Donec scelerisque molestie tortor, vitae tempor leo finibus eget. Duis et augue nisi.\n            ','How Hayvn is Different','How Hayvn is Different','How Hayvn is Different',10,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(11,'Personal Traders','Personal Traders','Personal Traders','en','personal-traders','Maecenas imperdiet imperdiet ornare. Vivamus ac lectus non nunc semper lacinia. Curabitur egestas nec nisl ac semper. Morbi vitae nulla orci. Phasellus ipsum felis, ullamcorper semper orci id, imperdiet sagittis tellus. Maecenas sit amet tempus purus. Suspendisse ut mauris leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam hendrerit orci ac risus laoreet iaculis. Suspendisse pulvinar consectetur quam non faucibus. Suspendisse quis arcu ipsum. Morbi a diam ut velit facilisis porta a at arcu. Aliquam ullamcorper, sapien feugiat ornare molestie, massa nibh vestibulum lacus, ac iaculis erat lorem auctor augue. Suspendisse potenti. Vestibulum auctor porta posuere. Proin egestas elit a dui venenatis, eu laoreet nulla maximus.\n            ','Personal Traders','Personal Traders','Personal Traders',11,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(12,'Institutional client','Institutional client','Institutional client','en','institutional-client','Fusce faucibus interdum nisl at fringilla. Nam id pretium turpis, in ultrices massa. Maecenas ipsum neque, mattis eget efficitur ac, rhoncus vitae enim. Cras elit tortor, placerat fringilla odio eget, dictum eleifend enim. Quisque eget eleifend orci. Donec maximus posuere viverra. Proin malesuada suscipit porttitor. Aliquam et laoreet est. Sed aliquet nibh tempus tortor pharetra consectetur. Sed laoreet, libero sed sagittis pretium, elit mi rhoncus sapien, sed gravida purus turpis non neque. Suspendisse nec dignissim nunc. Maecenas elementum lacinia rhoncus. Integer eu laoreet leo. Integer lorem justo, tristique sed accumsan ut, pretium nec lorem. Aliquam eget tortor non neque interdum egestas. Vestibulum fringilla malesuada nulla, et tristique quam mattis sed.\n            ','Institutional client','Institutional client','Institutional client',12,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(13,'Securing Hayvn','Securing Hayvn','Securing Hayvn','en','security','Duis rutrum pharetra urna vel blandit. Nullam ac consectetur tellus. Sed tristique orci in magna fringilla, congue tincidunt sapien accumsan. Pellentesque ligula massa, lacinia nec ultrices vitae, placerat a arcu. Sed id lectus luctus, sodales dui pulvinar, malesuada sapien. Curabitur ac orci elementum eros venenatis condimentum. Phasellus laoreet ullamcorper tempus. In dignissim posuere pretium. Donec dignissim, dui vel molestie feugiat, erat mauris aliquam ligula, in ultrices elit augue vel ante. Integer felis massa, vestibulum sollicitudin mi vel, vulputate molestie ex. Aliquam erat volutpat. Donec ornare id risus non imperdiet. Maecenas finibus erat quis fermentum lacinia. Nam et diam nulla.','Securing Hayvn','Securing Hayvn','Securing Hayvn',13,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(14,'Best Execution Practices','Best Execution Practices','Best Execution Practices','en','execution-practices','Duis rutrum pharetra urna vel blandit. Nullam ac consectetur tellus. Sed tristique orci in magna fringilla, congue tincidunt sapien accumsan. Pellentesque ligula massa, lacinia nec ultrices vitae, placerat a arcu. Sed id lectus luctus, sodales dui pulvinar, malesuada sapien. Curabitur ac orci elementum eros venenatis condimentum. Phasellus laoreet ullamcorper tempus. In dignissim posuere pretium. Donec dignissim, dui vel molestie feugiat, erat mauris aliquam ligula, in ultrices elit augue vel ante. Integer felis massa, vestibulum sollicitudin mi vel, vulputate molestie ex. Aliquam erat volutpat. Donec ornare id risus non imperdiet. Maecenas finibus erat quis fermentum lacinia. Nam et diam nulla.','Best Execution Practices','Best Execution Practices','Best Execution Practices',14,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(15,'Our Fees','Our Fees','Our Fees','en','fees','Pellentesque lacus metus, rutrum in lacinia at, maximus eget eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Praesent elit turpis, venenatis in consequat ut, vulputate a ante. Duis sit amet magna et eros dapibus fermentum sit amet at augue. Phasellus dolor risus, ultrices ut sapien nec, consequat consequat velit. Proin sit amet fringilla leo. Phasellus tincidunt egestas eleifend. Suspendisse pellentesque tempor rhoncus.','Our Fees','Our Fees','Our Fees',15,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(16,'Business Ethics and Codes','Business Ethics and Codes','Business Ethics and Codes','en','business-ethics-and-codes','Pellentesque lacus metus, rutrum in lacinia at, maximus eget eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Praesent elit turpis, venenatis in consequat ut, vulputate a ante. Duis sit amet magna et eros dapibus fermentum sit amet at augue. Phasellus dolor risus, ultrices ut sapien nec, consequat consequat velit. Proin sit amet fringilla leo. Phasellus tincidunt egestas eleifend. Suspendisse pellentesque tempor rhoncus.','Business Ethics and Codes','Business Ethics and Codes','Business Ethics and Codes',16,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `gateway_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_methods_provider_id_unique` (`provider_id`),
  KEY `payment_methods_user_id_index` (`user_id`),
  CONSTRAINT `payment_methods_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,1,'credit-debit-card','Credit/Debit Card','test',1,'credit-debit-card','2022-12-10 02:20:17','2023-02-04 01:05:38',NULL),(2,3,'cod','cash on delivery','test',1,'bcd','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(3,3,'paytm','paytm','test',1,'paytm','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(4,1,'payu','payU','test',1,'payu','2022-12-10 02:20:17','2023-02-04 01:05:44',NULL);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytm`
--

DROP TABLE IF EXISTS `paytm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paytm` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industrytype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channelid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobileno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callbackurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checksum` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytm`
--

LOCK TABLES `paytm` WRITE;
/*!40000 ALTER TABLE `paytm` DISABLE KEYS */;
/*!40000 ALTER TABLE `paytm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pincode_region`
--

DROP TABLE IF EXISTS `pincode_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pincode_region` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `region_id` int unsigned NOT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode_prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pincode_region_region_id_index` (`region_id`),
  CONSTRAINT `pincode_region_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pincode_region`
--

LOCK TABLES `pincode_region` WRITE;
/*!40000 ALTER TABLE `pincode_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `pincode_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pincodes`
--

DROP TABLE IF EXISTS `pincodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pincodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` int unsigned NOT NULL,
  `delivered` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pincodes_seller_id_index` (`seller_id`),
  KEY `pincodes_delivered_index` (`delivered`),
  CONSTRAINT `pincodes_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pincodes`
--

LOCK TABLES `pincodes` WRITE;
/*!40000 ALTER TABLE `pincodes` DISABLE KEYS */;
INSERT INTO `pincodes` VALUES (1,'313001',3,5,1,'2022-12-23 04:40:48','2022-12-23 04:40:48',NULL),(2,'313002',3,10,1,'2022-12-23 04:41:42','2022-12-23 04:41:42',NULL),(5,'213001',3,6,1,'2022-12-23 06:29:38','2022-12-23 06:29:38',NULL);
/*!40000 ALTER TABLE `pincodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_featured`
--

DROP TABLE IF EXISTS `product_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_featured` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `featured_start_datetime` timestamp NULL DEFAULT NULL,
  `featured_end_datetime` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_featured_product_id_index` (`product_id`),
  CONSTRAINT `product_featured_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_featured`
--

LOCK TABLES `product_featured` WRITE;
/*!40000 ALTER TABLE `product_featured` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_galleries`
--

DROP TABLE IF EXISTS `product_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `attribute_id` int unsigned NOT NULL,
  `position` int unsigned NOT NULL,
  `imagepath` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnailimage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_galleries_product_id_index` (`product_id`),
  KEY `product_galleries_attribute_id_index` (`attribute_id`),
  KEY `product_galleries_position_index` (`position`),
  CONSTRAINT `product_galleries_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_galleries`
--

LOCK TABLES `product_galleries` WRITE;
/*!40000 ALTER TABLE `product_galleries` DISABLE KEYS */;
INSERT INTO `product_galleries` VALUES (1,124,10,1,'uploads/product_images/daFvWgseLl_1675833274.jpg','uploads/thumbnail_images/thumbnail_daFvWgseLl_1675833274.jpg','2023-02-07 23:44:36','2023-02-07 23:44:36',NULL),(2,124,10,1,'uploads/product_images/wkkcwFvN1S_1675833276.jpg','uploads/thumbnail_images/thumbnail_wkkcwFvN1S_1675833276.jpg','2023-02-07 23:44:37','2023-02-07 23:44:37',NULL),(3,124,10,1,'uploads/product_images/CCs5n3loeC_1675833277.jpg','uploads/thumbnail_images/thumbnail_CCs5n3loeC_1675833277.jpg','2023-02-07 23:44:38','2023-02-07 23:44:38',NULL),(4,124,10,1,'uploads/product_images/fT5nz1ZXwI_1675833278.jpg','uploads/thumbnail_images/thumbnail_fT5nz1ZXwI_1675833278.jpg','2023-02-07 23:44:41','2023-02-07 23:44:41',NULL),(5,125,10,1,'uploads/product_images/anpQX50Ugo_1675833360.jpg','uploads/thumbnail_images/thumbnail_anpQX50Ugo_1675833360.jpg','2023-02-07 23:46:01','2023-02-07 23:46:01',NULL),(6,125,10,1,'uploads/product_images/fE2h4lr4X4_1675833361.jpg','uploads/thumbnail_images/thumbnail_fE2h4lr4X4_1675833361.jpg','2023-02-07 23:46:02','2023-02-07 23:46:02',NULL),(7,125,10,1,'uploads/product_images/swg2wiEk3P_1675833362.jpg','uploads/thumbnail_images/thumbnail_swg2wiEk3P_1675833362.jpg','2023-02-07 23:46:03','2023-02-07 23:46:03',NULL),(8,125,10,1,'uploads/product_images/KkKqf7b7a7_1675833363.jpg','uploads/thumbnail_images/thumbnail_KkKqf7b7a7_1675833363.jpg','2023-02-07 23:46:04','2023-02-07 23:46:04',NULL),(9,126,10,1,'uploads/product_images/tradftCBYx_1675833753.jpg','uploads/thumbnail_images/thumbnail_tradftCBYx_1675833753.jpg','2023-02-07 23:52:33','2023-02-07 23:52:33',NULL),(10,126,10,1,'uploads/product_images/Yu6C56yTQI_1675833753.jpg','uploads/thumbnail_images/thumbnail_Yu6C56yTQI_1675833753.jpg','2023-02-07 23:52:35','2023-02-07 23:52:35',NULL),(11,126,10,1,'uploads/product_images/9YnUDmHxiB_1675833755.jpg','uploads/thumbnail_images/thumbnail_9YnUDmHxiB_1675833755.jpg','2023-02-07 23:52:36','2023-02-07 23:52:36',NULL),(12,126,10,1,'uploads/product_images/ICayhps4qZ_1675833756.jpg','uploads/thumbnail_images/thumbnail_ICayhps4qZ_1675833756.jpg','2023-02-07 23:52:37','2023-02-07 23:52:37',NULL),(13,127,10,1,'uploads/product_images/9zDLiAsY7a_1675833849.jpg','uploads/thumbnail_images/thumbnail_9zDLiAsY7a_1675833849.jpg','2023-02-07 23:54:11','2023-02-07 23:54:11',NULL),(14,127,10,1,'uploads/product_images/Z46lUgpm9O_1675833851.jpg','uploads/thumbnail_images/thumbnail_Z46lUgpm9O_1675833851.jpg','2023-02-07 23:54:12','2023-02-07 23:54:12',NULL),(15,127,10,1,'uploads/product_images/fRITokyPzI_1675833852.jpg','uploads/thumbnail_images/thumbnail_fRITokyPzI_1675833852.jpg','2023-02-07 23:54:12','2023-02-07 23:54:12',NULL),(16,127,10,1,'uploads/product_images/RoZ8rjrcLU_1675833852.jpg','uploads/thumbnail_images/thumbnail_RoZ8rjrcLU_1675833852.jpg','2023-02-07 23:54:13','2023-02-07 23:54:13',NULL),(17,127,10,1,'uploads/product_images/cnuTFeZxQV_1675833853.jpg','uploads/thumbnail_images/thumbnail_cnuTFeZxQV_1675833853.jpg','2023-02-07 23:54:13','2023-02-07 23:54:13',NULL),(18,127,10,1,'uploads/product_images/JAc7UKkLTh_1675833853.jpg','uploads/thumbnail_images/thumbnail_JAc7UKkLTh_1675833853.jpg','2023-02-07 23:54:14','2023-02-07 23:54:14',NULL),(19,128,10,1,'uploads/product_images/Nzhr4p3WBN_1675836595.webp','uploads/thumbnail_images/thumbnail_Nzhr4p3WBN_1675836595.webp','2023-02-08 00:39:56','2023-02-08 00:39:56',NULL),(20,128,10,1,'uploads/product_images/8DmfAEUHvZ_1675836596.webp','uploads/thumbnail_images/thumbnail_8DmfAEUHvZ_1675836596.webp','2023-02-08 00:39:56','2023-02-08 00:39:56',NULL),(21,128,10,1,'uploads/product_images/MFN7EPObHs_1675836596.webp','uploads/thumbnail_images/thumbnail_MFN7EPObHs_1675836596.webp','2023-02-08 00:39:56','2023-02-08 00:39:56',NULL),(22,128,10,1,'uploads/product_images/uR5vo2pyws_1675836596.webp','uploads/thumbnail_images/thumbnail_uR5vo2pyws_1675836596.webp','2023-02-08 00:39:56','2023-02-08 00:39:56',NULL),(23,128,10,1,'uploads/product_images/1QQ6hEPKgo_1675836596.webp','uploads/thumbnail_images/thumbnail_1QQ6hEPKgo_1675836596.webp','2023-02-08 00:39:57','2023-02-08 00:39:57',NULL),(24,129,10,1,'uploads/product_images/Uszbovk95s_1675836701.webp','uploads/thumbnail_images/thumbnail_Uszbovk95s_1675836701.webp','2023-02-08 00:41:41','2023-02-08 00:41:41',NULL),(25,129,10,1,'uploads/product_images/zJZldIx9gT_1675836701.webp','uploads/thumbnail_images/thumbnail_zJZldIx9gT_1675836701.webp','2023-02-08 00:41:41','2023-02-08 00:41:41',NULL),(26,129,10,1,'uploads/product_images/aE6WNkffW4_1675836701.webp','uploads/thumbnail_images/thumbnail_aE6WNkffW4_1675836701.webp','2023-02-08 00:41:41','2023-02-08 00:41:41',NULL),(27,129,10,1,'uploads/product_images/yEjyJizx5x_1675836701.webp','uploads/thumbnail_images/thumbnail_yEjyJizx5x_1675836701.webp','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(28,129,10,1,'uploads/product_images/gWX3aQAwhT_1675836702.webp','uploads/thumbnail_images/thumbnail_gWX3aQAwhT_1675836702.webp','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(29,129,10,1,'uploads/product_images/nUVD2ZSInw_1675836702.webp','uploads/thumbnail_images/thumbnail_nUVD2ZSInw_1675836702.webp','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(30,129,10,1,'uploads/product_images/5CzjAVGNG2_1675836702.webp','uploads/thumbnail_images/thumbnail_5CzjAVGNG2_1675836702.webp','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(31,129,10,1,'uploads/product_images/LTisoHYeoc_1675836702.webp','uploads/thumbnail_images/thumbnail_LTisoHYeoc_1675836702.webp','2023-02-08 00:41:42','2023-02-08 00:41:42',NULL),(32,130,10,1,'uploads/product_images/2kD1U3j0Az_1675836749.webp','uploads/thumbnail_images/thumbnail_2kD1U3j0Az_1675836749.webp','2023-02-08 00:42:29','2023-02-08 00:42:29',NULL),(33,130,10,1,'uploads/product_images/HIdK9RqjDk_1675836749.webp','uploads/thumbnail_images/thumbnail_HIdK9RqjDk_1675836749.webp','2023-02-08 00:42:29','2023-02-08 00:42:29',NULL),(34,130,10,1,'uploads/product_images/gqxzrYzwOV_1675836749.webp','uploads/thumbnail_images/thumbnail_gqxzrYzwOV_1675836749.webp','2023-02-08 00:42:29','2023-02-08 00:42:29',NULL),(35,130,10,1,'uploads/product_images/hyoIJUqVRT_1675836749.webp','uploads/thumbnail_images/thumbnail_hyoIJUqVRT_1675836749.webp','2023-02-08 00:42:29','2023-02-08 00:42:29',NULL),(36,130,10,1,'uploads/product_images/kQQmJJGkjJ_1675836749.webp','uploads/thumbnail_images/thumbnail_kQQmJJGkjJ_1675836749.webp','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(37,130,10,1,'uploads/product_images/ha0S3CnrUO_1675836750.webp','uploads/thumbnail_images/thumbnail_ha0S3CnrUO_1675836750.webp','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(38,130,10,1,'uploads/product_images/SFlebSAuOS_1675836750.webp','uploads/thumbnail_images/thumbnail_SFlebSAuOS_1675836750.webp','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(39,130,10,1,'uploads/product_images/Xb2PD4CirH_1675836750.webp','uploads/thumbnail_images/thumbnail_Xb2PD4CirH_1675836750.webp','2023-02-08 00:42:30','2023-02-08 00:42:30',NULL),(40,131,10,1,'uploads/product_images/PFSobrCoP2_1675836809.webp','uploads/thumbnail_images/thumbnail_PFSobrCoP2_1675836809.webp','2023-02-08 00:43:29','2023-02-08 00:43:29',NULL),(41,131,10,1,'uploads/product_images/qTnip9LQvn_1675836809.webp','uploads/thumbnail_images/thumbnail_qTnip9LQvn_1675836809.webp','2023-02-08 00:43:29','2023-02-08 00:43:29',NULL),(42,131,10,1,'uploads/product_images/pCFMH2oZQn_1675836809.webp','uploads/thumbnail_images/thumbnail_pCFMH2oZQn_1675836809.webp','2023-02-08 00:43:29','2023-02-08 00:43:29',NULL),(43,131,10,1,'uploads/product_images/nasIrm28ia_1675836809.jpg','uploads/thumbnail_images/thumbnail_nasIrm28ia_1675836809.jpg','2023-02-08 00:43:29','2023-02-08 00:43:29',NULL),(44,131,10,1,'uploads/product_images/yAX0gxs0Ga_1675836809.webp','uploads/thumbnail_images/thumbnail_yAX0gxs0Ga_1675836809.webp','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(45,131,10,1,'uploads/product_images/OacavhKDKC_1675836810.webp','uploads/thumbnail_images/thumbnail_OacavhKDKC_1675836810.webp','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(46,131,10,1,'uploads/product_images/w19jCO5k8D_1675836810.webp','uploads/thumbnail_images/thumbnail_w19jCO5k8D_1675836810.webp','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(47,131,10,1,'uploads/product_images/YXRkMx1L7t_1675836810.webp','uploads/thumbnail_images/thumbnail_YXRkMx1L7t_1675836810.webp','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(48,131,10,1,'uploads/product_images/xEjAEH3RBD_1675836810.webp','uploads/thumbnail_images/thumbnail_xEjAEH3RBD_1675836810.webp','2023-02-08 00:43:30','2023-02-08 00:43:30',NULL),(49,132,10,1,'uploads/product_images/f155605Gyl_1675836926.webp','uploads/thumbnail_images/thumbnail_f155605Gyl_1675836926.webp','2023-02-08 00:45:27','2023-02-08 00:45:27',NULL),(50,132,10,1,'uploads/product_images/vKRh2PVSDx_1675836927.webp','uploads/thumbnail_images/thumbnail_vKRh2PVSDx_1675836927.webp','2023-02-08 00:45:27','2023-02-08 00:45:27',NULL),(51,132,10,1,'uploads/product_images/zD1efEYATL_1675836927.webp','uploads/thumbnail_images/thumbnail_zD1efEYATL_1675836927.webp','2023-02-08 00:45:27','2023-02-08 00:45:27',NULL),(52,132,10,1,'uploads/product_images/mcPYc7hH3I_1675836927.webp','uploads/thumbnail_images/thumbnail_mcPYc7hH3I_1675836927.webp','2023-02-08 00:45:27','2023-02-08 00:45:27',NULL),(53,132,10,1,'uploads/product_images/ud4ZSqcauY_1675836927.webp','uploads/thumbnail_images/thumbnail_ud4ZSqcauY_1675836927.webp','2023-02-08 00:45:27','2023-02-08 00:45:27',NULL),(54,132,10,1,'uploads/product_images/xlgZzdZ1p9_1675836927.webp','uploads/thumbnail_images/thumbnail_xlgZzdZ1p9_1675836927.webp','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(55,132,10,1,'uploads/product_images/W1WWHh7gon_1675836928.webp','uploads/thumbnail_images/thumbnail_W1WWHh7gon_1675836928.webp','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(56,132,10,1,'uploads/product_images/f1tQ9ybyG0_1675836928.webp','uploads/thumbnail_images/thumbnail_f1tQ9ybyG0_1675836928.webp','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(57,132,10,1,'uploads/product_images/gtvki1lQX2_1675836928.webp','uploads/thumbnail_images/thumbnail_gtvki1lQX2_1675836928.webp','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(58,132,10,1,'uploads/product_images/MuLVbqOShX_1675836928.webp','uploads/thumbnail_images/thumbnail_MuLVbqOShX_1675836928.webp','2023-02-08 00:45:28','2023-02-08 00:45:28',NULL),(59,133,2,1,'uploads/product_images/qevzb5XSqe_1675837743.jpg','uploads/thumbnail_images/thumbnail_qevzb5XSqe_1675837743.jpg','2023-02-08 00:59:05','2023-02-08 00:59:05',NULL),(60,133,2,1,'uploads/product_images/u97HyD4Kf5_1675837745.jpg','uploads/thumbnail_images/thumbnail_u97HyD4Kf5_1675837745.jpg','2023-02-08 00:59:07','2023-02-08 00:59:07',NULL),(61,133,2,1,'uploads/product_images/150qadyzoV_1675837747.jpg','uploads/thumbnail_images/thumbnail_150qadyzoV_1675837747.jpg','2023-02-08 00:59:09','2023-02-08 00:59:09',NULL),(62,133,2,1,'uploads/product_images/spRlBcRVJJ_1675837749.jpg','uploads/thumbnail_images/thumbnail_spRlBcRVJJ_1675837749.jpg','2023-02-08 00:59:10','2023-02-08 00:59:10',NULL),(63,134,2,1,'uploads/product_images/FOhoBRHfeB_1675837808.jpg','uploads/thumbnail_images/thumbnail_FOhoBRHfeB_1675837808.jpg','2023-02-08 01:00:10','2023-02-08 01:00:10',NULL),(64,134,2,1,'uploads/product_images/PHlAsVz08u_1675837810.jpg','uploads/thumbnail_images/thumbnail_PHlAsVz08u_1675837810.jpg','2023-02-08 01:00:12','2023-02-08 01:00:12',NULL),(65,134,2,1,'uploads/product_images/oSLtSyhFjb_1675837812.jpg','uploads/thumbnail_images/thumbnail_oSLtSyhFjb_1675837812.jpg','2023-02-08 01:00:13','2023-02-08 01:00:13',NULL),(66,134,2,1,'uploads/product_images/xLSkObb8gw_1675837813.jpg','uploads/thumbnail_images/thumbnail_xLSkObb8gw_1675837813.jpg','2023-02-08 01:00:15','2023-02-08 01:00:15',NULL),(67,135,2,1,'uploads/product_images/D1VJjR1Jso_1675837871.jpg','uploads/thumbnail_images/thumbnail_D1VJjR1Jso_1675837871.jpg','2023-02-08 01:01:12','2023-02-08 01:01:12',NULL),(68,135,2,1,'uploads/product_images/7YkzUOu2OR_1675837872.webp','uploads/thumbnail_images/thumbnail_7YkzUOu2OR_1675837872.webp','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(69,135,2,1,'uploads/product_images/W4UXaFVGdE_1675837873.jpg','uploads/thumbnail_images/thumbnail_W4UXaFVGdE_1675837873.jpg','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(70,135,2,1,'uploads/product_images/xHuy1MIHQ2_1675837873.webp','uploads/thumbnail_images/thumbnail_xHuy1MIHQ2_1675837873.webp','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(71,135,2,1,'uploads/product_images/cLBQk69gqt_1675837873.jpeg','uploads/thumbnail_images/thumbnail_cLBQk69gqt_1675837873.jpeg','2023-02-08 01:01:13','2023-02-08 01:01:13',NULL),(72,136,2,1,'uploads/product_images/6dWTuVS9VQ_1675837919.webp','uploads/thumbnail_images/thumbnail_6dWTuVS9VQ_1675837919.webp','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(73,136,2,1,'uploads/product_images/cdUYJDAEq2_1675837919.jpeg','uploads/thumbnail_images/thumbnail_cdUYJDAEq2_1675837919.jpeg','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(74,136,2,1,'uploads/product_images/DaXRVmKlxJ_1675837919.jpeg','uploads/thumbnail_images/thumbnail_DaXRVmKlxJ_1675837919.jpeg','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(75,136,2,1,'uploads/product_images/a3hliB343i_1675837919.jpeg','uploads/thumbnail_images/thumbnail_a3hliB343i_1675837919.jpeg','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(76,136,2,1,'uploads/product_images/rJPQWIxWWj_1675837919.jpeg','uploads/thumbnail_images/thumbnail_rJPQWIxWWj_1675837919.jpeg','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(77,136,2,1,'uploads/product_images/xLJZeFVuj3_1675837919.jpeg','uploads/thumbnail_images/thumbnail_xLJZeFVuj3_1675837919.jpeg','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(78,136,2,1,'uploads/product_images/2tIVMfVOxq_1675837919.webp','uploads/thumbnail_images/thumbnail_2tIVMfVOxq_1675837919.webp','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL),(79,137,10,1,'uploads/product_images/R3zk1CydBz_1675839312.jpg','uploads/thumbnail_images/thumbnail_R3zk1CydBz_1675839312.jpg','2023-02-08 01:25:12','2023-02-08 01:25:12',NULL),(80,137,10,1,'uploads/product_images/6sF97yFca1_1675839312.jpg','uploads/thumbnail_images/thumbnail_6sF97yFca1_1675839312.jpg','2023-02-08 01:25:14','2023-02-08 01:25:14',NULL),(81,137,10,1,'uploads/product_images/nuxtzYsv9G_1675839314.jpg','uploads/thumbnail_images/thumbnail_nuxtzYsv9G_1675839314.jpg','2023-02-08 01:25:16','2023-02-08 01:25:16',NULL),(82,137,10,1,'uploads/product_images/QrmbMi528d_1675839316.jpg','uploads/thumbnail_images/thumbnail_QrmbMi528d_1675839316.jpg','2023-02-08 01:25:17','2023-02-08 01:25:17',NULL),(83,137,10,1,'uploads/product_images/jsTRMJtm5R_1675839317.jpg','uploads/thumbnail_images/thumbnail_jsTRMJtm5R_1675839317.jpg','2023-02-08 01:25:18','2023-02-08 01:25:18',NULL),(84,138,10,1,'uploads/product_images/LFUDgg31O9_1675839546.jpg','uploads/thumbnail_images/thumbnail_LFUDgg31O9_1675839546.jpg','2023-02-08 01:29:07','2023-02-08 01:29:07',NULL),(85,138,10,1,'uploads/product_images/xeF5xyXdUs_1675839547.jpg','uploads/thumbnail_images/thumbnail_xeF5xyXdUs_1675839547.jpg','2023-02-08 01:29:08','2023-02-08 01:29:08',NULL),(86,138,10,1,'uploads/product_images/IoevfXYntN_1675839548.jpg','uploads/thumbnail_images/thumbnail_IoevfXYntN_1675839548.jpg','2023-02-08 01:29:10','2023-02-08 01:29:10',NULL),(87,138,10,1,'uploads/product_images/nPWbT3Mrji_1675839550.jpg','uploads/thumbnail_images/thumbnail_nPWbT3Mrji_1675839550.jpg','2023-02-08 01:29:10','2023-02-08 01:29:10',NULL),(88,139,10,1,'uploads/product_images/HSm6fxJnmz_1675839604.jpg','uploads/thumbnail_images/thumbnail_HSm6fxJnmz_1675839604.jpg','2023-02-08 01:30:05','2023-02-08 01:30:05',NULL),(89,139,10,1,'uploads/product_images/FRT9vowBOX_1675839605.jpg','uploads/thumbnail_images/thumbnail_FRT9vowBOX_1675839605.jpg','2023-02-08 01:30:08','2023-02-08 01:30:08',NULL),(90,139,10,1,'uploads/product_images/B1RJMVge1L_1675839608.jpg','uploads/thumbnail_images/thumbnail_B1RJMVge1L_1675839608.jpg','2023-02-08 01:30:10','2023-02-08 01:30:10',NULL),(91,139,10,1,'uploads/product_images/lEZzCHB0wQ_1675839610.jpg','uploads/thumbnail_images/thumbnail_lEZzCHB0wQ_1675839610.jpg','2023-02-08 01:30:11','2023-02-08 01:30:11',NULL),(92,139,10,1,'uploads/product_images/N8JwdyK1Al_1675839611.jpg','uploads/thumbnail_images/thumbnail_N8JwdyK1Al_1675839611.jpg','2023-02-08 01:30:12','2023-02-08 01:30:12',NULL),(93,140,10,1,'uploads/product_images/gmakLPaOFD_1675839659.jpg','uploads/thumbnail_images/thumbnail_gmakLPaOFD_1675839659.jpg','2023-02-08 01:31:01','2023-02-08 01:31:01',NULL),(94,140,10,1,'uploads/product_images/2fpeFdyZao_1675839661.jpg','uploads/thumbnail_images/thumbnail_2fpeFdyZao_1675839661.jpg','2023-02-08 01:31:05','2023-02-08 01:31:05',NULL),(95,140,10,1,'uploads/product_images/cvP25M7usW_1675839665.jpg','uploads/thumbnail_images/thumbnail_cvP25M7usW_1675839665.jpg','2023-02-08 01:31:06','2023-02-08 01:31:06',NULL),(96,140,10,1,'uploads/product_images/byyofhr7Ft_1675839666.jpg','uploads/thumbnail_images/thumbnail_byyofhr7Ft_1675839666.jpg','2023-02-08 01:31:07','2023-02-08 01:31:07',NULL),(97,141,10,1,'uploads/product_images/uB3GWRdwEP_1675839727.jpg','uploads/thumbnail_images/thumbnail_uB3GWRdwEP_1675839727.jpg','2023-02-08 01:32:09','2023-02-08 01:32:09',NULL),(98,141,10,1,'uploads/product_images/DBQq2mlgI3_1675839729.jpg','uploads/thumbnail_images/thumbnail_DBQq2mlgI3_1675839729.jpg','2023-02-08 01:32:10','2023-02-08 01:32:10',NULL),(99,141,10,1,'uploads/product_images/ZaLLrvno6n_1675839730.jpg','uploads/thumbnail_images/thumbnail_ZaLLrvno6n_1675839730.jpg','2023-02-08 01:32:12','2023-02-08 01:32:12',NULL),(100,141,10,1,'uploads/product_images/XHM1k4JC9x_1675839732.jpg','uploads/thumbnail_images/thumbnail_XHM1k4JC9x_1675839732.jpg','2023-02-08 01:32:14','2023-02-08 01:32:14',NULL),(101,141,10,1,'uploads/product_images/jxMRvCk0tM_1675839734.jpg','uploads/thumbnail_images/thumbnail_jxMRvCk0tM_1675839734.jpg','2023-02-08 01:32:15','2023-02-08 01:32:15',NULL),(102,141,10,1,'uploads/product_images/TB3sifyhR4_1675839735.jpg','uploads/thumbnail_images/thumbnail_TB3sifyhR4_1675839735.jpg','2023-02-08 01:32:16','2023-02-08 01:32:16',NULL),(103,142,10,1,'uploads/product_images/fQj47jeWss_1675839790.jpg','uploads/thumbnail_images/thumbnail_fQj47jeWss_1675839790.jpg','2023-02-08 01:33:12','2023-02-08 01:33:12',NULL),(104,142,10,1,'uploads/product_images/kdGWK3gxCg_1675839792.jpg','uploads/thumbnail_images/thumbnail_kdGWK3gxCg_1675839792.jpg','2023-02-08 01:33:13','2023-02-08 01:33:13',NULL),(105,142,10,1,'uploads/product_images/stezieu1B2_1675839793.jpg','uploads/thumbnail_images/thumbnail_stezieu1B2_1675839793.jpg','2023-02-08 01:33:13','2023-02-08 01:33:13',NULL),(106,142,10,1,'uploads/product_images/j0xFKrMapf_1675839793.jpg','uploads/thumbnail_images/thumbnail_j0xFKrMapf_1675839793.jpg','2023-02-08 01:33:14','2023-02-08 01:33:14',NULL),(107,142,10,1,'uploads/product_images/FKKrma8V6b_1675839794.jpg','uploads/thumbnail_images/thumbnail_FKKrma8V6b_1675839794.jpg','2023-02-08 01:33:16','2023-02-08 01:33:16',NULL),(108,142,10,1,'uploads/product_images/8Ct3BpeEvV_1675839796.jpg','uploads/thumbnail_images/thumbnail_8Ct3BpeEvV_1675839796.jpg','2023-02-08 01:33:19','2023-02-08 01:33:19',NULL),(109,143,10,1,'uploads/product_images/7R8Ixznwqs_1675839879.jpg','uploads/thumbnail_images/thumbnail_7R8Ixznwqs_1675839879.jpg','2023-02-08 01:34:39','2023-02-08 01:34:39',NULL),(110,143,10,1,'uploads/product_images/rQf8bd8BwE_1675839879.jpg','uploads/thumbnail_images/thumbnail_rQf8bd8BwE_1675839879.jpg','2023-02-08 01:34:41','2023-02-08 01:34:41',NULL),(111,143,10,1,'uploads/product_images/HYgOF7MXor_1675839881.jpg','uploads/thumbnail_images/thumbnail_HYgOF7MXor_1675839881.jpg','2023-02-08 01:34:43','2023-02-08 01:34:43',NULL),(112,143,10,1,'uploads/product_images/e8q2SgZeKN_1675839883.jpg','uploads/thumbnail_images/thumbnail_e8q2SgZeKN_1675839883.jpg','2023-02-08 01:34:44','2023-02-08 01:34:44',NULL),(113,143,10,1,'uploads/product_images/h9mAbtXkBL_1675839884.jpg','uploads/thumbnail_images/thumbnail_h9mAbtXkBL_1675839884.jpg','2023-02-08 01:34:46','2023-02-08 01:34:46',NULL),(114,144,10,1,'uploads/product_images/7HKKJdilTA_1675839995.jpg','uploads/thumbnail_images/thumbnail_7HKKJdilTA_1675839995.jpg','2023-02-08 01:36:37','2023-02-08 01:36:37',NULL),(115,144,10,1,'uploads/product_images/YzbjwHPbim_1675839997.jpg','uploads/thumbnail_images/thumbnail_YzbjwHPbim_1675839997.jpg','2023-02-08 01:36:38','2023-02-08 01:36:38',NULL),(116,144,10,1,'uploads/product_images/Tv8An35NrD_1675839998.jpg','uploads/thumbnail_images/thumbnail_Tv8An35NrD_1675839998.jpg','2023-02-08 01:36:39','2023-02-08 01:36:39',NULL),(117,144,10,1,'uploads/product_images/BhdY22bdGH_1675839999.jpg','uploads/thumbnail_images/thumbnail_BhdY22bdGH_1675839999.jpg','2023-02-08 01:36:40','2023-02-08 01:36:40',NULL),(118,144,10,1,'uploads/product_images/Ioas5N4MrS_1675840000.jpg','uploads/thumbnail_images/thumbnail_Ioas5N4MrS_1675840000.jpg','2023-02-08 01:36:41','2023-02-08 01:36:41',NULL),(119,144,10,1,'uploads/product_images/4w1BxOvfs8_1675840001.jpg','uploads/thumbnail_images/thumbnail_4w1BxOvfs8_1675840001.jpg','2023-02-08 01:36:43','2023-02-08 01:36:43',NULL),(120,144,10,1,'uploads/product_images/xeOTXoxxnL_1675840003.jpg','uploads/thumbnail_images/thumbnail_xeOTXoxxnL_1675840003.jpg','2023-02-08 01:36:44','2023-02-08 01:36:44',NULL),(121,145,10,1,'uploads/product_images/HZS7Nq4PjV_1675840173.jpg','uploads/thumbnail_images/thumbnail_HZS7Nq4PjV_1675840173.jpg','2023-02-08 01:39:34','2023-02-08 01:39:34',NULL),(122,145,10,1,'uploads/product_images/NRUOudKVQK_1675840174.jpg','uploads/thumbnail_images/thumbnail_NRUOudKVQK_1675840174.jpg','2023-02-08 01:39:36','2023-02-08 01:39:36',NULL),(123,145,10,1,'uploads/product_images/9IKJJZZixA_1675840176.jpg','uploads/thumbnail_images/thumbnail_9IKJJZZixA_1675840176.jpg','2023-02-08 01:39:37','2023-02-08 01:39:37',NULL),(124,145,10,1,'uploads/product_images/HMxJ5OE6sQ_1675840177.jpg','uploads/thumbnail_images/thumbnail_HMxJ5OE6sQ_1675840177.jpg','2023-02-08 01:39:39','2023-02-08 01:39:39',NULL),(125,145,10,1,'uploads/product_images/sgqd7DqORB_1675840179.jpg','uploads/thumbnail_images/thumbnail_sgqd7DqORB_1675840179.jpg','2023-02-08 01:39:39','2023-02-08 01:39:39',NULL),(126,145,10,1,'uploads/product_images/RouGQ71qKz_1675840179.jpg','uploads/thumbnail_images/thumbnail_RouGQ71qKz_1675840179.jpg','2023-02-08 01:39:41','2023-02-08 01:39:41',NULL),(127,145,10,1,'uploads/product_images/PI3bd2OYsf_1675840181.jpg','uploads/thumbnail_images/thumbnail_PI3bd2OYsf_1675840181.jpg','2023-02-08 01:39:41','2023-02-08 01:39:41',NULL),(128,146,10,1,'uploads/product_images/ymJt0Y2z6w_1675840232.jpg','uploads/thumbnail_images/thumbnail_ymJt0Y2z6w_1675840232.jpg','2023-02-08 01:40:34','2023-02-08 01:40:34',NULL),(129,146,10,1,'uploads/product_images/PGvbWYcrNf_1675840234.jpg','uploads/thumbnail_images/thumbnail_PGvbWYcrNf_1675840234.jpg','2023-02-08 01:40:35','2023-02-08 01:40:35',NULL),(130,146,10,1,'uploads/product_images/7mC1epKl4t_1675840235.jpg','uploads/thumbnail_images/thumbnail_7mC1epKl4t_1675840235.jpg','2023-02-08 01:40:36','2023-02-08 01:40:36',NULL),(131,146,10,1,'uploads/product_images/EI9pYdon4Q_1675840236.jpg','uploads/thumbnail_images/thumbnail_EI9pYdon4Q_1675840236.jpg','2023-02-08 01:40:38','2023-02-08 01:40:38',NULL),(132,146,10,1,'uploads/product_images/ZBMABZf7I9_1675840238.jpg','uploads/thumbnail_images/thumbnail_ZBMABZf7I9_1675840238.jpg','2023-02-08 01:40:39','2023-02-08 01:40:39',NULL),(133,146,10,1,'uploads/product_images/B9EFpj3pjY_1675840239.jpg','uploads/thumbnail_images/thumbnail_B9EFpj3pjY_1675840239.jpg','2023-02-08 01:40:41','2023-02-08 01:40:41',NULL),(134,147,10,1,'uploads/product_images/Qe52M909Ft_1675840288.jpg','uploads/thumbnail_images/thumbnail_Qe52M909Ft_1675840288.jpg','2023-02-08 01:41:29','2023-02-08 01:41:29',NULL),(135,147,10,1,'uploads/product_images/01cu6MBRAI_1675840289.jpg','uploads/thumbnail_images/thumbnail_01cu6MBRAI_1675840289.jpg','2023-02-08 01:41:31','2023-02-08 01:41:31',NULL),(136,147,10,1,'uploads/product_images/hSZXEmaQcE_1675840291.jpg','uploads/thumbnail_images/thumbnail_hSZXEmaQcE_1675840291.jpg','2023-02-08 01:41:32','2023-02-08 01:41:32',NULL),(137,147,10,1,'uploads/product_images/C9SN3sxl8I_1675840292.jpg','uploads/thumbnail_images/thumbnail_C9SN3sxl8I_1675840292.jpg','2023-02-08 01:41:33','2023-02-08 01:41:33',NULL),(138,147,10,1,'uploads/product_images/smN2JiM9ju_1675840293.jpg','uploads/thumbnail_images/thumbnail_smN2JiM9ju_1675840293.jpg','2023-02-08 01:41:34','2023-02-08 01:41:34',NULL),(139,147,10,1,'uploads/product_images/BF3XjQZKMn_1675840294.jpg','uploads/thumbnail_images/thumbnail_BF3XjQZKMn_1675840294.jpg','2023-02-08 01:41:35','2023-02-08 01:41:35',NULL),(140,147,10,1,'uploads/product_images/Z9NgnykAkt_1675840295.jpg','uploads/thumbnail_images/thumbnail_Z9NgnykAkt_1675840295.jpg','2023-02-08 01:41:36','2023-02-08 01:41:36',NULL),(141,148,10,1,'uploads/product_images/QdbP2kN8qM_1675840358.jpg','uploads/thumbnail_images/thumbnail_QdbP2kN8qM_1675840358.jpg','2023-02-08 01:42:42','2023-02-08 01:42:42',NULL),(142,148,10,1,'uploads/product_images/idvHnh5W7p_1675840362.jpg','uploads/thumbnail_images/thumbnail_idvHnh5W7p_1675840362.jpg','2023-02-08 01:42:44','2023-02-08 01:42:44',NULL),(143,148,10,1,'uploads/product_images/krRn0hyaaK_1675840364.jpg','uploads/thumbnail_images/thumbnail_krRn0hyaaK_1675840364.jpg','2023-02-08 01:42:46','2023-02-08 01:42:46',NULL),(144,148,10,1,'uploads/product_images/auCWl4Qt5J_1675840366.jpg','uploads/thumbnail_images/thumbnail_auCWl4Qt5J_1675840366.jpg','2023-02-08 01:42:46','2023-02-08 01:42:46',NULL),(145,148,10,1,'uploads/product_images/eqB6IQBcQC_1675840366.jpg','uploads/thumbnail_images/thumbnail_eqB6IQBcQC_1675840366.jpg','2023-02-08 01:42:47','2023-02-08 01:42:47',NULL),(146,148,10,1,'uploads/product_images/vqzLFH6GHA_1675840367.jpg','uploads/thumbnail_images/thumbnail_vqzLFH6GHA_1675840367.jpg','2023-02-08 01:42:49','2023-02-08 01:42:49',NULL),(147,149,10,1,'uploads/product_images/al5eIZ6VCo_1675840418.jpg','uploads/thumbnail_images/thumbnail_al5eIZ6VCo_1675840418.jpg','2023-02-08 01:43:39','2023-02-08 01:43:39',NULL),(148,149,10,1,'uploads/product_images/6scRINajPp_1675840419.jpg','uploads/thumbnail_images/thumbnail_6scRINajPp_1675840419.jpg','2023-02-08 01:43:40','2023-02-08 01:43:40',NULL),(149,149,10,1,'uploads/product_images/Zdo1MySVmJ_1675840420.jpg','uploads/thumbnail_images/thumbnail_Zdo1MySVmJ_1675840420.jpg','2023-02-08 01:43:41','2023-02-08 01:43:41',NULL),(150,149,10,1,'uploads/product_images/LazVGIgQiy_1675840421.jpg','uploads/thumbnail_images/thumbnail_LazVGIgQiy_1675840421.jpg','2023-02-08 01:43:41','2023-02-08 01:43:41',NULL),(151,149,10,1,'uploads/product_images/pP1ML9Tlek_1675840421.jpg','uploads/thumbnail_images/thumbnail_pP1ML9Tlek_1675840421.jpg','2023-02-08 01:43:42','2023-02-08 01:43:42',NULL),(152,150,10,1,'uploads/product_images/2uZK2pmgbn_1675840575.jpg','uploads/thumbnail_images/thumbnail_2uZK2pmgbn_1675840575.jpg','2023-02-08 01:46:17','2023-02-08 01:46:17',NULL),(153,150,10,1,'uploads/product_images/kPVHzB4UWp_1675840577.jpg','uploads/thumbnail_images/thumbnail_kPVHzB4UWp_1675840577.jpg','2023-02-08 01:46:18','2023-02-08 01:46:18',NULL),(154,150,10,1,'uploads/product_images/IXqhLqfGVa_1675840578.jpg','uploads/thumbnail_images/thumbnail_IXqhLqfGVa_1675840578.jpg','2023-02-08 01:46:19','2023-02-08 01:46:19',NULL),(155,150,10,1,'uploads/product_images/obPHjm4zyZ_1675840579.jpg','uploads/thumbnail_images/thumbnail_obPHjm4zyZ_1675840579.jpg','2023-02-08 01:46:21','2023-02-08 01:46:21',NULL),(156,151,10,1,'uploads/product_images/Cwm57HAmvM_1675840626.jpg','uploads/thumbnail_images/thumbnail_Cwm57HAmvM_1675840626.jpg','2023-02-08 01:47:06','2023-02-08 01:47:06',NULL),(157,151,10,1,'uploads/product_images/kNbHVYxLN1_1675840626.jpg','uploads/thumbnail_images/thumbnail_kNbHVYxLN1_1675840626.jpg','2023-02-08 01:47:07','2023-02-08 01:47:07',NULL),(158,151,10,1,'uploads/product_images/CctUGXtaaA_1675840627.jpg','uploads/thumbnail_images/thumbnail_CctUGXtaaA_1675840627.jpg','2023-02-08 01:47:09','2023-02-08 01:47:09',NULL),(159,151,10,1,'uploads/product_images/gUVxzpxf8B_1675840629.jpg','uploads/thumbnail_images/thumbnail_gUVxzpxf8B_1675840629.jpg','2023-02-08 01:47:10','2023-02-08 01:47:10',NULL),(160,152,10,1,'uploads/product_images/iV30ak9Yf0_1675840673.jpg','uploads/thumbnail_images/thumbnail_iV30ak9Yf0_1675840673.jpg','2023-02-08 01:47:54','2023-02-08 01:47:54',NULL),(161,152,10,1,'uploads/product_images/4EP02ebckF_1675840674.jpg','uploads/thumbnail_images/thumbnail_4EP02ebckF_1675840674.jpg','2023-02-08 01:47:56','2023-02-08 01:47:56',NULL),(162,152,10,1,'uploads/product_images/rwyF4YnwAE_1675840676.jpg','uploads/thumbnail_images/thumbnail_rwyF4YnwAE_1675840676.jpg','2023-02-08 01:47:57','2023-02-08 01:47:57',NULL),(163,152,10,1,'uploads/product_images/0Lvhb3wwPr_1675840677.jpg','uploads/thumbnail_images/thumbnail_0Lvhb3wwPr_1675840677.jpg','2023-02-08 01:47:58','2023-02-08 01:47:58',NULL),(164,153,10,1,'uploads/product_images/LIWIcorWvV_1675840752.jpg','uploads/thumbnail_images/thumbnail_LIWIcorWvV_1675840752.jpg','2023-02-08 01:49:13','2023-02-08 01:49:13',NULL),(165,153,10,1,'uploads/product_images/0XZYpv2ZUQ_1675840753.jpg','uploads/thumbnail_images/thumbnail_0XZYpv2ZUQ_1675840753.jpg','2023-02-08 01:49:14','2023-02-08 01:49:14',NULL),(166,153,10,1,'uploads/product_images/hhXiGeKaud_1675840754.jpg','uploads/thumbnail_images/thumbnail_hhXiGeKaud_1675840754.jpg','2023-02-08 01:49:16','2023-02-08 01:49:16',NULL),(167,153,10,1,'uploads/product_images/0uMCq1SY4x_1675840756.jpg','uploads/thumbnail_images/thumbnail_0uMCq1SY4x_1675840756.jpg','2023-02-08 01:49:18','2023-02-08 01:49:18',NULL),(168,154,10,1,'uploads/product_images/5oiJFjEBFI_1675840804.jpg','uploads/thumbnail_images/thumbnail_5oiJFjEBFI_1675840804.jpg','2023-02-08 01:50:05','2023-02-08 01:50:05',NULL),(169,154,10,1,'uploads/product_images/fR1l7RHOXE_1675840805.jpg','uploads/thumbnail_images/thumbnail_fR1l7RHOXE_1675840805.jpg','2023-02-08 01:50:05','2023-02-08 01:50:05',NULL),(170,154,10,1,'uploads/product_images/pUYlCtWvQi_1675840805.jpg','uploads/thumbnail_images/thumbnail_pUYlCtWvQi_1675840805.jpg','2023-02-08 01:50:06','2023-02-08 01:50:06',NULL),(171,154,10,1,'uploads/product_images/HBGtZUgGxI_1675840806.jpg','uploads/thumbnail_images/thumbnail_HBGtZUgGxI_1675840806.jpg','2023-02-08 01:50:08','2023-02-08 01:50:08',NULL),(172,155,10,1,'uploads/product_images/6EIcRqAVjF_1675841029.jpg','uploads/thumbnail_images/thumbnail_6EIcRqAVjF_1675841029.jpg','2023-02-08 01:53:50','2023-02-08 01:54:20','2023-02-08 01:54:20'),(173,155,10,1,'uploads/product_images/Z5a5iYITBN_1675841030.jpg','uploads/thumbnail_images/thumbnail_Z5a5iYITBN_1675841030.jpg','2023-02-08 01:53:51','2023-02-08 01:53:51',NULL),(174,155,10,1,'uploads/product_images/SUxZlA5gsw_1675841031.jpg','uploads/thumbnail_images/thumbnail_SUxZlA5gsw_1675841031.jpg','2023-02-08 01:53:53','2023-02-08 01:53:53',NULL),(175,155,10,1,'uploads/product_images/FJWpozd4Xz_1675841033.jpg','uploads/thumbnail_images/thumbnail_FJWpozd4Xz_1675841033.jpg','2023-02-08 01:53:55','2023-02-08 01:53:55',NULL),(176,155,10,1,'uploads/product_images/H3Outcpdfu_1675841035.jpg','uploads/thumbnail_images/thumbnail_H3Outcpdfu_1675841035.jpg','2023-02-08 01:53:56','2023-02-08 01:53:56',NULL),(177,155,10,1,'uploads/product_images/4YwaXjqYUt_1675841084.jpg','uploads/thumbnail_images/thumbnail_4YwaXjqYUt_1675841084.jpg','2023-02-08 01:54:45','2023-02-08 01:54:45',NULL),(178,156,10,1,'uploads/product_images/1TsSBBbzYR_1676023707.jpg','uploads/thumbnail_images/thumbnail_1TsSBBbzYR_1676023707.jpg','2023-02-10 04:38:29','2023-02-10 04:38:29',NULL),(179,156,10,1,'uploads/product_images/BhQdurOYJu_1676023709.jpg','uploads/thumbnail_images/thumbnail_BhQdurOYJu_1676023709.jpg','2023-02-10 04:38:31','2023-02-10 04:38:31',NULL),(180,156,10,1,'uploads/product_images/zwPt78xEwl_1676023711.jpg','uploads/thumbnail_images/thumbnail_zwPt78xEwl_1676023711.jpg','2023-02-10 04:38:33','2023-02-10 04:38:33',NULL),(181,156,10,1,'uploads/product_images/mJIM7iWV8Y_1676023713.jpg','uploads/thumbnail_images/thumbnail_mJIM7iWV8Y_1676023713.jpg','2023-02-10 04:38:34','2023-02-10 04:38:34',NULL),(182,156,10,1,'uploads/product_images/qmMkkz4VVQ_1676023714.jpg','uploads/thumbnail_images/thumbnail_qmMkkz4VVQ_1676023714.jpg','2023-02-10 04:38:35','2023-02-10 04:38:35',NULL),(183,157,10,1,'uploads/product_images/DJxGwCldaH_1676267114.jpg','uploads/thumbnail_images/thumbnail_DJxGwCldaH_1676267114.jpg','2023-02-13 00:15:15','2023-02-13 00:15:15',NULL),(184,157,10,1,'uploads/product_images/S9OPLXQjJd_1676267115.jpg','uploads/thumbnail_images/thumbnail_S9OPLXQjJd_1676267115.jpg','2023-02-13 00:15:17','2023-02-13 00:15:17',NULL),(185,157,10,1,'uploads/product_images/44FvsNwnCl_1676267117.jpg','uploads/thumbnail_images/thumbnail_44FvsNwnCl_1676267117.jpg','2023-02-13 00:15:19','2023-02-13 00:15:19',NULL),(186,157,10,1,'uploads/product_images/XkWQEChyRR_1676267119.jpg','uploads/thumbnail_images/thumbnail_XkWQEChyRR_1676267119.jpg','2023-02-13 00:15:21','2023-02-13 00:15:21',NULL),(187,157,10,1,'uploads/product_images/tTaAtO10MP_1676267121.jpg','uploads/thumbnail_images/thumbnail_tTaAtO10MP_1676267121.jpg','2023-02-13 00:15:22','2023-02-13 00:15:22',NULL),(188,158,10,1,'uploads/product_images/6z6jMX9nI2_1676267220.jpg','uploads/thumbnail_images/thumbnail_6z6jMX9nI2_1676267220.jpg','2023-02-13 00:17:01','2023-02-13 00:17:01',NULL),(189,158,10,1,'uploads/product_images/GmRcOkWVGB_1676267221.jpg','uploads/thumbnail_images/thumbnail_GmRcOkWVGB_1676267221.jpg','2023-02-13 00:17:02','2023-02-13 00:17:02',NULL),(190,158,10,1,'uploads/product_images/VGS094pT33_1676267222.jpg','uploads/thumbnail_images/thumbnail_VGS094pT33_1676267222.jpg','2023-02-13 00:17:03','2023-02-13 00:17:03',NULL),(191,158,10,1,'uploads/product_images/m7th2dXwoQ_1676267223.jpg','uploads/thumbnail_images/thumbnail_m7th2dXwoQ_1676267223.jpg','2023-02-13 00:17:03','2023-02-13 00:17:03',NULL),(192,158,10,1,'uploads/product_images/3d9sbTTMMX_1676267223.jpg','uploads/thumbnail_images/thumbnail_3d9sbTTMMX_1676267223.jpg','2023-02-13 00:17:05','2023-02-13 00:17:05',NULL),(193,159,2,1,'uploads/product_images/1rdKGYq1Tr_1676273009.jpg','uploads/thumbnail_images/thumbnail_1rdKGYq1Tr_1676273009.jpg','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(194,159,2,1,'uploads/product_images/EmM4yo521Q_1676273011.jpeg','uploads/thumbnail_images/thumbnail_EmM4yo521Q_1676273011.jpeg','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(195,159,2,1,'uploads/product_images/Y75qNXp5M3_1676273011.jpeg','uploads/thumbnail_images/thumbnail_Y75qNXp5M3_1676273011.jpeg','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(196,159,2,1,'uploads/product_images/cSIwyzmL2W_1676273011.jpeg','uploads/thumbnail_images/thumbnail_cSIwyzmL2W_1676273011.jpeg','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(197,159,2,1,'uploads/product_images/4HBoM6CqWc_1676273011.jpeg','uploads/thumbnail_images/thumbnail_4HBoM6CqWc_1676273011.jpeg','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(198,159,2,1,'uploads/product_images/2hFfn4RnVA_1676273011.jpeg','uploads/thumbnail_images/thumbnail_2hFfn4RnVA_1676273011.jpeg','2023-02-13 01:53:31','2023-02-13 01:53:31',NULL),(199,160,2,1,'uploads/product_images/NUOGLFWjcz_1676447391.jpg','uploads/thumbnail_images/thumbnail_NUOGLFWjcz_1676447391.jpg','2023-02-15 02:19:52','2023-02-15 02:19:52',NULL),(200,160,2,1,'uploads/product_images/6ro6PJrpNl_1676447392.jpg','uploads/thumbnail_images/thumbnail_6ro6PJrpNl_1676447392.jpg','2023-02-15 02:19:53','2023-02-15 02:19:53',NULL),(201,160,2,1,'uploads/product_images/iXcMuz0E8s_1676447393.jpg','uploads/thumbnail_images/thumbnail_iXcMuz0E8s_1676447393.jpg','2023-02-15 02:19:53','2023-02-15 02:19:53',NULL),(202,160,2,1,'uploads/product_images/w82PAdcKuF_1676447393.jpg','uploads/thumbnail_images/thumbnail_w82PAdcKuF_1676447393.jpg','2023-02-15 02:19:54','2023-02-15 02:19:54',NULL),(203,160,2,1,'uploads/product_images/4Bbj3eSOUj_1676447394.jpg','uploads/thumbnail_images/thumbnail_4Bbj3eSOUj_1676447394.jpg','2023-02-15 02:19:55','2023-02-15 02:19:55',NULL);
/*!40000 ALTER TABLE `product_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_source`
--

DROP TABLE IF EXISTS `product_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_source` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_source_product_id_index` (`product_id`),
  CONSTRAINT `product_source_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_source`
--

LOCK TABLES `product_source` WRITE;
/*!40000 ALTER TABLE `product_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variation_order`
--

DROP TABLE IF EXISTS `product_variation_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variation_order` (
  `order_id` int unsigned NOT NULL,
  `product_variation_id` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `product_variation_order_order_id_index` (`order_id`),
  KEY `product_variation_order_product_variation_id_index` (`product_variation_id`),
  CONSTRAINT `product_variation_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `product_variation_order_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variation_order`
--

LOCK TABLES `product_variation_order` WRITE;
/*!40000 ALTER TABLE `product_variation_order` DISABLE KEYS */;
INSERT INTO `product_variation_order` VALUES (47,146,2,'2023-02-11 04:30:45','2023-02-11 04:30:45',NULL),(47,131,1,'2023-02-11 04:30:45','2023-02-11 04:30:45',NULL),(47,147,1,'2023-02-11 04:30:45','2023-02-11 04:30:45',NULL);
/*!40000 ALTER TABLE `product_variation_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_variation_stock_view`
--

DROP TABLE IF EXISTS `product_variation_stock_view`;
/*!50001 DROP VIEW IF EXISTS `product_variation_stock_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_variation_stock_view` AS SELECT 
 1 AS `product_id`,
 1 AS `product_variation_id`,
 1 AS `stock`,
 1 AS `in_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product_variations`
--

DROP TABLE IF EXISTS `product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int DEFAULT NULL,
  `order` int DEFAULT NULL,
  `attribute_product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variations_product_id_index` (`product_id`),
  KEY `product_variations_attribute_product_id_index` (`attribute_product_id`),
  CONSTRAINT `product_variations_attribute_product_id_foreign` FOREIGN KEY (`attribute_product_id`) REFERENCES `attribute_product` (`id`),
  CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations`
--

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
INSERT INTO `product_variations` VALUES (105,124,'blue-small',950000,0,439,'2023-02-07 23:44:59','2023-02-07 23:44:59',NULL),(106,124,'red-medium',950000,4,443,'2023-02-07 23:44:59','2023-02-07 23:44:59',NULL),(107,125,'blue-small',350000,0,445,'2023-02-07 23:46:26','2023-02-07 23:46:26',NULL),(108,125,'red-small',650000,1,446,'2023-02-07 23:46:26','2023-02-07 23:46:26',NULL),(109,125,'white-small',350000,2,447,'2023-02-07 23:46:26','2023-02-07 23:46:26',NULL),(110,126,'blue-small',1500000,0,451,'2023-02-07 23:52:53','2023-02-07 23:52:53',NULL),(111,126,'white-medium',1500000,5,456,'2023-02-07 23:52:53','2023-02-07 23:52:53',NULL),(112,127,'white-small',982500,2,459,'2023-02-07 23:54:34','2023-02-07 23:54:34',NULL),(113,127,'blue-medium',452200,3,460,'2023-02-07 23:54:34','2023-02-07 23:54:34',NULL),(114,127,'red-medium',150000,4,461,'2023-02-07 23:54:34','2023-02-07 23:54:34',NULL),(115,128,'white-small',90000,2,465,'2023-02-08 00:40:07','2023-02-08 00:40:07',NULL),(116,128,'blue-medium',90000,3,466,'2023-02-08 00:40:07','2023-02-08 00:40:07',NULL),(117,129,'blue-small',80000,0,469,'2023-02-08 00:41:48','2023-02-08 00:41:48',NULL),(118,130,'blue-small',120000,0,475,'2023-02-08 00:42:36','2023-02-08 00:42:36',NULL),(119,131,'blue-small',160000,0,481,'2023-02-08 00:43:38','2023-02-08 00:43:38',NULL),(120,132,'blue-small',500000,0,487,'2023-02-08 00:45:33','2023-02-08 00:45:33',NULL),(121,133,'blue',2000000,0,493,'2023-02-08 00:59:18','2023-02-08 00:59:18',NULL),(122,133,'16GB',2000000,3,496,'2023-02-08 00:59:18','2023-02-08 00:59:18',NULL),(123,134,'blue',3500000,0,500,'2023-02-08 01:00:22','2023-02-08 01:00:22',NULL),(124,134,'black',3500000,1,501,'2023-02-08 01:00:22','2023-02-08 01:00:22',NULL),(125,135,'blue',1200000,0,507,'2023-02-08 01:01:17','2023-02-08 01:01:17',NULL),(126,136,'blue',8099900,0,514,'2023-02-08 01:02:04','2023-02-08 01:02:04',NULL),(127,137,'blue-small',950000,0,521,'2023-02-08 01:25:23','2023-02-08 01:25:23',NULL),(128,138,'blue-small',253300,0,527,'2023-02-08 01:29:20','2023-02-08 01:29:20',NULL),(129,139,'blue-small',350000,0,533,'2023-02-08 01:30:20','2023-02-08 01:30:20',NULL),(130,140,'blue-small',350000,0,539,'2023-02-08 01:31:14','2023-02-08 01:31:14',NULL),(131,141,'blue-small',150000,0,545,'2023-02-08 01:32:21','2023-02-08 01:32:21',NULL),(132,142,'blue-small',150000,0,551,'2023-02-08 01:33:28','2023-02-08 01:33:28',NULL),(133,142,'red-small',150000,1,552,'2023-02-08 01:33:28','2023-02-08 01:33:28',NULL),(134,143,'blue-small',650000,0,557,'2023-02-08 01:34:52','2023-02-08 01:34:52',NULL),(135,144,'blue-small',300000,0,563,'2023-02-08 01:36:48','2023-02-08 01:36:48',NULL),(136,145,'blue-small',350000,0,569,'2023-02-08 01:39:46','2023-02-08 01:39:46',NULL),(137,146,'red-small',350000,1,576,'2023-02-08 01:40:47','2023-02-08 01:40:47',NULL),(138,147,'blue-small',650000,0,581,'2023-02-08 01:41:57','2023-02-08 01:41:57',NULL),(139,148,'blue-small',120000,0,587,'2023-02-08 01:42:55','2023-02-08 01:42:55',NULL),(140,149,'blue-small',650000,0,593,'2023-02-08 01:43:54','2023-02-08 01:43:54',NULL),(141,150,'blue-small',350000,0,599,'2023-02-08 01:46:26','2023-02-08 01:46:26',NULL),(142,151,'blue-small',650000,0,605,'2023-02-08 01:47:17','2023-02-08 01:47:17',NULL),(143,152,'blue-small',324400,0,611,'2023-02-08 01:48:04','2023-02-08 01:48:04',NULL),(144,153,'blue-small',50000,0,617,'2023-02-08 01:49:27','2023-02-08 01:49:27',NULL),(145,154,'blue-small',150000,0,623,'2023-02-08 01:50:12','2023-02-08 01:50:12',NULL),(146,155,'blue-small',650000,0,629,'2023-02-08 01:54:01','2023-02-08 01:54:01',NULL),(147,156,'blue-small',1000,0,635,'2023-02-10 04:38:43','2023-02-10 04:38:43',NULL),(148,157,'white-small',946200,2,643,'2023-02-13 00:15:28','2023-02-13 00:15:28',NULL),(149,158,'blue-medium',352200,3,650,'2023-02-13 00:17:29','2023-02-13 00:17:29',NULL),(150,159,'blue',583400,0,653,'2023-02-13 01:54:03','2023-02-13 01:54:03',NULL),(151,159,'black',5478400,1,654,'2023-02-13 01:54:03','2023-02-13 01:54:03',NULL),(152,159,'8GB',843400,2,655,'2023-02-13 01:54:03','2023-02-13 01:54:03',NULL),(153,159,'16GB',5943400,3,656,'2023-02-13 01:54:03','2023-02-13 01:54:03',NULL),(154,160,'blue',857400,0,660,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(155,160,'black',9854200,1,661,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(156,160,'8GB',985400,2,662,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(157,160,'16GB',2358800,3,663,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(158,160,'32GB',12500,4,664,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(159,160,'64GB',9854200,5,665,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(160,160,'128GB',9777700,6,666,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL);
/*!40000 ALTER TABLE `product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productanswers`
--

DROP TABLE IF EXISTS `productanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productanswers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int unsigned NOT NULL,
  `seller_id` int unsigned NOT NULL,
  `buyer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visibility` enum('public','private') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `status` enum('pending','approve','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `likes` int NOT NULL DEFAULT '0',
  `dislikes` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productanswers_question_id_foreign` (`question_id`),
  KEY `productanswers_seller_id_foreign` (`seller_id`),
  KEY `productanswers_buyer_id_foreign` (`buyer_id`),
  KEY `productanswers_product_id_foreign` (`product_id`),
  KEY `productanswers_approved_by_foreign` (`approved_by`),
  CONSTRAINT `productanswers_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `productanswers_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `productanswers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `productanswers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `productquestions` (`id`),
  CONSTRAINT `productanswers_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productanswers`
--

LOCK TABLES `productanswers` WRITE;
/*!40000 ALTER TABLE `productanswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `productanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productquestions`
--

DROP TABLE IF EXISTS `productquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productquestions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` int unsigned NOT NULL,
  `seller_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productquestions_buyer_id_foreign` (`buyer_id`),
  KEY `productquestions_seller_id_foreign` (`seller_id`),
  KEY `productquestions_product_id_foreign` (`product_id`),
  CONSTRAINT `productquestions_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `productquestions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `productquestions_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productquestions`
--

LOCK TABLES `productquestions` WRITE;
/*!40000 ALTER TABLE `productquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `productquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `store_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` int unsigned NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnailimage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` int unsigned DEFAULT NULL,
  `weight` double(30,10) DEFAULT '0.0000000000',
  `tax_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` enum('physical','giftcard','downloadable') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `approved_by` int unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_approved_by_foreign` (`approved_by`),
  KEY `products_user_id_index` (`user_id`),
  KEY `products_store_id_index` (`store_id`),
  KEY `products_tax_id_index` (`tax_id`),
  CONSTRAINT `products_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `products_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_type` (`id`),
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (124,3,11,'Demo Shoes 1',0,'demo-shoes-1','DemoShoes1','Addidas','Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1Demo Shoes 1',NULL,NULL,950000,2.1000000000,2,1,'physical','2023-02-07 23:44:34','2023-02-07 23:44:34',NULL,NULL,NULL),(125,3,11,'Demo Shoes 2',0,'demo-shoes-2','demo-shoes-2','Puma','dfdemo-shoes-2demo-shoes-2demo-shoes-2demo-shoes-2 demo-shoes-2demo-shoes-2demo-shoes-2demo-shoes-2demo-shoes-2demo-shoes-2demo-shoes-2demo-shoes-2',NULL,NULL,350000,0.5000000000,2,1,'physical','2023-02-07 23:46:00','2023-02-07 23:46:00',NULL,NULL,NULL),(126,3,11,'Demo Shoes 3',0,'demo-shoes-3','demo-shoes-3','Nike','demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3demo-shoes-3',NULL,NULL,1500000,1.0010000000,2,1,'physical','2023-02-07 23:52:33','2023-02-07 23:52:33',NULL,NULL,NULL),(127,3,11,'demo-shoes-4',0,'demo-shoes-4','demo-shoes-4','Reebok','demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4demo-shoes-4',NULL,NULL,150000,1.5010000000,2,1,'physical','2023-02-07 23:54:09','2023-02-07 23:54:09',NULL,NULL,NULL),(128,3,11,'Demo Shirts 1',0,'demo-shirts-1','DemoShirts1','Reebok','Demo Shirts 1Demo Shirts 1',NULL,NULL,90000,1.0010000000,2,1,'physical','2023-02-08 00:39:55','2023-02-08 00:39:55',NULL,NULL,NULL),(129,3,11,'Demo Shirts 2',0,'demo-shirts-2','DemoShirts2','Park','Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2',NULL,NULL,80000,0.0000000000,2,1,'physical','2023-02-08 00:41:41','2023-02-08 00:41:41',NULL,NULL,NULL),(130,3,11,'Demo Shirts 3',0,'demo-shirts-3','DemoShirts2','Hrk','Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2Demo Shirts 2',NULL,NULL,120000,0.0010000000,1,1,'physical','2023-02-08 00:42:29','2023-02-08 00:42:29',NULL,NULL,NULL),(131,3,11,'Demo Shirts 4',0,'demo-shirts-4','DemoShirts4','Laravel','Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4',NULL,NULL,160000,0.0010000000,1,1,'physical','2023-02-08 00:43:29','2023-02-08 00:43:29',NULL,NULL,NULL),(132,3,11,'Demo Shirts 5',0,'demo-shirts-5','DemoShirts4','Nikeee','Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4Demo Shirts 4',NULL,NULL,500000,0.0010000000,1,1,'physical','2023-02-08 00:45:26','2023-02-08 00:45:26',NULL,NULL,NULL),(133,3,11,'Demo Mobile 1',0,'demo-mobile-1','DemoMobile1','OnePlus','Demo Mobile 1',NULL,NULL,2000000,0.0040000000,1,1,'physical','2023-02-08 00:59:03','2023-02-08 00:59:03',NULL,NULL,NULL),(134,3,11,'Demo Mobile 2',0,'demo-mobile-2','DemoMobile1','Apple','Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1',NULL,NULL,3500000,0.0050000000,1,1,'physical','2023-02-08 01:00:08','2023-02-08 01:00:08',NULL,NULL,NULL),(135,3,11,'Demo Mobile 3',0,'demo-mobile-3','DemoMobile1','Redmi','Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1',NULL,NULL,1200000,0.0010000000,1,1,'physical','2023-02-08 01:01:11','2023-02-08 01:01:11',NULL,NULL,NULL),(136,3,11,'Demo Mobile 4',0,'demo-mobile-4','DemoMobil44','Samsung','Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1Demo Mobile 1',NULL,NULL,8099900,0.0010000000,1,1,'physical','2023-02-08 01:01:59','2023-02-08 01:01:59',NULL,NULL,NULL),(137,3,11,'Demo Product 11',0,'demo-product-11','DemoProduct11','Demo','Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11',NULL,NULL,950000,0.0010000000,1,1,'physical','2023-02-08 01:25:12','2023-02-08 01:25:12',NULL,NULL,NULL),(138,3,11,'Demo Product 12',0,'demo-product-12','DemoProduct11','Demo12','Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11Demo Product 11',NULL,NULL,253300,0.0000000000,1,1,'physical','2023-02-08 01:29:06','2023-02-08 01:29:06',NULL,NULL,NULL),(139,3,11,'Demo Product 13',0,'demo-product-13','DemoProduct13','Demo','Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13Demo Product 13',NULL,NULL,350000,0.0010000000,1,1,'physical','2023-02-08 01:30:04','2023-02-08 01:30:04',NULL,NULL,NULL),(140,3,11,'Demo Product 14',0,'demo-product-14','Demo Product 14','Demo','Demo Product 14',NULL,NULL,350000,0.0010000000,1,1,'physical','2023-02-08 01:30:59','2023-02-08 01:30:59',NULL,NULL,NULL),(141,3,11,'Demo Product 15',0,'demo-product-15','Demo Product 15','Demo15','Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15Demo Product 15',NULL,NULL,150000,0.0010000000,1,1,'physical','2023-02-08 01:32:07','2023-02-08 01:32:07',NULL,NULL,NULL),(142,3,11,'Demo Product 16',0,'demo-product-16','Demo Product 16','Demo','Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16Demo Product 16',NULL,NULL,150000,0.0010000000,1,1,'physical','2023-02-08 01:33:10','2023-02-08 01:33:10',NULL,NULL,NULL),(143,3,11,'Demo Product 17',0,'demo-product-17','Demo Product 17','Demo','sdfDemo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17Demo Product 17',NULL,NULL,650000,0.0010000000,1,1,'physical','2023-02-08 01:34:39','2023-02-08 01:34:39',NULL,NULL,NULL),(144,3,11,'Demo Product 18',0,'demo-product-18','Demo Product 18','Demo','Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18Demo Product 18',NULL,NULL,300000,0.0040000000,1,1,'physical','2023-02-08 01:36:35','2023-02-08 01:36:35',NULL,NULL,NULL),(145,3,11,'Demo Product 19',0,'demo-product-19','Demo Product 19','Demo','Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19Demo Product 19',NULL,NULL,350000,0.0010000000,1,1,'physical','2023-02-08 01:39:33','2023-02-08 01:39:33',NULL,NULL,NULL),(146,3,11,'Demo Product 20',0,'demo-product-20','Demo Product 20','Demo','Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20Demo Product 20',NULL,NULL,350000,0.0010000000,1,1,'physical','2023-02-08 01:40:32','2023-02-08 01:40:32',NULL,NULL,NULL),(147,3,11,'Demo Product 21',0,'demo-product-21','Demo Product 21','Demo','Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21Demo Product 21',NULL,NULL,950000,0.0010000000,1,1,'physical','2023-02-08 01:41:28','2023-02-08 01:41:28',NULL,NULL,NULL),(148,3,11,'Demo Product 22',0,'demo-product-22','Demo Product 22','Demo','Demo Product 22Demo Product 22',NULL,NULL,120000,0.0010000000,1,1,'physical','2023-02-08 01:42:38','2023-02-08 01:42:38',NULL,NULL,NULL),(149,3,11,'Demo Product 23',0,'demo-product-23','Demo Product 23','Demo','Demo Product 23Demo Product 23Demo Product 23Demo Product 23Demo Product 23Demo Product 23Demo Product 23Demo Product 23',NULL,NULL,650000,0.0010000000,1,1,'physical','2023-02-08 01:43:38','2023-02-08 01:43:38',NULL,NULL,NULL),(150,3,11,'Demo Product 24',0,'demo-product-24','Demo Product 24','Demo','Demo Product 24Demo Product 24Demo Product 24Demo Product 24',NULL,NULL,350000,0.0010000000,1,1,'physical','2023-02-08 01:46:15','2023-02-08 01:46:15',NULL,NULL,NULL),(151,3,11,'Demo Product 25',0,'demo-product-25','Demo Product 25','Demo','Demo Product 25Demo Product 25Demo Product 25Demo Product 25Demo Product 25Demo Product 25Demo Product 25',NULL,NULL,650000,0.0010000000,1,1,'physical','2023-02-08 01:47:06','2023-02-08 01:47:06',NULL,NULL,NULL),(152,3,11,'Demo Product 26',0,'demo-product-26','Demo Product 26','Demo','Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26Demo Product 26',NULL,NULL,324400,0.0010000000,1,1,'physical','2023-02-08 01:47:53','2023-02-08 01:47:53',NULL,NULL,NULL),(153,3,11,'Demo Product 27',0,'demo-product-27','Demo Product 27','Demo','Demo Product 27Demo Product 27Demo Product 27Demo Product 27Demo Product 27Demo Product 27',NULL,NULL,50000,0.0010000000,1,1,'physical','2023-02-08 01:49:12','2023-02-08 01:49:12',NULL,NULL,NULL),(154,3,11,'Demo Product 28',0,'demo-product-28','Demo Product 28','Demo','Demo Product 28Demo Product 28Demo Product 28Demo Product 28Demo Product 28',NULL,NULL,150000,0.0010000000,1,1,'physical','2023-02-08 01:50:04','2023-02-08 01:50:04',NULL,NULL,NULL),(155,3,11,'Demo Product 30',5,'demo-product-30','Demo Product 30','Demo','Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30Demo Product 30',NULL,NULL,650000,0.0010000000,1,1,'physical','2023-02-08 01:53:49','2023-02-14 07:16:32',NULL,NULL,NULL),(156,3,11,'demo proudvjt  ddd6 565',4,'demo-proudvjt-ddd6-565','g45f454','Iphone','Impress the world with stunning photos and wonderful videos captured using this Sony α7 III DSLR camera that meets all your shooting needs with its innovative features. This camera features a 35 mm Full-frame Image Sensor, Up to 10 fps with AF/AE Tracking, and High-resolution, High-contrast XGA OLED Tru-Finder to click clear images and high-quality videos.',NULL,NULL,1000,0.0010000000,1,1,'physical','2023-02-10 04:38:27','2023-02-11 04:32:14',NULL,NULL,NULL),(157,3,11,'Demo Product 32',0,'demo-product-32-dgBExSfYmL','DemoProduct32','Demo','Demo Product 32Demo Product 32Demo Product 32Demo Product 32',NULL,NULL,946200,0.0010000000,1,1,'physical','2023-02-13 00:15:14','2023-02-13 00:15:14',NULL,NULL,NULL),(158,3,11,'Demo Product 33',0,'demo-product-32-3nf4T','Demo54Product','Demo','4545',NULL,NULL,352200,0.0010000000,1,1,'physical','2023-02-13 00:17:00','2023-02-13 00:18:27',NULL,NULL,NULL),(159,3,11,'dfdsfd',0,'dfdsfd-eWb8F','fddsfsdfsdfdf','rrrrrrr','ssd',NULL,NULL,543400,0.0010000000,1,1,'physical','2023-02-13 01:53:29','2023-02-13 01:53:29',NULL,NULL,NULL),(160,108,13,'Seller2 Product 1',0,'seller2-product-1-ec6Z1','Seller2 Product 1','Seller2P','Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1Seller2 Product 1',NULL,NULL,9854200,0.0000000000,1,1,'physical','2023-02-15 02:19:51','2023-02-15 03:47:09',NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_reviews`
--

DROP TABLE IF EXISTS `rating_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_reviews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int DEFAULT NULL,
  `entity_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('not_approved','approved') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_approved',
  `likes` int unsigned DEFAULT NULL,
  `dislikes` int unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_by` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rating_reviews_approved_by_foreign` (`approved_by`),
  KEY `rating_reviews_user_id_index` (`user_id`),
  KEY `rating_reviews_likes_index` (`likes`),
  KEY `rating_reviews_dislikes_index` (`dislikes`),
  CONSTRAINT `rating_reviews_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `rating_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_reviews`
--

LOCK TABLES `rating_reviews` WRITE;
/*!40000 ALTER TABLE `rating_reviews` DISABLE KEYS */;
INSERT INTO `rating_reviews` VALUES (14,156,'App\\Models\\Product',6,'FDSFSDFADSFD','DFASDFDSFASDFDSFD','FDSFSDFSDFF','4','approved',NULL,NULL,NULL,'2023-02-11 04:32:14','2023-02-14 23:34:10',1),(17,155,'App\\Models\\Product',6,'rrrrr','tesfddffdf','raadsjfkljsd dlks dididid f','5','approved',NULL,NULL,NULL,'2023-02-14 23:32:43','2023-02-14 23:32:43',NULL);
/*!40000 ALTER TABLE `rating_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int unsigned NOT NULL,
  `regionname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seller_id` int unsigned NOT NULL,
  `delivered` int unsigned NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `import_file_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regions_regionname_unique` (`regionname`),
  KEY `regions_country_id_index` (`country_id`),
  KEY `regions_seller_id_index` (`seller_id`),
  KEY `regions_delivered_index` (`delivered`),
  CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `regions_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,1,'West_India','[\"1\"]','[\"1\",\"3\"]',3,5,'active','','2022-12-23 03:05:32','2022-12-23 03:05:32');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_gallery`
--

DROP TABLE IF EXISTS `review_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_gallery` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rating_id` int unsigned NOT NULL,
  `imagepath` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnailimage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `review_gallery_rating_id_index` (`rating_id`),
  CONSTRAINT `review_gallery_rating_id_foreign` FOREIGN KEY (`rating_id`) REFERENCES `rating_reviews` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_gallery`
--

LOCK TABLES `review_gallery` WRITE;
/*!40000 ALTER TABLE `review_gallery` DISABLE KEYS */;
INSERT INTO `review_gallery` VALUES (7,14,'review_image/2v5WxlB6On4UV8BqjhJX0PdTnDp83Q7Ng6MtQsHC.jpg','uploads/review_image/thumbnailca-creative-E1rH__X9SA0-unsplash.jpg','2023-02-11 04:32:15','2023-02-11 04:32:15'),(10,17,'uploads/review_image/zO5dBv4PCW_1676437363.jpg','uploads/review_image/thumbnail_zO5dBv4PCW_1676437363.jpg','2023-02-14 23:32:44','2023-02-14 23:32:44'),(11,17,'uploads/review_image/SQaLKfDLkG_1676437364.jpg','uploads/review_image/thumbnail_SQaLKfDLkG_1676437364.jpg','2023-02-14 23:32:45','2023-02-14 23:32:45'),(12,17,'uploads/review_image/h95gsTIasv_1676437365.jpg','uploads/review_image/thumbnail_h95gsTIasv_1676437365.jpg','2023-02-14 23:32:46','2023-02-14 23:32:46'),(13,17,'uploads/review_image/Tcz4ZERzeG_1676437366.jpg','uploads/review_image/thumbnail_Tcz4ZERzeG_1676437366.jpg','2023-02-14 23:32:47','2023-02-14 23:32:47');
/*!40000 ALTER TABLE `review_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellerprofiles`
--

DROP TABLE IF EXISTS `sellerprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellerprofiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `status` enum('not_approved','approved') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_approved',
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankaccount_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankaccount_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_state` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_pincode` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `business_name_UNIQUE` (`business_name`),
  KEY `sellerprofiles_user_id_foreign` (`user_id`),
  KEY `sellerprofiles_approved_by_foreign` (`approved_by`),
  CONSTRAINT `sellerprofiles_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `sellerprofiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellerprofiles`
--

LOCK TABLES `sellerprofiles` WRITE;
/*!40000 ALTER TABLE `sellerprofiles` DISABLE KEYS */;
INSERT INTO `sellerprofiles` VALUES (1,3,'approved','seller1','personal','GSTIN8599IN','PEN8566IN','SBI','554645645668745','Californa busness','Los angiles','New York','313001','www.google.com',1,'2022-12-10 02:20:15',NULL,'2023-02-04 00:46:23'),(17,108,'approved','Seller2 Store','person','dfs','dg5d5d45f',NULL,NULL,'25 India Par drs','Udaipur','raj','313002',NULL,NULL,'2023-02-15 02:15:51',NULL,'2023-02-15 02:16:38');
/*!40000 ALTER TABLE `sellerprofiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `field` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'sitetitle','Site Title','Shopping Cart site.','shoptown','{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Site Title\" ,\"type\":\"text\"}',1,NULL,'2022-12-10 02:20:17','2022-12-10 02:20:17'),(2,'sitename','gegocart','Shopping Cart site.','shoptown','{\"name\":\"value\",\"label\":\"Value\", \"title\":\"gegocart\" ,\"type\":\"text\"}',1,NULL,'2022-12-10 02:20:17','2022-12-10 02:20:17'),(3,'sitelogo','Site Logo','Logo of the website. Recommended Size : 220px (w) x 45px (h)','images/logo.png','{\"name\":\"value\",\"label\":\"Value\" ,\"type\":\"browse\"}',1,NULL,'2022-12-10 02:20:17','2022-12-10 02:20:17');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_charges`
--

DROP TABLE IF EXISTS `shipping_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_charges` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `min_weight` int DEFAULT NULL,
  `max_weight` int DEFAULT NULL,
  `charge` double(10,2) NOT NULL,
  `scope` enum('local','national','regional') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `item_size` enum('standard','heavy','oversize') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_charges`
--

LOCK TABLES `shipping_charges` WRITE;
/*!40000 ALTER TABLE `shipping_charges` DISABLE KEYS */;
INSERT INTO `shipping_charges` VALUES (1,0,500,38.00,'local','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(2,500,1000,16.00,'local','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(3,1000,NULL,10.00,'local','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(4,0,500,46.00,'regional','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(5,500,1000,21.00,'regional','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(6,1000,NULL,15.00,'regional','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(7,0,500,66.00,'national','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(8,500,1000,25.00,'national','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(9,1000,NULL,20.00,'national','standard','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(10,1000,5000,101.00,'local','oversize','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(11,5000,NULL,10.00,'local','oversize','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(12,1000,5000,116.00,'regional','oversize','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(13,5000,NULL,11.00,'regional','oversize','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(14,1000,5000,166.00,'national','oversize','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(15,5000,NULL,14.00,'national','oversize','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(16,1000,12000,241.00,'local','heavy','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(17,12000,NULL,3.00,'local','heavy','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(18,1000,12000,241.00,'regional','heavy','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(19,12000,NULL,4.00,'regional','heavy','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL);
/*!40000 ALTER TABLE `shipping_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_methods` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_methods`
--

LOCK TABLES `shipping_methods` WRITE;
/*!40000 ALTER TABLE `shipping_methods` DISABLE KEYS */;
INSERT INTO `shipping_methods` VALUES (1,'Free Shipping',900,'2022-12-10 02:20:17','2022-12-20 01:46:06'),(2,'Manual Pickup',1500,'2022-12-10 02:20:17','2022-12-20 01:46:15');
/*!40000 ALTER TABLE `shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `states_country_id_index` (`country_id`),
  CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'ANDHRA PRADESH',1,NULL,NULL),(2,'ASSAM',1,NULL,NULL),(3,'ARUNACHAL PRADESH',1,NULL,NULL),(4,'BIHAR',1,NULL,NULL),(5,'GUJRAT',1,NULL,NULL),(6,'HARYANA',1,NULL,NULL),(7,'HIMACHAL PRADESH',1,NULL,NULL),(8,'JAMMU & KASHMIR',1,NULL,NULL),(9,'KARNATAKA',1,NULL,NULL),(10,'KERALA',1,NULL,NULL),(11,'MADHYA PRADESH',1,NULL,NULL),(12,'MAHARASHTRA',1,NULL,NULL),(13,'MANIPUR',1,NULL,NULL),(14,'MEGHALAYA',1,NULL,NULL),(15,'MIZORAM',1,NULL,NULL),(16,'NAGALAND',1,NULL,NULL),(17,'ORISSA',1,NULL,NULL),(18,'PUNJAB',1,NULL,NULL),(19,'RAJASTHAN',1,NULL,NULL),(20,'SIKKIM',1,NULL,NULL),(21,'TAMIL NADU',1,NULL,NULL),(22,'TRIPURA',1,NULL,NULL),(23,'UTTAR PRADESH',1,NULL,NULL),(24,'WEST BENGAL',1,NULL,NULL),(25,'DELHI',1,NULL,NULL),(26,'GOA',1,NULL,NULL),(27,'PONDICHERY',1,NULL,NULL),(28,'LAKSHDWEEP',1,NULL,NULL),(29,'DAMAN & DIU',1,NULL,NULL),(30,'DADRA & NAGAR',1,NULL,NULL),(31,'CHANDIGARH',1,NULL,NULL),(32,'ANDAMAN & NICOBAR',1,NULL,NULL),(33,'UTTARANCHAL',1,NULL,NULL),(34,'JHARKHAND',1,NULL,NULL),(35,'CHATTISGARH',1,NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `product_variation_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_product_variation_id_index` (`product_variation_id`),
  CONSTRAINT `stocks_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,30,105,'2023-02-07 23:44:59','2023-02-07 23:44:59',NULL),(2,40,106,'2023-02-07 23:44:59','2023-02-07 23:44:59',NULL),(3,30,107,'2023-02-07 23:46:26','2023-02-07 23:46:26',NULL),(4,60,108,'2023-02-07 23:46:26','2023-02-07 23:46:26',NULL),(5,30,109,'2023-02-07 23:46:26','2023-02-07 23:46:26',NULL),(6,65,110,'2023-02-07 23:52:53','2023-02-07 23:52:53',NULL),(7,55,111,'2023-02-07 23:52:53','2023-02-07 23:52:53',NULL),(8,55,112,'2023-02-07 23:54:34','2023-02-07 23:54:34',NULL),(9,84,113,'2023-02-07 23:54:34','2023-02-07 23:54:34',NULL),(10,44,114,'2023-02-07 23:54:34','2023-02-07 23:54:34',NULL),(11,30,115,'2023-02-08 00:40:07','2023-02-08 00:40:07',NULL),(12,33,116,'2023-02-08 00:40:07','2023-02-08 00:40:07',NULL),(13,30,117,'2023-02-08 00:41:48','2023-02-08 00:41:48',NULL),(14,333,118,'2023-02-08 00:42:36','2023-02-08 00:42:36',NULL),(15,333,119,'2023-02-08 00:43:38','2023-02-08 00:43:38',NULL),(16,30,120,'2023-02-08 00:45:33','2023-02-08 00:45:33',NULL),(17,10,121,'2023-02-08 00:59:18','2023-02-08 00:59:18',NULL),(18,33,122,'2023-02-08 00:59:18','2023-02-08 00:59:18',NULL),(19,55,123,'2023-02-08 01:00:22','2023-02-08 01:00:22',NULL),(20,754,124,'2023-02-08 01:00:22','2023-02-08 01:00:22',NULL),(21,11,125,'2023-02-08 01:01:17','2023-02-08 01:01:17',NULL),(22,11,126,'2023-02-08 01:02:04','2023-02-08 01:02:04',NULL),(23,222,127,'2023-02-08 01:25:23','2023-02-08 01:25:23',NULL),(24,200,128,'2023-02-08 01:29:20','2023-02-08 01:29:20',NULL),(25,300,129,'2023-02-08 01:30:20','2023-02-08 01:30:20',NULL),(26,30,130,'2023-02-08 01:31:14','2023-02-08 01:31:14',NULL),(27,554,131,'2023-02-08 01:32:21','2023-02-11 04:31:06',NULL),(28,200,132,'2023-02-08 01:33:28','2023-02-08 01:33:28',NULL),(29,300,133,'2023-02-08 01:33:28','2023-02-08 01:33:28',NULL),(30,222,134,'2023-02-08 01:34:52','2023-02-08 01:34:52',NULL),(31,444,135,'2023-02-08 01:36:48','2023-02-08 01:36:48',NULL),(32,44,136,'2023-02-08 01:39:46','2023-02-08 01:39:46',NULL),(33,333,137,'2023-02-08 01:40:47','2023-02-08 01:40:47',NULL),(34,666,138,'2023-02-08 01:41:57','2023-02-08 01:41:57',NULL),(35,300,139,'2023-02-08 01:42:55','2023-02-08 01:42:55',NULL),(36,254,140,'2023-02-08 01:43:54','2023-02-08 01:43:54',NULL),(37,35,141,'2023-02-08 01:46:26','2023-02-08 01:46:26',NULL),(38,444,142,'2023-02-08 01:47:17','2023-02-08 01:47:17',NULL),(39,500,143,'2023-02-08 01:48:04','2023-02-08 01:48:04',NULL),(40,555,144,'2023-02-08 01:49:27','2023-02-08 01:49:27',NULL),(41,555,145,'2023-02-08 01:50:12','2023-02-08 01:50:12',NULL),(42,63,146,'2023-02-08 01:54:01','2023-02-11 04:30:45',NULL),(43,77,147,'2023-02-10 04:38:43','2023-02-11 04:31:17',NULL),(44,32,148,'2023-02-13 00:15:28','2023-02-13 00:15:28',NULL),(45,355,149,'2023-02-13 00:17:29','2023-02-13 00:17:29',NULL),(46,65,150,'2023-02-13 01:54:03','2023-02-13 01:54:03',NULL),(47,85,151,'2023-02-13 01:54:03','2023-02-13 01:54:03',NULL),(48,54,152,'2023-02-13 01:54:03','2023-02-13 01:54:03',NULL),(49,554,153,'2023-02-13 01:54:03','2023-02-13 01:54:03',NULL),(50,52,154,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(51,85,155,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(52,74,156,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(53,54,157,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(54,17,158,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(55,897,159,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL),(56,74,160,'2023-02-15 02:20:56','2023-02-15 02:20:56',NULL);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `storelogo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `storeimage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stores_slug_unique` (`slug`),
  KEY `stores_user_id_index` (`user_id`),
  CONSTRAINT `stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (11,3,'Seller1Store','seller1store',1,'There are four types of products and each is classified based on consumer habits, price, and product characteristics: convenience goods, shopping goods, specialty products, and unsought goods','There are four types of products and each is classified based on consumer habits, price, and product characteristics: convenience goods, shopping goods, specialty products, and unsought goods','uploads/storeimage/Ve1Brg09yT_1676375965-logo.jpg','uploads/storeimage/Z8u05ZhYxx_1676375965.jpg','Udaipur India,313001',NULL,'2023-02-07 23:41:26','2023-02-14 06:29:26'),(12,3,'teeeeedd','teeeeedd',1,'fdsfdfd','dfdf','uploads/storeimage/Vf65fnHVTK_1676375742-logo.jpg','uploads/storeimage/AZfCvb3BXh_1676375743.jpg','25 dindfds dif fdijsdifisdf','2023-02-14 06:29:32','2023-02-14 05:44:43','2023-02-14 06:29:32'),(13,108,'Seller2Store','seller2store',1,'seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2','seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2','uploads/storeimage/74a8oOJyf9_1676447243-logo.jpg','uploads/storeimage/FM6592ykcy_1676447243.jpg','seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2seller2',NULL,'2023-02-15 02:17:24','2023-02-15 03:41:50');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_type`
--

DROP TABLE IF EXISTS `tax_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `country_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_rate` bigint NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tax_type_country_id_index` (`country_id`),
  KEY `tax_type_order_index` (`order`),
  CONSTRAINT `tax_type_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_type`
--

LOCK TABLES `tax_type` WRITE;
/*!40000 ALTER TABLE `tax_type` DISABLE KEYS */;
INSERT INTO `tax_type` VALUES (1,'Electronics',1,'IN','','','',5,1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(2,'Clothes',1,'IN','','','',5,1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(3,'Furniture',1,'IN','','','',5,1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(4,'Toys',1,'IN','','','',18,1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(5,'Gift card',1,'IN','','','',6,1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL),(6,'Others',1,'IN','','','',28,1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',NULL);
/*!40000 ALTER TABLE `tax_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `type` enum('credit','debit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'credit',
  `status` enum('pending','approve','processing','payment_failed','completed','refunded','shipped','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(50,2) NOT NULL DEFAULT '0.00',
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `transaction_date` date DEFAULT NULL,
  `transaction_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `entity_id` int DEFAULT NULL,
  `entity_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `balance_before` double(50,2) NOT NULL DEFAULT '0.00',
  `balance_after` double(50,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  KEY `transactions_order_id_index` (`order_id`),
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,47,6,'debit','pending','cod',15273.30,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2023-02-11','',NULL,81,'App\\Models\\OrderItem',-30546.60,-45819.90,'2023-02-11 04:30:45','2023-02-11 04:31:17',NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobileno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `usergroup_id` int unsigned NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `last_login_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `gateway_customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileStatus` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_mobileno_unique` (`mobileno`),
  KEY `users_usergroup_id_foreign` (`usergroup_id`),
  CONSTRAINT `users_usergroup_id_foreign` FOREIGN KEY (`usergroup_id`) REFERENCES `usersgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@shoptown.com',NULL,NULL,'$2y$10$KqCdPbx.Z8bT0KRmPoHPTOeVlkR6KhGz1ZTK5OcZZi4hnCBsCwkUm',1,1,'uploads/profile_image/defult.png','bcfde95e532bb3bccbf3d44618d691f6412ab30d',0,NULL,NULL,'2022-12-10 02:20:15','2023-01-12 03:13:35',NULL,NULL,NULL),(2,'subadmin','subadmin@gegocart.com',NULL,NULL,'$2y$10$BmPBT8VarRsHam4zANP6belu4zbp1HKwIoMl/A4qmN6AnGRVkSDy6',1,2,'uploads/profile_image/defult.png',NULL,0,NULL,NULL,'2022-12-10 02:20:15','2022-12-10 02:20:15',NULL,NULL,NULL),(3,'seller1','seller1@shoptown.com','2022-12-12 04:14:49','9876543210','$2y$10$X5sWgO0iNV1brdZnAjJetet4XvJMD4P.L.hlDwuHm/EOtNGpjKyfO',1,3,'profile/seller11670661476.png','65535049b0b1ee9ab80afcd9e11f2a3d722b9075',1,NULL,NULL,'2022-12-10 02:20:15','2023-02-04 00:46:23',NULL,NULL,1),(6,'buyer1 r','buyer1@shoptown.com','2022-12-12 04:14:49','1254789656','$2y$10$kNZbZ5D8L7JV03Lwk/jIy.9ACyc4D02YLp5Fdqvg8uFZMrgZMXh2W',1,4,'uploads/profile_image/buyer1-r_1676456765.jpg','8290e47a0c08637d90b8e007e213617c601fac3a',1,NULL,NULL,'2022-12-10 02:20:15','2023-02-15 04:56:05',NULL,NULL,NULL),(104,'Admin','shubham@gmail.com','2022-12-12 04:14:49','8965478525','$2y$10$dyIZopJZmQ7LJqmBnmmGCugMCZt/62AeJWfD8hAKFk0SvpYkmvWq.',1,4,'uploads/profile_image/defult.png','f337b704e62d8ef206c12927e342fb855b52bfc0',1,NULL,NULL,'2023-02-08 02:20:52','2023-02-11 07:45:21',NULL,NULL,0),(105,'asdasdad','wsef@f.f','2022-12-12 04:14:49','7856868566','$2y$10$cCLGJbjuRVVatD1rJPGh6eOK4smXDN9qH2.ob.amirPPeOXMYQctK',1,4,'uploads/profile_image/defult.png','99514c2e094a65337f6faf37cb9ecd510cdb2ca5',0,NULL,NULL,'2023-02-09 06:18:12','2023-02-09 06:18:12',NULL,NULL,0),(106,'sdfcsdfcd','qwe@gfb.h','2022-12-12 04:14:49','4536543654','$2y$10$RK3HXnuqkx.nKc2NeulZqOKj2Vq15Nql0WgvdyEZxh5Pcj16Kk2/u',1,4,'uploads/profile_image/defult.png','b29ecf1e3edf092e4753c1f55894e9c7b7998c4d',0,NULL,NULL,'2023-02-10 00:28:50','2023-02-10 00:28:50',NULL,NULL,0),(107,'shubhu','email@gmail.com',NULL,'8974569856','$2y$10$aekIdgqAS4TO9hlzLcwjcuOnUC0MVbKh8QIwklDAZq5kpmnflOFqS',1,4,'uploads/profile_image/defult.png','5486839545ce3547fb879e4033e77de7e6fa3fee',1,NULL,NULL,'2023-02-15 00:35:50','2023-02-15 00:36:37',NULL,NULL,0),(108,'seller2','seller2@shoptown.com','2022-12-12 04:14:49','6585467854','$2y$10$eK7uaUh6cNKygaejx4H1BevlC3Fn73sceQ5Usa2NftyWwI.VzcFi2',1,3,'uploads/profile_image/defult.png','c93f5da90b19e4f214025bf0b9d9e1ec3f105ad6',1,NULL,NULL,'2023-02-15 02:14:31','2023-02-15 02:15:51',NULL,NULL,1),(109,'tesdklfjksld','ranjeetttt@tesfdsdfds.com',NULL,'6527856552','$2y$10$shQEQCzP6t99CynpTQKKweDn8TOc.f2FevFV5peMg5kxKYcu6yT/a',1,4,'uploads/profile_image/defult.png','1014cf710e6047f84c7e62dad66309d287f03c2b',1,NULL,NULL,'2023-02-15 04:58:06','2023-02-15 05:00:38',NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersdetails`
--

DROP TABLE IF EXISTS `usersdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersdetails` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `usergroup_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usersdetails_user_id_index` (`user_id`),
  KEY `usersdetails_usergroup_id_index` (`usergroup_id`),
  CONSTRAINT `usersdetails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `usersdetails_usergroup_id_foreign` FOREIGN KEY (`usergroup_id`) REFERENCES `usersgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersdetails`
--

LOCK TABLES `usersdetails` WRITE;
/*!40000 ALTER TABLE `usersdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersgroup`
--

DROP TABLE IF EXISTS `usersgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersgroup` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usersgroup_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersgroup`
--

LOCK TABLES `usersgroup` WRITE;
/*!40000 ALTER TABLE `usersgroup` DISABLE KEYS */;
INSERT INTO `usersgroup` VALUES (1,'admin','2022-12-10 02:20:14','2022-12-10 02:20:14',NULL),(2,'subadmin','2022-12-10 02:20:14','2022-12-10 02:20:14',NULL),(3,'seller','2022-12-10 02:20:14','2022-12-10 02:20:14',NULL),(4,'buyer','2022-12-10 02:20:14','2022-12-10 02:20:14',NULL);
/*!40000 ALTER TABLE `usersgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_item`
--

DROP TABLE IF EXISTS `wishlist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist_item` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `wishlist_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_item_user_id_foreign` (`user_id`),
  KEY `wishlist_item_wishlist_id_foreign` (`wishlist_id`),
  KEY `wishlist_item_product_id_foreign` (`product_id`),
  CONSTRAINT `wishlist_item_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `wishlist_item_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `wishlist_item_wishlist_id_foreign` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist_item`
--

LOCK TABLES `wishlist_item` WRITE;
/*!40000 ALTER TABLE `wishlist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `visibility` enum('public','private') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_user_id_foreign` (`user_id`),
  CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `order_product_stores`
--

/*!50001 DROP VIEW IF EXISTS `order_product_stores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_product_stores` AS select `a`.`id` AS `id`,`a`.`orderno` AS `orderno`,`a`.`user_id` AS `user_id`,`a`.`address_id` AS `address_id`,`a`.`shipping_method_id` AS `shipping_method_id`,`a`.`giftorder_id` AS `giftorder_id`,`a`.`status` AS `status`,`a`.`subtotal` AS `subtotal`,`a`.`payment_method_id` AS `payment_method_id`,`a`.`created_at` AS `created_at`,`a`.`updated_at` AS `updated_at`,`a`.`deleted_at` AS `deleted_at`,json_extract(`v`.`productdetail`,'$.variation.id') AS `product_variation_id`,json_extract(`v`.`productdetail`,'$.variation.quantity') AS `quantity`,replace(json_extract(`v`.`productdetail`,'$.variation.name'),'','') AS `variationame`,json_extract(`v`.`productdetail`,'$.variation.name') AS `price`,replace(json_extract(`v`.`productdetail`,'$.product.name'),'','') AS `name`,json_extract(`v`.`productdetail`,'$.product.store_id') AS `store_id`,`s`.`name` AS `storename`,`s`.`user_id` AS `sellerid`,`v`.`id` AS `orderitemid`,`s`.`address` AS `selleraddress`,`u`.`name` AS `sellername`,`u`.`email` AS `selleremail` from (((`orders` `a` join `order_item` `v` on((`v`.`order_id` = `a`.`id`))) join `stores` `s` on((`s`.`id` = json_extract(`v`.`productdetail`,'$.product.store_id')))) join `users` `u` on((`u`.`id` = `s`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_status_view`
--

/*!50001 DROP VIEW IF EXISTS `order_status_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_status_view` AS select `o`.`id` AS `orderid`,`o`.`orderno` AS `orderno`,`p`.`seller_id` AS `sellerid`,`o`.`status` AS `status`,`s`.`id` AS `orderstatusid`,`s`.`from_status` AS `from_status`,`s`.`to_status` AS `to_status`,`p`.`id` AS `id` from ((`orders` `o` join `order_item` `p` on((`p`.`order_id` = `o`.`id`))) join `order_status` `s` on(((`s`.`order_id` = `o`.`id`) and (`p`.`status` = 'completed')))) where (`p`.`status` = 'completed') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orderdetailview`
--

/*!50001 DROP VIEW IF EXISTS `orderdetailview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderdetailview` AS select distinct cast(json_extract(`p`.`productdetail`,'$.seller.id') as unsigned) AS `seller_id`,`a`.`id` AS `orderid`,`a`.`orderno` AS `orderno`,`p`.`id` AS `order_item_id`,`p`.`to_email` AS `to_email`,`p`.`from` AS `fromaddress`,replace(json_extract(`p`.`productdetail`,'$.product.name'),'','') AS `productname`,replace(json_extract(`p`.`productdetail`,'$.product.slug'),'','') AS `productslug`,`s`.`slug` AS `storeslug`,date_format(`a`.`created_at`,'%d-%M-%y  %r') AS `purchased_on`,`s`.`name` AS `storename`,`a`.`status` AS `status`,replace(json_extract(`p`.`productdetail`,'$.productimage[0].thumbnailimage'),'','') AS `thumbnailimage`,`f`.`card_type` AS `paymentmethod`,cast(json_extract(`p`.`productdetail`,'$.variation.quantity') as unsigned) AS `quantity`,cast(json_extract(`p`.`productdetail`,'$.variation.id') as unsigned) AS `variationid`,replace(json_extract(`p`.`productdetail`,'$.variation.name'),'','') AS `variationname`,json_extract(`p`.`productdetail`,'$.variation.price') AS `productprice`,cast(json_extract(`p`.`productdetail`,'$.tax_type.id') as unsigned) AS `tax_id`,cast(json_extract(`p`.`productdetail`,'$.tax_type.tax_rate') as unsigned) AS `taxrate`,concat((select `addresses`.`firstname` from `addresses` where (`addresses`.`id` = `a`.`address_id`)),' ',(select `addresses`.`lastname` from `addresses` where (`addresses`.`id` = `a`.`address_id`))) AS `billname`,concat((select `addresses`.`address_1` from `addresses` where (`addresses`.`id` = `a`.`address_id`)),' ',(select `addresses`.`address_2` from `addresses` where (`addresses`.`id` = `a`.`address_id`))) AS `billaddress`,(select `addresses`.`city_id` from `addresses` where (`addresses`.`id` = `a`.`address_id`)) AS `billcity`,(select `products`.`type` from `products` where (`products`.`id` = `p`.`product_id`)) AS `product_type`,(select `products`.`name` from `products` where (`products`.`id` = `p`.`card_image`)) AS `card_name`,(select `cities`.`name` from `cities` where `cities`.`id` in (select `addresses`.`city_id` from `addresses` where (`addresses`.`id` = `a`.`address_id`))) AS `cityname`,(select `addresses`.`state_id` from `addresses` where (`addresses`.`id` = `a`.`address_id`)) AS `state_id`,(select `states`.`name` from `states` where `states`.`id` in (select `addresses`.`state_id` from `addresses` where (`addresses`.`id` = `a`.`address_id`))) AS `statename`,(select `addresses`.`postal_code` from `addresses` where (`addresses`.`id` = `a`.`address_id`)) AS `billpostcode`,(select `addresses`.`mobileno` from `addresses` where (`addresses`.`id` = `a`.`address_id`)) AS `mobileno`,(select `addresses`.`country_id` from `addresses` where (`addresses`.`id` = `a`.`address_id`)) AS `country_id`,(select `countries`.`name` from `countries` where `countries`.`id` in (select `addresses`.`country_id` from `addresses` where (`addresses`.`id` = `a`.`address_id`))) AS `country`,(select `shipping_methods`.`name` from `shipping_methods` where (`shipping_methods`.`id` = `a`.`shipping_method_id`)) AS `shippingmethod`,(select `shipping_methods`.`price` from `shipping_methods` where (`shipping_methods`.`id` = `a`.`shipping_method_id`)) AS `shippingprice`,`t`.`transaction_id` AS `transaction_id`,(cast(json_extract(`p`.`productdetail`,'$.variation.quantity') as unsigned) * json_extract(`p`.`productdetail`,'$.variation.price')) AS `productsubtotal`,`a`.`created_at` AS `created_at` from (((((`orders` `a` join `transactions` `t` on((`t`.`order_id` = `a`.`id`))) join `product_variation_order` `b` on((`b`.`order_id` = `a`.`id`))) join `order_item` `p` on((`p`.`order_id` = `a`.`id`))) join `payment_methods` `f` on((`f`.`id` = `a`.`payment_method_id`))) join `stores` `s` on(((`s`.`id` = json_extract(`p`.`productdetail`,'$.product.store_id')) and (`s`.`user_id` = json_extract(`p`.`productdetail`,'$.product.user_id'))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_variation_stock_view`
--

/*!50001 DROP VIEW IF EXISTS `product_variation_stock_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_variation_stock_view` AS select `product_variations`.`product_id` AS `product_id`,`product_variations`.`id` AS `product_variation_id`,sum(`stocks`.`quantity`) AS `stock`,(case when (sum(`stocks`.`quantity`) > 0) then true else false end) AS `in_stock` from ((`product_variations` left join (select `stocks`.`product_variation_id` AS `id`,sum(`stocks`.`quantity`) AS `quantity` from `stocks` group by `stocks`.`product_variation_id`) `stocks` on((`product_variations`.`id` = `stocks`.`id`))) left join (select `product_variation_order`.`product_variation_id` AS `id`,sum(`product_variation_order`.`quantity`) AS `quantity` from `product_variation_order` group by `product_variation_order`.`product_variation_id`) `product_variation_order` on((`product_variations`.`id` = `product_variation_order`.`id`))) group by `product_variations`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15 18:19:48
