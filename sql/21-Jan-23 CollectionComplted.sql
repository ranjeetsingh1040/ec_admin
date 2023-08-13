-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: gegocart
-- ------------------------------------------------------
-- Server version	8.0.31

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
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:18:30','2022-12-23 01:18:30'),(2,'LOGNAME_STORE_STORED','Store Stored',9,'App\\Models\\Store',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:19:02','2022-12-23 01:19:02'),(3,'LOGNAME_ATTRIBUTES_STORED','Attributes Stored',1,'App\\Models\\Attribute',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:19:12','2022-12-23 01:19:12'),(4,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:25:14','2022-12-23 01:25:14'),(5,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:42:19','2022-12-23 01:42:19'),(6,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:42:39','2022-12-23 01:42:39'),(7,'LOGNAME_PRODUCT_STORED','Product Stored',36,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:43:59','2022-12-23 01:43:59'),(8,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:45:24','2022-12-23 01:45:24'),(9,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:49:57','2022-12-23 01:49:57'),(10,'LOGNAME_PRODUCT_STORED','Product Stored',37,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:52:59','2022-12-23 01:52:59'),(11,'LOGNAME_PRODUCT_STORED','Product Stored',38,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:55:49','2022-12-23 01:55:49'),(12,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 01:56:40','2022-12-23 01:56:40'),(13,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',10,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 02:17:39','2022-12-23 02:17:39'),(14,'LOGNAME_ORDER_STATUS_CHANGE','Order Status Change',7,'App\\Models\\Order',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 02:30:05','2022-12-23 02:30:05'),(15,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 02:30:56','2022-12-23 02:30:56'),(16,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 02:38:35','2022-12-23 02:38:35'),(17,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 03:14:46','2022-12-23 03:14:46'),(18,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-23 23:31:28','2022-12-23 23:31:28'),(19,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',12,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 00:28:54','2022-12-24 00:28:54'),(20,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',14,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:02:08','2022-12-24 01:02:08'),(21,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',15,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:03:26','2022-12-24 01:03:26'),(22,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',19,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:06:13','2022-12-24 01:06:13'),(23,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',20,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:10:57','2022-12-24 01:10:57'),(24,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',21,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:14:17','2022-12-24 01:14:17'),(25,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',22,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:14:58','2022-12-24 01:14:58'),(26,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',23,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:26:11','2022-12-24 01:26:11'),(27,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',24,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:37:11','2022-12-24 01:37:11'),(28,'LOGNAME_USER_REGISTERED','User Registered',31,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:38:44','2022-12-24 01:38:44'),(29,'LOGNAME_LOGIN','Logged In',31,'App\\Models\\User',31,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:39:13','2022-12-24 01:39:13'),(30,'LOGNAME_ADDRESS_STORED','Address Stored',4,'App\\Models\\Address',31,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:40:10','2022-12-24 01:40:10'),(31,'LOGNAME_ADDRESS_UPDATED','Address Updated',4,'App\\Models\\Address',31,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:40:27','2022-12-24 01:40:27'),(32,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',25,'App\\Models\\OrderItem',31,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:41:01','2022-12-24 01:41:01'),(33,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',27,'App\\Models\\OrderItem',31,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:44:16','2022-12-24 01:44:16'),(34,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',29,'App\\Models\\OrderItem',31,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:45:41','2022-12-24 01:45:41'),(35,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',30,'App\\Models\\OrderItem',31,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 01:47:44','2022-12-24 01:47:44'),(36,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:04:12','2022-12-24 02:04:12'),(37,'LOGNAME_PRODUCT_STORED','Product Stored',39,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:04:42','2022-12-24 02:04:42'),(38,'LOGNAME_PRODUCT_STORED','Product Stored',40,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:14:03','2022-12-24 02:14:03'),(39,'LOGNAME_PRODUCT_STORED','Product Stored',41,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:20:27','2022-12-24 02:20:27'),(40,'LOGNAME_PRODUCT_STORED','Product Stored',42,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:24:27','2022-12-24 02:24:27'),(41,'LOGNAME_PRODUCT_STORED','Product Stored',43,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:27:39','2022-12-24 02:27:39'),(42,'LOGNAME_PRODUCT_STORED','Product Stored',44,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:34:51','2022-12-24 02:34:51'),(43,'LOGNAME_PRODUCT_STORED','Product Stored',45,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:39:31','2022-12-24 02:39:31'),(44,'LOGNAME_PRODUCT_STORED','Product Stored',46,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:47:24','2022-12-24 02:47:24'),(45,'LOGNAME_PRODUCT_UPDATED','Product Updated',46,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:47:48','2022-12-24 02:47:48'),(46,'LOGNAME_PRODUCT_STORED','Product Stored',47,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:48:57','2022-12-24 02:48:57'),(47,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:49:15','2022-12-24 02:49:15'),(48,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',31,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:50:03','2022-12-24 02:50:03'),(49,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',36,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:54:05','2022-12-24 02:54:05'),(50,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-24 02:59:46','2022-12-24 02:59:46'),(51,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-25 23:07:22','2022-12-25 23:07:22'),(52,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',43,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-25 23:12:58','2022-12-25 23:12:58'),(53,'LOGNAME_ORDER_STATUS_CHANGE','Order Status Change',8,'App\\Models\\Order',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-25 23:14:18','2022-12-25 23:14:18'),(54,'LOGNAME_ORDER_STATUS_CHANGE','Order Status Change',28,'App\\Models\\Order',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-25 23:14:54','2022-12-25 23:14:54'),(55,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-25 23:16:40','2022-12-25 23:16:40'),(56,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-25 23:17:17','2022-12-25 23:17:17'),(57,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-25 23:23:13','2022-12-25 23:23:13'),(58,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 00:18:46','2022-12-26 00:18:46'),(59,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 00:19:01','2022-12-26 00:19:01'),(60,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 00:31:28','2022-12-26 00:31:28'),(61,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:51:55','2022-12-26 01:51:55'),(62,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:52:42','2022-12-26 01:52:42'),(63,'LOGNAME_PASSWORD_UPDATED','Password Updated',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:53:05','2022-12-26 01:53:05'),(64,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:53:23','2022-12-26 01:53:23'),(65,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:57:47','2022-12-26 01:57:47'),(66,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:58:07','2022-12-26 01:58:07'),(67,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:58:28','2022-12-26 01:58:28'),(68,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:58:42','2022-12-26 01:58:42'),(69,'LOGNAME_PASSWORD_UPDATED','Password Updated',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 01:59:10','2022-12-26 01:59:10'),(70,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:21:30','2022-12-26 02:21:30'),(71,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:21:43','2022-12-26 02:21:43'),(72,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:21:59','2022-12-26 02:21:59'),(73,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:23:22','2022-12-26 02:23:22'),(74,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:23:34','2022-12-26 02:23:34'),(75,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:39:05','2022-12-26 02:39:05'),(76,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:41:41','2022-12-26 02:41:41'),(77,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:54:55','2022-12-26 02:54:55'),(78,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:56:41','2022-12-26 02:56:41'),(79,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 02:57:39','2022-12-26 02:57:39'),(80,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 03:52:37','2022-12-26 03:52:37'),(81,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 03:53:52','2022-12-26 03:53:52'),(82,'LOGNAME_PASSWORD_UPDATED','Password Updated',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 03:54:21','2022-12-26 03:54:21'),(83,'LOGNAME_PASSWORD_UPDATED','Password Updated',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 03:58:27','2022-12-26 03:58:27'),(84,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 03:58:43','2022-12-26 03:58:43'),(85,'LOGNAME_PASSWORD_UPDATED','Password Updated',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 03:59:48','2022-12-26 03:59:48'),(86,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 04:10:45','2022-12-26 04:10:45'),(87,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 04:11:54','2022-12-26 04:11:54'),(88,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 04:13:20','2022-12-26 04:13:20'),(89,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 05:16:37','2022-12-26 05:16:37'),(90,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:07:18','2022-12-26 06:07:18'),(91,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:33:54','2022-12-26 06:33:54'),(92,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:34:32','2022-12-26 06:34:32'),(93,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:50:18','2022-12-26 06:50:18'),(94,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:50:25','2022-12-26 06:50:25'),(95,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:50:26','2022-12-26 06:50:26'),(96,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:50:59','2022-12-26 06:50:59'),(97,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:50:59','2022-12-26 06:50:59'),(98,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:50:59','2022-12-26 06:50:59'),(99,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:51:10','2022-12-26 06:51:10'),(100,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:51:10','2022-12-26 06:51:10'),(101,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:51:10','2022-12-26 06:51:10'),(102,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:51:10','2022-12-26 06:51:10'),(103,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:51:27','2022-12-26 06:51:27'),(104,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:51:27','2022-12-26 06:51:27'),(105,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:51:28','2022-12-26 06:51:28'),(106,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:51:28','2022-12-26 06:51:28'),(107,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:08','2022-12-26 06:53:08'),(108,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:08','2022-12-26 06:53:08'),(109,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:08','2022-12-26 06:53:08'),(110,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:08','2022-12-26 06:53:08'),(111,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:08','2022-12-26 06:53:08'),(112,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:24','2022-12-26 06:53:24'),(113,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:24','2022-12-26 06:53:24'),(114,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:24','2022-12-26 06:53:24'),(115,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:24','2022-12-26 06:53:24'),(116,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:24','2022-12-26 06:53:24'),(117,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:24','2022-12-26 06:53:24'),(118,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:53:24','2022-12-26 06:53:24'),(119,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:54:45','2022-12-26 06:54:45'),(120,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:54:52','2022-12-26 06:54:52'),(121,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:54:52','2022-12-26 06:54:52'),(122,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 06:55:06','2022-12-26 06:55:06'),(123,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 23:41:27','2022-12-26 23:41:27'),(124,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-26 23:42:28','2022-12-26 23:42:28'),(125,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 00:15:03','2022-12-27 00:15:03'),(126,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 00:15:12','2022-12-27 00:15:12'),(127,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 00:16:57','2022-12-27 00:16:57'),(128,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 00:20:06','2022-12-27 00:20:06'),(129,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 00:20:35','2022-12-27 00:20:35'),(130,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 00:23:41','2022-12-27 00:23:41'),(131,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 04:01:33','2022-12-27 04:01:33'),(132,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 04:17:32','2022-12-27 04:17:32'),(133,'LOGNAME_RESET_PASSWORD','Reset Password',3,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 04:19:28','2022-12-27 04:19:28'),(134,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 04:19:43','2022-12-27 04:19:43'),(135,'LOGNAME_PASSWORD_UPDATED','Password Updated',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 04:20:10','2022-12-27 04:20:10'),(136,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 04:20:17','2022-12-27 04:20:17'),(137,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 05:24:56','2022-12-27 05:24:56'),(138,'LOGNAME_USER_REGISTERED','User Registered',32,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 06:17:37','2022-12-27 06:17:37'),(139,'LOGNAME_EMIL_VERIFIED','Email Verified',32,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 06:18:33','2022-12-27 06:18:33'),(140,'LOGNAME_LOGIN','Logged In',32,'App\\Models\\User',32,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 06:18:47','2022-12-27 06:18:47'),(141,'LOGNAME_USER_REGISTERED','User Registered',33,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 07:10:58','2022-12-27 07:10:58'),(142,'LOGNAME_EMIL_VERIFIED','Email Verified',33,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 07:27:29','2022-12-27 07:27:29'),(143,'LOGNAME_LOGIN','Logged In',33,'App\\Models\\User',33,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 07:27:57','2022-12-27 07:27:57'),(144,'LOGNAME_LOGIN','Logged In',33,'App\\Models\\User',33,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-27 07:30:53','2022-12-27 07:30:53'),(145,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-28 00:12:31','2022-12-28 00:12:31'),(146,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-28 00:24:14','2022-12-28 00:24:14'),(147,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-28 01:59:42','2022-12-28 01:59:42'),(148,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2022-12-30 23:11:01','2022-12-30 23:11:01'),(149,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-05 03:27:18','2023-01-05 03:27:18'),(150,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-05 03:28:23','2023-01-05 03:28:23'),(151,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-05 03:29:14','2023-01-05 03:29:14'),(152,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-05 03:30:40','2023-01-05 03:30:40'),(153,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-05 03:34:04','2023-01-05 03:34:04'),(154,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-05 23:28:29','2023-01-05 23:28:29'),(155,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-05 23:42:18','2023-01-05 23:42:18'),(156,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-06 06:30:55','2023-01-06 06:30:55'),(157,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-06 23:34:26','2023-01-06 23:34:26'),(158,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-06 23:34:50','2023-01-06 23:34:50'),(159,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 00:01:04','2023-01-07 00:01:04'),(160,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 00:58:11','2023-01-07 00:58:11'),(161,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 01:12:35','2023-01-07 01:12:35'),(162,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 02:37:01','2023-01-07 02:37:01'),(163,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 02:49:08','2023-01-07 02:49:08'),(164,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 02:49:23','2023-01-07 02:49:23'),(165,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 02:50:32','2023-01-07 02:50:32'),(166,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 07:28:22','2023-01-07 07:28:22'),(167,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-07 07:29:54','2023-01-07 07:29:54'),(168,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:14:33','2023-01-08 23:14:33'),(169,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:14:47','2023-01-08 23:14:47'),(170,'LOGNAME_PRODUCT_STORED','Product Stored',48,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:16:10','2023-01-08 23:16:10'),(171,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:45:55','2023-01-08 23:45:55'),(172,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:46:29','2023-01-08 23:46:29'),(173,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:47:29','2023-01-08 23:47:29'),(174,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:47:43','2023-01-08 23:47:43'),(175,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:48:41','2023-01-08 23:48:41'),(176,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-08 23:49:06','2023-01-08 23:49:06'),(177,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 02:24:59','2023-01-09 02:24:59'),(178,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 02:28:22','2023-01-09 02:28:22'),(179,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 02:28:45','2023-01-09 02:28:45'),(180,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 02:36:37','2023-01-09 02:36:37'),(181,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 02:38:51','2023-01-09 02:38:51'),(182,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 02:43:22','2023-01-09 02:43:22'),(183,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 02:50:54','2023-01-09 02:50:54'),(184,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 03:17:46','2023-01-09 03:17:46'),(185,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 03:19:38','2023-01-09 03:19:38'),(186,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 03:20:51','2023-01-09 03:20:51'),(187,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 03:21:32','2023-01-09 03:21:32'),(188,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 05:58:39','2023-01-09 05:58:39'),(189,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 05:58:51','2023-01-09 05:58:51'),(190,'LOGNAME_USER_REGISTERED','User Registered',34,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 06:35:55','2023-01-09 06:35:55'),(191,'LOGNAME_LOGIN','Logged In',34,'App\\Models\\User',34,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 06:36:15','2023-01-09 06:36:15'),(192,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 06:53:25','2023-01-09 06:53:25'),(193,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-09 07:21:33','2023-01-09 07:21:33'),(194,'LOGNAME_ADDRESS_UPDATED','Address Updated',3,'App\\Models\\Address',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 03:08:52','2023-01-10 03:08:52'),(195,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',47,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 04:13:24','2023-01-10 04:13:24'),(196,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 04:13:46','2023-01-10 04:13:46'),(197,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 04:13:56','2023-01-10 04:13:56'),(198,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',49,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 04:21:14','2023-01-10 04:21:14'),(199,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 04:23:51','2023-01-10 04:23:51'),(200,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',51,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 04:29:30','2023-01-10 04:29:30'),(201,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 04:37:12','2023-01-10 04:37:12'),(202,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',53,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 05:12:31','2023-01-10 05:12:31'),(203,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 05:13:34','2023-01-10 05:13:34'),(204,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 06:44:24','2023-01-10 06:44:24'),(205,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-10 23:42:00','2023-01-10 23:42:00'),(206,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 01:03:20','2023-01-11 01:03:20'),(207,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 01:42:06','2023-01-11 01:42:06'),(208,'LOGNAME_PRODUCT_STORED','Product Stored',49,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 01:44:12','2023-01-11 01:44:12'),(209,'LOGNAME_PRODUCT_STORED','Product Stored',50,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 02:41:15','2023-01-11 02:41:15'),(210,'LOGNAME_PRODUCT_STORED','Product Stored',51,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 02:52:20','2023-01-11 02:52:20'),(211,'LOGNAME_PRODUCT_UPDATED','Product Updated',51,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 03:00:45','2023-01-11 03:00:45'),(212,'LOGNAME_PRODUCT_UPDATED','Product Updated',51,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 03:01:38','2023-01-11 03:01:38'),(213,'LOGNAME_PRODUCT_UPDATED','Product Updated',51,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 03:01:44','2023-01-11 03:01:44'),(214,'LOGNAME_PRODUCT_UPDATED','Product Updated',44,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 03:09:13','2023-01-11 03:09:13'),(215,'LOGNAME_PRODUCT_UPDATED','Product Updated',44,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 03:23:56','2023-01-11 03:23:56'),(216,'LOGNAME_PRODUCT_UPDATED','Product Updated',51,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 03:25:20','2023-01-11 03:25:20'),(217,'LOGNAME_PRODUCT_UPDATED','Product Updated',36,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 03:57:32','2023-01-11 03:57:32'),(218,'LOGNAME_PRODUCT_UPDATED','Product Updated',36,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 03:57:54','2023-01-11 03:57:54'),(219,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:16:29','2023-01-11 07:16:29'),(220,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:17:20','2023-01-11 07:17:20'),(221,'LOGNAME_USER_REGISTERED','User Registered',35,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:22:51','2023-01-11 07:22:51'),(222,'LOGNAME_EMIL_VERIFIED','Email Verified',35,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:23:10','2023-01-11 07:23:10'),(223,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:23:17','2023-01-11 07:23:17'),(224,'LOGNAME_SELLER_PROFILE_STORED','Seller Profile Stored',10,'App\\Models\\SellerProfile',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:24:06','2023-01-11 07:24:06'),(225,'LOGNAME_USER_ACTIVED','User Actived',35,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:24:31','2023-01-11 07:24:31'),(226,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:24:35','2023-01-11 07:24:35'),(227,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:28:22','2023-01-11 07:28:22'),(228,'LOGNAME_PRODUCT_STORED','Product Stored',52,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-11 07:30:17','2023-01-11 07:30:17'),(229,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 00:05:02','2023-01-12 00:05:02'),(230,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 00:05:52','2023-01-12 00:05:52'),(231,'LOGNAME_STORE_STORED','Store Stored',10,'App\\Models\\Store',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 00:06:27','2023-01-12 00:06:27'),(232,'LOGNAME_PRODUCT_STORED','Product Stored',53,'App\\Models\\Product',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 00:07:40','2023-01-12 00:07:40'),(233,'LOGNAME_PRODUCT_STORED','Product Stored',54,'App\\Models\\Product',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 02:36:58','2023-01-12 02:36:58'),(234,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 02:38:08','2023-01-12 02:38:08'),(235,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 02:38:19','2023-01-12 02:38:19'),(236,'LOGNAME_PRODUCT_UPDATED','Product Updated',46,'App\\Models\\Product',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 02:39:51','2023-01-12 02:39:51'),(237,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 02:49:11','2023-01-12 02:49:11'),(238,'LOGNAME_RESET_PASSWORD','Reset Password',1,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 02:50:29','2023-01-12 02:50:29'),(239,'LOGNAME_RESET_PASSWORD','Reset Password',1,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 02:58:39','2023-01-12 02:58:39'),(240,'LOGNAME_RESET_PASSWORD','Reset Password',1,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 03:00:02','2023-01-12 03:00:02'),(241,'LOGNAME_RESET_PASSWORD','Reset Password',1,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 03:05:59','2023-01-12 03:05:59'),(242,'LOGNAME_RESET_PASSWORD','Reset Password',1,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 03:08:51','2023-01-12 03:08:51'),(243,'LOGNAME_RESET_PASSWORD','Reset Password',1,'App\\Models\\User',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 03:11:21','2023-01-12 03:11:21'),(244,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 03:11:50','2023-01-12 03:11:50'),(245,'LOGNAME_CHANGE_PASSWORD','Change Password',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 03:13:43','2023-01-12 03:13:43'),(246,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 03:14:29','2023-01-12 03:14:29'),(247,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 03:46:52','2023-01-12 03:46:52'),(248,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 04:05:40','2023-01-12 04:05:40'),(249,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 04:55:57','2023-01-12 04:55:57'),(250,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 04:56:30','2023-01-12 04:56:30'),(251,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 05:22:11','2023-01-12 05:22:11'),(252,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 05:22:35','2023-01-12 05:22:35'),(253,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 05:22:39','2023-01-12 05:22:39'),(254,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 05:25:59','2023-01-12 05:25:59'),(255,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 05:56:31','2023-01-12 05:56:31'),(256,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-12 23:45:00','2023-01-12 23:45:00'),(257,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-13 00:12:18','2023-01-13 00:12:18'),(258,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-13 00:43:47','2023-01-13 00:43:47'),(259,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-13 01:46:21','2023-01-13 01:46:21'),(260,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-13 01:56:56','2023-01-13 01:56:56'),(261,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36\"}','2023-01-13 02:17:57','2023-01-13 02:17:57'),(262,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-13 06:36:09','2023-01-13 06:36:09'),(263,'LOGNAME_ADDRESS_STORED','Address Stored',5,'App\\Models\\Address',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-13 07:30:33','2023-01-13 07:30:33'),(264,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-15 23:38:51','2023-01-15 23:38:51'),(265,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-15 23:38:57','2023-01-15 23:38:57'),(266,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-16 03:18:24','2023-01-16 03:18:24'),(267,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-16 06:06:26','2023-01-16 06:06:26'),(268,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-16 23:38:24','2023-01-16 23:38:24'),(269,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-17 00:30:36','2023-01-17 00:30:36'),(270,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-17 03:19:26','2023-01-17 03:19:26'),(271,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-17 23:34:33','2023-01-17 23:34:33'),(272,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-18 00:46:57','2023-01-18 00:46:57'),(273,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-18 23:29:35','2023-01-18 23:29:35'),(274,'LOGNAME_LOGIN','Logged In',1,'App\\Models\\User',1,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-20 00:10:14','2023-01-20 00:10:14'),(275,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-20 00:10:20','2023-01-20 00:10:20'),(276,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-20 06:13:21','2023-01-20 06:13:21'),(277,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-20 07:21:04','2023-01-20 07:21:04'),(278,'LOGNAME_LOGIN','Logged In',3,'App\\Models\\User',3,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-20 23:22:47','2023-01-20 23:22:47'),(279,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 00:35:33','2023-01-21 00:35:33'),(280,'LOGNAME_STORE_UPDATED','Stored Updated',10,'App\\Models\\Store',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 00:35:59','2023-01-21 00:35:59'),(281,'LOGNAME_PRODUCT_STORED','Product Stored',55,'App\\Models\\Product',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 00:50:49','2023-01-21 00:50:49'),(282,'LOGNAME_PRODUCT_STORED','Product Stored',56,'App\\Models\\Product',NULL,NULL,'{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 00:51:48','2023-01-21 00:51:48'),(283,'LOGNAME_PRODUCT_STORED','Product Stored',57,'App\\Models\\Product',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 01:06:59','2023-01-21 01:06:59'),(284,'LOGNAME_PRODUCT_STORED','Product Stored',58,'App\\Models\\Product',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 01:07:46','2023-01-21 01:07:46'),(285,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 02:11:55','2023-01-21 02:11:55'),(286,'LOGNAME_LOGIN','Logged In',35,'App\\Models\\User',35,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 02:33:02','2023-01-21 02:33:02'),(287,'LOGNAME_LOGIN','Logged In',6,'App\\Models\\User',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 04:32:40','2023-01-21 04:32:40'),(288,'LOGNAME_ADDRESS_STORED','Address Stored',6,'App\\Models\\Address',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 04:34:02','2023-01-21 04:34:02'),(289,'LOGNAME_ORDER_ITEM_STORED','Order Item Stored',56,'App\\Models\\OrderItem',6,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/109.0.0.0 Safari\\/537.36\"}','2023-01-21 04:35:36','2023-01-21 04:35:36');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (3,6,1,'Ranjeet Singh','Ranjeet','Singh','985554121545','25 india Sobhagpura','Titardi',33,4,'313001','2022-12-19 00:31:27','2023-01-10 03:08:52',1,NULL),(4,31,1,'Ranjeet Singh','Ranjeet','Singh','645454545','25 India Sobhagpura','California Los Angilas',463,19,'313001','2022-12-24 01:40:10','2022-12-24 01:40:27',1,NULL),(5,3,1,'sellerone address','sellerone','address','4544565','25 india',NULL,1,1,'313002','2023-01-13 07:30:33','2023-01-13 07:30:33',1,NULL),(6,6,1,'Ranjeet 222 Singh','Ranjeet 222','Singh','545645645','2566 Inida USA USE','554dffdff',1,1,'887884','2023-01-21 04:34:02','2023-01-21 04:34:02',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_product`
--

LOCK TABLES `attribute_product` WRITE;
/*!40000 ALTER TABLE `attribute_product` DISABLE KEYS */;
INSERT INTO `attribute_product` VALUES (105,36,2,'blue','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(106,36,2,'black','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(107,36,3,'8GB','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(108,36,3,'16GB','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(109,36,3,'32GB','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(110,36,3,'64GB','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(111,36,3,'128GB','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(112,37,10,'blue-small','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(113,37,10,'red-small','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(114,37,10,'white-small','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(115,37,10,'blue-medium','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(116,37,10,'red-medium','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(117,37,10,'white-medium','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(118,38,1,'','2022-12-23 01:55:49','2022-12-23 01:55:49',NULL),(119,39,1,'','2022-12-24 02:04:42','2022-12-24 02:32:25','2022-12-24 02:32:25'),(120,40,1,'','2022-12-24 02:14:03','2022-12-24 02:32:27','2022-12-24 02:32:27'),(121,41,2,'blue','2022-12-24 02:20:27','2022-12-24 02:32:29','2022-12-24 02:32:29'),(122,41,2,'black','2022-12-24 02:20:27','2022-12-24 02:32:29','2022-12-24 02:32:29'),(123,41,3,'8GB','2022-12-24 02:20:27','2022-12-24 02:32:29','2022-12-24 02:32:29'),(124,41,3,'16GB','2022-12-24 02:20:27','2022-12-24 02:32:29','2022-12-24 02:32:29'),(125,41,3,'32GB','2022-12-24 02:20:27','2022-12-24 02:32:29','2022-12-24 02:32:29'),(126,41,3,'64GB','2022-12-24 02:20:27','2022-12-24 02:32:29','2022-12-24 02:32:29'),(127,41,3,'128GB','2022-12-24 02:20:27','2022-12-24 02:32:29','2022-12-24 02:32:29'),(128,42,2,'blue','2022-12-24 02:24:27','2022-12-24 02:32:31','2022-12-24 02:32:31'),(129,42,2,'black','2022-12-24 02:24:27','2022-12-24 02:32:31','2022-12-24 02:32:31'),(130,42,3,'8GB','2022-12-24 02:24:27','2022-12-24 02:32:31','2022-12-24 02:32:31'),(131,42,3,'16GB','2022-12-24 02:24:27','2022-12-24 02:32:31','2022-12-24 02:32:31'),(132,42,3,'32GB','2022-12-24 02:24:27','2022-12-24 02:32:31','2022-12-24 02:32:31'),(133,42,3,'64GB','2022-12-24 02:24:27','2022-12-24 02:32:31','2022-12-24 02:32:31'),(134,42,3,'128GB','2022-12-24 02:24:27','2022-12-24 02:32:31','2022-12-24 02:32:31'),(135,43,1,'','2022-12-24 02:27:39','2022-12-24 02:32:33','2022-12-24 02:32:33'),(136,44,2,'blue','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(137,44,2,'black','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(138,44,3,'8GB','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(139,44,3,'16GB','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(140,44,3,'32GB','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(141,44,3,'64GB','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(142,44,3,'128GB','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(143,45,2,'blue','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(144,45,2,'black','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(145,45,3,'8GB','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(146,45,3,'16GB','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(147,45,3,'32GB','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(148,45,3,'64GB','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(149,45,3,'128GB','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(150,46,2,'blue','2022-12-24 02:47:24','2022-12-24 02:47:24',NULL),(151,46,2,'black','2022-12-24 02:47:24','2022-12-24 02:47:24',NULL),(152,46,3,'8GB','2022-12-24 02:47:24','2022-12-24 02:47:24',NULL),(153,46,3,'16GB','2022-12-24 02:47:24','2022-12-24 02:47:24',NULL),(154,46,3,'32GB','2022-12-24 02:47:24','2022-12-24 02:47:24',NULL),(155,46,3,'64GB','2022-12-24 02:47:24','2022-12-24 02:47:24',NULL),(156,46,3,'128GB','2022-12-24 02:47:24','2022-12-24 02:47:24',NULL),(157,47,1,'','2022-12-24 02:48:57','2022-12-24 02:48:57',NULL),(158,48,2,'blue','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(159,48,2,'black','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(160,48,3,'8GB','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(161,48,3,'16GB','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(162,48,3,'32GB','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(163,48,3,'64GB','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(164,48,3,'128GB','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(165,49,1,'','2023-01-11 01:44:11','2023-01-11 01:44:11',NULL),(166,50,1,'','2023-01-11 02:41:15','2023-01-11 02:41:15',NULL),(167,51,2,'blue','2023-01-11 02:52:20','2023-01-11 02:52:20',NULL),(168,51,2,'black','2023-01-11 02:52:20','2023-01-11 02:52:20',NULL),(169,51,3,'8GB','2023-01-11 02:52:20','2023-01-11 02:52:20',NULL),(170,51,3,'16GB','2023-01-11 02:52:20','2023-01-11 02:52:20',NULL),(171,51,3,'32GB','2023-01-11 02:52:20','2023-01-11 02:52:20',NULL),(172,51,3,'64GB','2023-01-11 02:52:20','2023-01-11 02:52:20',NULL),(173,51,3,'128GB','2023-01-11 02:52:20','2023-01-11 02:52:20',NULL),(174,52,2,'blue','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(175,52,2,'black','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(176,52,3,'8GB','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(177,52,3,'16GB','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(178,52,3,'32GB','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(179,52,3,'64GB','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(180,52,3,'128GB','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(181,53,1,'','2023-01-12 00:07:40','2023-01-12 00:07:40',NULL),(182,54,1,'','2023-01-12 02:36:58','2023-01-12 02:36:58',NULL),(183,55,1,'','2023-01-21 00:50:49','2023-01-21 00:50:49',NULL),(184,56,1,'','2023-01-21 00:51:48','2023-01-21 00:51:48',NULL),(185,57,1,'','2023-01-21 01:06:59','2023-01-21 01:06:59',NULL),(186,58,2,'blue','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(187,58,2,'black','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(188,58,3,'8GB','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(189,58,3,'16GB','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(190,58,3,'32GB','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(191,58,3,'64GB','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(192,58,3,'128GB','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributeset_category`
--

LOCK TABLES `attributeset_category` WRITE;
/*!40000 ALTER TABLE `attributeset_category` DISABLE KEYS */;
INSERT INTO `attributeset_category` VALUES (1,2,8,'2022-12-23 01:21:28','2022-12-23 01:21:28'),(2,7,20,'2022-12-23 01:22:34','2022-12-23 01:22:34'),(3,7,23,'2022-12-23 01:22:53','2022-12-23 01:22:53'),(4,1,26,'2022-12-23 01:23:28','2022-12-23 01:23:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributesets`
--

LOCK TABLES `attributesets` WRITE;
/*!40000 ALTER TABLE `attributesets` DISABLE KEYS */;
INSERT INTO `attributesets` VALUES (1,'Standard',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(2,'Mobiles',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(3,'Tablets',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(4,'Bags',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(5,'Books',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(6,'Printer',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(7,'Clothing',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(8,'Accessiors',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(9,'giftcards',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(10,'e-books',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(11,'videos',1,'2022-12-10 02:20:16','2022-12-10 02:20:16'),(12,'games',1,'2022-12-10 02:20:16','2022-12-10 02:20:16');
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
INSERT INTO `cart_user` VALUES (3,63,42,NULL,NULL,NULL,NULL,'2022-12-27 04:48:09','2023-01-13 06:38:31',NULL),(32,59,19,NULL,NULL,NULL,NULL,'2022-12-27 06:33:52','2022-12-27 06:34:07',NULL),(3,77,60,NULL,NULL,NULL,NULL,'2023-01-08 23:17:20','2023-01-13 06:38:37',NULL),(35,85,1,NULL,NULL,NULL,NULL,'2023-01-12 02:37:40','2023-01-12 02:37:40',NULL),(3,58,1,NULL,NULL,NULL,NULL,'2023-01-21 04:28:45','2023-01-21 04:28:45',NULL),(6,66,1,NULL,NULL,NULL,NULL,'2023-01-21 04:36:00','2023-01-21 04:36:00',NULL);
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
INSERT INTO `categories` VALUES (1,'Mobiles,Computers & Tablets','mobiles-computers-tablets',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',1,5.00),(2,'TV,Appliances & Electronics','tv-appliances-electronics',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',2,5.00),(3,'Men\'s Fashion','mens-fashion',NULL,1,'2022-12-10 02:20:16','2022-12-12 02:44:19',1,5.00),(4,'Women\'s Fashion','women-fashion',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',4,5.00),(5,'Books & Audible','books-audible',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',4,10.00),(6,'Gift Cards','gift-cards',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',4,0.00),(7,'Digital Products','digital-products',NULL,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',4,0.00),(8,'Mobiles Phone','mobiles-phone',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(9,'Mobile Accessories','mobile-accessories',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(10,'Power Bank','power-bank',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(11,'Printers & Link','printers-link',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(12,'Computers','computers',1,1,'2022-12-10 02:20:16','2022-12-21 07:25:00',1,0.00),(13,'Monitor','monitor',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(14,'Tablets','tablets',1,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',5,0.00),(15,'Televisions','televisions',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(16,'HeadPhones','headphones',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(17,'Cameras','cameras',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(18,'Air Conditioners','air-conditioners',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(19,'Washing Machince','washing-machince',2,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',6,0.00),(20,'Mens Clothing','mens-clothing',3,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',7,0.00),(21,'Mens Shoes','mens-shoes',3,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',7,0.00),(22,'Mens Accessories','mens-accessories',3,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',7,0.00),(23,'Womens Clothing','womens-clothing',4,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(24,'Womens Shoes','womens-shoes',4,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(25,'Womens Accessories','womens-accessories',4,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(26,'Books','books',5,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(27,'Audible Audiobooks','audible-audiobooks',5,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(28,'Birthday','birthday',6,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(29,'Wedding','wedding',6,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(30,'Festival','festival',6,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(31,'e-books','e-books',7,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(32,'videos','videos',7,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(33,'games','games',7,1,'2022-12-10 02:20:16','2022-12-10 02:20:16',8,0.00),(51,'ffgffg','ffgffg',NULL,1,'2023-01-13 00:43:59','2023-01-13 00:43:59',1,0.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,8,36,NULL,NULL),(2,20,37,NULL,NULL),(3,26,38,NULL,NULL),(4,26,39,NULL,NULL),(5,26,40,NULL,NULL),(6,8,41,NULL,NULL),(7,8,42,NULL,NULL),(8,26,43,NULL,NULL),(9,8,44,NULL,NULL),(10,8,45,NULL,NULL),(11,8,46,NULL,NULL),(12,26,47,NULL,NULL),(13,8,48,NULL,NULL),(14,26,49,NULL,NULL),(15,26,50,NULL,NULL),(16,8,51,NULL,NULL),(17,8,52,NULL,NULL),(18,26,53,NULL,NULL),(19,26,54,NULL,NULL),(20,26,55,NULL,NULL),(21,26,56,NULL,NULL),(22,26,57,NULL,NULL),(23,8,58,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_products`
--

LOCK TABLES `collection_products` WRITE;
/*!40000 ALTER TABLE `collection_products` DISABLE KEYS */;
INSERT INTO `collection_products` VALUES (106,56,57,'2023-01-21 02:34:20','2023-01-21 02:34:20'),(107,55,57,'2023-01-21 02:34:20','2023-01-21 02:34:20'),(108,58,57,'2023-01-21 02:34:20','2023-01-21 02:34:20'),(109,53,57,'2023-01-21 02:34:20','2023-01-21 02:34:20'),(110,54,56,'2023-01-21 02:34:27','2023-01-21 02:34:27'),(111,58,56,'2023-01-21 02:34:27','2023-01-21 02:34:27'),(112,55,56,'2023-01-21 02:34:27','2023-01-21 02:34:27'),(113,57,56,'2023-01-21 02:34:27','2023-01-21 02:34:27'),(114,53,55,'2023-01-21 02:34:38','2023-01-21 02:34:38'),(115,54,55,'2023-01-21 02:34:38','2023-01-21 02:34:38'),(116,57,55,'2023-01-21 02:34:38','2023-01-21 02:34:38'),(117,58,55,'2023-01-21 02:34:38','2023-01-21 02:34:38'),(118,37,52,'2023-01-21 02:34:54','2023-01-21 02:34:54'),(119,51,52,'2023-01-21 02:34:54','2023-01-21 02:34:54'),(120,36,52,'2023-01-21 02:34:54','2023-01-21 02:34:54'),(121,38,52,'2023-01-21 02:34:54','2023-01-21 02:34:54'),(122,46,52,'2023-01-21 02:34:54','2023-01-21 02:34:54'),(123,45,52,'2023-01-21 02:34:54','2023-01-21 02:34:54'),(124,46,53,'2023-01-21 02:34:57','2023-01-21 02:34:57'),(125,38,53,'2023-01-21 02:34:57','2023-01-21 02:34:57'),(126,37,53,'2023-01-21 02:34:57','2023-01-21 02:34:57'),(127,50,53,'2023-01-21 02:34:57','2023-01-21 02:34:57'),(128,51,53,'2023-01-21 02:34:57','2023-01-21 02:34:57'),(129,52,53,'2023-01-21 02:34:57','2023-01-21 02:34:57'),(130,48,54,'2023-01-21 02:34:59','2023-01-21 02:34:59'),(131,49,54,'2023-01-21 02:34:59','2023-01-21 02:34:59'),(132,44,54,'2023-01-21 02:34:59','2023-01-21 02:34:59'),(133,36,54,'2023-01-21 02:34:59','2023-01-21 02:34:59'),(134,37,54,'2023-01-21 02:34:59','2023-01-21 02:34:59'),(135,36,58,'2023-01-21 02:35:01','2023-01-21 02:35:01'),(136,37,58,'2023-01-21 02:35:01','2023-01-21 02:35:01'),(137,38,58,'2023-01-21 02:35:01','2023-01-21 02:35:01'),(138,48,58,'2023-01-21 02:35:01','2023-01-21 02:35:01');
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collections_user_id_index` (`user_id`),
  CONSTRAINT `collections_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (52,3,'Go Crazy With Prints','2023-01-20 07:05:09','2023-01-21 00:25:22'),(53,3,'StayAtHome Style 101','2023-01-20 07:19:16','2023-01-21 00:25:49'),(54,3,'Trending This Year','2023-01-20 07:20:50','2023-01-21 00:26:09'),(55,35,'only222','2023-01-20 07:21:15','2023-01-20 07:21:15'),(56,35,'only11','2023-01-20 07:21:24','2023-01-20 07:21:24'),(57,35,'ffff','2023-01-21 00:57:31','2023-01-21 00:57:31'),(58,3,'dfdfsdf','2023-01-21 02:30:08','2023-01-21 02:30:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'INV00_1_37',28,NULL,3,'2022-12-26','invoiced',7931,NULL,NULL,'2022-12-25 23:17:57','2022-12-25 23:17:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_11_123013_create_usersgroup_table',1),(2,'2014_10_12_000000_create_users_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(5,'2018_07_25_115853_create_attributesets_table',1),(6,'2018_07_26_062756_create_attributes_table',1),(7,'2018_07_26_075014_create_tax_type_table',1),(10,'2018_07_26_112414_create_city_pincodes_table',1),(11,'2018_07_26_123731_create_userdetails_table',1),(12,'2018_07_27_100401_create_categories_table',1),(13,'2018_07_27_120303_create_stores_table',1),(14,'2018_07_27_120304_create_products_table',1),(15,'2018_07_27_120305_create_attribute_product_table',1),(16,'2018_07_27_120306_create_product_source_table',1),(17,'2018_07_27_123731_create_regions_table',1),(18,'2018_07_27_125704_create_category_product_table',1),(19,'2018_07_27_134545_create_addresses_table',1),(20,'2018_07_27_143733_create_product_variations_table',1),(21,'2018_07_28_085439_create_stocks_table',1),(22,'2018_07_28_085440_create_product_featured_table',1),(23,'2018_07_29_103620_create_giftcard_images_table',1),(24,'2018_07_29_124957_create_product_galleries_table',1),(25,'2018_07_30_091738_create_cart_user_table',1),(26,'2018_08_02_123144_create_shipping_methods_table',1),(27,'2018_08_02_123758_create_country_shipping_method_table',1),(28,'2018_12_19_131333_create_payment_methods_table',1),(29,'2018_12_23_090335_create_orders_table',1),(30,'2018_12_23_090523_create_product_variation_order_table',1),(31,'2018_12_24_123342_add_gateway_customer_id_to_users_table',1),(32,'2019_01_04_112032_create_transactions_table',1),(33,'2019_03_11_083551_create_attributeset_category_table',1),(34,'2019_04_05_060730_create_pages_table',1),(35,'2019_04_14_124957_create_order_item_table',1),(36,'2019_04_15_121141_create_giftcard_orders_table',1),(37,'2019_05_07_112124_create_orderdetailview_view',1),(38,'2019_05_07_112441_create_product_variation_stock_view',1),(39,'2019_05_10_091837_create_invoices_table',1),(40,'2019_05_10_094008_create_order_trackings_table',1),(41,'2019_05_10_132513_create_order_status_table',1),(42,'2019_08_15_082720_create_order_status_view',1),(43,'2019_08_29_074034_create_rating_reviews_table',1),(44,'2019_09_06_125225_create_review_gallery_table',1),(45,'2019_10_03_092145_create_mail_templates_table',1),(46,'2019_10_09_073928_create_contacts_table',1),(47,'2019_10_29_113431_create_order_product_stores_table',1),(48,'2020_01_10_132527_create_pincodes_table',1),(49,'2020_01_16_152121_create_paytm_table',1),(50,'2020_01_31_084507_create_jobs_table',1),(51,'2020_02_06_113745_create_failed_jobs_table',1),(52,'2020_02_17_102738_create_wishlists_table',1),(53,'2020_02_17_103032_create_wishlist_item_table',1),(54,'2020_02_20_182925_create_fee_settings_table',1),(55,'2020_02_20_184628_create_fees_table',1),(56,'2020_02_21_074929_create_shipping_charges_table',1),(57,'2020_03_26_101838_create_settings_table',1),(58,'2020_04_06_111350_create_productquestions_table',1),(59,'2020_04_06_111413_create_productanswers_table',1),(60,'2020_04_10_101206_create_sellerprofiles_table',1),(61,'2020_04_16_051540_create_activity_log_table',1),(62,'2020_05_11_094222_create_pincode_region_table',1),(63,'2020_05_20_081401_create_attributecode_table',1),(70,'2018_07_12_134059_create_countries_table',7),(71,'2018_07_26_112243_create_states_table',8),(73,'2018_07_26_112413_create_cities_table',9),(77,'2023_01_14_094600_create_collections_table',12),(78,'2023_01_16_111515_create_collection_products_table',13);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (8,7,3,6,37,63,1300.00,10,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":10,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":63,\"name\":\"blue-small\",\"product_id\":37,\"price\":130000,\"attribute_product_id\":112,\"quantity\":10},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-23 02:17:04','2022-12-23 02:30:05'),(9,7,3,6,37,65,0.00,10,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":10,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":65,\"name\":\"white-small\",\"product_id\":37,\"price\":0,\"attribute_product_id\":114,\"quantity\":10},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-23 02:17:04','2022-12-23 02:30:05'),(10,7,3,6,38,66,0.00,10,6,28.00,28.00,9.00,'{\"product\":{\"id\":38,\"user_id\":3,\"store_id\":9,\"name\":\"Java 2 Books\",\"slug\":\"java-2-books\",\"description\":\"sdffddf\",\"price\":100000,\"tax_id\":6,\"status\":1,\"quantity\":10,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":66,\"name\":\"no variation\",\"product_id\":38,\"price\":0,\"attribute_product_id\":118,\"quantity\":10},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":7,\"product_id\":38,\"position\":1,\"imagepath\":\"product_images\\/tS7rSMx7oKFFOP8TvA7ZByuVAFB3USJwDswyokLl.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailjava book.jpeg\"}],\"tax_type\":{\"id\":6,\"tax_name\":\"Others\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":28,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-23 02:17:04','2022-12-23 02:30:05'),(11,8,3,6,38,66,0.00,7,6,28.00,28.00,9.00,'{\"product\":{\"id\":38,\"user_id\":3,\"store_id\":9,\"name\":\"Java 2 Books\",\"slug\":\"java-2-books\",\"description\":\"sdffddf\",\"price\":100000,\"tax_id\":6,\"status\":1,\"quantity\":7,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":66,\"name\":\"no variation\",\"product_id\":38,\"price\":0,\"attribute_product_id\":118,\"quantity\":7},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":7,\"product_id\":38,\"position\":1,\"imagepath\":\"product_images\\/tS7rSMx7oKFFOP8TvA7ZByuVAFB3USJwDswyokLl.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailjava book.jpeg\"}],\"tax_type\":{\"id\":6,\"tax_name\":\"Others\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":28,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 00:28:13','2022-12-25 23:14:18'),(12,8,3,6,36,59,4174.00,10,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":10,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":59,\"name\":\"black\",\"product_id\":36,\"price\":417400,\"attribute_product_id\":106,\"quantity\":10},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 00:28:13','2022-12-25 23:14:18'),(13,9,3,6,36,62,8500.00,10,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":10,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":62,\"name\":\"32GB\",\"product_id\":36,\"price\":850000,\"attribute_product_id\":109,\"quantity\":10},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:01:41','2022-12-24 01:01:41'),(14,9,3,6,36,59,4174.00,10,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":10,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":59,\"name\":\"black\",\"product_id\":36,\"price\":417400,\"attribute_product_id\":106,\"quantity\":10},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:01:41','2022-12-24 01:01:41'),(15,10,3,6,37,63,1300.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":63,\"name\":\"blue-small\",\"product_id\":37,\"price\":130000,\"attribute_product_id\":112,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:03:08','2022-12-24 01:03:08'),(19,16,3,6,37,63,1300.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":63,\"name\":\"blue-small\",\"product_id\":37,\"price\":130000,\"attribute_product_id\":112,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:06:05','2022-12-24 01:06:05'),(20,17,3,6,37,63,1300.00,2,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":2,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":63,\"name\":\"blue-small\",\"product_id\":37,\"price\":130000,\"attribute_product_id\":112,\"quantity\":2},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:10:30','2022-12-24 01:10:30'),(21,18,3,6,36,59,4174.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":59,\"name\":\"black\",\"product_id\":36,\"price\":417400,\"attribute_product_id\":106,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:13:59','2022-12-24 01:13:59'),(22,19,3,6,37,65,0.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":65,\"name\":\"white-small\",\"product_id\":37,\"price\":0,\"attribute_product_id\":114,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:14:34','2022-12-24 01:14:34'),(23,20,3,6,38,66,0.00,1,6,28.00,28.00,9.00,'{\"product\":{\"id\":38,\"user_id\":3,\"store_id\":9,\"name\":\"Java 2 Books\",\"slug\":\"java-2-books\",\"description\":\"sdffddf\",\"price\":100000,\"tax_id\":6,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":66,\"name\":\"no variation\",\"product_id\":38,\"price\":0,\"attribute_product_id\":118,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":7,\"product_id\":38,\"position\":1,\"imagepath\":\"product_images\\/tS7rSMx7oKFFOP8TvA7ZByuVAFB3USJwDswyokLl.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailjava book.jpeg\"}],\"tax_type\":{\"id\":6,\"tax_name\":\"Others\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":28,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:25:49','2022-12-24 01:25:49'),(24,21,3,6,36,59,4174.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":59,\"name\":\"black\",\"product_id\":36,\"price\":417400,\"attribute_product_id\":106,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:36:43','2022-12-24 01:36:43'),(25,22,3,31,38,66,0.00,5,6,28.00,28.00,9.00,'{\"product\":{\"id\":38,\"user_id\":3,\"store_id\":9,\"name\":\"Java 2 Books\",\"slug\":\"java-2-books\",\"description\":\"sdffddf\",\"price\":100000,\"tax_id\":6,\"status\":1,\"quantity\":5,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":66,\"name\":\"no variation\",\"product_id\":38,\"price\":0,\"attribute_product_id\":118,\"quantity\":5},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":7,\"product_id\":38,\"position\":1,\"imagepath\":\"product_images\\/tS7rSMx7oKFFOP8TvA7ZByuVAFB3USJwDswyokLl.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailjava book.jpeg\"}],\"tax_type\":{\"id\":6,\"tax_name\":\"Others\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":28,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:40:32','2022-12-24 01:40:32'),(26,23,3,31,38,66,0.00,1,6,28.00,28.00,9.00,'{\"product\":{\"id\":38,\"user_id\":3,\"store_id\":9,\"name\":\"Java 2 Books\",\"slug\":\"java-2-books\",\"description\":\"sdffddf\",\"price\":100000,\"tax_id\":6,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":66,\"name\":\"no variation\",\"product_id\":38,\"price\":0,\"attribute_product_id\":118,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":7,\"product_id\":38,\"position\":1,\"imagepath\":\"product_images\\/tS7rSMx7oKFFOP8TvA7ZByuVAFB3USJwDswyokLl.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailjava book.jpeg\"}],\"tax_type\":{\"id\":6,\"tax_name\":\"Others\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":28,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:43:37','2022-12-24 01:43:37'),(27,23,3,31,36,61,6500.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":61,\"name\":\"16GB\",\"product_id\":36,\"price\":650000,\"attribute_product_id\":108,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:43:37','2022-12-24 01:43:37'),(28,24,3,31,36,62,8500.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":62,\"name\":\"32GB\",\"product_id\":36,\"price\":850000,\"attribute_product_id\":109,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:45:00','2022-12-24 01:45:00'),(29,24,3,31,37,64,1200.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":64,\"name\":\"red-small\",\"product_id\":37,\"price\":120000,\"attribute_product_id\":113,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:45:00','2022-12-24 01:45:00'),(30,25,3,31,38,66,0.00,1,6,28.00,28.00,9.00,'{\"product\":{\"id\":38,\"user_id\":3,\"store_id\":9,\"name\":\"Java 2 Books\",\"slug\":\"java-2-books\",\"description\":\"sdffddf\",\"price\":100000,\"tax_id\":6,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":66,\"name\":\"no variation\",\"product_id\":38,\"price\":0,\"attribute_product_id\":118,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":7,\"product_id\":38,\"position\":1,\"imagepath\":\"product_images\\/tS7rSMx7oKFFOP8TvA7ZByuVAFB3USJwDswyokLl.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailjava book.jpeg\"}],\"tax_type\":{\"id\":6,\"tax_name\":\"Others\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":28,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 01:47:17','2022-12-24 01:47:17'),(31,26,3,6,47,76,10000.00,10,2,5.00,5.00,9.00,'{\"product\":{\"id\":47,\"user_id\":3,\"store_id\":9,\"name\":\"single no variation\",\"slug\":\"single-no-variation\",\"description\":\"ffdgfd\",\"price\":1000000,\"tax_id\":2,\"status\":1,\"quantity\":10,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":76,\"name\":\"no variation\",\"product_id\":47,\"price\":1000000,\"attribute_product_id\":157,\"quantity\":10},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":20,\"product_id\":47,\"position\":1,\"imagepath\":\"product_images\\/Wm2KkRioNSxwt8mTMpz2pWdT6eesagZhuzVIwbR1.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"}],\"tax_type\":{\"id\":2,\"tax_name\":\"Clothes\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 02:49:35','2022-12-24 02:49:35'),(32,27,3,6,46,74,111.00,10,1,5.00,5.00,9.00,'{\"product\":{\"id\":46,\"user_id\":3,\"store_id\":9,\"name\":\"dfdff8878787\",\"slug\":\"dfdff8878787\",\"description\":\"dfd\",\"price\":11100,\"tax_id\":1,\"status\":1,\"quantity\":10,\"type\":\"physical\",\"weight\":0.007,\"approved_by\":null},\"variation\":{\"id\":74,\"name\":\"blue\",\"product_id\":46,\"price\":11100,\"attribute_product_id\":150,\"quantity\":10},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":19,\"product_id\":46,\"position\":1,\"imagepath\":\"product_images\\/8RHqY9fl5Q9dxP5fkftkz1hJzvPeAJnmFrIXD279.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp3.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 02:52:58','2022-12-24 02:52:58'),(33,27,3,6,47,76,10000.00,5,2,5.00,5.00,9.00,'{\"product\":{\"id\":47,\"user_id\":3,\"store_id\":9,\"name\":\"single no variation\",\"slug\":\"single-no-variation\",\"description\":\"ffdgfd\",\"price\":1000000,\"tax_id\":2,\"status\":1,\"quantity\":5,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":76,\"name\":\"no variation\",\"product_id\":47,\"price\":1000000,\"attribute_product_id\":157,\"quantity\":5},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":20,\"product_id\":47,\"position\":1,\"imagepath\":\"product_images\\/Wm2KkRioNSxwt8mTMpz2pWdT6eesagZhuzVIwbR1.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"}],\"tax_type\":{\"id\":2,\"tax_name\":\"Clothes\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 02:52:58','2022-12-24 02:52:58'),(34,27,3,6,45,73,77.00,5,1,5.00,5.00,9.00,'{\"product\":{\"id\":45,\"user_id\":3,\"store_id\":9,\"name\":\"rrrrrr\",\"slug\":\"rrrrrr\",\"description\":\"dsfsfdfs\",\"price\":111100,\"tax_id\":1,\"status\":1,\"quantity\":5,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":73,\"name\":\"8GB\",\"product_id\":45,\"price\":7700,\"attribute_product_id\":145,\"quantity\":5},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":17,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/0HkW4hny10ZmeYQUi7JV1IX1OfztfzNjelQoZpV6.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"},{\"id\":18,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/I7dLokEPqXMxmLLSP1lcYCFIWFcljdr1Xtj2B7d9.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailseller.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 02:52:58','2022-12-24 02:52:58'),(35,27,3,6,45,71,1111.00,12,1,5.00,5.00,9.00,'{\"product\":{\"id\":45,\"user_id\":3,\"store_id\":9,\"name\":\"rrrrrr\",\"slug\":\"rrrrrr\",\"description\":\"dsfsfdfs\",\"price\":111100,\"tax_id\":1,\"status\":1,\"quantity\":12,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":71,\"name\":\"blue\",\"product_id\":45,\"price\":111100,\"attribute_product_id\":143,\"quantity\":12},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":17,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/0HkW4hny10ZmeYQUi7JV1IX1OfztfzNjelQoZpV6.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"},{\"id\":18,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/I7dLokEPqXMxmLLSP1lcYCFIWFcljdr1Xtj2B7d9.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailseller.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 02:52:58','2022-12-24 02:52:58'),(36,27,3,6,45,72,55.00,20,1,5.00,5.00,9.00,'{\"product\":{\"id\":45,\"user_id\":3,\"store_id\":9,\"name\":\"rrrrrr\",\"slug\":\"rrrrrr\",\"description\":\"dsfsfdfs\",\"price\":111100,\"tax_id\":1,\"status\":1,\"quantity\":20,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":72,\"name\":\"black\",\"product_id\":45,\"price\":5500,\"attribute_product_id\":144,\"quantity\":20},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":17,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/0HkW4hny10ZmeYQUi7JV1IX1OfztfzNjelQoZpV6.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"},{\"id\":18,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/I7dLokEPqXMxmLLSP1lcYCFIWFcljdr1Xtj2B7d9.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailseller.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-24 02:52:58','2022-12-24 02:52:58'),(37,28,3,6,36,58,7544.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":58,\"name\":\"blue\",\"product_id\":36,\"price\":754400,\"attribute_product_id\":105,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-25 23:11:28','2022-12-25 23:14:54'),(38,28,3,6,36,62,8500.00,4,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":4,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":62,\"name\":\"32GB\",\"product_id\":36,\"price\":850000,\"attribute_product_id\":109,\"quantity\":4},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-25 23:11:28','2022-12-25 23:14:54'),(39,28,3,6,38,66,0.00,1,6,28.00,28.00,9.00,'{\"product\":{\"id\":38,\"user_id\":3,\"store_id\":9,\"name\":\"Java 2 Books\",\"slug\":\"java-2-books\",\"description\":\"sdffddf\",\"price\":100000,\"tax_id\":6,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":66,\"name\":\"no variation\",\"product_id\":38,\"price\":0,\"attribute_product_id\":118,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":7,\"product_id\":38,\"position\":1,\"imagepath\":\"product_images\\/tS7rSMx7oKFFOP8TvA7ZByuVAFB3USJwDswyokLl.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailjava book.jpeg\"}],\"tax_type\":{\"id\":6,\"tax_name\":\"Others\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":28,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-25 23:11:28','2022-12-25 23:14:54'),(40,28,3,6,44,68,6000.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":44,\"user_id\":3,\"store_id\":9,\"name\":\"apple phone 6000\",\"slug\":\"apple-phone-6000\",\"description\":\"dgfg\",\"price\":600000,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.1,\"approved_by\":null},\"variation\":{\"id\":68,\"name\":\"blue\",\"product_id\":44,\"price\":600000,\"attribute_product_id\":136,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":13,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/eMozq7xqYO0WxTjANQ1PnxWDlERuytnsthhmllPF.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp3.jpg\"},{\"id\":14,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/fbxWcHskZww97jyYGTqZbvSyqRT3fQpe1eVcLoyS.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp8.jpg\"},{\"id\":15,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/6Sq29wi4bjRjeDwfi4PMZrsG6BDkB8QSRuoJfZND.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp7.jpg\"},{\"id\":16,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/EocURW5tNpWA9qQCc6aS5AaAchz9RGRpflwFcGAZ.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp6.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-25 23:11:28','2022-12-25 23:14:54'),(41,28,3,6,44,69,7000.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":44,\"user_id\":3,\"store_id\":9,\"name\":\"apple phone 6000\",\"slug\":\"apple-phone-6000\",\"description\":\"dgfg\",\"price\":600000,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.1,\"approved_by\":null},\"variation\":{\"id\":69,\"name\":\"blue\",\"product_id\":44,\"price\":700000,\"attribute_product_id\":136,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":13,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/eMozq7xqYO0WxTjANQ1PnxWDlERuytnsthhmllPF.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp3.jpg\"},{\"id\":14,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/fbxWcHskZww97jyYGTqZbvSyqRT3fQpe1eVcLoyS.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp8.jpg\"},{\"id\":15,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/6Sq29wi4bjRjeDwfi4PMZrsG6BDkB8QSRuoJfZND.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp7.jpg\"},{\"id\":16,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/EocURW5tNpWA9qQCc6aS5AaAchz9RGRpflwFcGAZ.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp6.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-25 23:11:28','2022-12-25 23:14:54'),(42,28,3,6,44,70,6000.00,17,1,5.00,5.00,9.00,'{\"product\":{\"id\":44,\"user_id\":3,\"store_id\":9,\"name\":\"apple phone 6000\",\"slug\":\"apple-phone-6000\",\"description\":\"dgfg\",\"price\":600000,\"tax_id\":1,\"status\":1,\"quantity\":17,\"type\":\"physical\",\"weight\":0.1,\"approved_by\":null},\"variation\":{\"id\":70,\"name\":\"black\",\"product_id\":44,\"price\":600000,\"attribute_product_id\":137,\"quantity\":17},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":13,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/eMozq7xqYO0WxTjANQ1PnxWDlERuytnsthhmllPF.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp3.jpg\"},{\"id\":14,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/fbxWcHskZww97jyYGTqZbvSyqRT3fQpe1eVcLoyS.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp8.jpg\"},{\"id\":15,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/6Sq29wi4bjRjeDwfi4PMZrsG6BDkB8QSRuoJfZND.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp7.jpg\"},{\"id\":16,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/EocURW5tNpWA9qQCc6aS5AaAchz9RGRpflwFcGAZ.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp6.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-25 23:11:28','2022-12-25 23:14:54'),(43,28,3,6,47,76,10000.00,5,2,5.00,5.00,9.00,'{\"product\":{\"id\":47,\"user_id\":3,\"store_id\":9,\"name\":\"single no variation\",\"slug\":\"single-no-variation\",\"description\":\"ffdgfd\",\"price\":1000000,\"tax_id\":2,\"status\":1,\"quantity\":5,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":76,\"name\":\"no variation\",\"product_id\":47,\"price\":1000000,\"attribute_product_id\":157,\"quantity\":5},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@gegocart.com\"},\"productimage\":[{\"id\":20,\"product_id\":47,\"position\":1,\"imagepath\":\"product_images\\/Wm2KkRioNSxwt8mTMpz2pWdT6eesagZhuzVIwbR1.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"}],\"tax_type\":{\"id\":2,\"tax_name\":\"Clothes\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','completed','pending',NULL,NULL,NULL,NULL,NULL,'2022-12-25 23:11:28','2022-12-25 23:14:54'),(44,29,3,6,36,58,7544.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":58,\"name\":\"blue\",\"product_id\":36,\"price\":754400,\"attribute_product_id\":105,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 04:12:49','2023-01-10 04:12:49'),(45,29,3,6,45,71,1111.00,4,1,5.00,5.00,9.00,'{\"product\":{\"id\":45,\"user_id\":3,\"store_id\":9,\"name\":\"rrrrrr\",\"slug\":\"rrrrrr\",\"description\":\"dsfsfdfs\",\"price\":111100,\"tax_id\":1,\"status\":1,\"quantity\":4,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":71,\"name\":\"blue\",\"product_id\":45,\"price\":111100,\"attribute_product_id\":143,\"quantity\":4},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":17,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/0HkW4hny10ZmeYQUi7JV1IX1OfztfzNjelQoZpV6.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"},{\"id\":18,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/I7dLokEPqXMxmLLSP1lcYCFIWFcljdr1Xtj2B7d9.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailseller.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 04:12:49','2023-01-10 04:12:49'),(46,29,3,6,36,62,8500.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":62,\"name\":\"32GB\",\"product_id\":36,\"price\":850000,\"attribute_product_id\":109,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 04:12:49','2023-01-10 04:12:49'),(47,29,3,6,47,76,10000.00,1,2,5.00,5.00,9.00,'{\"product\":{\"id\":47,\"user_id\":3,\"store_id\":9,\"name\":\"single no variation\",\"slug\":\"single-no-variation\",\"description\":\"ffdgfd\",\"price\":1000000,\"tax_id\":2,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":76,\"name\":\"no variation\",\"product_id\":47,\"price\":1000000,\"attribute_product_id\":157,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":20,\"product_id\":47,\"position\":1,\"imagepath\":\"product_images\\/Wm2KkRioNSxwt8mTMpz2pWdT6eesagZhuzVIwbR1.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"}],\"tax_type\":{\"id\":2,\"tax_name\":\"Clothes\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 04:12:49','2023-01-10 04:12:49'),(48,30,3,6,37,64,1200.00,6,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":6,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":64,\"name\":\"red-small\",\"product_id\":37,\"price\":120000,\"attribute_product_id\":113,\"quantity\":6},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 04:20:52','2023-01-10 04:20:52'),(49,30,3,6,36,59,4174.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":59,\"name\":\"black\",\"product_id\":36,\"price\":417400,\"attribute_product_id\":106,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 04:20:52','2023-01-10 04:20:52'),(50,31,3,6,36,59,4174.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"Mobile Phone 1+ one plus\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":59,\"name\":\"black\",\"product_id\":36,\"price\":417400,\"attribute_product_id\":106,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 04:29:09','2023-01-10 04:29:09'),(51,31,3,6,45,72,55.00,0,1,5.00,5.00,9.00,'{\"product\":{\"id\":45,\"user_id\":3,\"store_id\":9,\"name\":\"rrrrrr\",\"slug\":\"rrrrrr\",\"description\":\"dsfsfdfs\",\"price\":111100,\"tax_id\":1,\"status\":1,\"quantity\":0,\"type\":\"physical\",\"weight\":0.001,\"approved_by\":null},\"variation\":{\"id\":72,\"name\":\"black\",\"product_id\":45,\"price\":5500,\"attribute_product_id\":144,\"quantity\":0},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":17,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/0HkW4hny10ZmeYQUi7JV1IX1OfztfzNjelQoZpV6.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp5.jpg\"},{\"id\":18,\"product_id\":45,\"position\":1,\"imagepath\":\"product_images\\/I7dLokEPqXMxmLLSP1lcYCFIWFcljdr1Xtj2B7d9.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailseller.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 04:29:09','2023-01-10 04:29:09'),(52,32,3,6,37,64,1200.00,4,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":4,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":64,\"name\":\"red-small\",\"product_id\":37,\"price\":120000,\"attribute_product_id\":113,\"quantity\":4},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 05:12:08','2023-01-10 05:12:08'),(53,32,3,6,44,69,7000.00,39,1,5.00,5.00,9.00,'{\"product\":{\"id\":44,\"user_id\":3,\"store_id\":9,\"name\":\"apple phone 6000\",\"slug\":\"apple-phone-6000\",\"description\":\"dgfg\",\"price\":600000,\"tax_id\":1,\"status\":1,\"quantity\":39,\"type\":\"physical\",\"weight\":0.1,\"approved_by\":null},\"variation\":{\"id\":69,\"name\":\"blue\",\"product_id\":44,\"price\":700000,\"attribute_product_id\":136,\"quantity\":39},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":13,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/eMozq7xqYO0WxTjANQ1PnxWDlERuytnsthhmllPF.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp3.jpg\"},{\"id\":14,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/fbxWcHskZww97jyYGTqZbvSyqRT3fQpe1eVcLoyS.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp8.jpg\"},{\"id\":15,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/6Sq29wi4bjRjeDwfi4PMZrsG6BDkB8QSRuoJfZND.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp7.jpg\"},{\"id\":16,\"product_id\":44,\"position\":1,\"imagepath\":\"product_images\\/EocURW5tNpWA9qQCc6aS5AaAchz9RGRpflwFcGAZ.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailp6.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-10 05:12:08','2023-01-10 05:12:08'),(54,33,3,6,37,63,1300.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":63,\"name\":\"blue-small\",\"product_id\":37,\"price\":130000,\"attribute_product_id\":112,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-21 04:35:06','2023-01-21 04:35:06'),(55,33,3,6,37,64,1200.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":37,\"user_id\":3,\"store_id\":9,\"name\":\"peter England Shirt white\",\"slug\":\"peter-england-shirt-white\",\"description\":\"peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white\",\"price\":99900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.006,\"approved_by\":null},\"variation\":{\"id\":64,\"name\":\"red-small\",\"product_id\":37,\"price\":120000,\"attribute_product_id\":113,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":3,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhmgoepprod.jpeg\"},{\"id\":4,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailhome.png\"},{\"id\":5,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages.jpeg\"},{\"id\":6,\"product_id\":37,\"position\":1,\"imagepath\":\"product_images\\/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnailimages (1).jpeg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-21 04:35:06','2023-01-21 04:35:06'),(56,33,3,6,36,58,7544.00,1,1,5.00,5.00,9.00,'{\"product\":{\"id\":36,\"user_id\":3,\"store_id\":9,\"name\":\"REDMI 10A (Charcoal Black, 64 GB)  (4 GB RAM)\",\"slug\":\"mobile-phone-1-one-plus\",\"description\":\"mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus\",\"price\":999900,\"tax_id\":1,\"status\":1,\"quantity\":1,\"type\":\"physical\",\"weight\":0.103,\"approved_by\":null},\"variation\":{\"id\":58,\"name\":\"blue\",\"product_id\":36,\"price\":754400,\"attribute_product_id\":105,\"quantity\":1},\"seller\":{\"id\":3,\"name\":\"seller1\",\"email\":\"seller1@shoptown.com\"},\"productimage\":[{\"id\":1,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail1plusimages.jpeg\"},{\"id\":2,\"product_id\":36,\"position\":1,\"imagepath\":\"product_images\\/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp\",\"thumbnailimage\":\"uploads\\/product_images\\/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg\"}],\"tax_type\":{\"id\":1,\"tax_name\":\"Electronics\",\"country_id\":1,\"country_code\":\"IN\",\"tax_rate\":5,\"status\":1,\"order\":1}}','processing','pending',NULL,NULL,NULL,NULL,NULL,'2023-01-21 04:35:06','2023-01-21 04:35:06');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,'OR_001',6,3,1,NULL,'completed',3299000,2,'2022-12-23 02:17:04','2022-12-23 02:30:05',NULL),(8,'OR_002',6,3,1,NULL,'completed',4874000,2,'2022-12-24 00:28:13','2022-12-25 23:14:18',NULL),(9,'OR_003',6,3,1,NULL,'processing',12674000,2,'2022-12-24 01:01:41','2022-12-24 01:02:08',NULL),(10,'OR_004',6,3,1,NULL,'processing',130000,2,'2022-12-24 01:03:08','2022-12-24 01:03:19',NULL),(16,'OR_005',6,3,1,NULL,'pending',130000,2,'2022-12-24 01:06:05','2022-12-24 01:06:05',NULL),(17,'OR_006',6,3,1,NULL,'processing',260000,2,'2022-12-24 01:10:30','2022-12-24 01:10:44',NULL),(18,'OR_007',6,3,1,NULL,'processing',417400,2,'2022-12-24 01:13:59','2022-12-24 01:14:07',NULL),(19,'OR_008',6,3,1,NULL,'processing',99900,2,'2022-12-24 01:14:34','2022-12-24 01:14:46',NULL),(20,'OR_009',6,3,1,NULL,'processing',100000,2,'2022-12-24 01:25:49','2022-12-24 01:26:02',NULL),(21,'OR_010',6,3,1,NULL,'processing',417400,2,'2022-12-24 01:36:43','2022-12-24 01:36:58',NULL),(22,'OR_011',31,4,1,NULL,'processing',500000,2,'2022-12-24 01:40:32','2022-12-24 01:40:46',NULL),(23,'OR_012',31,4,1,NULL,'processing',750000,2,'2022-12-24 01:43:37','2022-12-24 01:44:03',NULL),(24,'OR_013',31,4,1,NULL,'processing',970000,2,'2022-12-24 01:45:00','2022-12-24 01:45:26',NULL),(25,'OR_014',31,4,1,NULL,'processing',100000,2,'2022-12-24 01:47:17','2022-12-24 01:47:30',NULL),(26,'OR_015',6,3,1,NULL,'processing',10000000,2,'2022-12-24 02:49:35','2022-12-24 02:49:49',NULL),(27,'OR_016',6,3,1,NULL,'processing',6592700,2,'2022-12-24 02:52:58','2022-12-24 02:53:54',NULL),(28,'OR_017',6,3,1,NULL,'completed',20754400,2,'2022-12-25 23:11:28','2022-12-25 23:14:54',NULL),(29,'OR_018',6,3,1,NULL,'processing',3048800,3,'2023-01-10 04:12:49','2023-01-10 04:13:15',NULL),(30,'OR_019',6,3,1,NULL,'processing',1137400,3,'2023-01-10 04:20:52','2023-01-10 04:21:05',NULL),(31,'OR_020',6,3,1,NULL,'processing',417400,3,'2023-01-10 04:29:09','2023-01-10 04:29:22',NULL),(32,'OR_021',6,3,1,NULL,'processing',27780000,2,'2023-01-10 05:12:08','2023-01-10 05:12:21',NULL),(33,'OR_022',6,3,1,NULL,'processing',1004400,2,'2023-01-21 04:35:06','2023-01-21 04:35:30',NULL);
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
INSERT INTO `payment_methods` VALUES (1,3,'credit-debit-card','Credit/Debit Card','test',0,'abc','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(2,3,'cod','cash on delivery','test',1,'bcd','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(3,3,'paytm','paytm','test',1,'paytm','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(4,3,'payu','payU','test',0,'payu','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pincode_region`
--

LOCK TABLES `pincode_region` WRITE;
/*!40000 ALTER TABLE `pincode_region` DISABLE KEYS */;
INSERT INTO `pincode_region` VALUES (2,1,'313001',NULL,'2022-12-23 03:07:50','2022-12-23 03:07:50',NULL),(3,1,'313002',NULL,'2022-12-23 03:07:50','2022-12-23 03:07:50',NULL),(4,1,'313003',NULL,'2022-12-23 03:07:50','2022-12-23 03:07:50',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_galleries`
--

LOCK TABLES `product_galleries` WRITE;
/*!40000 ALTER TABLE `product_galleries` DISABLE KEYS */;
INSERT INTO `product_galleries` VALUES (1,36,2,1,'product_images/WjeHsBSoO334nql6GVyIDRoi1bZxRIt5IjQUIU1C.jpg','uploads/product_images/thumbnail1plusimages.jpeg','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(2,36,2,1,'product_images/EYY8EazSqjeNRlQt3D1UBnGH0HQDzWIwFpBqXhu6.webp','uploads/product_images/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg','2022-12-23 01:43:59','2022-12-23 01:43:59',NULL),(3,37,10,1,'product_images/oxSWyLH2ki2BzwyQBnLFVGsGJpp2cccsx0lTGOk4.jpg','uploads/product_images/thumbnailhmgoepprod.jpeg','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(4,37,10,1,'product_images/7unAlDFikhzDmXfEbXGy1HlyDoFpCZY1ytpbnbdU.png','uploads/product_images/thumbnailhome.png','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(5,37,10,1,'product_images/AjPbe2ZU5kIjxcdTpxPHMr1wTS3Xl9X6cjngxm05.jpg','uploads/product_images/thumbnailimages.jpeg','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(6,37,10,1,'product_images/IaogIs6HmiEgbkQmx2BBdnrpsNSGY8TGSjWduNja.jpg','uploads/product_images/thumbnailimages (1).jpeg','2022-12-23 01:52:59','2022-12-23 01:52:59',NULL),(7,38,1,1,'product_images/tS7rSMx7oKFFOP8TvA7ZByuVAFB3USJwDswyokLl.jpg','uploads/product_images/thumbnailjava book.jpeg','2022-12-23 01:55:49','2022-12-23 01:55:49',NULL),(8,39,1,1,'product_images/Ug32FjB31dIWNjLesMTxkpq5cp1EKIMcGhVKDbxl.png','uploads/product_images/thumbnailseller.png','2022-12-24 02:04:42','2022-12-24 02:32:25','2022-12-24 02:32:25'),(9,40,1,1,'product_images/IYZTssZPLLH2s5uSzNUJH6iBfc5uxMxMArIHNZcd.png','uploads/product_images/thumbnailp5.jpg','2022-12-24 02:14:03','2022-12-24 02:32:27','2022-12-24 02:32:27'),(10,41,2,1,'product_images/9hHc1ygnqdbbyWFwR6uWABkeedNZ24ridh5BtYlY.png','uploads/product_images/thumbnailp5.jpg','2022-12-24 02:20:27','2022-12-24 02:32:29','2022-12-24 02:32:29'),(11,42,2,1,'product_images/wnaOhhl44wfa6VIdTrDJMH46SY0zwci47pmSOQqG.jpg','uploads/product_images/thumbnailp2.jpg','2022-12-24 02:24:27','2022-12-24 02:32:31','2022-12-24 02:32:31'),(12,43,1,1,'product_images/ch2ZnvPZCUYugDpqVxX1uhqHFTZM3m2jBNcZFjUW.jpg','uploads/product_images/thumbnailp3.jpg','2022-12-24 02:27:39','2022-12-24 02:32:33','2022-12-24 02:32:33'),(13,44,2,1,'product_images/eMozq7xqYO0WxTjANQ1PnxWDlERuytnsthhmllPF.jpg','uploads/product_images/thumbnailp3.jpg','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(14,44,2,1,'product_images/fbxWcHskZww97jyYGTqZbvSyqRT3fQpe1eVcLoyS.png','uploads/product_images/thumbnailp8.jpg','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(15,44,2,1,'product_images/6Sq29wi4bjRjeDwfi4PMZrsG6BDkB8QSRuoJfZND.png','uploads/product_images/thumbnailp7.jpg','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(16,44,2,1,'product_images/EocURW5tNpWA9qQCc6aS5AaAchz9RGRpflwFcGAZ.png','uploads/product_images/thumbnailp6.jpg','2022-12-24 02:34:51','2022-12-24 02:34:51',NULL),(17,45,2,1,'product_images/0HkW4hny10ZmeYQUi7JV1IX1OfztfzNjelQoZpV6.png','uploads/product_images/thumbnailp5.jpg','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(18,45,2,1,'product_images/I7dLokEPqXMxmLLSP1lcYCFIWFcljdr1Xtj2B7d9.jpg','uploads/product_images/thumbnailseller.jpg','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL),(19,46,2,1,'product_images/8RHqY9fl5Q9dxP5fkftkz1hJzvPeAJnmFrIXD279.jpg','uploads/product_images/thumbnailp3.jpg','2022-12-24 02:47:24','2022-12-24 02:47:24',NULL),(20,47,1,1,'product_images/Wm2KkRioNSxwt8mTMpz2pWdT6eesagZhuzVIwbR1.png','uploads/product_images/thumbnailp5.jpg','2022-12-24 02:48:57','2022-12-24 02:48:57',NULL),(21,48,2,1,'product_images/58RduTnPaQO7L410cVJIsRhmctyDP5HqAY5Q4bD1.jpg','uploads/product_images/thumbnail1plusimages.jpeg','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(22,48,2,1,'product_images/3ZATmaO03eVZDg9HFd3cpACYro7hBodm2UwYHqFw.webp','uploads/product_images/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(23,48,2,1,'product_images/VNbZJZL4qH4Biwcla12ntxJtMbLCVVCfWrfNvpF1.jpg','uploads/product_images/thumbnailapple-606761_960_720.jpg','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(24,48,2,1,'product_images/aLnMMjDGkNiVMTowkBJHa7Y1jHDhVFegEGNfLgqx.jpg','uploads/product_images/thumbnailbird-7528089_960_720.jpg','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL),(25,49,1,1,'product_images/l5fhbJzKULAhlAI3UyX5npdB8g35eZxz0th89LXz.jpg','uploads/product_images/thumbnail1plusimages.jpeg','2023-01-11 01:44:11','2023-01-11 01:44:11',NULL),(26,49,1,1,'product_images/cu5MlvE8M74Ysiqd2rmCxl8vrrUbVzPY4opfkgC7.webp','uploads/product_images/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg','2023-01-11 01:44:11','2023-01-11 01:44:11',NULL),(27,49,1,1,'product_images/BzFmXuzM9lUPSJVuwaGdfH1jrnoULQbFWNsF5O5O.jpg','uploads/product_images/thumbnailapple-606761_960_720.jpg','2023-01-11 01:44:11','2023-01-11 01:44:11',NULL),(28,49,1,1,'product_images/Cxn7bo1GhtfJiEcTKLeYTx3CwEP6bPWHjNPLzbQu.jpg','uploads/product_images/thumbnailbird-7528089_960_720.jpg','2023-01-11 01:44:11','2023-01-11 01:44:11',NULL),(29,50,1,1,'product_images/r9DEahIOkqAty9CfCGUAxTtJPHTXuvHXAmWy07uq.jpg','uploads/product_images/thumbnailbird-7528089_960_720.jpg','2023-01-11 02:41:15','2023-01-11 02:41:15',NULL),(30,51,2,1,'product_images/A766YFqdv9WYTF3Jc87VjkrXGhedFL3awSRMunCn.jpg','uploads/product_images/thumbnailapple-606761_960_720.jpg','2023-01-11 02:52:20','2023-01-11 02:52:20',NULL),(31,52,2,1,'product_images/wo0vMxajuU4aVdrDkS15I9KMKqN0sNGR551NENeO.jpg','uploads/product_images/thumbnail1plusimages.jpeg','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(32,52,2,1,'product_images/4NMLMTXwTQ16axYFqINlpgF56InvM237hbr4Z4PD.webp','uploads/product_images/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(33,52,2,1,'product_images/zevt3IJ43AruJfm8sJMl4mXPTvnROa9GXwwJ1rzL.jpg','uploads/product_images/thumbnailapple-606761_960_720.jpg','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(34,52,2,1,'product_images/08dvrEy2F9OvVz0KMibTXanezFold9DAnD3ayRVX.jpg','uploads/product_images/thumbnailbird-7528089_960_720.jpg','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL),(35,53,1,1,'product_images/offgpb6U79ZCUbnPmEZjl0AyaygpPCZbIDeheV2j.webp','uploads/product_images/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg','2023-01-12 00:07:40','2023-01-12 00:07:40',NULL),(36,54,1,1,'product_images/57QZhZpRPAtt0QSUiQB6zpQj0I7SPGj4lB3V63dw.jpg','uploads/product_images/thumbnail1plusimages.jpeg','2023-01-12 02:36:58','2023-01-12 02:36:58',NULL),(37,55,1,1,'product_images/8rNoOov3iMluTWKiirLvFMSgCAKHLvsMbF0EXplB.jpg','uploads/product_images/thumbnailjava book.jpeg','2023-01-21 00:50:49','2023-01-21 00:50:49',NULL),(38,56,1,1,'product_images/sOhE9wBf57AXmNG6AxOLcxNpCNFlaFGPryYUZeqi.jpg','uploads/product_images/thumbnailjava book.jpeg','2023-01-21 00:51:48','2023-01-21 00:51:48',NULL),(39,57,1,1,'product_images/PeqFMwrass2Wg1zOEuKp0hBQDKdg8aQyhxOJOTV9.jpg','uploads/product_images/thumbnailbird-7528089_960_720.jpg','2023-01-21 01:06:59','2023-01-21 01:06:59',NULL),(40,57,1,1,'product_images/oHyoiIev21fen2a9IQCyotK4LriefA6CCEkjJgaN.jpg','uploads/product_images/thumbnailjava book.jpeg','2023-01-21 01:06:59','2023-01-21 01:06:59',NULL),(41,58,2,1,'product_images/uJsbYjbnktPJUSCZAlAii2pdqXOIz6JPHg5ZCS5G.webp','uploads/product_images/thumbnail138581-v4-oneplus-8t-mobile-phone-large-1.jpg','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(42,58,2,1,'product_images/ctxDsiFsaLGPvTo5WkrzJITxKhMvL4lDQsVWdTO7.jpg','uploads/product_images/thumbnailapple-606761_960_720.jpg','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(43,58,2,1,'product_images/Cm1pdoSA3wKacSo0uWjKIKt1QFF99Q90zZ3DW7dj.jpg','uploads/product_images/thumbnailbird-7528089_960_720.jpg','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL),(44,58,2,1,'product_images/cFye7D2TZXsBweOMgQrH9gSKbFHsd3xbvxLelSTp.webp','uploads/product_images/thumbnailholly-7602422_960_720.webp','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL);
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
INSERT INTO `product_variation_order` VALUES (7,63,10,'2022-12-23 02:17:04','2022-12-23 02:17:04',NULL),(7,65,10,'2022-12-23 02:17:04','2022-12-23 02:17:04',NULL),(7,66,10,'2022-12-23 02:17:04','2022-12-23 02:17:04',NULL),(8,66,7,'2022-12-24 00:28:13','2022-12-24 00:28:13',NULL),(8,59,10,'2022-12-24 00:28:13','2022-12-24 00:28:13',NULL),(9,62,10,'2022-12-24 01:01:41','2022-12-24 01:01:41',NULL),(9,59,10,'2022-12-24 01:01:41','2022-12-24 01:01:41',NULL),(10,63,1,'2022-12-24 01:03:08','2022-12-24 01:03:08',NULL),(16,63,1,'2022-12-24 01:06:05','2022-12-24 01:06:05',NULL),(17,63,2,'2022-12-24 01:10:30','2022-12-24 01:10:30',NULL),(18,59,1,'2022-12-24 01:13:59','2022-12-24 01:13:59',NULL),(19,65,1,'2022-12-24 01:14:34','2022-12-24 01:14:34',NULL),(20,66,1,'2022-12-24 01:25:49','2022-12-24 01:25:49',NULL),(21,59,1,'2022-12-24 01:36:43','2022-12-24 01:36:43',NULL),(22,66,5,'2022-12-24 01:40:32','2022-12-24 01:40:32',NULL),(23,66,1,'2022-12-24 01:43:37','2022-12-24 01:43:37',NULL),(23,61,1,'2022-12-24 01:43:37','2022-12-24 01:43:37',NULL),(24,62,1,'2022-12-24 01:45:00','2022-12-24 01:45:00',NULL),(24,64,1,'2022-12-24 01:45:00','2022-12-24 01:45:00',NULL),(25,66,1,'2022-12-24 01:47:17','2022-12-24 01:47:17',NULL),(26,76,10,'2022-12-24 02:49:35','2022-12-24 02:49:35',NULL),(27,74,10,'2022-12-24 02:52:58','2022-12-24 02:52:58',NULL),(27,76,5,'2022-12-24 02:52:58','2022-12-24 02:52:58',NULL),(27,73,5,'2022-12-24 02:52:58','2022-12-24 02:52:58',NULL),(27,71,12,'2022-12-24 02:52:58','2022-12-24 02:52:58',NULL),(27,72,20,'2022-12-24 02:52:58','2022-12-24 02:52:58',NULL),(28,58,1,'2022-12-25 23:11:28','2022-12-25 23:11:28',NULL),(28,62,4,'2022-12-25 23:11:28','2022-12-25 23:11:28',NULL),(28,66,1,'2022-12-25 23:11:28','2022-12-25 23:11:28',NULL),(28,68,1,'2022-12-25 23:11:28','2022-12-25 23:11:28',NULL),(28,69,1,'2022-12-25 23:11:28','2022-12-25 23:11:28',NULL),(28,70,17,'2022-12-25 23:11:28','2022-12-25 23:11:28',NULL),(28,76,5,'2022-12-25 23:11:28','2022-12-25 23:11:28',NULL),(29,58,1,'2023-01-10 04:12:49','2023-01-10 04:12:49',NULL),(29,71,4,'2023-01-10 04:12:49','2023-01-10 04:12:49',NULL),(29,62,1,'2023-01-10 04:12:49','2023-01-10 04:12:49',NULL),(29,76,1,'2023-01-10 04:12:49','2023-01-10 04:12:49',NULL),(30,64,6,'2023-01-10 04:20:52','2023-01-10 04:20:52',NULL),(30,59,1,'2023-01-10 04:20:52','2023-01-10 04:20:52',NULL),(31,59,1,'2023-01-10 04:29:09','2023-01-10 04:29:09',NULL),(31,72,0,'2023-01-10 04:29:09','2023-01-10 04:29:09',NULL),(32,64,4,'2023-01-10 05:12:08','2023-01-10 05:12:08',NULL),(32,69,39,'2023-01-10 05:12:08','2023-01-10 05:12:08',NULL),(33,63,1,'2023-01-21 04:35:06','2023-01-21 04:35:06',NULL),(33,64,1,'2023-01-21 04:35:06','2023-01-21 04:35:06',NULL),(33,58,1,'2023-01-21 04:35:06','2023-01-21 04:35:06',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations`
--

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
INSERT INTO `product_variations` VALUES (58,36,'blue',754400,0,105,'2022-12-23 01:44:57','2022-12-23 01:44:57',NULL),(59,36,'black',417400,1,106,'2022-12-23 01:44:57','2022-12-23 01:44:57',NULL),(60,36,'8GB',0,2,107,'2022-12-23 01:44:57','2022-12-23 01:44:57',NULL),(61,36,'16GB',650000,3,108,'2022-12-23 01:44:57','2022-12-23 01:44:57',NULL),(62,36,'32GB',850000,4,109,'2022-12-23 01:44:58','2022-12-23 01:44:58',NULL),(63,37,'blue-small',130000,0,112,'2022-12-23 01:53:35','2022-12-23 01:53:35',NULL),(64,37,'red-small',120000,1,113,'2022-12-23 01:53:35','2022-12-23 01:53:35',NULL),(65,37,'white-small',0,2,114,'2022-12-23 01:53:35','2022-12-23 01:53:35',NULL),(66,38,'no variation',0,0,118,'2022-12-23 01:55:53','2022-12-23 01:55:53',NULL),(67,43,'no variation',300000,0,135,'2022-12-24 02:29:02','2022-12-24 02:32:33','2022-12-24 02:32:33'),(68,44,'blue',600000,0,136,'2022-12-24 02:35:09','2022-12-24 02:35:09',NULL),(69,44,'blue',700000,0,136,'2022-12-24 02:35:23','2022-12-24 02:35:23',NULL),(70,44,'black',600000,1,137,'2022-12-24 02:35:23','2022-12-24 02:35:23',NULL),(71,45,'blue',111100,0,143,'2022-12-24 02:46:02','2022-12-24 02:46:02',NULL),(72,45,'black',5500,1,144,'2022-12-24 02:46:02','2022-12-24 02:46:02',NULL),(73,45,'8GB',7700,2,145,'2022-12-24 02:46:02','2022-12-24 02:46:02',NULL),(74,46,'blue',11100,0,150,'2022-12-24 02:47:41','2022-12-24 02:47:41',NULL),(75,46,'black',22200,1,151,'2022-12-24 02:47:41','2022-12-24 02:47:41',NULL),(76,47,'no variation',1000000,0,157,'2022-12-24 02:49:03','2022-12-24 02:49:03',NULL),(77,48,'blue',650000,0,158,'2023-01-08 23:16:35','2023-01-08 23:16:35',NULL),(78,48,'8GB',785500,2,160,'2023-01-08 23:16:35','2023-01-08 23:16:35',NULL),(79,49,'no variation',98545400,0,165,'2023-01-11 01:44:17','2023-01-11 01:44:17',NULL),(80,50,'no variation',55500,0,166,'2023-01-11 02:41:18','2023-01-11 02:41:18',NULL),(81,51,'blue',900000,0,167,'2023-01-11 02:52:39','2023-01-11 02:52:39',NULL),(82,52,'blue',600400,0,174,'2023-01-11 07:30:39','2023-01-11 07:30:39',NULL),(83,52,'16GB',545400,3,177,'2023-01-11 07:30:39','2023-01-11 07:30:39',NULL),(84,53,'no variation',66600,0,181,'2023-01-12 00:07:49','2023-01-12 00:07:49',NULL),(85,54,'no variation',554500,0,182,'2023-01-12 02:37:04','2023-01-12 02:37:04',NULL),(86,55,'no variation',55500,0,183,'2023-01-21 00:50:55','2023-01-21 00:50:55',NULL),(87,56,'no variation',55500,0,184,'2023-01-21 00:51:51','2023-01-21 00:51:51',NULL),(88,57,'no variation',575400,0,185,'2023-01-21 01:07:05','2023-01-21 01:07:05',NULL),(89,58,'blue',888800,0,186,'2023-01-21 01:07:55','2023-01-21 01:07:55',NULL),(90,58,'8GB',888800,2,188,'2023-01-21 01:07:55','2023-01-21 01:07:55',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productanswers`
--

LOCK TABLES `productanswers` WRITE;
/*!40000 ALTER TABLE `productanswers` DISABLE KEYS */;
INSERT INTO `productanswers` VALUES (1,1,3,6,1,'green','public','approve',1,1,'2022-12-10 02:20:17','2022-12-10 02:20:17','2022-12-10 02:20:17',1),(2,2,3,6,1,'yes','public','approve',3,3,'2022-12-10 02:20:17','2022-12-10 02:20:17','2022-12-10 02:20:17',1);
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
INSERT INTO `productquestions` VALUES (1,6,3,1,'Any Other colors?','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL),(2,6,3,1,'it is support otg','2022-12-10 02:20:17','2022-12-10 02:20:17',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (36,3,9,'REDMI 10A (Charcoal Black, 64 GB)  (4 GB RAM)',0,'mobile-phone-1-one-plus','mobile-phone-1-one-plus','adidas','mobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plusmobile-phone-1-one-plus',NULL,NULL,999900,0.1030000000,1,1,'physical','2022-12-23 01:43:59','2023-01-11 03:57:54',NULL,NULL,NULL),(37,3,9,'peter England Shirt white',5,'peter-england-shirt-white','peter65656','adidas','peter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt whitepeter England Shirt white',NULL,NULL,99900,0.0060000000,1,1,'physical','2022-12-23 01:52:59','2022-12-23 02:57:46',NULL,NULL,NULL),(38,3,9,'Java 2 Books',0,'java-2-books','54545665','adidas','sdffddf',NULL,NULL,100000,0.0010000000,6,1,'physical','2022-12-23 01:55:49','2022-12-23 01:55:49',NULL,NULL,NULL),(39,3,9,'55656',0,'55656','54545','adidas','dsffd',NULL,NULL,88800,0.0010000000,1,0,'physical','2022-12-24 02:04:42','2022-12-24 02:32:25',NULL,NULL,'2022-12-24 02:32:25'),(40,3,9,'5645',0,'5645','55','adidas','554',NULL,NULL,4545400,0.0000000000,1,0,'physical','2022-12-24 02:14:03','2022-12-24 02:32:27',NULL,NULL,'2022-12-24 02:32:27'),(41,3,9,'54456465',0,'54456465','5645','adidas','dfsfd',NULL,NULL,1111100,0.0010000000,1,0,'physical','2022-12-24 02:20:27','2022-12-24 02:32:29',NULL,NULL,'2022-12-24 02:32:29'),(42,3,9,'665',0,'665','656565','adidas','d',NULL,NULL,10000,0.0010000000,1,0,'physical','2022-12-24 02:24:27','2022-12-24 02:32:31',NULL,NULL,'2022-12-24 02:32:31'),(43,3,9,'ranjeet',0,'ranjeet','66556','adidas','dfssfd',NULL,NULL,300000,0.0010000000,1,0,'physical','2022-12-24 02:27:38','2022-12-24 02:32:33',NULL,NULL,'2022-12-24 02:32:33'),(44,3,9,'apple phone 6000',0,'apple-phone-6000','apple9555','adidas','dgfg',NULL,NULL,600000,0.1000000000,1,0,'physical','2022-12-24 02:34:51','2023-01-11 03:23:56',NULL,NULL,NULL),(45,3,9,'rrrrrr',0,'rrrrrr','dsffd5f4','adidas','dsfsfdfs',NULL,NULL,111100,0.0010000000,1,1,'physical','2022-12-24 02:39:31','2022-12-24 02:39:31',NULL,NULL,NULL),(46,3,9,'testing product remna klldkjekr sdfddrfddf 455545dfd55fdd45s',0,'dfdff8878787','dfdff8878787','adidas','dfd',NULL,NULL,11100,0.0070000000,1,1,'physical','2022-12-24 02:47:24','2023-01-12 02:39:51',NULL,NULL,NULL),(47,3,9,'single no variation',0,'single-no-variation','dsfsfddf3434','adidas','ffdgfd',NULL,NULL,1000000,0.0010000000,2,1,'physical','2022-12-24 02:48:57','2022-12-24 02:48:57',NULL,NULL,NULL),(48,3,9,'apple 9s',0,'apple-9s','apple9ssss','adidas','sdfdfd',NULL,NULL,9500000,0.1590000000,1,1,'physical','2023-01-08 23:16:10','2023-01-08 23:16:10',NULL,NULL,NULL),(49,3,9,'thumbnail image',0,'thumbnail-image','dfs54d5s45','adidas','dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45dfs54d5s45',NULL,NULL,98545400,0.0010000000,1,1,'physical','2023-01-11 01:44:11','2023-01-11 01:44:11',NULL,NULL,NULL),(50,3,9,'dfsdfdfdsf344',0,'dfsdfdfdsf344','sdfdfdsf344','adidas','dssd',NULL,NULL,55500,0.0060000000,1,1,'physical','2023-01-11 02:41:15','2023-01-11 02:41:15',NULL,NULL,NULL),(51,3,9,'puma sc shoess ttra sn',0,'543','fssdfs324','adidas','sdasdsad',NULL,NULL,900000,0.0020000000,1,1,'physical','2023-01-11 02:52:20','2023-01-11 03:25:20',NULL,NULL,NULL),(52,3,9,'apple 11s',0,'apple-11s','dfs4d545656','apple','apple 11sapple 11sapple 11sapple 11s',NULL,NULL,900000,0.2000000000,1,1,'physical','2023-01-11 07:30:17','2023-01-11 07:30:17',NULL,NULL,NULL),(53,35,10,'ppppppppppppppppppppppppppppppppppppppp',0,'ppppppppppppppppppppppppppppppppppppppp','ppppppppppppp','ppppppppppppp','dsfsdf',NULL,NULL,66600,0.0080000000,3,1,'physical','2023-01-12 00:07:40','2023-01-12 00:07:40',NULL,NULL,NULL),(54,35,10,'tterwefdsfd',0,'tterwefdsfd','tterwefdsfd','tterwefdsfd','tterwefdsfdtterwefdsfdtterwefdsfd',NULL,NULL,554500,0.0010000000,1,1,'physical','2023-01-12 02:36:58','2023-01-12 02:36:58',NULL,NULL,NULL),(55,35,10,'javaaa1javaaa1',0,'javaaa1javaaa1','javaaa1','javaaa1','javaaa1javaaa1javaaa1',NULL,NULL,55500,0.0000000000,1,1,'physical','2023-01-21 00:50:49','2023-01-21 00:50:49',NULL,NULL,NULL),(56,35,10,'fgfdfew545',0,'fgfdfew545','fgfdfew545','fgfdfew545','sdsd',NULL,NULL,55500,0.0000000000,1,1,'physical','2023-01-21 00:51:48','2023-01-21 00:51:48',NULL,NULL,NULL),(57,35,10,'newww bookk',0,'newww-bookk','newww bookkdd','newww bookkdd','dfsf',NULL,NULL,575400,0.0000000000,1,1,'physical','2023-01-21 01:06:59','2023-01-21 01:06:59',NULL,NULL,NULL),(58,35,10,'iphoonee99',0,'iphoonee99','iphoonee99','iphoonee99','dfgd',NULL,NULL,888800,0.0000000000,1,1,'physical','2023-01-21 01:07:46','2023-01-21 01:07:46',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_reviews`
--

LOCK TABLES `rating_reviews` WRITE;
/*!40000 ALTER TABLE `rating_reviews` DISABLE KEYS */;
INSERT INTO `rating_reviews` VALUES (13,37,'App\\Models\\Product',6,'dsdsfsdf','ffdsf','dsfdfsds','5','approved',NULL,NULL,NULL,'2022-12-23 02:57:46','2022-12-23 02:57:46',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_gallery`
--

LOCK TABLES `review_gallery` WRITE;
/*!40000 ALTER TABLE `review_gallery` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellerprofiles`
--

LOCK TABLES `sellerprofiles` WRITE;
/*!40000 ALTER TABLE `sellerprofiles` DISABLE KEYS */;
INSERT INTO `sellerprofiles` VALUES (1,3,'approved','seller1','personal','GSTIN8599IN','PEN8566IN','SBI','554645645668745','Californa busness','Los angiles','New York','313001','www.google.com',1,'2022-12-10 02:20:15',NULL,'2022-12-10 06:36:21'),(10,35,'approved','seller test','personal','ggtddd566','gypet664b','tst','955545554','udaipur','udaipur','raj','313554',NULL,NULL,'2023-01-11 07:24:06',NULL,'2023-01-11 07:24:31');
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
INSERT INTO `settings` VALUES (1,'sitetitle','Site Title','Shopping Cart site.','gegocart','{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Site Title\" ,\"type\":\"text\"}',1,NULL,'2022-12-10 02:20:17','2022-12-10 02:20:17'),(2,'sitename','gegocart','Shopping Cart site.','gegocart','{\"name\":\"value\",\"label\":\"Value\", \"title\":\"gegocart\" ,\"type\":\"text\"}',1,NULL,'2022-12-10 02:20:17','2022-12-10 02:20:17'),(3,'sitelogo','Site Logo','Logo of the website. Recommended Size : 220px (w) x 45px (h)','images/gegocart-logo.png','{\"name\":\"value\",\"label\":\"Value\" ,\"type\":\"browse\"}',1,NULL,'2022-12-10 02:20:17','2022-12-10 02:20:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,42,58,'2022-12-23 01:44:57','2023-01-21 04:35:24',NULL),(2,54,59,'2022-12-23 01:44:57','2023-01-10 04:29:09',NULL),(3,10,60,'2022-12-23 01:44:57','2022-12-23 01:44:57',NULL),(4,31,61,'2022-12-23 01:44:57','2022-12-24 01:43:50',NULL),(5,24,62,'2022-12-23 01:44:58','2023-01-10 04:13:02',NULL),(6,41,63,'2022-12-23 01:53:35','2023-01-21 04:35:06',NULL),(7,52,64,'2022-12-23 01:53:35','2023-01-21 04:35:13',NULL),(8,69,65,'2022-12-23 01:53:35','2022-12-24 01:14:34',NULL),(9,74,66,'2022-12-23 01:55:53','2022-12-25 23:11:52',NULL),(10,33,67,'2022-12-24 02:29:02','2022-12-24 02:32:33','2022-12-24 02:32:33'),(11,6999,68,'2022-12-24 02:35:09','2022-12-25 23:12:02',NULL),(12,30,69,'2022-12-24 02:35:23','2023-01-10 05:12:15',NULL),(13,63,70,'2022-12-24 02:35:23','2022-12-25 23:12:25',NULL),(14,4,71,'2022-12-24 02:46:02','2023-01-10 04:12:58',NULL),(15,0,72,'2022-12-24 02:46:02','2022-12-24 02:53:41',NULL),(16,15,73,'2022-12-24 02:46:02','2022-12-24 02:53:21',NULL),(17,11,74,'2022-12-24 02:47:41','2022-12-24 02:52:58',NULL),(18,30,75,'2022-12-24 02:47:41','2022-12-24 02:47:41',NULL),(19,1,76,'2022-12-24 02:49:03','2023-01-10 04:13:08',NULL),(20,60,77,'2023-01-08 23:16:35','2023-01-08 23:16:35',NULL),(21,65,78,'2023-01-08 23:16:35','2023-01-08 23:16:35',NULL),(22,656,79,'2023-01-11 01:44:17','2023-01-11 01:44:17',NULL),(23,444,80,'2023-01-11 02:41:18','2023-01-11 02:41:18',NULL),(24,4553,81,'2023-01-11 02:52:39','2023-01-11 02:52:39',NULL),(25,200,82,'2023-01-11 07:30:39','2023-01-11 07:30:39',NULL),(26,50,83,'2023-01-11 07:30:39','2023-01-11 07:30:39',NULL),(27,66,84,'2023-01-12 00:07:49','2023-01-12 00:07:49',NULL),(28,444,85,'2023-01-12 02:37:04','2023-01-12 02:37:04',NULL),(29,999,86,'2023-01-21 00:50:55','2023-01-21 00:50:55',NULL),(30,20,87,'2023-01-21 00:51:51','2023-01-21 00:51:51',NULL),(31,555,88,'2023-01-21 01:07:05','2023-01-21 01:07:05',NULL),(32,888,89,'2023-01-21 01:07:55','2023-01-21 01:07:55',NULL),(33,85,90,'2023-01-21 01:07:55','2023-01-21 01:07:55',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (9,3,'Testing Store','testing-store',1,'Testing Store','Testing Store','uploads/storeimage/logo/3kMmmaHt5vEa6OAimNmDK0uOO1NZgl9ynNraVTtj.png','uploads/storeimage/ULtkCE7xG3zTrbgEDn1Ue0W2fiYkcCKk5yuVjW9v.jpg','Testing Store',NULL,'2022-12-23 01:19:02','2022-12-23 01:19:02'),(10,35,'Mystore All','ppppppppppppp',1,'ppppppppppppp','ppppppppppppppppppppppppppppppppppppppp','uploads/storeimage/logo/HKpJC2gR3PtwJxUbPXbeyx4U4v6XFG8tXruf5hfW.jpg','uploads/storeimage/1dQWEBvTeIDF5c3f47w1zN4lciqQjRCIvWWnkbQ8.jpg','ppppppppppppp',NULL,'2023-01-12 00:06:27','2023-01-21 00:35:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,7,6,'debit','pending','cod',33944.20,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-23','',NULL,10,'App\\Models\\OrderItem',-67888.40,-101832.60,'2022-12-23 02:17:04','2022-12-23 02:17:24',NULL),(2,8,6,'debit','pending','cod',51002.14,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,12,'App\\Models\\OrderItem',-51002.14,-102004.28,'2022-12-24 00:28:13','2022-12-24 00:28:26',NULL),(3,9,6,'debit','pending','cod',133266.00,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,14,'App\\Models\\OrderItem',-133266.00,-266532.00,'2022-12-24 01:01:41','2022-12-24 01:01:55',NULL),(4,10,6,'debit','pending','cod',1374.45,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,15,'App\\Models\\OrderItem',0.00,-1374.45,'2022-12-24 01:03:08','2022-12-24 01:03:08',NULL),(6,17,6,'debit','pending','cod',2748.90,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,20,'App\\Models\\OrderItem',0.00,-2748.90,'2022-12-24 01:10:30','2022-12-24 01:10:30',NULL),(7,18,6,'debit','pending','cod',4392.15,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,21,'App\\Models\\OrderItem',0.00,-4392.15,'2022-12-24 01:13:59','2022-12-24 01:13:59',NULL),(8,19,6,'debit','pending','cod',1008.45,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,22,'App\\Models\\OrderItem',0.00,-1008.45,'2022-12-24 01:14:34','2022-12-24 01:14:34',NULL),(9,20,6,'debit','pending','cod',1011.52,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,23,'App\\Models\\OrderItem',0.00,-1011.52,'2022-12-24 01:25:49','2022-12-24 01:25:49',NULL),(10,21,6,'debit','pending','cod',4392.15,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,24,'App\\Models\\OrderItem',0.00,-4392.15,'2022-12-24 01:36:43','2022-12-24 01:36:43',NULL),(11,22,31,'debit','pending','cod',5057.60,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,25,'App\\Models\\OrderItem',0.00,-5057.60,'2022-12-24 01:40:32','2022-12-24 01:40:32',NULL),(12,23,31,'debit','pending','cod',7845.97,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,27,'App\\Models\\OrderItem',-7845.97,-15691.94,'2022-12-24 01:43:37','2022-12-24 01:43:50',NULL),(13,24,31,'debit','pending','cod',10203.90,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,29,'App\\Models\\OrderItem',-10203.90,-20407.80,'2022-12-24 01:45:00','2022-12-24 01:45:12',NULL),(14,25,31,'debit','pending','cod',1011.52,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,30,'App\\Models\\OrderItem',0.00,-1011.52,'2022-12-24 01:47:17','2022-12-24 01:47:17',NULL),(15,26,6,'debit','pending','cod',105094.50,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,31,'App\\Models\\OrderItem',0.00,-105094.50,'2022-12-24 02:49:35','2022-12-24 02:49:35',NULL),(16,27,6,'debit','pending','cod',69714.75,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-24','',NULL,36,'App\\Models\\OrderItem',-278859.00,-348573.75,'2022-12-24 02:52:58','2022-12-24 02:53:41',NULL),(17,28,6,'debit','pending','cod',218156.77,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2022-12-26','',NULL,43,'App\\Models\\OrderItem',-1308940.62,-1527097.39,'2022-12-25 23:11:28','2022-12-25 23:12:38',NULL),(18,29,6,'credit',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,'2023-01-10 04:12:49','2023-01-10 04:12:49',NULL),(19,30,6,'credit',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,'2023-01-10 04:20:52','2023-01-10 04:20:52',NULL),(20,31,6,'credit',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,'2023-01-10 04:29:09','2023-01-10 04:29:09',NULL),(21,32,6,'debit','pending','cod',292096.35,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2023-01-10','',NULL,53,'App\\Models\\OrderItem',-292096.35,-584192.70,'2023-01-10 05:12:08','2023-01-10 05:12:15',NULL),(22,33,6,'debit','pending','cod',10574.55,'{\"type\":\"credit\",\"status\":\"pending\",\"action\":\"cod\",\"request\":null,\"response\":null,\"comment\":null}',NULL,'2023-01-21','',NULL,56,'App\\Models\\OrderItem',-21149.10,-31723.65,'2023-01-21 04:35:06','2023-01-21 04:35:24',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@shoptown.com',NULL,NULL,'$2y$10$KqCdPbx.Z8bT0KRmPoHPTOeVlkR6KhGz1ZTK5OcZZi4hnCBsCwkUm',1,1,NULL,'bcfde95e532bb3bccbf3d44618d691f6412ab30d',0,NULL,NULL,'2022-12-10 02:20:15','2023-01-12 03:13:35',NULL,NULL,NULL),(2,'subadmin','subadmin@gegocart.com',NULL,NULL,'$2y$10$BmPBT8VarRsHam4zANP6belu4zbp1HKwIoMl/A4qmN6AnGRVkSDy6',1,2,NULL,NULL,0,NULL,NULL,'2022-12-10 02:20:15','2022-12-10 02:20:15',NULL,NULL,NULL),(3,'seller1','seller1@shoptown.com','2022-12-12 04:14:49','9876543210','$2y$10$X5sWgO0iNV1brdZnAjJetet4XvJMD4P.L.hlDwuHm/EOtNGpjKyfO',1,3,'profile/seller11670661476.png','65535049b0b1ee9ab80afcd9e11f2a3d722b9075',1,NULL,NULL,'2022-12-10 02:20:15','2022-12-27 04:19:58',NULL,NULL,1),(6,'buyer1','buyer1@shoptown.com',NULL,'999999999','$2y$10$kNZbZ5D8L7JV03Lwk/jIy.9ACyc4D02YLp5Fdqvg8uFZMrgZMXh2W',1,4,'profile/buyer11671435594.jpeg','8290e47a0c08637d90b8e007e213617c601fac3a',1,NULL,NULL,'2022-12-10 02:20:15','2023-01-08 23:46:11',NULL,NULL,NULL),(31,'Ranjeet Buyer','ranjeet@buyer.com',NULL,'545648874545','$2y$10$.E98ilpi8SHDPP78DhOr2.7mOwl6WKMvIBoTKyrO4YVtDJKiI3jmO',1,4,NULL,'1f0e4c8d0baf49c6040827174cc761824fb3d956',1,NULL,NULL,'2022-12-24 01:38:44','2022-12-24 01:39:13',NULL,NULL,0),(32,'Ranjeet Singh','ranjeet@shop.com','2022-12-27 06:18:33','7454564588','$2y$10$yBmaebc2zBs2LgWatw.vcuRqtPtA8wzXQ8hvHzLvsElYNuvfopi/m',1,3,NULL,'605b5253042285b72f716cb2fa5c1c4b73a634b3',1,NULL,NULL,'2022-12-27 06:17:37','2022-12-27 06:18:47',NULL,NULL,0),(33,'cidiwev856','cidiwev856@octovie.com','2022-12-27 07:27:29','545464546545','$2y$10$8GrFtG19dyWKbbw1yOUXLe4gLBYC6lOQgiTjRM3SciE70.m9hOnWO',1,3,NULL,'966eafffec8e1e5a09611e53ef911048d9a146c4',1,NULL,NULL,'2022-12-27 07:10:58','2022-12-27 07:27:57',NULL,NULL,0),(34,'buyer test','sicewo4335@tohup.com',NULL,'45458788465465','$2y$10$9YlNYITj7RLpdgaiiR5X.ufVeRy4WYH1M8D9WW3N/W3zS8um/jGSi',1,4,NULL,'eb9a7064809fdabe0f4a717d22362e79f8860fcb',1,NULL,NULL,'2023-01-09 06:35:55','2023-01-09 06:36:15',NULL,NULL,0),(35,'test','kidana2638@themesw.com','2023-01-11 07:23:10','55455554','$2y$10$LQhdIq0ppOwlowXB644VeOZe02IuEcfvWMoPx4pZ.32tEr.9k1FvC',1,3,NULL,'aedddb5e767d880622199586bf3c240b85790898',1,NULL,NULL,'2023-01-11 07:22:51','2023-01-11 07:24:06',NULL,NULL,1);
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

-- Dump completed on 2023-01-21 18:21:08
