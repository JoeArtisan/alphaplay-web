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
  `uuid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fates`
--

LOCK TABLES `fates` WRITE;
/*!40000 ALTER TABLE `fates` DISABLE KEYS */;
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
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
  `tokenable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
  `id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
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
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci,
  `role` int NOT NULL,
  `status` int NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,500000000,'Administrador','admin@alphaplay.com',NULL,'$2y$10$SO97x2ZRolwnpOTpSwY.A.OIZaUTi2woWtaTzl5.KWPiTFpbhl9my',NULL,NULL,1,1,NULL,NULL,NULL,'2021-11-06 03:33:35','2021-11-06 03:33:35'),(2,640706523,'Mr. Demarco Labadie','jovanny95@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'0UvbN3yPdv',NULL,NULL,'2021-11-06 03:33:35','2021-11-06 03:33:35'),(3,193115210,'Helmer Lebsack II','iwunsch@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'yU6hb44D6g',NULL,NULL,'2021-11-06 03:33:35','2021-11-06 03:33:35'),(4,456976106,'Prof. Giovani Runolfsdottir DDS','orland63@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'OwDUxkMRtY',NULL,NULL,'2021-11-06 03:33:35','2021-11-06 03:33:35'),(5,406598988,'Prof. Floy Barton','qjohnson@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'s0Iar2nDOO',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(6,686881425,'Destiny Hermiston','luciano.spencer@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'iAICATD8ch',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(7,181960085,'Vivienne Auer','ondricka.melyna@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'2Fb152LVAq',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(8,775667914,'Prof. Rick Dickinson','malinda29@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'J1w2PBQ4DE',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(9,620923043,'Mr. Jillian King','grady88@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'Pa31xWZ89N',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(10,134040029,'Meaghan Lebsack','jayde31@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'YoGgMc9ZPw',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(11,412161258,'Tanner Hansen','cruickshank.orville@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'ZBlP27FCbY',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(12,637956302,'Prof. Peggie Krajcik','bwalter@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'g6r8zjyzKp',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(13,309684415,'Miss Hermina Langosh','schneider.russ@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'rzFAiXGmHE',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(14,662733451,'Kian Dietrich','cyril.kreiger@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'EdIEKd4kXK',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(15,272716138,'Willy Sanford','aromaguera@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'eAbogigB68',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(16,491699200,'Alisa Mueller','murphy.chandler@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'dRaQwxSdfG',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(17,534634437,'Abbie Grimes','mercedes.lynch@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'Eq4YNIZ62x',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(18,148519435,'Phyllis Torp','jacobson.juliana@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'cdXussdzK8',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(19,259334712,'Kane Ward','feest.cleta@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'wW2k0jssUp',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(20,245267333,'Lenora McClure','elsa.lesch@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'e89w1jhniQ',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(21,701007837,'Uriah Batz','jettie.kuhic@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'IIOqpRUZ8B',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(22,625973810,'Henriette Stiedemann I','helen.feil@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'nV1etLerlW',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(23,486155631,'Mr. Julius Terry','torphy.zoey@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'PSmGEV7UCo',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(24,584037754,'Dr. Arvid Torphy MD','charlotte.kessler@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'JeQVrCvvoJ',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(25,683477808,'Mr. Jedediah Ankunding','bode.rossie@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'XFrXPitUcx',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(26,147915689,'Chaim Smitham','toberbrunner@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'SMCLXNEYRv',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(27,680806634,'Junior Armstrong','hermann.dulce@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'pbvJ2qo9hP',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(28,380684191,'Joanne Kuvalis','kurtis.funk@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'wWs3G29w4X',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(29,670950162,'Braeden Buckridge MD','olaf.kutch@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'d5zWniD4h9',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(30,702721398,'Lonzo Block','gcartwright@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'GfvD5q3mea',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(31,682685511,'Ford Grady','schaden.elyssa@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'aC3LItHSv9',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(32,127706160,'Mr. Delaney Hills','laurel40@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'m6a6ymdu0Y',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(33,549720150,'Dr. Maximilian Hayes Sr.','stanford64@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'glnd7fAcpp',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(34,255431095,'Unique Connelly','rogelio50@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'S5rjZNYGhU',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(35,332018504,'Angelo Stoltenberg II','valentina.marvin@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'qe9gOIuDe0',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(36,554037730,'Karli Wintheiser','violet26@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'iVraIKgrTX',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(37,425800745,'Melany Fay','stiedemann.lavon@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'sgtKv0RIAD',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(38,762443842,'Robin Fadel PhD','valentin36@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'oAxZD4ejo9',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(39,153091676,'Sydnee Hauck','jay.kunde@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'aWy1oYV9O5',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(40,431883046,'Cristian Cummerata','dnolan@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'J2BMBIhi4L',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(41,104692795,'Nat Durgan','kacie11@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'CdMKtqBWKz',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(42,167063010,'Prof. Mitchel Morissette Sr.','flowe@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'zYbffJXMZM',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(43,408469907,'Marcia Farrell','paufderhar@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'EZiKEQIpPj',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(44,162068456,'Prof. Penelope Kuhlman V','tomasa.mcdermott@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'QxeOJGdfqy',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(45,437861233,'Claudie Ankunding','braeden.erdman@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'kpwX80iCYe',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(46,309075814,'Nash Borer I','nader.grayce@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'MQAbbr7bgh',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(47,367132513,'Marco Yundt I','jaylan.thompson@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'jE9s8evz6l',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(48,623508184,'Saul Oberbrunner','reynolds.reese@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'tTcD4a6i28',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(49,434262799,'Nasir Jakubowski','jbechtelar@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'gRQ7r22xXF',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(50,480180289,'Garret Powlowski','emmerich.dorcas@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'FClA0d18vp',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(51,499591403,'Emely Heathcote','torp.horace@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'kr29ezCUnN',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(52,629797580,'Prof. Salvatore Halvorson IV','ffeeney@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'B9qqJhOXeo',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(53,245186215,'Harley Jacobi','nova.kshlerin@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'NnBRyUYTVY',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(54,116083686,'Salma Rau','treva.parisian@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'7KLgcCTnCL',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(55,429109943,'Eusebio McKenzie MD','april.miller@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'zit1HRugYj',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(56,551576654,'Heather Schowalter','dena43@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'iLF2SkEdsp',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(57,761226550,'Modesta Sanford V','carlo.terry@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'n7fHcMfIGS',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(58,280492535,'Felix Sauer','will.langosh@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'PFQEPnaiu4',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(59,607168887,'Prof. Humberto Kassulke IV','ikirlin@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'P8Z0BVwOv0',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(60,696040069,'Grady Sipes','llewellyn.runolfsdottir@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'dS6atL2e8W',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(61,542146201,'Savanna Harris','domenica04@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'8t2v7DsADv',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(62,489028432,'Weldon Miller I','walker.christop@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'rjRg634RkS',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(63,788354327,'Karson Nicolas','marvin.hartmann@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'K5eSBMVXWg',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(64,596657800,'Edgar Reichel','weimann.jeanne@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'sfOTEM2lWS',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(65,704326374,'Karlie Zboncak','harvey.braeden@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'jFBaZQx1bP',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(66,777428625,'Kailey Brekke','marina71@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'C1Kp8DTXCK',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(67,685406698,'Royce Keebler','koelpin.rodger@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'u2WVm3KpGJ',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(68,704151325,'Emma Bednar','edare@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'NoaYqAMqk3',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(69,793636761,'Josephine Bernier','hodkiewicz.mercedes@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'Rt5WJ3D1Xc',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(70,246540151,'Mrs. Antonina Cormier PhD','hayes.mac@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'mqdZ9FYdFP',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(71,624870819,'Ms. Lisa Runolfsdottir IV','jed.lowe@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'B85sNFMy2n',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(72,181229137,'Mrs. Mertie Harber DDS','hester.reynolds@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'PJyShc0Rdk',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(73,778569477,'Devon Sanford','aorn@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'I17ZvYvBRa',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(74,766133962,'Dameon Corwin','william.thompson@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'vI7yppV7BW',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(75,415904092,'Prof. Sherwood Green Sr.','yesenia.mckenzie@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'BdJZDcdtOg',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(76,405066390,'Geovanni Grimes MD','jimmie.watsica@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'XTqkgwv78Y',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(77,111715775,'Mr. Jesse Kiehn','wnitzsche@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'rvVBGcl9Zm',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(78,467801251,'Dr. Terence Vandervort','runolfsdottir.favian@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'FcQq1Rp9bC',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(79,357628784,'Sherman Price','ayla.halvorson@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'hjEkouasxY',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(80,166471839,'Emanuel Graham','mhowe@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'cahq7kY5tm',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(81,783300440,'Spencer Runolfsdottir','ferry.stacey@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'zFHnMuCQHw',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(82,156325178,'Mrs. Madalyn Jakubowski','nola30@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'6V8tSEKdll',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(83,445975449,'Jan Bode','bartell.conor@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'H0BU6dqHL4',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(84,187130397,'Markus Funk','carlotta03@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'ikqyrEavkl',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(85,357611547,'Dr. Kaylie Pfeffer MD','dickinson.tara@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'PWsIdYBUs9',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(86,560988855,'Millie Kuhic PhD','laney92@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'b2aS5631EQ',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(87,544174389,'Kory Boehm','ylehner@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'GNyZAoLRpe',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(88,766654687,'Hallie Hudson','mayert.katheryn@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'bZQ9ZzV2yH',NULL,NULL,'2021-11-06 03:33:36','2021-11-06 03:33:36'),(89,737727621,'Dr. Evan Wunsch III','theodora.bayer@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'hTr9Tv7UcZ',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(90,515529740,'Constantin Feeney','dillan.murazik@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'texRWmQfAO',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(91,741819018,'Carter Waelchi Sr.','bosco.carter@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'RZd04Jju2u',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(92,285524568,'Obie Emmerich','ethan.harvey@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'MzplJJ0xc2',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(93,324182387,'Dr. Fred Weissnat IV','nolan25@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'7L3zr9RGje',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(94,249928690,'Miss Aletha Buckridge DDS','brandy.hegmann@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'AKSbux3OdT',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(95,475506968,'Westley Blanda','bcummings@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'UDGIK9DgSz',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(96,300469808,'Cale Gaylord','eusebio51@example.net','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'lIo0cM36Se',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(97,723802386,'Jacinthe Price','gmcdermott@example.org','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'4KMVFkVTvl',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(98,509369575,'Anika Kuhlman','vonrueden.monroe@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'HEbzPFpIgT',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(99,457840691,'Colin Huel','xrunte@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'IXnku4SbRN',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(100,366364291,'Shyanne Bradtke','wiza.annabelle@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'QDzjkWfgFB',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37'),(101,628258803,'Miss Kacie Jacobi','alessia.leannon@example.com','2021-11-06 03:33:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,0,1,'vYrjZPvADY',NULL,NULL,'2021-11-06 03:33:37','2021-11-06 03:33:37');
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

-- Dump completed on 2021-11-05 15:54:39
