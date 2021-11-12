-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: db_alphaplay
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `fates`
--

DROP TABLE IF EXISTS `fates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fate_id` int NOT NULL,
  `role` int NOT NULL,
  `award` int NOT NULL,
  `serie` int DEFAULT '0',
  `release` date NOT NULL,
  `validity` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fates`
--

LOCK TABLES `fates` WRITE;
/*!40000 ALTER TABLE `fates` DISABLE KEYS */;
INSERT INTO `fates` VALUES (1,4213,1,58,240,'1996-05-07','1996-07-06'),(2,4214,1,31,697,'1996-05-10','1996-07-09'),(3,4215,1,70,860,'1996-05-14','1996-07-13'),(4,4216,1,93,513,'1996-05-17','1996-07-16'),(5,4217,1,61,761,'1996-05-21','1996-07-20'),(6,4218,1,91,479,'1996-05-24','1996-07-23'),(7,4219,1,70,215,'1996-05-28','1996-07-27'),(8,4220,1,47,780,'1996-05-31','1996-07-30'),(9,4221,1,11,469,'1996-06-04','1996-08-03'),(10,4222,1,57,226,'1996-06-07','1996-08-06'),(11,4223,1,56,493,'1996-06-11','1996-08-10'),(12,4224,1,87,779,'1996-06-14','1996-08-13'),(13,4225,1,69,200,'1996-06-18','1996-08-17'),(14,4226,1,21,760,'1996-06-21','1996-08-20'),(15,4227,1,51,771,'1996-06-25','1996-08-24'),(16,4228,1,98,865,'1996-06-28','1996-08-27'),(17,4229,1,25,249,'1996-07-02','1996-08-31'),(18,4230,1,12,236,'1996-07-05','1996-09-03'),(19,4231,1,66,226,'1996-07-09','1996-09-07'),(20,4232,1,0,206,'1996-07-12','1996-09-10'),(21,4233,1,41,206,'1996-07-16','1996-09-14'),(22,4234,1,36,718,'1996-07-19','1996-09-17'),(23,4235,1,73,535,'1996-07-23','1996-09-21'),(24,4236,1,24,854,'1996-07-26','1996-09-24'),(25,4237,1,26,635,'1996-07-30','1996-09-28'),(26,4238,1,62,436,'1996-08-02','1996-10-01'),(27,4239,1,33,516,'1996-08-06','1996-10-05'),(28,4240,1,77,597,'1996-08-09','1996-10-08'),(29,4241,1,99,527,'1996-08-13','1996-10-12'),(30,4242,1,93,237,'1996-08-16','1996-10-15'),(31,4243,1,71,630,'1996-08-20','1996-10-19'),(32,4244,1,65,397,'1996-08-23','1996-10-22'),(33,4245,1,59,307,'1996-08-27','1996-10-26'),(34,4246,1,78,297,'1996-08-30','1996-10-29'),(35,4247,1,36,696,'1996-09-03','1996-11-02'),(36,4248,1,37,790,'1996-09-06','1996-11-05'),(37,4249,1,60,621,'1996-09-10','1996-11-09'),(38,4250,1,57,790,'1996-09-13','1996-11-12'),(39,4251,1,98,371,'1996-09-17','1996-11-16'),(40,4252,1,88,684,'1996-09-20','1996-11-19'),(41,4253,1,52,447,'1996-09-24','1996-11-23'),(42,4254,1,80,726,'1996-09-27','1996-11-26'),(43,4255,1,10,757,'1996-10-01','1996-11-30'),(44,4256,1,46,249,'1996-10-04','1996-12-03'),(45,4257,1,39,494,'1996-10-08','1996-12-07'),(46,4258,1,95,494,'1996-10-11','1996-12-10'),(47,4259,1,34,324,'1996-10-15','1996-12-14'),(48,4260,1,10,775,'1996-10-18','1996-12-17'),(49,4261,1,88,701,'1996-10-22','1996-12-21'),(50,4262,1,48,757,'1996-10-25','1996-12-24'),(51,4263,1,41,789,'1996-10-29','1996-12-28'),(52,4264,1,27,821,'1996-11-01','1996-12-31'),(53,4265,1,26,596,'1996-11-05','1997-01-04'),(54,4266,1,84,491,'1996-11-08','1997-01-07'),(55,4267,1,52,299,'1996-11-12','1997-01-11'),(56,4268,1,60,264,'1996-11-15','1997-01-14'),(57,4269,1,84,406,'1996-11-19','1997-01-18'),(58,4270,1,98,235,'1996-11-22','1997-01-21'),(59,4271,1,33,308,'1996-11-26','1997-01-25'),(60,4272,1,25,287,'1996-11-29','1997-01-28'),(61,4273,1,80,405,'1996-12-03','1997-02-01'),(62,4274,1,95,767,'1996-12-06','1997-02-04'),(63,4275,1,55,526,'1996-12-17','1997-02-15'),(64,4276,1,92,442,'1997-01-03','1997-03-04'),(65,4277,1,4,518,'1997-01-07','1997-03-08'),(66,4278,1,95,740,'1997-01-10','1997-03-11'),(67,4279,1,10,757,'1997-01-14','1997-03-15'),(68,4280,1,41,613,'1997-01-17','1997-03-18'),(69,4281,1,35,777,'1997-01-21','1997-03-22'),(70,4282,1,48,217,'1997-01-24','1997-03-25'),(71,4283,1,68,334,'1997-01-28','1997-03-29'),(72,4284,1,89,378,'1997-01-31','1997-04-01'),(73,4285,1,65,668,'1997-02-04','1997-04-05'),(74,4286,1,13,305,'1997-02-07','1997-04-08'),(75,4287,1,95,606,'1997-02-11','1997-04-12'),(76,4288,1,18,714,'1997-02-14','1997-04-15'),(77,4289,1,91,773,'1997-02-18','1997-04-19'),(78,4290,1,35,370,'1997-02-21','1997-04-22'),(79,4291,1,61,438,'1997-02-25','1997-04-26'),(80,4292,1,49,775,'1997-02-28','1997-04-29'),(81,4293,1,89,860,'1997-03-04','1997-05-03'),(82,4294,1,78,801,'1997-03-07','1997-05-06'),(83,4295,1,51,505,'1997-03-11','1997-05-10'),(84,4296,1,98,745,'1997-03-14','1997-05-13'),(85,4297,1,82,413,'1997-03-18','1997-05-17'),(86,4298,1,92,527,'1997-03-21','1997-05-20'),(87,4299,1,40,705,'1997-03-25','1997-05-24'),(88,4300,1,72,836,'1997-04-01','1997-05-31'),(89,4301,1,7,437,'1997-04-04','1997-06-03'),(90,4302,1,14,251,'1997-04-08','1997-06-07'),(91,4303,1,87,750,'1997-04-11','1997-06-10'),(92,4304,1,16,388,'1997-04-15','1997-06-14'),(93,4305,1,31,798,'1997-04-18','1997-06-17'),(94,4306,1,9,657,'1997-04-22','1997-06-21'),(95,4307,1,91,725,'1997-04-25','1997-06-24'),(96,4308,1,71,491,'1997-04-29','1997-06-28'),(97,4309,1,16,474,'1997-05-02','1997-07-01'),(98,4310,1,21,346,'1997-05-06','1997-07-05'),(99,4311,1,11,482,'1997-05-09','1997-07-08'),(100,4312,1,57,821,'1997-05-13','1997-07-12'),(101,4313,1,78,228,'1997-05-16','1997-07-15'),(102,4314,1,73,755,'1997-05-20','1997-07-19'),(103,4315,1,36,720,'1997-05-23','1997-07-22'),(104,4316,1,83,662,'1997-05-27','1997-07-26'),(105,4317,1,15,352,'1997-05-30','1997-07-29'),(106,4318,1,92,641,'1997-06-03','1997-08-02'),(107,4319,1,82,208,'1997-06-06','1997-08-05'),(108,4320,1,4,397,'1997-06-10','1997-08-09'),(109,4321,1,99,565,'1997-06-13','1997-08-12'),(110,4322,1,46,687,'1997-06-17','1997-08-16'),(111,4323,1,92,779,'1997-06-20','1997-08-19'),(112,4324,1,75,541,'1997-06-24','1997-08-23'),(113,4325,1,49,270,'1997-06-27','1997-08-26'),(114,4326,1,1,682,'1997-07-01','1997-08-30'),(115,4327,1,43,646,'1997-07-04','1997-09-02'),(116,4328,1,22,378,'1997-07-08','1997-09-06'),(117,4329,1,50,548,'1997-07-11','1997-09-09'),(118,4330,1,61,398,'1997-07-15','1997-09-13'),(119,4331,1,82,622,'1997-07-18','1997-09-16'),(120,4332,1,9,510,'1997-07-22','1997-09-20'),(121,4333,1,34,342,'1997-07-25','1997-09-23'),(122,4334,1,58,632,'1997-07-29','1997-09-27'),(123,4335,1,22,563,'1997-08-01','1997-09-30'),(124,4336,1,4,553,'1997-08-05','1997-10-04'),(125,4337,1,44,829,'1997-08-08','1997-10-07'),(126,4338,1,26,239,'1997-08-12','1997-10-11'),(127,4339,1,64,758,'1997-08-14','1997-10-13'),(128,4340,1,43,704,'1997-08-19','1997-10-18'),(129,4341,1,2,630,'1997-08-22','1997-10-21'),(130,4342,1,60,614,'1997-08-26','1997-10-25'),(131,4343,1,76,319,'1997-08-29','1997-10-28'),(132,4344,1,69,740,'1997-09-02','1997-11-01'),(133,4345,1,92,394,'1997-09-05','1997-11-04'),(134,4346,1,96,643,'1997-09-09','1997-11-08'),(135,4347,1,11,507,'1997-09-12','1997-11-11'),(136,4348,1,18,600,'1997-09-17','1997-11-16'),(137,4349,1,70,801,'1997-09-19','1997-11-18'),(138,4350,1,96,805,'1997-09-23','1997-11-22'),(139,4351,1,60,284,'1997-09-26','1997-11-25'),(140,4352,1,36,276,'1997-09-30','1997-11-29'),(141,4353,1,97,772,'1997-10-03','1997-12-02'),(142,4354,1,97,368,'1997-10-07','1997-12-06'),(143,4355,1,34,764,'1997-10-10','1997-12-09'),(144,4356,1,41,806,'1997-10-14','1997-12-13'),(145,4357,1,40,496,'1997-10-17','1997-12-16'),(146,4358,1,80,503,'1997-10-21','1997-12-20'),(147,4359,1,12,596,'1997-10-24','1997-12-23'),(148,4360,1,41,759,'1997-10-28','1997-12-27'),(149,4361,1,67,681,'1997-10-31','1997-12-30'),(150,4362,1,87,524,'1997-11-04','1998-01-03'),(151,4363,1,95,473,'1997-11-07','1998-01-06'),(152,4364,1,21,499,'1997-11-11','1998-01-10'),(153,4365,1,9,562,'1997-11-14','1998-01-13'),(154,4366,1,81,575,'1997-11-18','1998-01-17'),(155,4367,1,97,721,'1997-11-21','1998-01-20'),(156,4368,1,85,503,'1997-11-25','1998-01-24'),(157,4369,1,28,228,'1997-11-28','1998-01-27'),(158,4370,1,21,204,'1997-12-02','1998-01-31'),(159,4371,1,91,548,'1997-12-05','1998-02-03'),(160,4372,1,2,469,'1997-12-16','1998-02-14'),(161,4373,1,14,235,'1997-12-19','1998-02-17'),(162,4374,1,94,448,'1998-01-06','1998-03-07'),(163,4375,1,54,787,'1998-01-09','1998-03-10'),(164,4376,1,14,770,'1998-01-13','1998-03-14'),(165,4377,1,89,480,'1998-01-16','1998-03-17'),(166,4378,1,99,633,'1998-01-20','1998-03-21'),(167,4379,1,60,544,'1998-01-23','1998-03-24'),(168,4380,1,61,511,'1998-01-27','1998-03-28'),(169,4381,1,74,463,'1998-01-30','1998-03-31'),(170,4382,1,65,341,'1998-02-03','1998-04-04'),(171,4384,1,96,316,'1998-02-10','1998-04-11'),(172,4385,1,4,610,'1998-02-13','1998-04-14'),(173,4386,1,63,460,'1998-02-17','1998-04-18'),(174,4387,1,92,431,'1998-02-20','1998-04-21'),(175,4388,1,97,659,'1998-02-24','1998-04-25'),(176,4389,1,57,246,'1998-02-27','1998-04-28'),(177,4390,1,80,417,'1998-03-03','1998-05-02'),(178,4391,1,91,385,'1998-03-06','1998-05-05'),(179,4392,1,43,604,'1998-03-10','1998-05-09'),(180,4393,1,82,750,'1998-03-13','1998-05-12'),(181,4394,1,96,834,'1998-03-17','1998-05-16'),(182,4395,1,99,814,'1998-03-20','1998-05-19'),(183,4396,1,5,743,'1998-03-24','1998-05-23'),(184,4397,1,45,323,'1998-03-27','1998-05-26'),(185,4398,1,38,303,'1998-03-31','1998-05-30'),(186,4399,1,73,822,'1998-04-03','1998-06-02'),(187,4400,1,9,458,'1998-04-07','1998-06-06');
/*!40000 ALTER TABLE `fates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2021_09_29_194025_create_sessions_table',1),(7,'2021_10_08_192414_create_fates_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('hK1qeLRjF1Oskjs523sm9bZYxaWHxbLjcwO8wdHv',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 OPR/81.0.4196.31','YTo0OntzOjY6Il90b2tlbiI7czo0MDoidTZOeUt4T2pKbHk3SzN1czdzcWUxcGZTakdadzhoTW54dlNnckZUZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sb2NhbGhvc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1636140394);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cr_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `role` int NOT NULL,
  `status` int NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,500000000,'Administrador','admin@alphaplay.com',NULL,'$2y$10$SO97x2ZRolwnpOTpSwY.A.OIZaUTi2woWtaTzl5.KWPiTFpbhl9my',NULL,NULL,1,1,NULL,NULL,NULL,'2021-11-06 03:33:35','2021-11-06 03:33:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-05 13:26:51
