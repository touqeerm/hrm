-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: hrm
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `account_lists`
--

DROP TABLE IF EXISTS `account_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double NOT NULL DEFAULT 0,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_lists`
--

LOCK TABLES `account_lists` WRITE;
/*!40000 ALTER TABLE `account_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_payment_settings`
--

DROP TABLE IF EXISTS `admin_payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_payment_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_payment_settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_payment_settings`
--

LOCK TABLES `admin_payment_settings` WRITE;
/*!40000 ALTER TABLE `admin_payment_settings` DISABLE KEYS */;
INSERT INTO `admin_payment_settings` VALUES (1,'is_stripe_enabled','on',1,NULL,NULL),(2,'stripe_secret','sdgsdg',1,NULL,NULL),(3,'stripe_key','setwet34',1,NULL,NULL),(4,'is_paypal_enabled','off',1,NULL,NULL),(5,'is_paystack_enabled','off',1,NULL,NULL),(6,'is_flutterwave_enabled','off',1,NULL,NULL),(7,'is_razorpay_enabled','off',1,NULL,NULL),(8,'is_mercado_enabled','off',1,NULL,NULL),(9,'is_paytm_enabled','off',1,NULL,NULL),(10,'is_mollie_enabled','off',1,NULL,NULL),(11,'is_skrill_enabled','off',1,NULL,NULL),(12,'is_coingate_enabled','off',1,NULL,NULL),(13,'is_paymentwall_enabled','off',1,NULL,NULL);
/*!40000 ALTER TABLE `admin_payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allowance_options`
--

DROP TABLE IF EXISTS `allowance_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allowance_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowance_options`
--

LOCK TABLES `allowance_options` WRITE;
/*!40000 ALTER TABLE `allowance_options` DISABLE KEYS */;
INSERT INTO `allowance_options` VALUES (1,'Mobile Bill',4,'2022-09-16 08:55:48','2022-09-16 08:55:48'),(2,'Fuel Allowance',4,'2022-09-16 08:55:59','2022-09-16 08:55:59'),(3,'Overseas Travel',4,'2022-09-16 08:56:14','2022-09-16 08:56:14'),(4,'Broadband Bill',4,'2022-09-16 08:58:58','2022-09-16 08:58:58');
/*!40000 ALTER TABLE `allowance_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allowances`
--

DROP TABLE IF EXISTS `allowances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allowances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `allowance_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowances`
--

LOCK TABLES `allowances` WRITE;
/*!40000 ALTER TABLE `allowances` DISABLE KEYS */;
INSERT INTO `allowances` VALUES (1,2,4,'Bill',2500,'fixed',4,'2022-10-22 18:02:17','2022-10-22 18:02:17');
/*!40000 ALTER TABLE `allowances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_employees`
--

DROP TABLE IF EXISTS `announcement_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `announcement_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_employees`
--

LOCK TABLES `announcement_employees` WRITE;
/*!40000 ALTER TABLE `announcement_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appraisals`
--

DROP TABLE IF EXISTS `appraisals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appraisals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL DEFAULT 0,
  `employee` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appraisal_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT 0,
  `marketing` int(11) NOT NULL DEFAULT 0,
  `administration` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `integrity` int(11) NOT NULL DEFAULT 0,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appraisals`
--

LOCK TABLES `appraisals` WRITE;
/*!40000 ALTER TABLE `appraisals` DISABLE KEYS */;
/*!40000 ALTER TABLE `appraisals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_employees`
--

DROP TABLE IF EXISTS `attendance_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  `late` time NOT NULL,
  `early_leaving` time NOT NULL,
  `overtime` time NOT NULL,
  `total_rest` time NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_employees`
--

LOCK TABLES `attendance_employees` WRITE;
/*!40000 ALTER TABLE `attendance_employees` DISABLE KEYS */;
INSERT INTO `attendance_employees` VALUES (1,1,'2022-09-20','Present','17:59:31','17:59:41','08:59:31','00:00:19','00:00:00','00:00:00',8,'2022-09-20 12:29:31','2022-09-20 12:29:41'),(2,1,'2022-10-04','Present','09:00:00','18:00:00','00:00:00','00:00:00','00:00:00','00:00:00',4,'2022-10-04 04:00:08','2022-10-04 04:00:08');
/*!40000 ALTER TABLE `attendance_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award_types`
--

DROP TABLE IF EXISTS `award_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award_types`
--

LOCK TABLES `award_types` WRITE;
/*!40000 ALTER TABLE `award_types` DISABLE KEYS */;
INSERT INTO `award_types` VALUES (1,'Rockstar Award',4,'2022-09-16 09:03:25','2022-09-16 09:03:25'),(2,'Power Award',4,'2022-09-16 09:03:42','2022-09-16 09:03:42'),(3,'Ace Award',4,'2022-09-16 09:03:56','2022-09-16 09:03:56');
/*!40000 ALTER TABLE `award_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `award_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'AMR Tech Park Bangalore',4,'2022-09-16 08:47:30','2022-09-16 08:47:30'),(2,'Electronic City Bangalore',4,'2022-09-16 08:47:52','2022-09-16 08:47:52');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_favorites`
--

DROP TABLE IF EXISTS `ch_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_favorites`
--

LOCK TABLES `ch_favorites` WRITE;
/*!40000 ALTER TABLE `ch_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_messages`
--

DROP TABLE IF EXISTS `ch_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_messages`
--

LOCK TABLES `ch_messages` WRITE;
/*!40000 ALTER TABLE `ch_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commissions`
--

DROP TABLE IF EXISTS `commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commissions`
--

LOCK TABLES `commissions` WRITE;
/*!40000 ALTER TABLE `commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_documents`
--

DROP TABLE IF EXISTS `company_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_documents`
--

LOCK TABLES `company_documents` WRITE;
/*!40000 ALTER TABLE `company_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_policies`
--

DROP TABLE IF EXISTS `company_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_policies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_policies`
--

LOCK TABLES `company_policies` WRITE;
/*!40000 ALTER TABLE `company_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competencies`
--

DROP TABLE IF EXISTS `competencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competencies`
--

LOCK TABLES `competencies` WRITE;
/*!40000 ALTER TABLE `competencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `complaint_from` int(11) NOT NULL,
  `complaint_against` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_attechments`
--

DROP TABLE IF EXISTS `contract_attechments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_attechments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` bigint(20) unsigned NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_attechments`
--

LOCK TABLES `contract_attechments` WRITE;
/*!40000 ALTER TABLE `contract_attechments` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_attechments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_comments`
--

DROP TABLE IF EXISTS `contract_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` bigint(20) unsigned NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_comments`
--

LOCK TABLES `contract_comments` WRITE;
/*!40000 ALTER TABLE `contract_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_notes`
--

DROP TABLE IF EXISTS `contract_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_notes`
--

LOCK TABLES `contract_notes` WRITE;
/*!40000 ALTER TABLE `contract_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_types`
--

DROP TABLE IF EXISTS `contract_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_types`
--

LOCK TABLES `contract_types` WRITE;
/*!40000 ALTER TABLE `contract_types` DISABLE KEYS */;
INSERT INTO `contract_types` VALUES (1,'First Party',4,'2022-09-16 09:11:03','2022-09-16 09:11:03'),(2,'Second Party',4,'2022-09-16 09:11:22','2022-09-16 09:11:22'),(3,'Third Party',4,'2022-09-16 09:11:34','2022-09-16 09:11:34');
/*!40000 ALTER TABLE `contract_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_name` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_signature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_signature` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `limit` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_questions`
--

DROP TABLE IF EXISTS `custom_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_questions`
--

LOCK TABLES `custom_questions` WRITE;
/*!40000 ALTER TABLE `custom_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deduction_options`
--

DROP TABLE IF EXISTS `deduction_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deduction_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduction_options`
--

LOCK TABLES `deduction_options` WRITE;
/*!40000 ALTER TABLE `deduction_options` DISABLE KEYS */;
INSERT INTO `deduction_options` VALUES (1,'Medical Insurance',4,'2022-09-16 09:00:17','2022-09-16 09:00:17'),(2,'Income Tax',4,'2022-09-16 09:00:35','2022-09-16 09:00:35'),(3,'PPF',4,'2022-09-16 09:00:45','2022-09-16 09:00:45');
/*!40000 ALTER TABLE `deduction_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,1,'R&D',4,'2022-09-16 08:48:35','2022-09-16 08:48:35'),(2,2,'GNOC',4,'2022-09-16 08:48:57','2022-09-16 08:48:57');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `income_category_id` int(11) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `referal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
INSERT INTO `designations` VALUES (1,1,'Software Developer',4,'2022-09-16 08:49:24','2022-09-16 08:49:24'),(2,1,'Manager',4,'2022-09-16 08:49:39','2022-09-16 08:49:39'),(3,1,'Solution Architect',4,'2022-09-16 08:49:58','2022-09-16 08:49:58'),(4,2,'L1',4,'2022-09-16 08:50:14','2022-09-16 08:50:14'),(5,2,'L2',4,'2022-09-16 08:50:26','2022-09-16 08:50:26'),(6,2,'L3',4,'2022-09-16 08:51:49','2022-09-16 08:51:49');
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (3,'Passport','1',4,'2022-09-16 09:44:33','2022-09-23 14:19:24',NULL),(5,'Emirates ID','1',4,'2022-09-16 09:44:59','2022-09-23 14:19:58',NULL),(6,'Driving License','1',4,'2022-09-16 09:45:22','2022-09-23 14:20:46',NULL),(7,'Insurance','1',4,'2022-09-23 14:19:42','2022-09-23 14:20:27',NULL),(8,'Labor Card','1',4,'2022-09-23 14:21:18','2022-09-23 14:21:18',NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ducument_uploads`
--

DROP TABLE IF EXISTS `ducument_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ducument_uploads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ducument_uploads`
--

LOCK TABLES `ducument_uploads` WRITE;
/*!40000 ALTER TABLE `ducument_uploads` DISABLE KEYS */;
INSERT INTO `ducument_uploads` VALUES (1,'doc1','4','',NULL,4,'2022-09-27 11:54:44','2022-09-27 12:34:51','2022-09-28',8),(2,'doc2','4','',NULL,4,'2022-09-27 12:09:43','2022-09-27 12:35:02','2022-09-29',8),(3,'doc3','4','',NULL,4,'2022-09-27 12:31:56','2022-09-27 12:31:56','2022-09-28',7),(4,'Company Registration Document','2','image_1_1665628389.png',NULL,4,'2022-10-13 02:33:09','2022-10-13 02:33:09','2022-10-14',0),(5,'Amazon Registration Document','2','image_2_1665628517.png',NULL,6,'2022-10-13 02:35:17','2022-10-13 02:35:17','2022-10-15',0),(6,'Test','0','',NULL,4,'2022-10-15 01:49:29','2022-10-15 01:49:29','2022-10-16',8),(7,'company1','0','',NULL,4,'2022-10-15 01:54:38','2022-10-15 01:54:38',NULL,4),(8,'CHAMBER OF COMMERCE CERTIFICATE',NULL,'','CHAMBER OF COMMERCE CERTIFICATE',4,'2022-10-15 02:52:58','2022-10-15 02:52:58',NULL,4),(9,'FOOD CONTROL AUTHORITY CERTIFICATE',NULL,'','FOOD CONTROL AUTHORITY CERTIFICATE',4,'2022-10-15 02:53:41','2022-10-15 02:53:41',NULL,4),(10,'ENVIRONMENT POLLUTION CERTIFICTAE',NULL,'','ENVIRONMENT POLLUTION CERTIFICTAE',4,'2022-10-15 02:54:02','2022-10-15 02:54:02',NULL,4),(11,'INDUSTRIAL CERTIFICATE',NULL,'',NULL,4,'2022-10-15 02:54:25','2022-10-15 02:54:25',NULL,4),(12,'COMPANY LABOR CERTIFICATE',NULL,'',NULL,4,'2022-10-15 02:55:44','2022-10-15 02:55:44',NULL,4),(13,'PARTNER DETAILS',NULL,'',NULL,4,'2022-10-15 02:56:15','2022-10-15 02:56:15',NULL,4),(14,'POWER OF ATTORNEY',NULL,'',NULL,4,'2022-10-15 02:57:36','2022-10-15 02:57:36',NULL,4),(15,'MEMORANDUM OF ASSOCIATION',NULL,'','MEMORANDUM OF ASSOCIATION',4,'2022-10-15 02:57:57','2022-10-15 02:57:57',NULL,4),(16,'ARTICLES OF ASSOCIATION',NULL,'','ARTICLES OF ASSOCIATION',4,'2022-10-15 02:58:15','2022-10-15 02:58:15',NULL,4),(17,'PARTNERSHIP AGREEMENTS',NULL,'',NULL,4,'2022-10-15 02:58:31','2022-10-15 02:58:31',NULL,4),(18,'COMPANY LETTER HEAD',NULL,'',NULL,4,'2022-10-15 02:58:54','2022-10-15 02:58:54',NULL,4),(19,'VAT REGISTRATION CERTIFICATE',NULL,'',NULL,4,'2022-10-15 02:59:19','2022-10-15 02:59:19',NULL,4);
/*!40000 ALTER TABLE `ducument_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template_langs`
--

DROP TABLE IF EXISTS `email_template_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_template_langs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template_langs`
--

LOCK TABLES `email_template_langs` WRITE;
/*!40000 ALTER TABLE `email_template_langs` DISABLE KEYS */;
INSERT INTO `email_template_langs` VALUES (1,1,'ar','Create User','<p>مرحبا,</p>\n                    <p>مرحبا بك في { app_name }.</p>\n                    <p>.. أنت الآن مستعمل</p>\n                    <p>البريد الالكتروني : { mail } كلمة السرية : { password }</p>\n                    <p>{ app_url }</p>\n                    <p>شكرا</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(2,1,'da','Create User','<p>Hej,</p>\n                    <p>velkommen til { app_name }.</p>\n                    <p>Du er nu bruger ..</p>\n                    <p>E-mail: { email }</p>\n                    <p>kodeord: { password }</p>\n                    <p>{ app_url }</p>\n                    <p>Tak.</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(3,1,'de','Create User','<p>Hallo,</p>\n                    <p>Willkommen bei {app_name}.</p>\n                    <p>Sie sind jetzt Benutzer.</p>\n                    <p><strong>E-Mail: {email} </strong></p>\n                    <p><strong>Kennwort: {password}</strong></p>\n                    <p>{app_url}</p>\n                    <p>Danke,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(4,1,'en','Create User','<p>Hello,&nbsp;<br />Welcome to {app_name}.</p>\n                    <p><strong>You are now user..</strong></p>\n                    <p><strong>Email </strong>: {email}<br /><strong>Password</strong> : {password}</p>\n                    <p>{app_url}</p>\n                    <p>Thanks,<br />{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(5,1,'es','Create User','<p>Hola,</p>\n                    <p>Bienvenido a {app_name}.</p>\n                    <p>Ahora es usuario ..</p>\n                    <p><strong>Correo electr&oacute;nico: {email}</strong></p>\n                    <p><strong> Contrase&ntilde;a: {password}</strong></p>\n                    <p>{app_url}</p>\n                    <p>Gracias,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(6,1,'fr','Create User','<p>Bonjour,</p>\n                    <p>Bienvenue dans { app_name }.</p>\n                    <p>Vous &ecirc;tes maintenant utilisateur.</p>\n                    <p><strong>E-mail: { email } </strong></p>\n                    <p><strong>Mot de passe: { password }</strong></p>\n                    <p>{ adresse_url }</p>\n                    <p>Merci,</p>\n                    <p>{ nom_app }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(7,1,'it','Create User','<p>Ciao,</p>\n                    <p>Benvenuti in {app_name}.</p>\n                    <p>Ora sei utente ..</p>\n                    <p><strong>Email: {email} </strong></p>\n                    <p><strong>Password: {password}</strong></p>\n                    <p>{app_url}</p>\n                    <p>Grazie,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(8,1,'ja','Create User','<p>こんにちは、</p>\n                    <p>{app_name}へようこそ。</p>\n                    <p>これで、ユーザーは</p>\n                    <p><strong>E メール : {email}</strong></p>\n                    <p><strong> パスワード : {password}</strong></p>\n                    <p>{app_url}</p>\n                    <p>ありがとう。</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(9,1,'nl','Create User','<p>Hallo,</p>\n                    <p>Welkom bij { app_name }.</p>\n                    <p>U bent nu gebruiker ..</p>\n                    <p><strong>E-mail: { email }</strong></p>\n                    <p><strong> Wachtwoord: { password }</strong></p>\n                    <p>{ app_url }</p>\n                    <p>Bedankt.</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(10,1,'pl','Create User','<p>Witaj,</p>\n                    <p>Witamy w aplikacji {app_name }.</p>\n                    <p>Jesteś teraz użytkownikiem ..</p>\n                    <p><strong>E-mail</strong>: {email }</p>\n                    <p><strong>Hasło</strong>: {password }</p>\n                    <p>{app_url }</p>\n                    <p>Dziękuję,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(11,1,'ru','Create User','<p>Здравствуйте,</p>\n                    <p>Добро пожаловать в { app_name }.</p>\n                    <p>Вы теперь пользователь ..</p>\n                    <p><strong>Адрес электронной почты</strong>: { email }</p>\n                    <p><strong> Пароль</strong>: { password }</p>\n                    <p>{ app_url }</p>\n                    <p>Спасибо.</p>\n                    <p>{ app_name&nbsp;}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(12,1,'pt','Create User','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Ol&aacute;, </span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Bem-vindo a {app_name}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Voc&ecirc; agora &eacute; usu&aacute;rio ..</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\"><strong>E-mail</strong>: {email}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\"><strong> Senha</strong>: {senha}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_url}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(13,2,'ar','Employee Create','<p>مرحبا { employe_name } ،</p>\n                    <p>مرحبا بك في { app_name }.</p>\n                    <p>أنت الآن موظف</p>\n                    <p>البريد الالكتروني : { employe_email }</p>\n                    <p>كلمة السرية : { employe_password }</p>\n                    <p>{ app_url }</p>\n                    <p>شكرا</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(14,2,'da','Employee Create','<p>Hej { employee_name },</p>\n                    <p>velkommen til { app_name }.</p>\n                    <p>Du er nu ansat ...</p>\n                    <p>E-mail: { employee_email }</p>\n                    <p>Kodeord: { employee_kodeord }</p>\n                    <p>{ app_url }</p>\n                    <p>Tak.</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(15,2,'de','Employee Create','<p>Hello {employee_name},</p>\n                    <p>Willkommen bei {app_name}.</p>\n                    <p>Sie sind jetzt Mitarbeiter.</p>\n                    <p>E-Mail: {employee_email}</p>\n                    <p>Kennwort: {employee_password}</p>\n                    <p>{app_url}</p>\n                    <p>Danke,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(16,2,'en','Employee Create','<p>Hello {employee_name},&nbsp;<br />Welcome to {app_name}.</p>\n                    <p>You are now Employee..</p>\n                    <p><strong>Email </strong>: {employee_email}</p>\n                    <p><strong>Password</strong> : {employee_password}</p>\n                    <p>{app_url}</p>\n                    <p>Thanks,<br />{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(17,2,'es','Employee Create','<p style=\"line-height: 28px;\">Hello {employee_name},</p>\n                    <p style=\"line-height: 28px;\">Bienvenido a {app_name}.</p>\n                    <p style=\"line-height: 28px;\">Ahora es Empleado.</p>\n                    <p style=\"line-height: 28px;\">Correo electr&oacute;nico: {employee_email}</p>\n                    <p style=\"line-height: 28px;\">Contrase&ntilde;a: {employee_password}</p>\n                    <p style=\"line-height: 28px;\">{app_url}</p>\n                    <p style=\"line-height: 28px;\">Gracias,</p>\n                    <p style=\"line-height: 28px;\">{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(18,2,'fr','Employee Create','<p style=\"line-height: 28px;\">Hello { employee_name },</p>\n                    <p style=\"line-height: 28px;\">Bienvenue dans { app_name }.</p>\n                    <p style=\"line-height: 28px;\">Vous &ecirc;tes maintenant Employ&eacute; ..</p>\n                    <p style=\"line-height: 28px;\">Adresse &eacute;lectronique: { employee_email }</p>\n                    <p style=\"line-height: 28px;\">Mot de passe: { employee_password }</p>\n                    <p style=\"line-height: 28px;\">{ adresse_url }</p>\n                    <p style=\"line-height: 28px;\">Merci,</p>\n                    <p style=\"line-height: 28px;\">{ nom_app }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(19,2,'it','Employee Create','<p style=\"line-height: 28px;\">Hello {employee_name},</p>\n                    <p style=\"line-height: 28px;\">Benvenuti in {app_name}.</p>\n                    <p style=\"line-height: 28px;\">Ora sei Dipendente ..</p>\n                    <p style=\"line-height: 28px;\">Email: {employee_email}</p>\n                    <p style=\"line-height: 28px;\">Password: {employee_password}</p>\n                    <p style=\"line-height: 28px;\">{app_url}</p>\n                    <p style=\"line-height: 28px;\">Grazie,</p>\n                    <p style=\"line-height: 28px;\">{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(20,2,'ja','Employee Create','<p>{ employee_name} にようこそ、</p>\n                    <p>{app_name}へようこそ。</p>\n                    <p>今は従業員です。</p>\n                    <p>E メール : {employee_email}</p>\n                    <p>パスワード : {employee_password}</p>\n                    <p>{app_url}</p>\n                    <p>ありがとう。</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(21,2,'nl','Employee Create','<p style=\"line-height: 28px;\">Hallo { employee_name },</p>\n                    <p style=\"line-height: 28px;\">Welkom bij { app_name }.</p>\n                    <p style=\"line-height: 28px;\">U bent nu werknemer ..</p>\n                    <p style=\"line-height: 28px;\">E-mail: { employee_email }</p>\n                    <p style=\"line-height: 28px;\">Wachtwoord: { employee_password }</p>\n                    <p style=\"line-height: 28px;\">{ app_url }</p>\n                    <p style=\"line-height: 28px;\">Bedankt.</p>\n                    <p style=\"line-height: 28px;\">{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(22,2,'pl','Employee Create','<p style=\"line-height: 28px;\">Witaj {employee_name },</p>\n                    <p style=\"line-height: 28px;\">Witamy w aplikacji {app_name }.</p>\n                    <p style=\"line-height: 28px;\">Jesteś teraz Pracownik ..</p>\n                    <p style=\"line-height: 28px;\">E-mail: {employee_email }</p>\n                    <p style=\"line-height: 28px;\">Hasło: {employee_password }</p>\n                    <p style=\"line-height: 28px;\">{app_url }</p>\n                    <p style=\"line-height: 28px;\">Dziękuję,</p>\n                    <p style=\"line-height: 28px;\">{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(23,2,'ru','Employee Create','<p style=\"line-height: 28px;\">Здравствуйте, { employee_name },</p>\n                    <p style=\"line-height: 28px;\">Добро пожаловать в { app_name }.</p>\n                    <p style=\"line-height: 28px;\">Вы теперь-сотрудник ...</p>\n                    <p style=\"line-height: 28px;\">Электронная почта: { employee_email }</p>\n                    <p style=\"line-height: 28px;\">Пароль: { employee_password }</p>\n                    <p style=\"line-height: 28px;\">{ app_url }</p>\n                    <p style=\"line-height: 28px;\">Спасибо.</p>\n                    <p style=\"line-height: 28px;\">{ имя_программы }</p> ','2022-09-13 19:42:08','2022-09-13 19:42:08'),(24,2,'pt','Employee Create','<p>Ol&aacute; {employee_name},</p>\n                    <p>Bem-vindo a {app_name}.</p>\n                    <p>Voc&ecirc; &eacute; agora Funcion&aacute;rio ..</p>\n                    <p>E-mail: {employee_email}</p>\n                    <p>Senha: {employee_password}</p>\n                    <p>{app_url}</p>\n                    <p>Obrigado,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(25,3,'ar','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Subject :-إدارة الموارد البشرية / الشركة المعنية بإرسال المدفوعات عن طريق البريد الإلكتروني في وقت تأكيد الدفع.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">مرحبا { name } ،</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">أتمنى أن يجدك هذا البريد الإلكتروني جيدا برجاء الرجوع الى الدفع المتصل الى { salary_month&nbsp;}.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">اضغط ببساطة على الاختيار بأسفل</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">كشوف المرتبات</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">شكرا لك</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Regards,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">إدارة الموارد البشرية ،</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{ app_name }</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(26,3,'da','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Om: HR-departementet / Kompagniet til at sende l&oslash;nsedler via e-mail p&aring; tidspunktet for bekr&aelig;ftelsen af l&oslash;nsedlerne</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hej { name },</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">H&aring;ber denne e-mail finder dig godt! Se vedh&aelig;ftet payseddel for { salary_month }.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">klik bare p&aring; knappen nedenfor</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">L&oslash;nseddel</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Tak.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Med venlig hilsen</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">HR-afdelingen,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{ app_name }</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(27,3,'de','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Betrifft: -Personalabteilung/Firma, um Payslips per E-Mail zum Zeitpunkt der Best&auml;tigung des Auszahlungsscheins zu senden</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hi {name},</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hoffe, diese E-Mail findet dich gut! Bitte sehen Sie den angeh&auml;ngten payslip f&uuml;r {salary_month}.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Klicken Sie einfach auf den Button unten</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Payslip</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Danke.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Betrachtet,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Personalabteilung,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(28,3,'en','Payroll Create','<p><strong>Subjec</strong>t:-HR department/Company to send payslips by email at time of confirmation of payslip</p>\n                    <p>Hi {name},</p>\n                    <p>Hope this email ﬁnds you well! Please see attached payslip for {salary_month}.</p>\n                    <p style=\"text-align: center;\" align=\"center\"><strong>simply click on the button below </strong></p>\n                    <p style=\"text-align: center;\" align=\"center\"><span style=\"font-size: 18pt;\"><a style=\"background: #6676ef; color: #ffffff; font-family: \"Open Sans\", Helvetica, Arial, sans-serif; font-weight: normal; line-height: 120%; margin: 0px; text-decoration: none; text-transform: none;\" href=\"{url}\" target=\"_blank\" rel=\"noopener\"> <strong style=\"color: white; font-weight: bold; text: white;\">Payslip</strong> </a></span></p>\n                    <p style=\"text-align: left;\" align=\"center\">Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><span style=\"color: #000000; font-family: \"Open Sans\", sans-serif; font-size: 14px; background-color: #ffffff;\">{<strong>app_name</strong>}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(29,3,'es','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Asunto: -Departamento de RRHH/Empresa para enviar n&oacute;minas por correo electr&oacute;nico en el momento de la confirmaci&oacute;n del pago</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hi {name},</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">&iexcl;Espero que este email le encuentre bien! Consulte la ficha de pago adjunta para {salary_month}.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">simplemente haga clic en el bot&oacute;n de abajo</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Payslip</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">&iexcl;Gracias!</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Considerando,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Departamento de Recursos Humanos,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(30,3,'fr','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Objet: -Ressources humaines / Entreprise pour envoyer des feuillets de paie par courriel au moment de la confirmation du paiement</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Salut { name },</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Jesp&egrave;re que ce courriel vous trouve bien ! Veuillez consulter le bordereau de paie ci-joint pour { salary_month }.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Il suffit de cliquer sur le bouton ci-dessous</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Feuillet de paiement</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Je vous remercie</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Regards,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">D&eacute;partement des RH,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{ app_name }</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(31,3,'it','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Oggetto: - Dipartimento HR / Societ&agrave; per inviare busta paga via email al momento della conferma della busta paga</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Ciao {name},</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Spero che questa email ti trovi bene! Si prega di consultare la busta paga per {salary_month}.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">semplicemente clicca sul pulsante sottostante</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Busta paga</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Sentiti libero di raggiungere se hai domande.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Grazie</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Riguardo,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Dipartimento HR,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(32,3,'ja','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">件名:-HR 部門/企業は、給与明細書の確認時に電子メールで支払いを送信します。</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">こんにちは {name}、</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">この E メールでよくご確認ください。 {salary_month}の添付された payslip を参照してください。</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">下のボタンをクリックするだけで</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">給与明細書</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">質問がある場合は、自由に連絡してください。</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">ありがとう</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">よろしく</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">HR 部門</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(33,3,'nl','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Betreft: -HR-afdeling/Bedrijf om te betalen payslips per e-mail op het moment van bevestiging van de payslip</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hallo { name },</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Hoop dat deze e-mail je goed vindt! Zie bijgevoegde payslip voor { salary_month }.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">gewoon klikken op de knop hieronder</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Loonstrook</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Voel je vrij om uit te reiken als je vragen hebt.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Dank u wel</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Betreft:</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">HR-afdeling,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{ app_name }</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(34,3,'pl','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Temat:-Dział HR/Firma do wysyłania payslip&oacute;w drogą mailową w czasie potwierdzania payslipa</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Witaj {name },</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Mam nadzieję, że ta wiadomość znajdzie Cię dobrze! Patrz załączony payslip dla {salary_month }.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">po prostu kliknij na przycisk poniżej</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Payslip</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Czuj się swobodnie, jeśli masz jakieś pytania.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Dziękujemy</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">W odniesieniu do</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Dział HR,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{app_name }</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(35,3,'ru','Payroll Create','<p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Тема: -HR отдел/Компания для отправки паузу по электронной почте во время подтверждения паузли</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Привет { name },</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Надеюсь, это электронное письмо найдет вас хорошо! См. вложенный раздел для { salary_month }.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">просто нажмите на кнопку внизу</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Паушлип</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Не стеснитесь, если у вас есть вопросы.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Спасибо.</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">С уважением,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">Отдел кадров,</span></p>\n                    <p style=\"line-height: 28px; font-family: Nunito,;\"><span style=\"font-family: sans-serif;\">{ app_name }</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(36,3,'pt','Payroll Create','<p>Assunto:-Departamento de RH / Empresa para enviar payslips por e-mail no momento da confirma&ccedil;&atilde;o do payslip</p>\n                    <p>Oi {name},</p>\n                    <p>Espero que este e-mail encontre voc&ecirc; bem! Por favor, consulte o payslip anexado por {salary_month}.</p>\n                    <p>basta clicar no bot&atilde;o abaixo</p>\n                    <p>Payslip</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado</p>\n                    <p>Considera,</p>\n                    <p>Departamento de RH,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(37,4,'ar','Ticket Create','<p>Subject : -HR ادارة / شركة لارسال ticket ل ـ { ticket_title }</p>\n                    <p>مرحبا { ticket_name }</p>\n                    <p>آمل أن يقوم هذا البريد الالكتروني بايجادك جيدا ! ، كود التذكرة الخاص بك هو { ticket_code }.</p>\n                    <p>{ ticket_description } ،</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(38,4,'da','Ticket Create','<p>Emne:-HR-afdeling / Kompagni til at sende ticket for { ticket_title }</p>\n                    <p>Hej { ticket_name },</p>\n                    <p>H&aring;ber denne e-mail finder dig godt, din ticket-kode er { ticket_code }.</p>\n                    <p>{ ticket_description },</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(39,4,'de','Ticket Create','<p>Betreff: -Personalabteilung/Firma zum Senden von Ticket f&uuml;r {ticket_title}</p>\n                    <p>Hi {ticket_name},</p>\n                    <p>Hoffen Sie, diese E-Mail findet Sie gut!, Ihr Ticketcode ist {ticket_code}.</p>\n                    <p>{ticket_description},</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(40,4,'en','Ticket Create','<p ><b>Subject:-HR department/Company to send ticket for {ticket_title}</b></p>\n                    <p ><b>Hi {ticket_name},</b></p>\n                    <p >Hope this email ﬁnds you well! , Your ticket code is {ticket_code}. </p></br>\n                    {ticket_description},\n                    <p >Feel free to reach out if you have any questions.</p></br>\n                    <p><b>Thank you</b></p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>\n                    ','2022-09-13 19:42:08','2022-09-13 19:42:08'),(41,4,'es','Ticket Create','<p>Asunto: -Departamento de RR.HH./Empresa para enviar el ticket de {ticket_title}</p>\n                    <p>Hi {ticket_name},</p>\n                    <p>&iexcl;Espero que este correo electr&oacute;nico te encuentre bien!, Tu c&oacute;digo de entrada es {ticket_code}.</p>\n                    <p>{ticket_description},</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(42,4,'fr','Ticket Create','<p>Objet: -HR department / Company to send ticket for { ticket_title }</p>\n                    <p>Hi { ticket_name },</p>\n                    <p>Hope this email vous trouve bien !, Votre code de ticket est { ticket_code }.</p>\n                    <p>{ ticket_description },</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(43,4,'it','Ticket Create','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare ticket per {ticket_title}</p>\n                    <p>Ciao {ticket_name},</p>\n                    <p>Spero che questa email ti trovi bene!, Il tuo codice del biglietto &egrave; {ticket_code}.</p>\n                    <p>{ticket_description},</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(44,4,'ja','Ticket Create','<p>件名:-HR 部門/企業は、 {ticket_title} のチケットを送信します</p>\n                    <p>こんにちは {ticket_name}</p>\n                    <p>この E メールが適切に検出されることを希望しています。チケット・コードは {ticket_code}です。</p>\n                    <p>{ticket_description }</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(45,4,'nl','Ticket Create','<p>Betreft: -HR-afdeling/Bedrijf voor het verzenden van ticket voor { ticket_title }</p>\n                    <p>Hallo { ticket_name },</p>\n                    <p>Hoop dat deze e-mail u goed vindt!, Uw ticket code is { ticket_code }.</p>\n                    <p>{ ticket_description},</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(46,4,'pl','Ticket Create','<p>Temat:-Dział HR/Firma do wysyłki biletu dla {ticket_title }</p>\n                    <p>Witaj {ticket_name },</p>\n                    <p>Mam nadzieję, że ta wiadomość e-mail znajduje się dobrze!, Tw&oacute;j kod zgłoszenia to {ticket_code }.</p>\n                    <p>{ticket_description },</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(47,4,'ru','Ticket Create','<p>Тема: -HR отдел/Компания для отправки билета для { ticket_title }</p>\n                    <p>Hi { ticket_name },</p>\n                    <p>Надеюсь, что это письмо найдет вас хорошо!, Ваш код паспорта-{ ticket_code }.</p>\n                    <p>{ ticket_description },</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(48,4,'pt','Ticket Create','<p>Assunto:-Departamento de RH / Empresa para enviar ingresso para {ticket_title}</p>\n                    <p>Oi {ticket_name},</p>\n                    <p>Espero que este e-mail te encontre bem!, Seu c&oacute;digo de bilhete &eacute; {ticket_code}.</p>\n                    <p>{ticket_description},</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado</p>\n                    <p>Considera,</p>\n                    <p>Departamento de RH,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(49,5,'ar','Award Create','<p>Subject :-إدارة الموارد البشرية / الشركة المعنية بإرسال خطاب تحكيم للاعتراف بموظف</p>\n                    <p>مرحبا { award_name },</p>\n                    <p>ويسرني كثيرا أن أرشحها { award_name }</p>\n                    <p>وإنني مقتنع بأن (هي / هي) هي أفضل موظفة للحصول على الجائزة. وقد أدركت أنها شخصية موجهة نحو تحقيق الأهداف ، وتتسم بالكفاءة والفعالية في التقيد بالمواعيد. إنها دائما على استعداد لمشاركة معرفتها بالتفاصيل</p>\n                    <p>وبالإضافة إلى ذلك ، قامت (هي / هي) أحيانا بحل النزاعات والحالات الصعبة خلال ساعات العمل. (هي / هي) حصلت على بعض الجوائز من المنظمة غير الحكومية داخل البلد ؛ وكان ذلك بسبب المشاركة في أنشطة خيرية لمساعدة المحتاجين.</p>\n                    <p>وأعتقد أن هذه الصفات والصفات يجب أن تكون موضع تقدير. ولذلك ، فإن (هي / هي) تستحق أن تمنحها الجائزة بالتالي.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(50,5,'da','Award Create','<p>Om: HR-afdelingen / Kompagniet for at sende prisuddeling for at kunne genkende en medarbejder</p>\n                    <p>Hej { award_name },</p>\n                    <p>Jeg er meget glad for at nominere {award_name&nbsp;}</p>\n                    <p>Jeg er tilfreds med, at (hun) er den bedste medarbejder for prisen. Jeg har indset, at hun er en m&aring;lbevidst person, effektiv og meget punktlig. Hun er altid klar til at dele sin viden om detaljer.</p>\n                    <p>Desuden har (he/she) lejlighedsvist l&oslash;st konflikter og vanskelige situationer inden for arbejdstiden. (/hun) har modtaget nogle priser fra den ikkestatslige organisation i landet. Dette skyldes, at der skal v&aelig;re en del i velg&oslash;renhedsaktiviteter for at hj&aelig;lpe de tr&aelig;ngende.</p>\n                    <p>Jeg mener, at disse kvaliteter og egenskaber skal v&aelig;rds&aelig;tte. Derfor fortjener denne pris, at hun nominerer hende.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(51,5,'de','Award Create','<p>Betrifft: -Personalabteilung/Firma zum Versenden von Pr&auml;mienschreiben, um einen Mitarbeiter zu erkennen</p>\n                    <p>Hi {award_name},</p>\n                    <p>Ich freue mich sehr, {award_name} zu nominieren.</p>\n                    <p>Ich bin zufrieden, dass (he/she) der beste Mitarbeiter f&uuml;r die Auszeichnung ist. Ich habe erkannt, dass sie eine gottorientierte Person ist, effizient und sehr p&uuml;nktlich. Sie ist immer bereit, ihr Wissen &uuml;ber Details zu teilen.</p>\n                    <p>Dar&uuml;ber hinaus hat (he/she) gelegentlich Konflikte und schwierige Situationen innerhalb der Arbeitszeiten gel&ouml;st. (he/she) hat einige Auszeichnungen von der Nichtregierungsorganisation innerhalb des Landes erhalten; dies war wegen der Teilnahme an Wohlt&auml;tigkeitsaktivit&auml;ten, um den Bed&uuml;rftigen zu helfen.</p>\n                    <p>Ich glaube, diese Eigenschaften und Eigenschaften m&uuml;ssen gew&uuml;rdigt werden. Daher verdient (he/she) die Auszeichnung, die sie deshalb nominiert.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(52,5,'en','Award Create','<p ><b>Subject:-HR department/Company to send award letter to recognize an employee</b></p>\n                    <p ><b>Hi {award_name},</b></p>\n                    <p >I am much pleased to nominate {award_name}  </p>\n                    <p >I am satisfied that (he/she) is the best employee for the award. I have realized that she is a goal-oriented person, efficient and very punctual. She is always ready to share her knowledge of details.</p>\n                    <p>Additionally, (he/she) has occasionally solved conflicts and difficult situations within working hours. (he/she) has received some awards from the non-governmental organization within the country; this was because of taking part in charity activities to help the needy.</p>\n                    <p>I believe these qualities and characteristics need to be appreciated. Therefore, (he/she) deserves the award hence nominating her.</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p><b>Thank you</b></p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(53,5,'es','Award Create','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de premios para reconocer a un empleado</p>\n                    <p>Hi {award_name},</p>\n                    <p>Estoy muy satisfecho de nominar {award_name}</p>\n                    <p>Estoy satisfecho de que (ella) sea el mejor empleado para el premio. Me he dado cuenta de que es una persona orientada al objetivo, eficiente y muy puntual. Ella siempre est&aacute; lista para compartir su conocimiento de los detalles.</p>\n                    <p>Adicionalmente, (he/ella) ocasionalmente ha resuelto conflictos y situaciones dif&iacute;ciles dentro de las horas de trabajo. (h/ella) ha recibido algunos premios de la organizaci&oacute;n no gubernamental dentro del pa&iacute;s; esto fue debido a participar en actividades de caridad para ayudar a los necesitados.</p>\n                    <p>Creo que estas cualidades y caracter&iacute;sticas deben ser apreciadas. Por lo tanto, (h/ella) merece el premio por lo tanto nominarla.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(54,5,'fr','Award Create','<p>Objet: -Minist&egrave;re des RH / Soci&eacute;t&eacute; denvoi dune lettre dattribution pour reconna&icirc;tre un employ&eacute;</p>\n                    <p>Hi { award_name },</p>\n                    <p>Je suis tr&egrave;s heureux de nommer { award_name }</p>\n                    <p>Je suis convaincu que (he/elle) est le meilleur employ&eacute; pour ce prix. Jai r&eacute;alis&eacute; quelle est une personne orient&eacute;e vers lobjectif, efficace et tr&egrave;s ponctuelle. Elle est toujours pr&ecirc;te &agrave; partager sa connaissance des d&eacute;tails.</p>\n                    <p>De plus, (he/elle) a parfois r&eacute;solu des conflits et des situations difficiles dans les heures de travail. (he/elle) a re&ccedil;u des prix de lorganisation non gouvernementale &agrave; lint&eacute;rieur du pays, parce quelle a particip&eacute; &agrave; des activit&eacute;s de bienfaisance pour aider les n&eacute;cessiteux.</p>\n                    <p>Je crois que ces qualit&eacute;s et ces caract&eacute;ristiques doivent &ecirc;tre appr&eacute;ci&eacute;es. Par cons&eacute;quent, (he/elle) m&eacute;rite le prix donc nomin&eacute;.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(55,5,'it','Award Create','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di premiazione per riconoscere un dipendente</p>\n                    <p>Ciao {award_name},</p>\n                    <p>Sono molto lieto di nominare {award_name}</p>\n                    <p>Sono soddisfatto che (he/lei) sia il miglior dipendente per il premio. Ho capito che &egrave; una persona orientata al goal-oriented, efficiente e molto puntuale. &Egrave; sempre pronta a condividere la sua conoscenza dei dettagli.</p>\n                    <p>Inoltre, (he/lei) ha occasionalmente risolto conflitti e situazioni difficili allinterno delle ore di lavoro. (he/lei) ha ricevuto alcuni premi dallorganizzazione non governativa allinterno del paese; questo perch&eacute; di prendere parte alle attivit&agrave; di beneficenza per aiutare i bisognosi.</p>\n                    <p>Credo che queste qualit&agrave; e caratteristiche debbano essere apprezzate. Pertanto, (he/lei) merita il premio da qui la nomina.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(56,5,'ja','Award Create','<p>件名: 従業員を認識するための表彰書を送信するための、人事部門/ 会社</p>\n                    <p>やあ {award_name }</p>\n                    <p>{award_name }をノミネートしたいと考えています。</p>\n                    <p>私は ( 彼女が ) 賞のための最高の従業員だと満足している。 私は彼女が、自分が目標指向の人間であり、効率的で、非常に時間厳守であることに気付きました。 彼女はいつも詳細についての知識を共有する準備ができている。</p>\n                    <p>また、時には労働時間内に紛争や困難な状況を解決することがある。 ( 彼女は ) 国内の非政府組織からいくつかの賞を受賞している。このことは、慈善活動に参加して、貧窮者を助けるためのものだった。</p>\n                    <p>これらの特性と特徴を評価する必要があると思います。 そのため、 ( 相続人は ) 賞に値するので彼女を指名することになる。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(57,5,'nl','Award Create','<p>Betreft: -HR-afdeling/Bedrijf om een gunningsbrief te sturen om een werknemer te herkennen</p>\n                    <p>Hallo { award_name },</p>\n                    <p>Ik ben erg blij om { award_name } te nomineren</p>\n                    <p>Ik ben tevreden dat (he/zij) de beste werknemer voor de prijs is. Ik heb me gerealiseerd dat ze een doelgericht persoon is, effici&euml;nt en punctueel. Ze is altijd klaar om haar kennis van details te delen.</p>\n                    <p>Daarnaast heeft (he/she) af en toe conflicten en moeilijke situaties binnen de werkuren opgelost. (he/zij) heeft een aantal prijzen ontvangen van de niet-gouvernementele organisatie binnen het land; dit was vanwege het deelnemen aan liefdadigheidsactiviteiten om de behoeftigen te helpen.</p>\n                    <p>Ik ben van mening dat deze kwaliteiten en eigenschappen moeten worden gewaardeerd. Daarom, (he/she) verdient de award dus nomineren haar.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(58,5,'pl','Award Create','<p>Temat:-Dział HR/Firma do wysyłania list&oacute;w wyr&oacute;żnienia do rozpoznania pracownika</p>\n                    <p>Witaj {award_name },</p>\n                    <p>Jestem bardzo zadowolony z nominacji {award_name }</p>\n                    <p>Jestem zadowolony, że (he/she) jest najlepszym pracownikiem do nagrody. Zdałem sobie sprawę, że jest osobą zorientowaną na goły, sprawną i bardzo punktualną. Zawsze jest gotowa podzielić się swoją wiedzą na temat szczeg&oacute;ł&oacute;w.</p>\n                    <p>Dodatkowo, (he/she) od czasu do czasu rozwiązuje konflikty i trudne sytuacje w godzinach pracy. (he/she) otrzymała kilka nagr&oacute;d od organizacji pozarządowej w obrębie kraju; to z powodu wzięcia udziału w akcji charytatywnych, aby pom&oacute;c potrzebującym.</p>\n                    <p>Uważam, że te cechy i cechy muszą być docenione. Dlatego też, (he/she) zasługuje na nagrodę, stąd nominowanie jej.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(59,5,'ru','Award Create','<p>Тема: -HR отдел/Компания отправить награда письмо о признании сотрудника</p>\n                    <p>Здравствуйте, { award_name },</p>\n                    <p>Мне очень приятно номинировать { award_name }</p>\n                    <p>Я удовлетворена тем, что (х/она) является лучшим работником премии. Я понял, что она ориентированная на цель человек, эффективная и очень пунктуальная. Она всегда готова поделиться своими знаниями о деталях.</p>\n                    <p>Кроме того, время от времени решались конфликты и сложные ситуации в рабочее время. (она) получила некоторые награды от неправительственной организации в стране; это было связано с тем, что они приняли участие в благотворительной деятельности, чтобы помочь нуждающимся.</p>\n                    <p>Я считаю, что эти качества и характеристики заслуживают высокой оценки. Таким образом, она заслуживает того, чтобы наградить ее таким образом.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(60,5,'pt','Award Create','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de premia&ccedil;&atilde;o para reconhecer um funcion&aacute;rio</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Oi {award_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Estou muito satisfeito em nomear {award_name}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Estou satisfeito que (he/she) &eacute; o melhor funcion&aacute;rio para o pr&ecirc;mio. Eu percebi que ela &eacute; uma pessoa orientada a goal, eficiente e muito pontual. Ela est&aacute; sempre pronta para compartilhar seu conhecimento de detalhes.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Adicionalmente, (he/she) tem, ocasionalmente, resolvido conflitos e situa&ccedil;&otilde;es dif&iacute;ceis dentro do hor&aacute;rio de trabalho. (he/she) recebeu alguns pr&ecirc;mios da organiza&ccedil;&atilde;o n&atilde;o governamental dentro do pa&iacute;s; isso foi por ter participado de atividades de caridade para ajudar os necessitados.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Eu acredito que essas qualidades e caracter&iacute;sticas precisam ser apreciadas. Por isso, (he/she) merece o pr&ecirc;mio da&iacute; nomeando-a.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(61,6,'ar','Employee Transfer','<p>Subject : -HR ادارة / شركة لارسال خطاب نقل الى موظف من مكان الى آخر.</p>\n                    <p>عزيزي { transfer_name },</p>\n                    <p>وفقا لتوجيهات الادارة ، يتم نقل الخدمات الخاصة بك w.e.f. { transfer_date }.</p>\n                    <p>مكان الادخال الجديد الخاص بك هو { transfer_department } قسم من فرع { transfer_branch } وتاريخ التحويل { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(62,6,'da','Employee Transfer','<p>Emne:-HR-afdelingen / kompagniet om at sende overf&oslash;rsels brev til en medarbejder fra den ene lokalitet til den anden.</p>\n                    <p>K&aelig;re { transfer_name },</p>\n                    <p>Som Styring af direktiver overf&oslash;res dine serviceydelser w.e.f. { transfer_date }.</p>\n                    <p>Dit nye sted for postering er { transfer_departement } afdeling af { transfer_branch } gren og dato for overf&oslash;rsel { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(63,6,'de','Employee Transfer','<p>Betreff: -Personalabteilung/Unternehmen, um einen &Uuml;berweisungsschreiben an einen Mitarbeiter von einem Standort an einen anderen zu senden.</p>\n                    <p>Sehr geehrter {transfer_name},</p>\n                    <p>Wie pro Management-Direktiven werden Ihre Dienste &uuml;ber w.e.f. {transfer_date} &uuml;bertragen.</p>\n                    <p>Ihr neuer Ort der Entsendung ist {transfer_department} Abteilung von {transfer_branch} Niederlassung und Datum der &Uuml;bertragung {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(64,6,'en','Employee Transfer','<p ><b>Subject:-HR department/Company to send transfer letter to be issued to an employee from one location to another.</b></p>\n                    <p ><b>Dear {transfer_name},</b></p>\n                    <p >As per Management directives, your services are being transferred w.e.f.{transfer_date}. </p>\n                    <p >Your new place of posting is {transfer_department} department of {transfer_branch} branch and date of transfer {transfer_date}. </p>\n                    {transfer_description}.\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p><b>Thank you</b></p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(65,6,'es','Employee Transfer','<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de transferencia a un empleado de un lugar a otro.</p>\n                    <p>Estimado {transfer_name},</p>\n                    <p>Seg&uacute;n las directivas de gesti&oacute;n, los servicios se transfieren w.e.f. {transfer_date}.</p>\n                    <p>El nuevo lugar de publicaci&oacute;n es el departamento {transfer_department} de la rama {transfer_branch} y la fecha de transferencia {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(66,6,'fr','Employee Transfer','<p>Objet: -Minist&egrave;re des RH / Soci&eacute;t&eacute; denvoi dune lettre de transfert &agrave; un employ&eacute; dun endroit &agrave; un autre.</p>\n                    <p>Cher { transfer_name },</p>\n                    <p>Selon les directives de gestion, vos services sont transf&eacute;r&eacute;s dans w.e.f. { transfer_date }.</p>\n                    <p>Votre nouveau lieu daffectation est le d&eacute;partement { transfer_department } de la branche { transfer_branch } et la date de transfert { transfer_date }.</p>\n                    <p>{ description_transfert }.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(67,6,'it','Employee Transfer','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(68,6,'ja','Employee Transfer','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di trasferimento da rilasciare a un dipendente da una localit&agrave; allaltra.</p>\n                    <p>Caro {transfer_name},</p>\n                    <p>Come per le direttive di Management, i tuoi servizi vengono trasferiti w.e.f. {transfer_date}.</p>\n                    <p>Il tuo nuovo luogo di distacco &egrave; {transfer_department} dipartimento di {transfer_branch} ramo e data di trasferimento {transfer_date}.</p>\n                    <p>{transfer_description}.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(69,6,'nl','Employee Transfer','<p>Betreft: -HR-afdeling/Bedrijf voor verzending van overdrachtsbrief aan een werknemer van de ene plaats naar de andere.</p>\n                    <p>Geachte { transfer_name },</p>\n                    <p>Als per beheerinstructie worden uw services overgebracht w.e.f. { transfer_date }.</p>\n                    <p>Uw nieuwe plaats van post is { transfer_department } van de afdeling { transfer_branch } en datum van overdracht { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(70,6,'pl','Employee Transfer','<p>Temat:-Dział HR/Firma do wysyłania listu przelewowego, kt&oacute;ry ma być wydany pracownikowi z jednego miejsca do drugiego.</p>\n                    <p>Droga {transfer_name },</p>\n                    <p>Zgodnie z dyrektywami zarządzania, Twoje usługi są przesyłane w.e.f. {transfer_date }.</p>\n                    <p>Twoje nowe miejsce delegowania to {transfer_department } dział {transfer_branch } gałąź i data transferu {transfer_date }.</p>\n                    <p>{transfer_description }.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(71,6,'ru','Employee Transfer','<p>Тема: -HR отдел/Компания для отправки трансферного письма сотруднику из одного места в другое.</p>\n                    <p>Уважаемый { transfer_name },</p>\n                    <p>В соответствии с директивами управления ваши службы передаются .ef. { transfer_date }.</p>\n                    <p>Новое место разноски: { transfer_department} подразделение { transfer_branch } и дата передачи { transfer_date }.</p>\n                    <p>{ transfer_description }.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(72,6,'pt','Employee Transfer','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de transfer&ecirc;ncia para ser emitida para um funcion&aacute;rio de um local para outro.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {transfer_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Conforme diretivas de Gerenciamento, seus servi&ccedil;os est&atilde;o sendo transferidos w.e.f. {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">O seu novo local de postagem &eacute; {transfer_departamento} departamento de {transfer_branch} ramo e data de transfer&ecirc;ncia {transfer_date}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{transfer_description}.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(73,7,'ar','Employee Resignation','<p>Subject :-قسم الموارد البشرية / الشركة لإرسال خطاب استقالته.</p>\n                    <p>عزيزي { assign_user } ،</p>\n                    <p>إنه لمن دواعي الأسف الشديد أن أعترف رسميا باستلام إشعار استقالتك في { notice_date } الى { resignation_date } هو اليوم الأخير لعملك.</p>\n                    <p>لقد كان من دواعي سروري العمل معكم ، وبالنيابة عن الفريق ، أود أن أتمنى لكم أفضل جدا في جميع مساعيكم في المستقبل. ومن خلال هذه الرسالة ، يرجى العثور على حزمة معلومات تتضمن معلومات مفصلة عن عملية الاستقالة.</p>\n                    <p>شكرا لكم مرة أخرى على موقفكم الإيجابي والعمل الجاد كل هذه السنوات.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(74,7,'da','Employee Resignation','<p>Om: HR-afdelingen / Kompagniet, for at sende en opsigelse.</p>\n                    <p>K&aelig;re { assign_user },</p>\n                    <p>Det er med stor beklagelse, at jeg formelt anerkender modtagelsen af din opsigelsesmeddelelse p&aring; { notice_date } til { resignation_date } er din sidste arbejdsdag</p>\n                    <p>Det har v&aelig;ret en forn&oslash;jelse at arbejde sammen med Dem, og p&aring; vegne af teamet vil jeg &oslash;nske Dem det bedste i alle Deres fremtidige bestr&aelig;belser. Med dette brev kan du finde en informationspakke med detaljerede oplysninger om tilbagetr&aelig;delsesprocessen.</p>\n                    <p>Endnu en gang tak for Deres positive holdning og h&aring;rde arbejde i alle disse &aring;r.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(75,7,'de','Employee Resignation','<p>Betreff: -Personalabteilung/Firma, um R&uuml;ckmeldungsschreiben zu senden.</p>\n                    <p>Sehr geehrter {assign_user},</p>\n                    <p>Es ist mit gro&szlig;em Bedauern, dass ich den Eingang Ihrer R&uuml;cktrittshinweis auf {notice_date} an {resignation_date} offiziell best&auml;tige, ist Ihr letzter Arbeitstag.</p>\n                    <p>Es war eine Freude, mit Ihnen zu arbeiten, und im Namen des Teams m&ouml;chte ich Ihnen w&uuml;nschen, dass Sie in allen Ihren zuk&uuml;nftigen Bem&uuml;hungen am besten sind. In diesem Brief finden Sie ein Informationspaket mit detaillierten Informationen zum R&uuml;cktrittsprozess.</p>\n                    <p>Vielen Dank noch einmal f&uuml;r Ihre positive Einstellung und harte Arbeit all die Jahre.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(76,7,'en','Employee Resignation','<p ><b>Subject:-HR department/Company to send resignation letter .</b></p>\n                    <p ><b>Dear {assign_user},</b></p>\n                    <p >It is with great regret that I formally acknowledge receipt of your resignation notice on {notice_date} to {resignation_date} is your final day of work. </p>\n                    <p >It has been a pleasure working with you, and on behalf of the team, I would like to wish you the very best in all your future endeavors. Included with this letter, please find an information packet with detailed information on the resignation process. </p>\n                    <p>Thank you again for your positive attitude and hard work all these years.</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><b>Regards,</b></p>\n                    <p><b>HR Department,</b></p>\n                    <p><b>{app_name}</b></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(77,7,'es','Employee Resignation','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de renuncia.</p>\n                    <p>Estimado {assign_user},</p>\n                    <p>Es con gran pesar que recibo formalmente la recepci&oacute;n de su aviso de renuncia en {notice_date} a {resignation_date} es su &uacute;ltimo d&iacute;a de trabajo.</p>\n                    <p>Ha sido un placer trabajar con usted, y en nombre del equipo, me gustar&iacute;a desearle lo mejor en todos sus esfuerzos futuros. Incluido con esta carta, por favor encuentre un paquete de informaci&oacute;n con informaci&oacute;n detallada sobre el proceso de renuncia.</p>\n                    <p>Gracias de nuevo por su actitud positiva y trabajo duro todos estos a&ntilde;os.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(78,7,'fr','Employee Resignation','<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de d&eacute;mission.</p>\n                    <p>Cher { assign_user },</p>\n                    <p>Cest avec grand regret que je reconnais officiellement la r&eacute;ception de votre avis de d&eacute;mission sur { notice_date } &agrave; { resignation_date } est votre dernier jour de travail.</p>\n                    <p>Cest un plaisir de travailler avec vous, et au nom de l&eacute;quipe, jaimerais vous souhaiter le meilleur dans toutes vos activit&eacute;s futures. Inclus avec cette lettre, veuillez trouver un paquet dinformation contenant des informations d&eacute;taill&eacute;es sur le processus de d&eacute;mission.</p>\n                    <p>Je vous remercie encore de votre attitude positive et de votre travail acharne durant toutes ces ann&eacute;es.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(79,7,'it','Employee Resignation','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di dimissioni.</p>\n                    <p>Caro {assign_user},</p>\n                    <p>&Egrave; con grande dispiacere che riconosca formalmente la ricezione del tuo avviso di dimissioni su {notice_date} a {resignation_date} &egrave; la tua giornata di lavoro finale.</p>\n                    <p>&Egrave; stato un piacere lavorare con voi, e a nome della squadra, vorrei augurarvi il massimo in tutti i vostri futuri sforzi. Incluso con questa lettera, si prega di trovare un pacchetto informativo con informazioni dettagliate sul processo di dimissioni.</p>\n                    <p>Grazie ancora per il vostro atteggiamento positivo e duro lavoro in tutti questi anni.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(80,7,'ja','Employee Resignation','<p>件名:-HR 部門/企業は辞表を送信します。</p>\n                    <p>{assign_user} の認証を解除します。</p>\n                    <p>{ notice_date} に対するあなたの辞任通知を { resignation_date} に正式に受理することを正式に確認することは、非常に残念です。</p>\n                    <p>あなたと一緒に仕事をしていて、チームのために、あなたの将来の努力において、あなたのことを最高のものにしたいと思っています。 このレターには、辞任プロセスに関する詳細な情報が記載されている情報パケットをご覧ください。</p>\n                    <p>これらの長年の前向きな姿勢と努力を重ねて感謝します。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(81,7,'nl','Employee Resignation','<p>Betreft: -HR-afdeling/Bedrijf om ontslagbrief te sturen.</p>\n                    <p>Geachte { assign_user },</p>\n                    <p>Het is met grote spijt dat ik de ontvangst van uw ontslagbrief op { notice_date } tot { resignation_date } formeel de ontvangst van uw laatste dag van het werk bevestigt.</p>\n                    <p>Het was een genoegen om met u samen te werken, en namens het team zou ik u het allerbeste willen wensen in al uw toekomstige inspanningen. Vermeld bij deze brief een informatiepakket met gedetailleerde informatie over het ontslagproces.</p>\n                    <p>Nogmaals bedankt voor uw positieve houding en hard werken al die jaren.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(82,7,'pl','Employee Resignation','<p>Temat: -Dział HR/Firma do wysyłania listu rezygnacyjnego.</p>\n                    <p>Drogi użytkownika {assign_user },</p>\n                    <p>Z wielkim żalem, że oficjalnie potwierdzam otrzymanie powiadomienia o rezygnacji w dniu {notice_date } to {resignation_date } to tw&oacute;j ostatni dzień pracy.</p>\n                    <p>Z przyjemnością wsp&oacute;łpracujemy z Tobą, a w imieniu zespołu chciałbym życzyć Wam wszystkiego najlepszego we wszystkich swoich przyszłych przedsięwzięciu. Dołączone do tego listu prosimy o znalezienie pakietu informacyjnego ze szczeg&oacute;łowymi informacjami na temat procesu dymisji.</p>\n                    <p>Jeszcze raz dziękuję za pozytywne nastawienie i ciężką pracę przez te wszystkie lata.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(83,7,'ru','Employee Resignation','<p>Тема: -HR отдел/Компания отправить письмо об отставке.</p>\n                    <p>Уважаемый пользователь { assign_user },</p>\n                    <p>С большим сожалением я официально подтверждаю получение вашего уведомления об отставке { notice_date } в { resignation_date }-это ваш последний день работы.</p>\n                    <p>С Вами было приятно работать, и от имени команды я хотел бы по# желать вам самого лучшего во всех ваших будущих начинаниях. В этом письме Вы можете найти информационный пакет с подробной информацией об отставке.</p>\n                    <p>Еще раз спасибо за ваше позитивное отношение и трудолюбие все эти годы.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(84,7,'pt','Employee Resignation','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de demiss&atilde;o.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {assign_user},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">&Eacute; com grande pesar que reconhe&ccedil;o formalmente o recebimento do seu aviso de demiss&atilde;o em {notice_date} a {resignation_date} &eacute; o seu dia final de trabalho.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Foi um prazer trabalhar com voc&ecirc;, e em nome da equipe, gostaria de desej&aacute;-lo o melhor em todos os seus futuros empreendimentos. Inclu&iacute;dos com esta carta, por favor, encontre um pacote de informa&ccedil;&otilde;es com informa&ccedil;&otilde;es detalhadas sobre o processo de demiss&atilde;o.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado novamente por sua atitude positiva e trabalho duro todos esses anos.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(85,8,'ar','Employee Trip','<p>Subject : -HR ادارة / شركة لارسال رسالة رحلة.</p>\n                    <p>عزيزي { employee_trip_name },</p>\n                    <p>قمة الصباح إليك ! أكتب إلى مكتب إدارتكم بطلب متواضع للسفر من أجل زيارة إلى الخارج عن قصد.</p>\n                    <p>وسيكون هذا المنتدى هو المنتدى الرئيسي لأعمال المناخ في العام ، وقد كان محظوظا بما فيه الكفاية لكي يرشح لتمثيل شركتنا والمنطقة خلال الحلقة الدراسية.</p>\n                    <p>إن عضويتي التي دامت ثلاث سنوات كجزء من المجموعة والمساهمات التي قدمتها إلى الشركة ، ونتيجة لذلك ، كانت مفيدة من الناحية التكافلية. وفي هذا الصدد ، فإنني أطلب منكم بصفتي الرئيس المباشر لي أن يسمح لي بالحضور.</p>\n                    <p>مزيد من التفاصيل عن الرحلة :&nbsp;</p>\n                    <p>مدة الرحلة : { start_date } الى { end_date }</p>\n                    <p>الغرض من الزيارة : { purpose_of_visit }</p>\n                    <p>مكان الزيارة : { place_of_visit }</p>\n                    <p>الوصف : { trip_description }</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(86,8,'da','Employee Trip','<p>Om: HR-afdelingen / Kompagniet, der skal sende udflugten.</p>\n                    <p>K&aelig;re { employee_trip_name },</p>\n                    <p>Godmorgen til dig! Jeg skriver til dit kontor med en ydmyg anmodning om at rejse for en { purpose_of_visit } i udlandet.</p>\n                    <p>Det ville v&aelig;re &aring;rets f&oslash;rende klimaforum, og det ville v&aelig;re heldigt nok at blive nomineret til at repr&aelig;sentere vores virksomhed og regionen under seminaret.</p>\n                    <p>Mit tre&aring;rige medlemskab som en del af den gruppe og de bidrag, jeg har givet til virksomheden, har som f&oslash;lge heraf v&aelig;ret symbiotisk fordelagtigt. I den henseende anmoder jeg om, at De som min n&aelig;rmeste overordnede giver mig lov til at deltage.</p>\n                    <p>Flere oplysninger om turen:</p>\n                    <p>Trip Duration: { start_date } til { end_date }</p>\n                    <p>Form&aring;let med Bes&oslash;g: { purpose_of_visit }</p>\n                    <p>Plads af bes&oslash;g: { place_of_visit }</p>\n                    <p>Beskrivelse: { trip_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(87,8,'de','Employee Trip','<p>Betreff: -Personalabteilung/Firma, um Reisebrief zu schicken.</p>\n                    <p>Sehr geehrter {employee_trip_name},</p>\n                    <p>Top of the morning to you! Ich schreibe an Ihre Dienststelle mit dem&uuml;tiger Bitte um eine Reise nach einem {purpose_of_visit} im Ausland.</p>\n                    <p>Es w&auml;re das f&uuml;hrende Klima-Business-Forum des Jahres und hatte das Gl&uuml;ck, nominiert zu werden, um unser Unternehmen und die Region w&auml;hrend des Seminars zu vertreten.</p>\n                    <p>Meine dreij&auml;hrige Mitgliedschaft als Teil der Gruppe und die Beitr&auml;ge, die ich an das Unternehmen gemacht habe, sind dadurch symbiotisch vorteilhaft gewesen. In diesem Zusammenhang ersuche ich Sie als meinen unmittelbaren Vorgesetzten, mir zu gestatten, zu besuchen.</p>\n                    <p>Mehr Details zu Reise:</p>\n                    <p>Dauer der Fahrt: {start_date} bis {end_date}</p>\n                    <p>Zweck des Besuchs: {purpose_of_visit}</p>\n                    <p>Ort des Besuchs: {place_of_visit}</p>\n                    <p>Beschreibung: {trip_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(88,8,'en','Employee Trip','<p><strong>Subject:-HR department/Company to send trip letter .</strong></p>\n                    <p><strong>Dear {employee_trip_name},</strong></p>\n                    <p>Top of the morning to you! I am writing to your department office with a humble request to travel for a {purpose_of_visit} abroad.</p>\n                    <p>It would be the leading climate business forum of the year and have been lucky enough to be nominated to represent our company and the region during the seminar.</p>\n                    <p>My three-year membership as part of the group and contributions I have made to the company, as a result, have been symbiotically beneficial. In that regard, I am requesting you as my immediate superior to permit me to attend.</p>\n                    <p>More detail about trip:{start_date} to {end_date}</p>\n                    <p>Trip Duration:{start_date} to {end_date}</p>\n                    <p>Purpose of Visit:{purpose_of_visit}</p>\n                    <p>Place of Visit:{place_of_visit}</p>\n                    <p>Description:{trip_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(89,8,'es','Employee Trip','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de viaje.</p>\n                    <p>Estimado {employee_trip_name},</p>\n                    <p>&iexcl;Top de la ma&ntilde;ana para ti! Estoy escribiendo a su oficina del departamento con una humilde petici&oacute;n de viajar para un {purpose_of_visit} en el extranjero.</p>\n                    <p>Ser&iacute;a el principal foro de negocios clim&aacute;ticos del a&ntilde;o y han tenido la suerte de ser nominados para representar a nuestra compa&ntilde;&iacute;a y a la regi&oacute;n durante el seminario.</p>\n                    <p>Mi membres&iacute;a de tres a&ntilde;os como parte del grupo y las contribuciones que he hecho a la compa&ntilde;&iacute;a, como resultado, han sido simb&oacute;ticamente beneficiosos. En ese sentido, le estoy solicitando como mi superior inmediato que me permita asistir.</p>\n                    <p>M&aacute;s detalles sobre el viaje:&nbsp;</p>\n                    <p>Duraci&oacute;n del viaje: {start_date} a {end_date}</p>\n                    <p>Finalidad de la visita: {purpose_of_visit}</p>\n                    <p>Lugar de visita: {place_of_visit}</p>\n                    <p>Descripci&oacute;n: {trip_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(90,8,'fr','Employee Trip','<p>Objet: -Service des RH / Compagnie pour envoyer une lettre de voyage.</p>\n                    <p>Cher { employee_trip_name },</p>\n                    <p>Top of the morning to you ! J&eacute;crai au bureau de votre minist&egrave;re avec une humble demande de voyage pour une {purpose_of_visit } &agrave; l&eacute;tranger.</p>\n                    <p>Il sagit du principal forum sur le climat de lann&eacute;e et a eu la chance d&ecirc;tre d&eacute;sign&eacute; pour repr&eacute;senter notre entreprise et la r&eacute;gion au cours du s&eacute;minaire.</p>\n                    <p>Mon adh&eacute;sion de trois ans au groupe et les contributions que jai faites &agrave; lentreprise, en cons&eacute;quence, ont &eacute;t&eacute; b&eacute;n&eacute;fiques sur le plan symbiotique. &Agrave; cet &eacute;gard, je vous demande d&ecirc;tre mon sup&eacute;rieur imm&eacute;diat pour me permettre dy assister.</p>\n                    <p>Plus de d&eacute;tails sur le voyage:</p>\n                    <p>Dur&eacute;e du voyage: { start_date } &agrave; { end_date }</p>\n                    <p>Objet de la visite: { purpose_of_visit}</p>\n                    <p>Lieu de visite: { place_of_visit }</p>\n                    <p>Description: { trip_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(91,8,'it','Employee Trip','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di viaggio.</p>\n                    <p>Caro {employee_trip_name},</p>\n                    <p>In cima al mattino a te! Scrivo al tuo ufficio dipartimento con umile richiesta di viaggio per un {purpose_of_visit} allestero.</p>\n                    <p>Sarebbe il forum aziendale sul clima leader dellanno e sono stati abbastanza fortunati da essere nominati per rappresentare la nostra azienda e la regione durante il seminario.</p>\n                    <p>La mia adesione triennale come parte del gruppo e i contributi che ho apportato allazienda, di conseguenza, sono stati simbioticamente vantaggiosi. A tal proposito, vi chiedo come mio immediato superiore per consentirmi di partecipare.</p>\n                    <p>Pi&ugrave; dettagli sul viaggio:</p>\n                    <p>Trip Duration: {start_date} a {end_date}</p>\n                    <p>Finalit&agrave; di Visita: {purpose_of_visit}</p>\n                    <p>Luogo di Visita: {place_of_visit}</p>\n                    <p>Descrizione: {trip_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(92,8,'ja','Employee Trip','<p>件名:-HR 部門/会社は出張レターを送信します。</p>\n                    <p>{ employee_trip_name} に出庫します。</p>\n                    <p>朝のトップだ ! 海外で {purpose_of_visit} をお願いしたいという謙虚な要求をもって、私はあなたの部署に手紙を書いています。</p>\n                    <p>これは、今年の主要な気候ビジネス・フォーラムとなり、セミナーの開催中に当社と地域を代表する候補になるほど幸運にも恵まれています。</p>\n                    <p>私が会社に対して行った 3 年間のメンバーシップは、その結果として、共生的に有益なものでした。 その点では、私は、私が出席することを許可することを、私の即座の上司として</p>\n                    <p>トリップについての詳細 :</p>\n                    <p>トリップ期間:{start_date} を {end_date} に設定します</p>\n                    <p>アクセスの目的 :{purpose_of_visit}</p>\n                    <p>訪問の場所 :{place_of_visit}</p>\n                    <p>説明:{trip_description}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(93,8,'nl','Employee Trip','<p>Betreft: -HR-afdeling/Bedrijf om reisbrief te sturen.</p>\n                    <p>Geachte { employee_trip_name },</p>\n                    <p>Top van de ochtend aan u! Ik schrijf uw afdelingsbureau met een bescheiden verzoek om een { purpose_of_visit } in het buitenland te bezoeken.</p>\n                    <p>Het zou het toonaangevende klimaatforum van het jaar zijn en hebben het geluk gehad om genomineerd te worden om ons bedrijf en de regio te vertegenwoordigen tijdens het seminar.</p>\n                    <p>Mijn driejarige lidmaatschap als onderdeel van de groep en bijdragen die ik heb geleverd aan het bedrijf, als gevolg daarvan, zijn symbiotisch gunstig geweest. Wat dat betreft, verzoek ik u als mijn directe chef mij in staat te stellen aanwezig te zijn.</p>\n                    <p>Meer details over reis:</p>\n                    <p>Duur van reis: { start_date } tot { end_date }</p>\n                    <p>Doel van bezoek: { purpose_of_visit }</p>\n                    <p>Plaats van bezoek: { place_of_visit }</p>\n                    <p>Beschrijving: { trip_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u we</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(94,8,'pl','Employee Trip','<p>Temat:-Dział HR/Firma do wysyłania listu podr&oacute;ży.</p>\n                    <p>Szanowny {employee_trip_name },</p>\n                    <p>Od samego rana do Ciebie! Piszę do twojego biura, z pokornym prośbą o wyjazd na {purpose_of_visit&nbsp;} za granicą.</p>\n                    <p>Byłoby to wiodącym forum biznesowym w tym roku i miało szczęście być nominowane do reprezentowania naszej firmy i regionu podczas seminarium.</p>\n                    <p>Moje trzyletnie członkostwo w grupie i składkach, kt&oacute;re uczyniłem w firmie, w rezultacie, były symbiotycznie korzystne. W tym względzie, zwracam się do pana o m&oacute;j bezpośredni przełożony, kt&oacute;ry pozwoli mi na udział w tej sprawie.</p>\n                    <p>Więcej szczeg&oacute;ł&oacute;w na temat wyjazdu:</p>\n                    <p>Czas trwania rejsu: {start_date } do {end_date }</p>\n                    <p>Cel wizyty: {purpose_of_visit }</p>\n                    <p>Miejsce wizyty: {place_of_visit }</p>\n                    <p>Opis: {trip_description }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(95,8,'ru','Employee Trip','<p>Тема: -HR отдел/Компания для отправки письма на поездку.</p>\n                    <p>Уважаемый { employee_trip_name },</p>\n                    <p>С утра до тебя! Я пишу в ваш отдел с смиренным запросом на поездку за границу.</p>\n                    <p>Это был бы ведущий климатический бизнес-форум года и по везло, что в ходе семинара он будет представлять нашу компанию и регион.</p>\n                    <p>Мое трехлетнее членство в составе группы и взносы, которые я внес в компанию, в результате, были симбиотически выгодны. В этой связи я прошу вас как моего непосредственного начальника разрешить мне присутствовать.</p>\n                    <p>Подробнее о поездке:</p>\n                    <p>Длительность поездки: { start_date } в { end_date }</p>\n                    <p>Цель посещения: { purpose_of_visit }</p>\n                    <p>Место посещения: { place_of_visit }</p>\n                    <p>Описание: { trip_description }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(96,8,'pt','Employee Trip','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de viagem.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_trip_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Topo da manh&atilde; para voc&ecirc;! Estou escrevendo para o seu departamento de departamento com um humilde pedido para viajar por um {purpose_of_visit} no exterior.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Seria o principal f&oacute;rum de neg&oacute;cios clim&aacute;tico do ano e teve a sorte de ser indicado para representar nossa empresa e a regi&atilde;o durante o semin&aacute;rio.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">A minha filia&ccedil;&atilde;o de tr&ecirc;s anos como parte do grupo e contribui&ccedil;&otilde;es que fiz &agrave; empresa, como resultado, foram simbioticamente ben&eacute;fico. A esse respeito, solicito que voc&ecirc; seja meu superior imediato para me permitir comparecer.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Mais detalhes sobre viagem:</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Trip Dura&ccedil;&atilde;o: {start_date} a {end_date}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Objetivo da Visita: {purpose_of_visit}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Local de Visita: {place_of_visit}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Descri&ccedil;&atilde;o: {trip_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(97,9,'ar','Employee Promotion','<p>Subject : -HR القسم / الشركة لارسال رسالة تهنئة الى العمل للتهنئة بالعمل.</p>\n                    <p>عزيزي { employee_promotion_name },</p>\n                    <p>تهاني على ترقيتك الى { promotion_designation } { promotion_title } الفعال { promotion_date }.</p>\n                    <p>وسنواصل توقع تحقيق الاتساق وتحقيق نتائج عظيمة منكم في دوركم الجديد. ونأمل أن تكون قدوة للموظفين الآخرين في المنظمة.</p>\n                    <p>ونتمنى لكم التوفيق في أداءكم في المستقبل ، وتهانينا !</p>\n                    <p>ومرة أخرى ، تهانئي على الموقف الجديد.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(98,9,'da','Employee Promotion','<p>Om: HR-afdelingen / Virksomheden om at sende en lyk&oslash;nskning til jobfremst&oslash;d.</p>\n                    <p>K&aelig;re { employee_promotion_name },</p>\n                    <p>Tillykke med din forfremmelse til { promotion_designation } { promotion_title } effektiv { promotion_date }.</p>\n                    <p>Vi vil fortsat forvente konsekvens og store resultater fra Dem i Deres nye rolle. Vi h&aring;ber, at De vil foreg&aring; med et godt eksempel for de &oslash;vrige ansatte i organisationen.</p>\n                    <p>Vi &oslash;nsker Dem held og lykke med Deres fremtidige optr&aelig;den, og tillykke!</p>\n                    <p>Endnu en gang tillykke med den nye holdning.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(99,9,'de','Employee Promotion','<p>Betrifft: -Personalabteilung/Unternehmen, um einen Gl&uuml;ckwunschschreiben zu senden.</p>\n                    <p>Sehr geehrter {employee_promotion_name},</p>\n                    <p>Herzlichen Gl&uuml;ckwunsch zu Ihrer Werbeaktion an {promotion_designation} {promotion_title} wirksam {promotion_date}.</p>\n                    <p>Wir werden von Ihnen in Ihrer neuen Rolle weiterhin Konsistenz und gro&szlig;e Ergebnisse erwarten. Wir hoffen, dass Sie ein Beispiel f&uuml;r die anderen Mitarbeiter der Organisation setzen werden.</p>\n                    <p>Wir w&uuml;nschen Ihnen viel Gl&uuml;ck f&uuml;r Ihre zuk&uuml;nftige Leistung, und gratulieren!</p>\n                    <p>Nochmals herzlichen Gl&uuml;ckwunsch zu der neuen Position.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(100,9,'en','Employee Promotion','<p>&nbsp;</p>\n                    <p><strong>Subject:-HR department/Company to send job promotion congratulation letter.</strong></p>\n                    <p><strong>Dear {employee_promotion_name},</strong></p>\n                    <p>Congratulations on your promotion to {promotion_designation} {promotion_title} effective {promotion_date}.</p>\n                    <p>We shall continue to expect consistency and great results from you in your new role. We hope that you will set an example for the other employees of the organization.</p>\n                    <p>We wish you luck for your future performance, and congratulations!.</p>\n                    <p>Again, congratulations on the new position.</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(101,9,'es','Employee Promotion','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de felicitaci&oacute;n de promoci&oacute;n de empleo.</p>\n                    <p>Estimado {employee_promotion_name},</p>\n                    <p>Felicidades por su promoci&oacute;n a {promotion_designation} {promotion_title} efectiva {promotion_date}.</p>\n                    <p>Seguiremos esperando la coherencia y los grandes resultados de ustedes en su nuevo papel. Esperamos que usted ponga un ejemplo para los otros empleados de la organizaci&oacute;n.</p>\n                    <p>Le deseamos suerte para su futuro rendimiento, y felicitaciones!.</p>\n                    <p>Una vez m&aacute;s, felicidades por la nueva posici&oacute;n.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(102,9,'fr','Employee Promotion','<p>Objet: -D&eacute;partement RH / Soci&eacute;t&eacute; denvoi dune lettre de f&eacute;licitations pour la promotion de lemploi.</p>\n                    <p>Cher { employee_promotion_name },</p>\n                    <p>F&eacute;licitations pour votre promotion &agrave; { promotion_d&eacute;signation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Nous continuerons &agrave; vous attendre &agrave; une coh&eacute;rence et &agrave; de grands r&eacute;sultats de votre part dans votre nouveau r&ocirc;le. Nous esp&eacute;rons que vous trouverez un exemple pour les autres employ&eacute;s de lorganisation.</p>\n                    <p>Nous vous souhaitons bonne chance pour vos performances futures et f&eacute;licitations !</p>\n                    <p>Encore une fois, f&eacute;licitations pour le nouveau poste.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(103,9,'it','Employee Promotion','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare la lettera di congratulazioni alla promozione del lavoro.</p>\n                    <p>Caro {employee_promotion_name},</p>\n                    <p>Complimenti per la tua promozione a {promotion_designation} {promotion_title} efficace {promotion_date}.</p>\n                    <p>Continueremo ad aspettarci coerenza e grandi risultati da te nel tuo nuovo ruolo. Ci auguriamo di impostare un esempio per gli altri dipendenti dellorganizzazione.</p>\n                    <p>Ti auguriamo fortuna per le tue prestazioni future, e complimenti!.</p>\n                    <p>Ancora, complimenti per la nuova posizione.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(104,9,'ja','Employee Promotion','<p>件名:-HR 部門/企業は、求人広告の祝賀状を送信します。</p>\n                    <p>{ employee_promotion_name} に出庫します。</p>\n                    <p>{promotion_designation } { promotion_title} {promotion_date} 販促に対するお祝いのお祝いがあります。</p>\n                    <p>今後とも、お客様の新しい役割において一貫性と大きな成果を期待します。 組織の他の従業員の例を設定したいと考えています。</p>\n                    <p>あなたの未来のパフォーマンスをお祈りします。おめでとうございます。</p>\n                    <p>また、新しい地位について祝意を表する。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(105,9,'nl','Employee Promotion','<p>Betreft: -HR-afdeling/Bedrijf voor het versturen van de aanbevelingsbrief voor taakpromotie.</p>\n                    <p>Geachte { employee_promotion_name },</p>\n                    <p>Gefeliciteerd met uw promotie voor { promotion_designation } { promotion_title } effective { promotion_date }.</p>\n                    <p>Wij zullen de consistentie en de grote resultaten van u in uw nieuwe rol blijven verwachten. Wij hopen dat u een voorbeeld zult stellen voor de andere medewerkers van de organisatie.</p>\n                    <p>Wij wensen u geluk voor uw toekomstige prestaties, en gefeliciteerd!.</p>\n                    <p>Nogmaals, gefeliciteerd met de nieuwe positie.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(106,9,'pl','Employee Promotion','<p>Temat: -Dział kadr/Firma w celu wysłania listu gratulacyjnego dla promocji zatrudnienia.</p>\n                    <p>Szanowny {employee_promotion_name },</p>\n                    <p>Gratulacje dla awansowania do {promotion_designation } {promotion_title } efektywnej {promotion_date }.</p>\n                    <p>W dalszym ciągu oczekujemy konsekwencji i wspaniałych wynik&oacute;w w Twojej nowej roli. Mamy nadzieję, że postawicie na przykład dla pozostałych pracownik&oacute;w organizacji.</p>\n                    <p>Życzymy powodzenia dla przyszłych wynik&oacute;w, gratulujemy!.</p>\n                    <p>Jeszcze raz gratulacje na nowej pozycji.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(107,9,'ru','Employee Promotion','<p>Тема: -HR отдел/Компания для отправки письма с поздравлением.</p>\n                    <p>Уважаемый { employee_promotion_name },</p>\n                    <p>Поздравляем вас с продвижением в { promotion_designation } { promotion_title } эффективная { promotion_date }.</p>\n                    <p>Мы будем и впредь ожидать от вас соответствия и больших результатов в вашей новой роли. Мы надеемся, что вы станете примером для других сотрудников организации.</p>\n                    <p>Желаем вам удачи и поздравлений!</p>\n                    <p>Еще раз поздравляю с новой позицией.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(108,9,'pt','Employee Promotion','<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de felicita&ccedil;&atilde;o de promo&ccedil;&atilde;o de emprego.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_promotion_name},</p>\n                    <p style=\"font-size: 14.4px;\">Parab&eacute;ns pela sua promo&ccedil;&atilde;o para {promotion_designation} {promotion_title} efetivo {promotion_date}.</p>\n                    <p style=\"font-size: 14.4px;\">Continuaremos a esperar consist&ecirc;ncia e grandes resultados a partir de voc&ecirc; em seu novo papel. Esperamos que voc&ecirc; defina um exemplo para os demais funcion&aacute;rios da organiza&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Desejamos sorte para o seu desempenho futuro, e parab&eacute;ns!.</p>\n                    <p style=\"font-size: 14.4px;\">Novamente, parab&eacute;ns pela nova posi&ccedil;&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(109,10,'ar','Employee Complaints','<p>Subject :-قسم الموارد البشرية / الشركة لإرسال رسالة شكوى.</p>\n                    <p>عزيزي { employee_complaints_name },</p>\n                    <p>وأود أن أبلغ عن صراعا بينكم وبين الشخص الآخر. فقد وقعت عدة حوادث خلال الأيام القليلة الماضية ، وأشعر أن الوقت قد حان لتقديم شكوى رسمية ضده / لها.</p>\n                    <p>إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p>شكرا لك</p>\n                    <p>Regards,</p>\n                    <p>إدارة الموارد البشرية ،</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(110,10,'da','Employee Complaints','<p>Om: HR-departementet / Kompagniet for at sende klager.</p>\n                    <p>K&aelig;re { employee_complaints_name },</p>\n                    <p>Jeg vil gerne anmelde en konflikt mellem Dem og den anden person, og der er sket flere episoder i de seneste dage, og jeg mener, at det er p&aring; tide at anmelde en formel klage over for ham.</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(111,10,'de','Employee Complaints','<p>Betrifft: -Personalabteilung/Unternehmen zum Senden von Beschwerden.</p>\n                    <p>Sehr geehrter {employee_complaints_name},</p>\n                    <p>Ich m&ouml;chte einen Konflikt zwischen Ihnen und der anderen Person melden. Es hat in den letzten Tagen mehrere Zwischenf&auml;lle gegeben, und ich glaube, es ist an der Zeit, eine formelle Beschwerde gegen ihn zu erstatten.</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(112,10,'en','Employee Complaints','<p><strong>Subject:-HR department/Company to send complaints letter.</strong></p>\n                    <p><strong>Dear {employee_complaints_name},</strong></p>\n                    <p>I would like to report a conflict between you and the other person.There have been several incidents over the last few days, and I feel that it is time to report a formal complaint against him/her.</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(113,10,'es','Employee Complaints','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de quejas.</p>\n                    <p>Estimado {employee_complaints_name},</p>\n                    <p>Me gustar&iacute;a informar de un conflicto entre usted y la otra persona. Ha habido varios incidentes en los &uacute;ltimos d&iacute;as, y creo que es hora de denunciar una queja formal contra &eacute;l.</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(114,10,'fr','Employee Complaints','<p>Objet: -Service des ressources humaines / Compagnie pour envoyer une lettre de plainte.</p>\n                    <p>Cher { employee_complaints_name },</p>\n                    <p>Je voudrais signaler un conflit entre vous et lautre personne. Il y a eu plusieurs incidents au cours des derniers jours, et je pense quil est temps de signaler une plainte officielle contre lui.</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(115,10,'it','Employee Complaints','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di reclamo.</p>\n                    <p>Caro {employee_complaints_name},</p>\n                    <p>Vorrei segnalare un conflitto tra lei e laltra persona Ci sono stati diversi incidenti negli ultimi giorni, e sento che &egrave; il momento di denunciare una denuncia formale contro di lui.</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(116,10,'ja','Employee Complaints','<p>件名:-HR 部門/会社は、クレーム・レターを送信します。</p>\n                    <p>{ employee_complaints_name} の Dear&nbsp;</p>\n                    <p>あなたと他の人との間の葛藤を報告したいと思いますこの数日間でいくつかの事件が発生しています彼女に対する正式な申し立てをする時だと感じています</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(117,10,'nl','Employee Complaints','<p>Betreft: -HR-afdeling/Bedrijf voor het verzenden van klachtenbrief.</p>\n                    <p>Geachte { employee_complaints_name},</p>\n                    <p>Ik zou een conflict willen melden tussen u en de andere persoon. Er zijn de afgelopen dagen verschillende incidenten geweest en ik denk dat het tijd is om een formele klacht tegen hem/haar in te dienen.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(118,10,'pl','Employee Complaints','<p>Temat:-Dział HR/Firma do wysyłania listu reklamowego.</p>\n                    <p>Szanowna {employee_complaints_name },</p>\n                    <p>Chciałbym zgłosić konflikt między tobą a drugą osobą. W ciągu ostatnich kilku dni było kilka incydent&oacute;w i czuję, że nadszedł czas, aby zgłosić oficjalną skargę przeciwko niej.</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(119,10,'ru','Employee Complaints','<p>Тема: -HR отдел/Компания отправить письмо с жалобами.</p>\n                    <p>Уважаемый { employee_complaints_name }</p>\n                    <p>Я хотел бы сообщить о конфликте между вами и другим человеком. За последние несколько дней произошло несколько инцидентов, и я считаю, что пришло время сообщить о своей официальной жалобе.</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(120,10,'pt','Employee Complaints','<p>Assunto:-Departamento de RH / Empresa para enviar carta de reclama&ccedil;&otilde;es.</p>\n                    <p>Querido {employee_complaints_name},</p>\n                    <p>Eu gostaria de relatar um conflito entre voc&ecirc; e a outra pessoa. Houve v&aacute;rios incidentes ao longo dos &uacute;ltimos dias, e eu sinto que &eacute; hora de relatar uma den&uacute;ncia formal contra him/her.</p>\n                    <p>Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p>Obrigado</p>\n                    <p>Considera,</p>\n                    <p>Departamento de RH,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(121,11,'ar','Employee Warning','<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\">Subject : -HR ادارة / شركة لارسال رسالة تحذير. عزيزي { employe_warning_name }, { warning_subject } { warning_description } إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة. شكرا لك Regards, إدارة الموارد البشرية ، { app_name }</span></span></span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(122,11,'da','Employee Warning','<p>Om: HR-afdelingen / kompagniet for at sende advarselsbrev.</p>\n                    <p>K&aelig;re { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(123,11,'de','Employee Warning','<p>Betreff: -Personalabteilung/Unternehmen zum Senden von Warnschreiben.</p>\n                    <p>Sehr geehrter {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(124,11,'en','Employee Warning','<p><strong>Subject:-HR department/Company to send warning letter.</strong></p>\n                    <p><strong>Dear {employee_warning_name},</strong></p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(125,11,'es','Employee Warning','<p>Asunto: -Departamento de RR.HH./Empresa para enviar carta de advertencia.</p>\n                    <p>Estimado {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(126,11,'fr','Employee Warning','<p>Objet: -HR department / Company to send warning letter.</p>\n                    <p>Cher { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(127,11,'it','Employee Warning','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di avvertimento.</p>\n                    <p>Caro {employee_warning_name},</p>\n                    <p>{warning_subject}</p>\n                    <p>{warning_description}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(128,11,'ja','Employee Warning','<p><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\">件名:-HR 部門/企業は警告レターを送信します。 { employee_warning_name} を出庫します。 {warning_subject} {warning_description} 質問がある場合は、自由に連絡してください。 ありがとう よろしく HR 部門 {app_name}</span></span></span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(129,11,'nl','Employee Warning','<p>Betreft: -HR-afdeling/bedrijf om een waarschuwingsbrief te sturen.</p>\n                    <p>Geachte { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(130,11,'pl','Employee Warning','<p>Temat: -Dział HR/Firma do wysyłania listu ostrzegawczego.</p>\n                    <p>Szanowny {employee_warning_name },</p>\n                    <p>{warning_subject }</p>\n                    <p>{warning_description }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(131,11,'ru','Employee Warning','<p>Тема: -HR отдел/Компания для отправки предупреждающего письма.</p>\n                    <p>Уважаемый { employee_warning_name },</p>\n                    <p>{ warning_subject }</p>\n                    <p>{ warning_description }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(132,11,'pt','Employee Warning','<p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de advert&ecirc;ncia.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Querido {employee_warning_name},</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_subject}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{warning_description}</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Obrigado</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Considera,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">Departamento de RH,</span></p>\n                    <p style=\"font-size: 14.4px;\"><span style=\"font-size: 14.4px;\">{app_name}</span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(133,12,'ar','Employee Termination','<p style=\"text-align: left;\"><span style=\"font-size: 12pt;\"><span style=\"color: #222222;\"><span style=\"white-space: pre-wrap;\"><span style=\"font-size: 12pt; white-space: pre-wrap;\">Subject :-ادارة / شركة HR لارسال رسالة انهاء. عزيزي { </span><span style=\"white-space: pre-wrap;\">employee_termination_name</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } ، هذه الرسالة مكتوبة لإعلامك بأن عملك مع شركتنا قد تم إنهاؤه مزيد من التفاصيل عن الانهاء : تاريخ الاشعار : { </span><span style=\"white-space: pre-wrap;\">notice_date</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } تاريخ الانهاء : { </span><span style=\"white-space: pre-wrap;\">termination_date</span><span style=\"font-size: 12pt; white-space: pre-wrap;\"> } نوع الانهاء : { termination_type } إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة. شكرا لك Regards, إدارة الموارد البشرية ، { app_name }</span></span></span></span></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(134,12,'da','Employee Termination','<p>Emne:-HR-afdelingen / Virksomheden om at sende afslutningstskrivelse.</p>\n                    <p>K&aelig;re { employee_termination_name },</p>\n                    <p>Dette brev er skrevet for at meddele dig, at dit arbejde med vores virksomhed er afsluttet.</p>\n                    <p>Flere oplysninger om oph&aelig;velse:</p>\n                    <p>Adviseringsdato: { notifice_date }</p>\n                    <p>Opsigelsesdato: { termination_date }</p>\n                    <p>Opsigelsestype: { termination_type }</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(135,12,'de','Employee Termination','<p>Betreff: -Personalabteilung/Firma zum Versenden von K&uuml;ndigungsschreiben.</p>\n                    <p>Sehr geehrter {employee_termination_name},</p>\n                    <p>Dieser Brief wird Ihnen schriftlich mitgeteilt, dass Ihre Besch&auml;ftigung mit unserem Unternehmen beendet ist.</p>\n                    <p>Weitere Details zur K&uuml;ndigung:</p>\n                    <p>K&uuml;ndigungsdatum: {notice_date}</p>\n                    <p>Beendigungsdatum: {termination_date}</p>\n                    <p>Abbruchstyp: {termination_type}</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(136,12,'en','Employee Termination','<p><strong>Subject:-HR department/Company to send termination letter.</strong></p>\n                    <p><strong>Dear {employee_termination_name},</strong></p>\n                    <p>This letter is written to notify you that your employment with our company is terminated.</p>\n                    <p>More detail about termination:</p>\n                    <p>Notice Date :{notice_date}</p>\n                    <p>Termination Date:{termination_date}</p>\n                    <p>Termination Type:{termination_type}</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(137,12,'es','Employee Termination','<p>Asunto: -Departamento de RRHH/Empresa para enviar carta de rescisi&oacute;n.</p>\n                    <p>Estimado {employee_termination_name},</p>\n                    <p>Esta carta est&aacute; escrita para notificarle que su empleo con nuestra empresa ha terminado.</p>\n                    <p>M&aacute;s detalles sobre la terminaci&oacute;n:</p>\n                    <p>Fecha de aviso: {notice_date}</p>\n                    <p>Fecha de terminaci&oacute;n: {termination_date}</p>\n                    <p>Tipo de terminaci&oacute;n: {termination_type}</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(138,12,'fr','Employee Termination','<p>Objet: -HR department / Company to send termination letter.</p>\n                    <p>Cher { employee_termination_name },</p>\n                    <p>Cette lettre est r&eacute;dig&eacute;e pour vous aviser que votre emploi aupr&egrave;s de notre entreprise prend fin.</p>\n                    <p>Plus de d&eacute;tails sur larr&ecirc;t:</p>\n                    <p>Date de lavis: { notice_date }</p>\n                    <p>Date de fin: { termination_date}</p>\n                    <p>Type de terminaison: { termination_type }</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(139,12,'it','Employee Termination','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di terminazione.</p>\n                    <p>Caro {employee_termination_name},</p>\n                    <p>Questa lettera &egrave; scritta per comunicarti che la tua occupazione con la nostra azienda &egrave; terminata.</p>\n                    <p>Pi&ugrave; dettagli sulla cessazione:</p>\n                    <p>Data avviso: {notice_data}</p>\n                    <p>Data di chiusura: {termination_date}</p>\n                    <p>Tipo di terminazione: {termination_type}</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:08','2022-09-13 19:42:08'),(140,12,'ja','Employee Termination','<p>件名:-HR 部門/企業は終了文字を送信します。</p>\n                    <p>{ employee_termination_name} を終了します。</p>\n                    <p>この手紙は、当社の雇用が終了していることをあなたに通知するために書かれています。</p>\n                    <p>終了についての詳細 :</p>\n                    <p>通知日 :{notice_date}</p>\n                    <p>終了日:{termination_date}</p>\n                    <p>終了タイプ:{termination_type}</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(141,12,'nl','Employee Termination','<p>Betreft: -HR-afdeling/Bedrijf voor verzending van afgiftebrief.</p>\n                    <p>Geachte { employee_termination_name },</p>\n                    <p>Deze brief is geschreven om u te melden dat uw werk met ons bedrijf wordt be&euml;indigd.</p>\n                    <p>Meer details over be&euml;indiging:</p>\n                    <p>Datum kennisgeving: { notice_date }</p>\n                    <p>Be&euml;indigingsdatum: { termination_date }</p>\n                    <p>Be&euml;indigingstype: { termination_type }</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(142,12,'pl','Employee Termination','<p>Temat: -Dział kadr/Firma do wysyłania listu zakańczego.</p>\n                    <p>Droga {employee_termination_name },</p>\n                    <p>Ten list jest napisany, aby poinformować Cię, że Twoje zatrudnienie z naszą firmą zostaje zakończone.</p>\n                    <p>Więcej szczeg&oacute;ł&oacute;w na temat zakończenia pracy:</p>\n                    <p>Data ogłoszenia: {notice_date }</p>\n                    <p>Data zakończenia: {termination_date }</p>\n                    <p>Typ zakończenia: {termination_type }</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(143,12,'ru','Employee Termination','<p>Тема: -HR отдел/Компания отправить письмо о прекращении.</p>\n                    <p>Уважаемый { employee_termination_name },</p>\n                    <p>Это письмо написано, чтобы уведомить вас о том, что ваше трудоустройство с нашей компанией прекратилось.</p>\n                    <p>Более подробная информация о завершении:</p>\n                    <p>Дата уведомления: { notice_date }</p>\n                    <p>Дата завершения: { termination_date }</p>\n                    <p>Тип завершения: { termination_type }</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(144,12,'pt','Employee Termination','<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de rescis&atilde;o.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {employee_termination_name},</p>\n                    <p style=\"font-size: 14.4px;\">Esta carta &eacute; escrita para notific&aacute;-lo de que seu emprego com a nossa empresa est&aacute; finalizado.</p>\n                    <p style=\"font-size: 14.4px;\">Mais detalhes sobre a finaliza&ccedil;&atilde;o:</p>\n                    <p style=\"font-size: 14.4px;\">Data de Aviso: {notice_date}</p>\n                    <p style=\"font-size: 14.4px;\">Data de Finaliza&ccedil;&atilde;o: {termination_date}</p>\n                    <p style=\"font-size: 14.4px;\">Tipo de Rescis&atilde;o: {termination_type}</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(145,13,'ar','Leave Statu','<p style=\"text-align: left;\">Subject : -HR ادارة / شركة لارسال رسالة الموافقة الى { leave_status } اجازة أو ترك.</p>\n                    <p style=\"text-align: left;\">عزيزي { leave_status_name } ،</p>\n                    <p style=\"text-align: left;\">لدي { leave_status } طلب الخروج الخاص بك الى { leave_reason } من { leave_start_date } الى { leave_end_date }.</p>\n                    <p style=\"text-align: left;\">{ total_leave_days } أيام لدي { leave_status } طلب الخروج الخاص بك ل ـ { leave_reason }.</p>\n                    <p style=\"text-align: left;\">ونحن نطلب منكم أن تكملوا كل أعمالكم المعلقة أو أي قضية مهمة أخرى حتى لا تواجه الشركة أي خسارة أو مشكلة أثناء غيابكم. نحن نقدر لك مصداقيتك لإبلاغنا بوقت كاف مقدما</p>\n                    <p style=\"text-align: left;\">إشعر بالحرية للوصول إلى الخارج إذا عندك أي أسئلة.</p>\n                    <p style=\"text-align: left;\">شكرا لك</p>\n                    <p style=\"text-align: left;\">Regards,</p>\n                    <p style=\"text-align: left;\">إدارة الموارد البشرية ،</p>\n                    <p style=\"text-align: left;\">{ app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(146,13,'da','Leave Statu','<p>Emne:-HR-afdelingen / Kompagniet for at sende godkendelsesbrev til { leave_status } en ferie eller orlov.</p>\n                    <p>K&aelig;re { leave_status_name },</p>\n                    <p>Jeg har { leave_status } din orlov-anmodning for { leave_reason } fra { leave_start_date } til { leave_end_date }.</p>\n                    <p>{ total_leave_days } dage Jeg har { leave_status } din anmodning om { leave_reason } for { leave_reason }.</p>\n                    <p>Vi beder dig om at f&aelig;rdigg&oslash;re alt dit udest&aring;ende arbejde eller andet vigtigt sp&oslash;rgsm&aring;l, s&aring; virksomheden ikke st&aring;r over for nogen tab eller problemer under dit frav&aelig;r. Vi s&aelig;tter pris p&aring; din bet&aelig;nksomhed at informere os godt p&aring; forh&aring;nd</p>\n                    <p>Du er velkommen til at r&aelig;kke ud, hvis du har nogen sp&oslash;rgsm&aring;l.</p>\n                    <p>Tak.</p>\n                    <p>Med venlig hilsen</p>\n                    <p>HR-afdelingen,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(147,13,'de','Leave Statu','<p>Betreff: -Personalabteilung/Firma, um den Genehmigungsschreiben an {leave_status} einen Urlaub oder Urlaub zu schicken.</p>\n                    <p>Sehr geehrter {leave_status_name},</p>\n                    <p>Ich habe {leave_status} Ihre Urlaubsanforderung f&uuml;r {leave_reason} von {leave_start_date} bis {leave_end_date}.</p>\n                    <p>{total_leave_days} Tage Ich habe {leave_status} Ihre Urlaubs-Anfrage f&uuml;r {leave_reason}.</p>\n                    <p>Wir bitten Sie, Ihre gesamte anstehende Arbeit oder ein anderes wichtiges Thema abzuschlie&szlig;en, so dass das Unternehmen w&auml;hrend Ihrer Abwesenheit keinen Verlust oder kein Problem zu Gesicht bekommen hat. Wir sch&auml;tzen Ihre Nachdenklichkeit, um uns im Vorfeld gut zu informieren</p>\n                    <p>F&uuml;hlen Sie sich frei, wenn Sie Fragen haben.</p>\n                    <p>Danke.</p>\n                    <p>Betrachtet,</p>\n                    <p>Personalabteilung,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(148,13,'en','Leave Statu','<p><strong>Subject:-HR department/Company to send approval letter to {leave_status} a vacation or leave.</strong></p>\n                    <p><strong>Dear {leave_status_name},</strong></p>\n                    <p>I have {leave_status} your leave request for {leave_reason} from {leave_start_date} to {leave_end_date}.</p>\n                    <p>{total_leave_days} days I have {leave_status}&nbsp; your leave request for {leave_reason}.</p>\n                    <p>We request you to complete all your pending work or any other important issue so that the company does not face any loss or problem during your absence. We appreciate your thoughtfulness to inform us well in advance</p>\n                    <p>&nbsp;</p>\n                    <p>Feel free to reach out if you have any questions.</p>\n                    <p>Thank you</p>\n                    <p><strong>Regards,</strong></p>\n                    <p><strong>HR Department,</strong></p>\n                    <p><strong>{app_name}</strong></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(149,13,'es','Leave Statu','<p>Asunto: -Departamento de RR.HH./Empresa para enviar la carta de aprobaci&oacute;n a {leave_status} unas vacaciones o permisos.</p>\n                    <p>Estimado {leave_status_name},</p>\n                    <p>Tengo {leave_status} la solicitud de licencia para {leave_reason} de {leave_start_date} a {leave_end_date}.</p>\n                    <p>{total_leave_days} d&iacute;as tengo {leave_status} la solicitud de licencia para {leave_reason}.</p>\n                    <p>Le solicitamos que complete todos sus trabajos pendientes o cualquier otro asunto importante para que la empresa no se enfrente a ninguna p&eacute;rdida o problema durante su ausencia. Agradecemos su atenci&oacute;n para informarnos con mucha antelaci&oacute;n</p>\n                    <p>Si&eacute;ntase libre de llegar si usted tiene alguna pregunta.</p>\n                    <p>&iexcl;Gracias!</p>\n                    <p>Considerando,</p>\n                    <p>Departamento de Recursos Humanos,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(150,13,'fr','Leave Statu','<p>Objet: -HR department / Company to send approval letter to { leave_status } a vacances or leave.</p>\n                    <p>Cher { leave_status_name },</p>\n                    <p>Jai { leave_statut } votre demande de cong&eacute; pour { leave_reason } de { leave_start_date } &agrave; { leave_date_fin }.</p>\n                    <p>{ total_leave_days } jours I have { leave_status } your leave request for { leave_reason }.</p>\n                    <p>Nous vous demandons de remplir tous vos travaux en cours ou toute autre question importante afin que lentreprise ne soit pas confront&eacute;e &agrave; une perte ou &agrave; un probl&egrave;me pendant votre absence. Nous appr&eacute;cions votre attention pour nous informer longtemps &agrave; lavance</p>\n                    <p>Nh&eacute;sitez pas &agrave; nous contacter si vous avez des questions.</p>\n                    <p>Je vous remercie</p>\n                    <p>Regards,</p>\n                    <p>D&eacute;partement des RH,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(151,13,'it','Leave Statu','<p>Oggetto: - Dipartimento HR / Societ&agrave; per inviare lettera di approvazione a {leave_status} una vacanza o un congedo.</p>\n                    <p>Caro {leave_status_name},</p>\n                    <p>Ho {leave_status} la tua richiesta di permesso per {leave_reason} da {leave_start_date} a {leave_end_date}.</p>\n                    <p>{total_leave_days} giorni I ho {leave_status} la tua richiesta di permesso per {leave_reason}.</p>\n                    <p>Ti richiediamo di completare tutte le tue lavorazioni in sospeso o qualsiasi altra questione importante in modo che lazienda non faccia alcuna perdita o problema durante la tua assenza. Apprezziamo la vostra premura per informarci bene in anticipo</p>\n                    <p>Sentiti libero di raggiungere se hai domande.</p>\n                    <p>Grazie</p>\n                    <p>Riguardo,</p>\n                    <p>Dipartimento HR,</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(152,13,'ja','Leave Statu','<p>件名: 承認レターを { leave_status} に送信するには、 -HR 部門/会社が休暇または休暇を入力します。</p>\n                    <p>{leave_status_name} を終了します。</p>\n                    <p>{ leave_reason } の { leave_start_date} から {leave_end_date}までの { leave_status} の終了要求を { leave_status} しています。</p>\n                    <p>{total_leave_days} 日に { leave_reason}{ leave_status} に対するあなたの休暇要求があります。</p>\n                    <p>お客様は、お客様の不在中に損失や問題が発生しないように、保留中のすべての作業またはその他の重要な問題を完了するよう要求します。 私たちは、前もってお知らせすることに感謝しています。</p>\n                    <p>質問がある場合は、自由に連絡してください。</p>\n                    <p>ありがとう</p>\n                    <p>よろしく</p>\n                    <p>HR 部門</p>\n                    <p>{app_name}</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(153,13,'nl','Leave Statu','<p>Betreft: -HR-afdeling/Bedrijf voor het verzenden van een goedkeuringsbrief aan { leave_status } een vakantie of verlof.</p>\n                    <p>Geachte { leave_status_name },</p>\n                    <p>Ik heb { leave_status } uw verzoek om verlof voor { leave_reason } van { leave_start_date } tot { leave_end_date }.</p>\n                    <p>{ total_leave_days } dagen Ik heb { leave_status } uw verzoek om verlof voor { leave_reason }.</p>\n                    <p>Wij vragen u om al uw lopende werk of een andere belangrijke kwestie, zodat het bedrijf geen verlies of probleem tijdens uw afwezigheid geconfronteerd. We waarderen uw bedachtzaamheid om ons van tevoren goed te informeren.</p>\n                    <p>Voel je vrij om uit te reiken als je vragen hebt.</p>\n                    <p>Dank u wel</p>\n                    <p>Betreft:</p>\n                    <p>HR-afdeling,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(154,13,'pl','Leave Statu','<p>Temat: -Dział kadr/Firma wysyłająca list zatwierdzający do {leave_status } wakacji lub urlop&oacute;w.</p>\n                    <p>Drogi {leave_status_name },</p>\n                    <p>Mam {leave_status } żądanie pozostania dla {leave_reason } od {leave_start_date } do {leave_end_date }.</p>\n                    <p>{total_leave_days } dni Mam {leave_status } Twoje żądanie opuszczenia dla {leave_reason }.</p>\n                    <p>Prosimy o wypełnienie wszystkich oczekujących prac lub innych ważnych kwestii, tak aby firma nie borykała się z żadną stratą lub problemem w czasie Twojej nieobecności. Doceniamy Twoją przemyślność, aby poinformować nas dobrze z wyprzedzeniem</p>\n                    <p>Czuj się swobodnie, jeśli masz jakieś pytania.</p>\n                    <p>Dziękujemy</p>\n                    <p>W odniesieniu do</p>\n                    <p>Dział HR,</p>\n                    <p>{app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(155,13,'ru','Leave Statu','<p>Тема: -HR отдел/Компания отправить письмо с утверждением на { leave_status } отпуск или отпуск.</p>\n                    <p>Уважаемый { leave_status_name },</p>\n                    <p>У меня { leave_status } ваш запрос на отпуск для { leave_reason } из { leave_start_date } в { leave_end_date }.</p>\n                    <p>{ total_leave_days } дней { leave_status } ваш запрос на отпуск для { leave_reason }.</p>\n                    <p>Мы просим вас завершить все ваши ожидающие работы или любой другой важный вопрос, чтобы компания не сталкивалась с потерей или проблемой во время вашего отсутствия. Мы ценим вашу задумчивость, чтобы заблаговременно информировать нас о</p>\n                    <p>Не стеснитесь, если у вас есть вопросы.</p>\n                    <p>Спасибо.</p>\n                    <p>С уважением,</p>\n                    <p>Отдел кадров,</p>\n                    <p>{ app_name }</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(156,13,'pt','Leave Statu','<p style=\"font-size: 14.4px;\">Assunto:-Departamento de RH / Empresa para enviar carta de aprova&ccedil;&atilde;o para {leave_status} f&eacute;rias ou licen&ccedil;a.</p>\n                    <p style=\"font-size: 14.4px;\">Querido {leave_status_name},</p>\n                    <p style=\"font-size: 14.4px;\">Eu tenho {leave_status} sua solicita&ccedil;&atilde;o de licen&ccedil;a para {leave_reason} de {leave_start_date} para {leave_end_date}.</p>\n                    <p style=\"font-size: 14.4px;\">{total_leave_days} dias eu tenho {leave_status} o seu pedido de licen&ccedil;a para {leave_reason}.</p>\n                    <p style=\"font-size: 14.4px;\">Solicitamos que voc&ecirc; complete todo o seu trabalho pendente ou qualquer outra quest&atilde;o importante para que a empresa n&atilde;o enfrente qualquer perda ou problema durante a sua aus&ecirc;ncia. Agradecemos a sua atenciosidade para nos informar com bastante anteced&ecirc;ncia</p>\n                    <p style=\"font-size: 14.4px;\">Sinta-se &agrave; vontade para alcan&ccedil;ar fora se voc&ecirc; tiver alguma d&uacute;vida.</p>\n                    <p style=\"font-size: 14.4px;\">Obrigado</p>\n                    <p style=\"font-size: 14.4px;\">Considera,</p>\n                    <p style=\"font-size: 14.4px;\">Departamento de RH,</p>\n                    <p style=\"font-size: 14.4px;\">{app_name}</p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(157,14,'ar','Contract','<p><span style=\"font-family: sans-serif;\"><strong>مرحبا </strong>{ contract_employee } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong><strong>العقد :</strong> </strong>{ contract_subject } </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>تاريخ البدء</strong>: { contract_start_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>تاريخ الانتهاء</strong>: { contract_end_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\">اتطلع للسمع منك. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Regards Regards ، </span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{ company_name }</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(158,14,'da','Contract','<p><span style=\"font-family: sans-serif;\"><strong>Hej </strong>{ contract_employee } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Aftaleemne:</strong> { contract_subject } </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>tart-dato</strong>: { contract_start_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Slutdato</strong>: { contract_end_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Ser frem til at høre fra dig. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Kærlig hilsen </span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{ company_name }</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(159,14,'de','Contract','<p><span style=\"font-family: sans-serif;\"><strong><strong> </strong></strong>{contract_employee} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Vertragssubjekt:</strong> {contract_subject} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>tart-Datum</strong>: {contract_start_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>: </strong>{contract_end_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Freuen Sie sich auf die von Ihnen zu h&ouml;renden Informationen. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">-Regards, </span></span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{company_name}</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(160,14,'en','Contract','<p><span style=\"font-family: sans-serif;\"><strong>Hi </strong>{contract_employee} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Contract Subject:</strong> {contract_subject} </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>tart Date</strong>: {contract_start_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>End Date</strong>: {contract_end_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Looking forward to hear from you. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Kind Regards, </span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{company_name}</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(161,14,'es','Contract','<p><span style=\"font-family: sans-serif;\"><strong><strong>Hi </strong></strong>{contract_employee} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong><strong>de contrato:</strong> </strong>{contract_subject} </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">S</span></span></strong><span style=\"font-family: sans-serif;\"><strong>tart Date</strong>: {contract_start_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Fecha de finalizaci&oacute;n</strong>: {contract_end_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Con ganas de escuchar de usted. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">Regards de tipo, </span></span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{contract_name}</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(162,14,'fr','Contract','<p><span style=\"font-family: sans-serif;\"><strong><strong> </strong></strong>{ contract_employee } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Objet du contrat:</strong> { contract_subject } </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>Date de d&eacute;but</strong>: { contract_start_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Date de fin</strong>: { contract_end_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Vous avez h&acirc;te de vous entendre. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Kind Regards </span> </strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{ company_name }</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(163,14,'it','Contract','<p><span style=\"font-family: sans-serif;\"><strong>Ciao </strong>{contract_employee} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Oggetto Contratto:</strong> {contract_subject} </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>Data tarte</strong>: {contract_start_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Data di fine</strong>: {contract_end_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Non vedo lora di sentire da te. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Kind indipendentemente, </span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{company_name}</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(164,14,'ja','Contract','<p><span style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\"><strong>ハイ </strong>{contract_employee} </span></span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>契約件名:</strong> {契約対象} </span></p>\n                    <p><strong><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>tart Date</strong>: </span></strong><span style=\"font-family: sans-serif;\">{contract_start_date}</span><span style=\"font-family: sans-serif;\"> </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>終了日</strong>: {contract_end_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\">お客様から連絡をお待ちしています。 </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">クインド・レード </span></span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{company_name}</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(165,14,'nl','Contract','<p><span style=\"font-family: sans-serif;\"><strong>Hi </strong>{ contract_employee } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Contractonderwerp:</strong> { contract_subject } </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>tart Date</strong>: { contract_start_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Einddatum</strong>: { contract_end_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Ik kijk ernaar uit om van u te horen. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Soort Regards, </span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{ company_name }</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(166,14,'pl','Contract','<p><span style=\"font-family: sans-serif;\"><strong>Hi </strong>{contract_employee}</span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Temat umowy:</strong> {contract_subject} </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\"><span style=\"font-family: sans-serif;\">S</span></span></strong><span style=\"font-family: sans-serif;\"><strong>data tartu</strong>: {contract_start_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Data zakończenia</strong>: {contract_end_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Nie można się doczekać, aby usłyszeć od użytkownika. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Regaty typu, </span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{company_name}</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(167,14,'ru','Contract','<p><span style=\"font-family: sans-serif;\"><strong>Привет </strong>{ contract_employee } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Тема договора:</strong> { contract_subject } </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>дата запуска</strong>: { contract_start_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Дата окончания</strong>: { contract_end_date } </span></p>\n                    <p><span style=\"font-family: sans-serif;\">С нетерпением ожидаю услышать от вас. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Карты вида, </span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{ company_name }</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09'),(168,14,'pt','Contract','<p><span style=\"font-family: sans-serif;\"><strong>Oi </strong>{contract_employee} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Assunto do Contrato:</strong> {contract_subject} </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">S</span></strong><span style=\"font-family: sans-serif;\"><strong>tart Date</strong>: {contract_start_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\"><strong>Data de término</strong>: {contract_end_date} </span></p>\n                    <p><span style=\"font-family: sans-serif;\">Olhando para a frente para ouvir de você. </span></p>\n                    <p><strong><span style=\"font-family: sans-serif;\">Kind Considerar, </span></strong></p>\n                    <p><span style=\"font-family: sans-serif;\">{company_name}</span></p>','2022-09-13 19:42:09','2022-09-13 19:42:09');
/*!40000 ALTER TABLE `email_template_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'Create User',NULL,'create_user',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(2,'Employee Create',NULL,'employee_create',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(3,'Payroll Create',NULL,'payroll_create',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(4,'Ticket Create',NULL,'ticket_create',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(5,'Award Create',NULL,'award_create',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(6,'Employee Transfer',NULL,'employee_transfer',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(7,'Employee Resignation',NULL,'employee_resignation',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(8,'Employee Trip',NULL,'employee_trip',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(9,'Employee Promotion',NULL,'employee_promotion',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(10,'Employee Complaints',NULL,'employee_complaints',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(11,'Employee Warning',NULL,'employee_warning',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(12,'Employee Termination',NULL,'employee_termination',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(13,'Leave Status',NULL,'leave_status',1,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(14,'Contract',NULL,'contract',1,'2022-09-13 19:42:08','2022-09-13 19:42:08');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_documents`
--

DROP TABLE IF EXISTS `employee_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_documents`
--

LOCK TABLES `employee_documents` WRITE;
/*!40000 ALTER TABLE `employee_documents` DISABLE KEYS */;
INSERT INTO `employee_documents` VALUES (1,1,3,'image_1_1663341620.png',4,'2022-09-16 09:50:20','2022-09-16 09:50:20'),(2,1,4,'image_1_1663341620.png',4,'2022-09-16 09:50:20','2022-09-16 09:50:20'),(3,1,5,'image_1_1663341620.png',4,'2022-09-16 09:50:20','2022-09-16 09:50:20'),(4,1,6,'image_1_1663341620.png',4,'2022-09-16 09:50:20','2022-09-16 09:50:20'),(5,2,3,'image_1_1666285599.png',4,'2022-10-19 17:23:59','2022-10-20 17:06:39'),(6,2,5,'image_1_1666285599.png',4,'2022-10-19 17:23:59','2022-10-20 17:06:39'),(7,2,6,'image_1_1666285599.png',4,'2022-10-19 17:23:59','2022-10-20 17:06:39'),(8,2,7,'image_1_1666285599.png',4,'2022-10-19 17:23:59','2022-10-20 17:06:39'),(9,2,8,'image_1_1666285599.png',4,'2022-10-19 17:23:59','2022-10-20 17:06:39'),(10,3,3,'image_1_1666201066.png',4,'2022-10-19 17:37:46','2022-10-19 17:37:46'),(11,3,5,'image_2_1666201066.png',4,'2022-10-19 17:37:46','2022-10-19 17:37:46'),(12,3,6,'image_2_1666201066.png',4,'2022-10-19 17:37:46','2022-10-19 17:37:46'),(13,3,7,'image_2_1666201066.png',4,'2022-10-19 17:37:46','2022-10-19 17:37:46'),(14,3,8,'image_2_1666201066.png',4,'2022-10-19 17:37:46','2022-10-19 17:37:46'),(15,4,3,'image_1_1666201272.png',4,'2022-10-19 17:41:12','2022-10-19 17:41:12'),(16,4,5,'image_2_1666201272.png',4,'2022-10-19 17:41:12','2022-10-19 17:41:12'),(17,4,6,'image_2_1666201272.png',4,'2022-10-19 17:41:12','2022-10-19 17:41:12'),(18,4,7,'image_1_1666201272.png',4,'2022-10-19 17:41:12','2022-10-19 17:41:12'),(19,4,8,'image_2_1666201272.png',4,'2022-10-19 17:41:12','2022-10-19 17:41:12'),(20,5,3,'image_1_1666201886.png',4,'2022-10-19 17:51:26','2022-10-19 17:51:26'),(21,5,5,'image_1_1666201886.png',4,'2022-10-19 17:51:26','2022-10-19 17:51:26'),(22,5,6,'image_1_1666201886.png',4,'2022-10-19 17:51:26','2022-10-19 17:51:26'),(23,5,7,'image_1_1666201886.png',4,'2022-10-19 17:51:26','2022-10-19 17:51:26'),(24,5,8,'image_1_1666201886.png',4,'2022-10-19 17:51:26','2022-10-19 17:51:26'),(25,6,3,'image_1_1666233358.png',4,'2022-10-20 02:35:58','2022-10-20 02:35:58'),(26,6,5,'image_1_1666233359.png',4,'2022-10-20 02:35:59','2022-10-20 02:35:59'),(27,6,6,'image_1_1666233359.png',4,'2022-10-20 02:35:59','2022-10-20 02:35:59'),(28,6,7,'image_1_1666233359.png',4,'2022-10-20 02:35:59','2022-10-20 02:35:59'),(29,6,8,'image_1_1666233359.png',4,'2022-10-20 02:35:59','2022-10-20 02:35:59');
/*!40000 ALTER TABLE `employee_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `company_doj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identifier_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_payer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  `salary` double DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agent_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_permit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,8,'Ajay','1980-02-16','Male','1111111','Bangalore','ajay@techmahindra.com','$2y$10$P0rFV3UYRTzNJlk11GG3uuZpvCNSqWjU5Fn51DEPHdkZxdHMg5kGK','1',1,1,0,'2022-03-01','3,4,5,6',NULL,NULL,NULL,NULL,NULL,NULL,1,20000,1,4,'2022-09-16 09:50:20','2022-10-20 15:03:11','sdgdsg','sdfsdf','sdfsdf','sdf','sdfs'),(2,9,'Vijay','1994-01-30','Male','1234567890','dfsdfsf','vijay@test.com','$2y$10$tZT45q1o5jLv.S6YjmOBM.hI9NZE2hlYD5YTIF6z9Q4NEUqNSU7oi','2',1,1,0,'2022-10-21','3,5,6,7,8','sdvsd','23423','asdfasf','fwefew','sfdf','sdfsdf',1,19000,1,4,'2022-10-19 17:23:59','2022-10-22 18:01:44','sdfdsf','dfgfdg','dfgdfg','dfgfdg','dfgfdg'),(3,10,'sujay','1986-01-30','Male','1234567890','sdgdsf','sujay@test.com','$2y$10$2LGluclhu3ho5J.a8L6T4O.3ePMARvT9VF61LAJru3rQBtM9ywaFW','3',1,2,0,'2022-10-18','3,5,6,7,8',NULL,NULL,NULL,NULL,NULL,NULL,1,450000,1,4,'2022-10-19 17:37:46','2022-10-22 18:04:04',NULL,NULL,NULL,NULL,NULL),(4,11,'kiran','1986-09-30','Male','1234567890','dfsdfs','kiran@test.com','$2y$10$RutmxOXJBE2U4JKXWMaN0e54hPEzzC2ahhe0khOXIjIKUPFXp/E26','4',1,2,0,'2022-10-18','3,5,6,7,8',NULL,NULL,NULL,NULL,NULL,NULL,1,34000,1,4,'2022-10-19 17:41:12','2022-10-22 18:05:59',NULL,NULL,NULL,NULL,NULL),(5,12,'shan','1980-09-30','Male','1234567890','sdfsdf','shan@test.com','$2y$10$fKg0Wp/9Mg.E/OdN99ts2urU2iihNcWC3DqQvVffCUha7q999Jjnu','5',1,2,0,'2022-10-18','3,5,6,7,8',NULL,NULL,NULL,NULL,NULL,NULL,1,40000,1,4,'2022-10-19 17:51:26','2022-10-22 18:06:51',NULL,NULL,NULL,NULL,NULL),(6,13,'suman','1986-01-30','Male','1234567890','dhfgdfg','suman@test.com','$2y$10$a1EsAT.cKZOR.EL0j6caP.2abLVwpEltEwBP/rPm1DAGolLfDU3jW','6',1,2,0,'2022-10-17','3,5,6,7,8',NULL,NULL,NULL,NULL,NULL,NULL,1,19000,1,4,'2022-10-20 02:35:58','2022-10-22 18:07:26','dfgdfg','dgdfg','dfgfdg','dfgfdg','dfgdfg');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_employees`
--

DROP TABLE IF EXISTS `event_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_employees`
--

LOCK TABLES `event_employees` WRITE;
/*!40000 ALTER TABLE `event_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_types`
--

DROP TABLE IF EXISTS `expense_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_types`
--

LOCK TABLES `expense_types` WRITE;
/*!40000 ALTER TABLE `expense_types` DISABLE KEYS */;
INSERT INTO `expense_types` VALUES (1,'Salary',4,'2022-09-16 09:09:32','2022-09-16 09:09:32'),(2,'Rent',4,'2022-09-16 09:09:45','2022-09-16 09:09:45');
/*!40000 ALTER TABLE `expense_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `payee_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `referal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_certificates`
--

DROP TABLE IF EXISTS `experience_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience_certificates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_certificates`
--

LOCK TABLES `experience_certificates` WRITE;
/*!40000 ALTER TABLE `experience_certificates` DISABLE KEYS */;
INSERT INTO `experience_certificates` VALUES (1,'ar','<h3 style=\"text-align: center;\">بريد إلكتروني تجربة</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>إلي من يهمه الامر</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>مدة الخدمة {duration} في {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>الادوار والمسؤوليات</p>\n            \n            \n            \n            <p>وصف موجز لمسار عمل الموظف وبيان إيجابي من المدير أو المشرف.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(2,'da','<h3 style=\"text-align: center;\">Erfaringsbrev</h3>\n            \n            <p>{app_name}</p>\n            \n            <p>TIL HVEM DET M&Aring;TTE VEDR&Oslash;RE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tjenesteperiode {duration} i {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Roller og ansvar</p>\n            \n            \n            \n            <p>Kort beskrivelse af medarbejderens ans&aelig;ttelsesforl&oslash;b og positiv udtalelse fra leder eller arbejdsleder.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(3,'de','<h3 style=\"text-align: center;\">Erfahrungsbrief</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>WEN ES ANGEHT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dienstzeit {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen und Verantwortlichkeiten</p>\n            \n            \n            \n            <p>Kurze Beschreibung des beruflichen Werdegangs des Mitarbeiters und eine positive Stellungnahme des Vorgesetzten oder Vorgesetzten.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(4,'en','<p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: center;\" align=\"center\"><span style=\"font-size: 18pt;\"><strong>Experience Letter</strong></span></p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">TO WHOM IT MAY CONCERN</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{date}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Tenure of Service {duration} in {app_name}.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{payroll}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Roles and Responsibilities</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Brief description of the employee&rsquo;s course of employment and a positive statement from the manager or supervisor.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Sincerely,</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Signature</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(5,'es','<h3 style=\"text-align: center;\">Carta de experiencia</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUIEN LE INTERESE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Duraci&oacute;n del servicio {duration} en {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Funciones y responsabilidades</p>\n            \n            \n            \n            <p>Breve descripci&oacute;n del curso de empleo del empleado y una declaraci&oacute;n positiva del gerente o supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(6,'fr','<h3 style=\"text-align: center;\">Lettre dexp&eacute;rience</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>&Agrave; QUI DE DROIT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dur&eacute;e du service {duration} dans {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>R&ocirc;les et responsabilit&eacute;s</p>\n            \n            \n            \n            <p>Br&egrave;ve description de l&eacute;volution de lemploi de lemploy&eacute; et une d&eacute;claration positive du gestionnaire ou du superviseur.</p>\n            \n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(7,'id','<h3 style=\"text-align: center;\">Surat Pengalaman</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>UNTUK PERHATIAN</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Jangka Waktu Layanan {duration} di {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Peran dan Tanggung Jawab</p>\n            \n            \n            \n            <p>Deskripsi singkat tentang pekerjaan karyawan dan pernyataan positif dari manajer atau supervisor.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(8,'it','<h3 style=\"text-align: center;\">Lettera di esperienza</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>PER CHI &Egrave; COINVOLTO</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Durata del servizio {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Ruoli e responsabilit&agrave;</p>\n            \n            \n            \n            <p>Breve descrizione del percorso lavorativo del dipendente e dichiarazione positiva del manager o supervisore.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(9,'ja','\n            <h3 style=\"text-align: center;\">体験談</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ご担当者様</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{app_name} のサービス {duration} の保有期間。</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>役割と責任</p>\n            \n            \n            \n            <p>従業員の雇用コースの簡単な説明と、マネージャーまたはスーパーバイザーからの肯定的な声明。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(10,'nl','<h3 style=\"text-align: center;\">Ervaringsbrief</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>VOOR WIE HET AANGAAT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Diensttijd {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen en verantwoordelijkheden</p>\n            \n            \n            \n            <p>Korte omschrijving van het dienstverband van de medewerker en een positieve verklaring van de leidinggevende of leidinggevende.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(11,'pl','<h3 style=\"text-align: center;\">Doświadczenie List</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>DO TYCH KT&Oacute;RYCH MOŻE TO DOTYCZYĆ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Okres świadczenia usług {duration} w aplikacji {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Role i obowiązki</p>\n            \n            \n            \n            <p>Kr&oacute;tki opis przebiegu zatrudnienia pracownika oraz pozytywna opinia kierownika lub przełożonego.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(12,'pt','<h3 style=\"text-align: center;\">Carta de Experi&ecirc;ncia</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUEM POSSA INTERESSAR</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tempo de servi&ccedil;o {duration} em {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Pap&eacute;is e responsabilidades</p>\n            \n            \n            \n            <p>Breve descri&ccedil;&atilde;o do curso de emprego do funcion&aacute;rio e uma declara&ccedil;&atilde;o positiva do gerente ou supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(13,'ru','<h3 style=\"text-align: center;\">Письмо об опыте</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ДЛЯ ПРЕДЪЯВЛЕНИЯ ПО МЕСТУ ТРЕБОВАНИЯ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Срок службы {duration} в {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Роли и обязанности</p>\n            \n            \n            \n            <p>Краткое описание трудового стажа работника и положительное заключение руководителя или руководителя.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(14,'ar','<h3 style=\"text-align: center;\">بريد إلكتروني تجربة</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>إلي من يهمه الامر</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>مدة الخدمة {duration} في {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>الادوار والمسؤوليات</p>\n            \n            \n            \n            <p>وصف موجز لمسار عمل الموظف وبيان إيجابي من المدير أو المشرف.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(15,'da','<h3 style=\"text-align: center;\">Erfaringsbrev</h3>\n            \n            <p>{app_name}</p>\n            \n            <p>TIL HVEM DET M&Aring;TTE VEDR&Oslash;RE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tjenesteperiode {duration} i {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Roller og ansvar</p>\n            \n            \n            \n            <p>Kort beskrivelse af medarbejderens ans&aelig;ttelsesforl&oslash;b og positiv udtalelse fra leder eller arbejdsleder.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(16,'de','<h3 style=\"text-align: center;\">Erfahrungsbrief</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>WEN ES ANGEHT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dienstzeit {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen und Verantwortlichkeiten</p>\n            \n            \n            \n            <p>Kurze Beschreibung des beruflichen Werdegangs des Mitarbeiters und eine positive Stellungnahme des Vorgesetzten oder Vorgesetzten.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(17,'en','<p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: center;\" align=\"center\"><span style=\"font-size: 18pt;\"><strong>Experience Letter</strong></span></p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">TO WHOM IT MAY CONCERN</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{date}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Tenure of Service {duration} in {app_name}.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{payroll}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Roles and Responsibilities</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Brief description of the employee&rsquo;s course of employment and a positive statement from the manager or supervisor.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Sincerely,</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Signature</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(18,'es','<h3 style=\"text-align: center;\">Carta de experiencia</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUIEN LE INTERESE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Duraci&oacute;n del servicio {duration} en {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Funciones y responsabilidades</p>\n            \n            \n            \n            <p>Breve descripci&oacute;n del curso de empleo del empleado y una declaraci&oacute;n positiva del gerente o supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(19,'fr','<h3 style=\"text-align: center;\">Lettre dexp&eacute;rience</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>&Agrave; QUI DE DROIT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dur&eacute;e du service {duration} dans {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>R&ocirc;les et responsabilit&eacute;s</p>\n            \n            \n            \n            <p>Br&egrave;ve description de l&eacute;volution de lemploi de lemploy&eacute; et une d&eacute;claration positive du gestionnaire ou du superviseur.</p>\n            \n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(20,'id','<h3 style=\"text-align: center;\">Surat Pengalaman</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>UNTUK PERHATIAN</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Jangka Waktu Layanan {duration} di {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Peran dan Tanggung Jawab</p>\n            \n            \n            \n            <p>Deskripsi singkat tentang pekerjaan karyawan dan pernyataan positif dari manajer atau supervisor.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(21,'it','<h3 style=\"text-align: center;\">Lettera di esperienza</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>PER CHI &Egrave; COINVOLTO</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Durata del servizio {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Ruoli e responsabilit&agrave;</p>\n            \n            \n            \n            <p>Breve descrizione del percorso lavorativo del dipendente e dichiarazione positiva del manager o supervisore.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(22,'ja','\n            <h3 style=\"text-align: center;\">体験談</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ご担当者様</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{app_name} のサービス {duration} の保有期間。</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>役割と責任</p>\n            \n            \n            \n            <p>従業員の雇用コースの簡単な説明と、マネージャーまたはスーパーバイザーからの肯定的な声明。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(23,'nl','<h3 style=\"text-align: center;\">Ervaringsbrief</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>VOOR WIE HET AANGAAT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Diensttijd {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen en verantwoordelijkheden</p>\n            \n            \n            \n            <p>Korte omschrijving van het dienstverband van de medewerker en een positieve verklaring van de leidinggevende of leidinggevende.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(24,'pl','<h3 style=\"text-align: center;\">Doświadczenie List</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>DO TYCH KT&Oacute;RYCH MOŻE TO DOTYCZYĆ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Okres świadczenia usług {duration} w aplikacji {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Role i obowiązki</p>\n            \n            \n            \n            <p>Kr&oacute;tki opis przebiegu zatrudnienia pracownika oraz pozytywna opinia kierownika lub przełożonego.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(25,'pt','<h3 style=\"text-align: center;\">Carta de Experi&ecirc;ncia</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUEM POSSA INTERESSAR</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tempo de servi&ccedil;o {duration} em {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Pap&eacute;is e responsabilidades</p>\n            \n            \n            \n            <p>Breve descri&ccedil;&atilde;o do curso de emprego do funcion&aacute;rio e uma declara&ccedil;&atilde;o positiva do gerente ou supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(26,'ru','<h3 style=\"text-align: center;\">Письмо об опыте</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ДЛЯ ПРЕДЪЯВЛЕНИЯ ПО МЕСТУ ТРЕБОВАНИЯ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Срок службы {duration} в {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Роли и обязанности</p>\n            \n            \n            \n            <p>Краткое описание трудового стажа работника и положительное заключение руководителя или руководителя.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(27,'ar','<h3 style=\"text-align: center;\">بريد إلكتروني تجربة</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>إلي من يهمه الامر</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>مدة الخدمة {duration} في {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>الادوار والمسؤوليات</p>\n            \n            \n            \n            <p>وصف موجز لمسار عمل الموظف وبيان إيجابي من المدير أو المشرف.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(28,'da','<h3 style=\"text-align: center;\">Erfaringsbrev</h3>\n            \n            <p>{app_name}</p>\n            \n            <p>TIL HVEM DET M&Aring;TTE VEDR&Oslash;RE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tjenesteperiode {duration} i {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Roller og ansvar</p>\n            \n            \n            \n            <p>Kort beskrivelse af medarbejderens ans&aelig;ttelsesforl&oslash;b og positiv udtalelse fra leder eller arbejdsleder.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(29,'de','<h3 style=\"text-align: center;\">Erfahrungsbrief</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>WEN ES ANGEHT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dienstzeit {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen und Verantwortlichkeiten</p>\n            \n            \n            \n            <p>Kurze Beschreibung des beruflichen Werdegangs des Mitarbeiters und eine positive Stellungnahme des Vorgesetzten oder Vorgesetzten.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(30,'en','<p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: center;\" align=\"center\"><span style=\"font-size: 18pt;\"><strong>Experience Letter</strong></span></p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">TO WHOM IT MAY CONCERN</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{date}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Tenure of Service {duration} in {app_name}.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{payroll}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Roles and Responsibilities</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Brief description of the employee&rsquo;s course of employment and a positive statement from the manager or supervisor.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Sincerely,</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Signature</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(31,'es','<h3 style=\"text-align: center;\">Carta de experiencia</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUIEN LE INTERESE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Duraci&oacute;n del servicio {duration} en {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Funciones y responsabilidades</p>\n            \n            \n            \n            <p>Breve descripci&oacute;n del curso de empleo del empleado y una declaraci&oacute;n positiva del gerente o supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(32,'fr','<h3 style=\"text-align: center;\">Lettre dexp&eacute;rience</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>&Agrave; QUI DE DROIT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dur&eacute;e du service {duration} dans {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>R&ocirc;les et responsabilit&eacute;s</p>\n            \n            \n            \n            <p>Br&egrave;ve description de l&eacute;volution de lemploi de lemploy&eacute; et une d&eacute;claration positive du gestionnaire ou du superviseur.</p>\n            \n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(33,'id','<h3 style=\"text-align: center;\">Surat Pengalaman</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>UNTUK PERHATIAN</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Jangka Waktu Layanan {duration} di {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Peran dan Tanggung Jawab</p>\n            \n            \n            \n            <p>Deskripsi singkat tentang pekerjaan karyawan dan pernyataan positif dari manajer atau supervisor.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(34,'it','<h3 style=\"text-align: center;\">Lettera di esperienza</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>PER CHI &Egrave; COINVOLTO</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Durata del servizio {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Ruoli e responsabilit&agrave;</p>\n            \n            \n            \n            <p>Breve descrizione del percorso lavorativo del dipendente e dichiarazione positiva del manager o supervisore.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(35,'ja','\n            <h3 style=\"text-align: center;\">体験談</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ご担当者様</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{app_name} のサービス {duration} の保有期間。</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>役割と責任</p>\n            \n            \n            \n            <p>従業員の雇用コースの簡単な説明と、マネージャーまたはスーパーバイザーからの肯定的な声明。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(36,'nl','<h3 style=\"text-align: center;\">Ervaringsbrief</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>VOOR WIE HET AANGAAT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Diensttijd {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen en verantwoordelijkheden</p>\n            \n            \n            \n            <p>Korte omschrijving van het dienstverband van de medewerker en een positieve verklaring van de leidinggevende of leidinggevende.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(37,'pl','<h3 style=\"text-align: center;\">Doświadczenie List</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>DO TYCH KT&Oacute;RYCH MOŻE TO DOTYCZYĆ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Okres świadczenia usług {duration} w aplikacji {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Role i obowiązki</p>\n            \n            \n            \n            <p>Kr&oacute;tki opis przebiegu zatrudnienia pracownika oraz pozytywna opinia kierownika lub przełożonego.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(38,'pt','<h3 style=\"text-align: center;\">Carta de Experi&ecirc;ncia</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUEM POSSA INTERESSAR</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tempo de servi&ccedil;o {duration} em {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Pap&eacute;is e responsabilidades</p>\n            \n            \n            \n            <p>Breve descri&ccedil;&atilde;o do curso de emprego do funcion&aacute;rio e uma declara&ccedil;&atilde;o positiva do gerente ou supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(39,'ru','<h3 style=\"text-align: center;\">Письмо об опыте</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ДЛЯ ПРЕДЪЯВЛЕНИЯ ПО МЕСТУ ТРЕБОВАНИЯ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Срок службы {duration} в {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Роли и обязанности</p>\n            \n            \n            \n            <p>Краткое описание трудового стажа работника и положительное заключение руководителя или руководителя.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(40,'ar','<h3 style=\"text-align: center;\">بريد إلكتروني تجربة</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>إلي من يهمه الامر</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>مدة الخدمة {duration} في {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>الادوار والمسؤوليات</p>\n            \n            \n            \n            <p>وصف موجز لمسار عمل الموظف وبيان إيجابي من المدير أو المشرف.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(41,'da','<h3 style=\"text-align: center;\">Erfaringsbrev</h3>\n            \n            <p>{app_name}</p>\n            \n            <p>TIL HVEM DET M&Aring;TTE VEDR&Oslash;RE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tjenesteperiode {duration} i {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Roller og ansvar</p>\n            \n            \n            \n            <p>Kort beskrivelse af medarbejderens ans&aelig;ttelsesforl&oslash;b og positiv udtalelse fra leder eller arbejdsleder.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(42,'de','<h3 style=\"text-align: center;\">Erfahrungsbrief</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>WEN ES ANGEHT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dienstzeit {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen und Verantwortlichkeiten</p>\n            \n            \n            \n            <p>Kurze Beschreibung des beruflichen Werdegangs des Mitarbeiters und eine positive Stellungnahme des Vorgesetzten oder Vorgesetzten.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(43,'en','<p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: center;\" align=\"center\"><span style=\"font-size: 18pt;\"><strong>Experience Letter</strong></span></p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">TO WHOM IT MAY CONCERN</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{date}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Tenure of Service {duration} in {app_name}.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{payroll}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Roles and Responsibilities</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Brief description of the employee&rsquo;s course of employment and a positive statement from the manager or supervisor.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Sincerely,</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Signature</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(44,'es','<h3 style=\"text-align: center;\">Carta de experiencia</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUIEN LE INTERESE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Duraci&oacute;n del servicio {duration} en {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Funciones y responsabilidades</p>\n            \n            \n            \n            <p>Breve descripci&oacute;n del curso de empleo del empleado y una declaraci&oacute;n positiva del gerente o supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(45,'fr','<h3 style=\"text-align: center;\">Lettre dexp&eacute;rience</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>&Agrave; QUI DE DROIT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dur&eacute;e du service {duration} dans {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>R&ocirc;les et responsabilit&eacute;s</p>\n            \n            \n            \n            <p>Br&egrave;ve description de l&eacute;volution de lemploi de lemploy&eacute; et une d&eacute;claration positive du gestionnaire ou du superviseur.</p>\n            \n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(46,'id','<h3 style=\"text-align: center;\">Surat Pengalaman</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>UNTUK PERHATIAN</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Jangka Waktu Layanan {duration} di {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Peran dan Tanggung Jawab</p>\n            \n            \n            \n            <p>Deskripsi singkat tentang pekerjaan karyawan dan pernyataan positif dari manajer atau supervisor.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(47,'it','<h3 style=\"text-align: center;\">Lettera di esperienza</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>PER CHI &Egrave; COINVOLTO</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Durata del servizio {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Ruoli e responsabilit&agrave;</p>\n            \n            \n            \n            <p>Breve descrizione del percorso lavorativo del dipendente e dichiarazione positiva del manager o supervisore.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(48,'ja','\n            <h3 style=\"text-align: center;\">体験談</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ご担当者様</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{app_name} のサービス {duration} の保有期間。</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>役割と責任</p>\n            \n            \n            \n            <p>従業員の雇用コースの簡単な説明と、マネージャーまたはスーパーバイザーからの肯定的な声明。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(49,'nl','<h3 style=\"text-align: center;\">Ervaringsbrief</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>VOOR WIE HET AANGAAT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Diensttijd {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen en verantwoordelijkheden</p>\n            \n            \n            \n            <p>Korte omschrijving van het dienstverband van de medewerker en een positieve verklaring van de leidinggevende of leidinggevende.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(50,'pl','<h3 style=\"text-align: center;\">Doświadczenie List</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>DO TYCH KT&Oacute;RYCH MOŻE TO DOTYCZYĆ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Okres świadczenia usług {duration} w aplikacji {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Role i obowiązki</p>\n            \n            \n            \n            <p>Kr&oacute;tki opis przebiegu zatrudnienia pracownika oraz pozytywna opinia kierownika lub przełożonego.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(51,'pt','<h3 style=\"text-align: center;\">Carta de Experi&ecirc;ncia</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUEM POSSA INTERESSAR</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tempo de servi&ccedil;o {duration} em {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Pap&eacute;is e responsabilidades</p>\n            \n            \n            \n            <p>Breve descri&ccedil;&atilde;o do curso de emprego do funcion&aacute;rio e uma declara&ccedil;&atilde;o positiva do gerente ou supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(52,'ru','<h3 style=\"text-align: center;\">Письмо об опыте</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ДЛЯ ПРЕДЪЯВЛЕНИЯ ПО МЕСТУ ТРЕБОВАНИЯ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Срок службы {duration} в {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Роли и обязанности</p>\n            \n            \n            \n            <p>Краткое описание трудового стажа работника и положительное заключение руководителя или руководителя.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(53,'ar','<h3 style=\"text-align: center;\">بريد إلكتروني تجربة</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>إلي من يهمه الامر</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>مدة الخدمة {duration} في {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>الادوار والمسؤوليات</p>\n            \n            \n            \n            <p>وصف موجز لمسار عمل الموظف وبيان إيجابي من المدير أو المشرف.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(54,'da','<h3 style=\"text-align: center;\">Erfaringsbrev</h3>\n            \n            <p>{app_name}</p>\n            \n            <p>TIL HVEM DET M&Aring;TTE VEDR&Oslash;RE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tjenesteperiode {duration} i {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Roller og ansvar</p>\n            \n            \n            \n            <p>Kort beskrivelse af medarbejderens ans&aelig;ttelsesforl&oslash;b og positiv udtalelse fra leder eller arbejdsleder.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(55,'de','<h3 style=\"text-align: center;\">Erfahrungsbrief</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>WEN ES ANGEHT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dienstzeit {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen und Verantwortlichkeiten</p>\n            \n            \n            \n            <p>Kurze Beschreibung des beruflichen Werdegangs des Mitarbeiters und eine positive Stellungnahme des Vorgesetzten oder Vorgesetzten.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(56,'en','<p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: center;\" align=\"center\"><span style=\"font-size: 18pt;\"><strong>Experience Letter</strong></span></p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">TO WHOM IT MAY CONCERN</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{date}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Tenure of Service {duration} in {app_name}.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{payroll}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Roles and Responsibilities</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Brief description of the employee&rsquo;s course of employment and a positive statement from the manager or supervisor.</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">&nbsp;</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Sincerely,</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{employee_name}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{designation}</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">Signature</p>\n            <p lang=\"en-IN\" style=\"margin-bottom: 0cm; direction: ltr; line-height: 2; text-align: left;\" align=\"center\">{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(57,'es','<h3 style=\"text-align: center;\">Carta de experiencia</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUIEN LE INTERESE</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Duraci&oacute;n del servicio {duration} en {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Funciones y responsabilidades</p>\n            \n            \n            \n            <p>Breve descripci&oacute;n del curso de empleo del empleado y una declaraci&oacute;n positiva del gerente o supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(58,'fr','<h3 style=\"text-align: center;\">Lettre dexp&eacute;rience</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>&Agrave; QUI DE DROIT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Dur&eacute;e du service {duration} dans {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>R&ocirc;les et responsabilit&eacute;s</p>\n            \n            \n            \n            <p>Br&egrave;ve description de l&eacute;volution de lemploi de lemploy&eacute; et une d&eacute;claration positive du gestionnaire ou du superviseur.</p>\n            \n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(59,'id','<h3 style=\"text-align: center;\">Surat Pengalaman</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>UNTUK PERHATIAN</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Jangka Waktu Layanan {duration} di {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Peran dan Tanggung Jawab</p>\n            \n            \n            \n            <p>Deskripsi singkat tentang pekerjaan karyawan dan pernyataan positif dari manajer atau supervisor.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(60,'it','<h3 style=\"text-align: center;\">Lettera di esperienza</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>PER CHI &Egrave; COINVOLTO</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Durata del servizio {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Ruoli e responsabilit&agrave;</p>\n            \n            \n            \n            <p>Breve descrizione del percorso lavorativo del dipendente e dichiarazione positiva del manager o supervisore.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(61,'ja','\n            <h3 style=\"text-align: center;\">体験談</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ご担当者様</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{app_name} のサービス {duration} の保有期間。</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>役割と責任</p>\n            \n            \n            \n            <p>従業員の雇用コースの簡単な説明と、マネージャーまたはスーパーバイザーからの肯定的な声明。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(62,'nl','<h3 style=\"text-align: center;\">Ervaringsbrief</h3>\n            \n            \n            <p>{app_name}</p>\n            \n            <p>VOOR WIE HET AANGAAT</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Diensttijd {duration} in {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Rollen en verantwoordelijkheden</p>\n            \n            \n            \n            <p>Korte omschrijving van het dienstverband van de medewerker en een positieve verklaring van de leidinggevende of leidinggevende.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(63,'pl','<h3 style=\"text-align: center;\">Doświadczenie List</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>DO TYCH KT&Oacute;RYCH MOŻE TO DOTYCZYĆ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Okres świadczenia usług {duration} w aplikacji {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Role i obowiązki</p>\n            \n            \n            \n            <p>Kr&oacute;tki opis przebiegu zatrudnienia pracownika oraz pozytywna opinia kierownika lub przełożonego.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(64,'pt','<h3 style=\"text-align: center;\">Carta de Experi&ecirc;ncia</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>A QUEM POSSA INTERESSAR</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Tempo de servi&ccedil;o {duration} em {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Pap&eacute;is e responsabilidades</p>\n            \n            \n            \n            <p>Breve descri&ccedil;&atilde;o do curso de emprego do funcion&aacute;rio e uma declara&ccedil;&atilde;o positiva do gerente ou supervisor.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(65,'ru','<h3 style=\"text-align: center;\">Письмо об опыте</h3>\n            \n            \n            \n            <p>{app_name}</p>\n            \n            <p>ДЛЯ ПРЕДЪЯВЛЕНИЯ ПО МЕСТУ ТРЕБОВАНИЯ</p>\n            \n            <p>{date}</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>Срок службы {duration} в {app_name}.</p>\n            \n            <p>{designation}</p>\n            \n            <p>{payroll}</p>\n            \n            <p>Роли и обязанности</p>\n            \n            \n            \n            <p>Краткое описание трудового стажа работника и положительное заключение руководителя или руководителя.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33');
/*!40000 ALTER TABLE `experience_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `generate_offer_letters`
--

DROP TABLE IF EXISTS `generate_offer_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generate_offer_letters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generate_offer_letters`
--

LOCK TABLES `generate_offer_letters` WRITE;
/*!40000 ALTER TABLE `generate_offer_letters` DISABLE KEYS */;
INSERT INTO `generate_offer_letters` VALUES (1,'ar','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>رسالة عرض</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>عزيزي {applicationant_name} ،</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} متحمس لاصطحابك على متن الطائرة بصفتك {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>كنت على بعد خطوات قليلة من الشروع في العمل. يرجى أخذ الوقت الكافي لمراجعة عرضنا الرسمي. يتضمن تفاصيل مهمة حول راتبك ومزاياك وبنود وشروط عملك المتوقع مع {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} يقدم {job_type}. المنصب بالنسبة لك كـ {job_title} ، تقديم التقارير إلى [المدير المباشر / المشرف] بدءًا من {start_date} في {workplace_location}. ساعات العمل المتوقعة هي {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>في هذا المنصب ، يعرض عليك {app_name}&nbsp; {salary}أن تبدأ لك بمعدل دفع {salary_type} لكل {salary_duration}. سوف يتم الدفع لك على أساس.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>كجزء من تعويضك ، إذا كان ذلك ممكنًا ، ستصف مكافأتك ومشاركة الأرباح وهيكل العمولة وخيارات الأسهم وقواعد لجنة التعويضات هنا.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>بصفتك موظفًا في {app_name} ، ستكون مؤهلاً للحصول على مزايا الاسم المختصر ، مثل التأمين الصحي ، وخطة الأسهم ، والتأمين على الأسنان ، وما إلى ذلك.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>الرجاء توضيح موافقتك على هذه البنود وقبول هذا العرض عن طريق التوقيع على هذه الاتفاقية وتأريخها في أو قبل {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>بإخلاص،</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>\n                    <p>&nbsp;</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(2,'da','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Tilbudsbrev</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>K&aelig;re {applicant_name}</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} er glade for at f&aring; dig med som {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Der var kun et par formaliteter fra at komme p&aring; arbejde. Tag dig tid til at gennemg&aring; vores formelle tilbud. Den indeholder vigtige oplysninger om din kompensation, fordele og vilk&aring;rene og betingelserne for din forventede ans&aelig;ttelse hos {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tilbyder en {job_type}. stilling til dig som {job_title}, der rapporterer til [n&aelig;rmeste leder/supervisor] fra og med {start_date} p&aring;{workplace_location}. Forventet arbejdstid er {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>I denne stilling tilbyder {app_name} at starte dig med en l&oslash;nsats p&aring; {salary} pr. {salary_type}. Du vil blive betalt p&aring; {salary_duration}-basis.</p>\n                    <p>&nbsp;</p>\n                    <p>Som en del af din kompensation, du ogs&aring; tilbyder, hvis det er relevant, vil du beskrive din bonus, overskudsdeling, kommissionsstruktur, aktieoptioner og regler for kompensationsudvalget her.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Som ansat hos {app_name} vil du v&aelig;re berettiget til kort navnefordele, s&aring;som sundhedsforsikring, aktieplan, tandforsikring osv.</p>\n                    <p>&nbsp;</p>\n                    <p>Angiv venligst din accept af disse vilk&aring;r og accepter dette tilbud ved at underskrive og datere denne aftale p&aring; eller f&oslash;r {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(3,'de','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Angebotsschreiben</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sehr geehrter {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} freut sich, Sie als {job_title} an Bord zu holen.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nur noch wenige Formalit&auml;ten bis zur Arbeit. Bitte nehmen Sie sich die Zeit, unser formelles Angebot zu pr&uuml;fen. Es enth&auml;lt wichtige Details zu Ihrer Verg&uuml;tung, Ihren Leistungen und den Bedingungen Ihrer voraussichtlichen Anstellung bei {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} bietet einen {job_type} an. Position f&uuml;r Sie als {job_title}, ab {start_date} am {workplace_location} unterstellt an unmittelbarer Manager/Vorgesetzter. Erwartete Arbeitszeiten sind {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In dieser Position bietet {app_name} Ihnen an, mit einem Gehaltssatz von {salary} pro {salary_type} zu beginnen. Sie werden auf Basis von {salary_duration} bezahlt.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Teil Ihrer Verg&uuml;tung, die Sie gegebenenfalls auch anbieten, beschreiben Sie hier Ihren Bonus, Ihre Gewinnbeteiligung, Ihre Provisionsstruktur, Ihre Aktienoptionen und die Regeln des Verg&uuml;tungsausschusses.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Mitarbeiter von {app_name} haben Sie Anspruch auf Kurznamenvorteile wie Krankenversicherung, Aktienplan, Zahnversicherung usw.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Bitte erkl&auml;ren Sie Ihr Einverst&auml;ndnis mit diesen Bedingungen und nehmen Sie dieses Angebot an, indem Sie diese Vereinbarung am oder vor dem {offer_expiration_date} unterzeichnen und datieren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Aufrichtig,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(4,'en','<p style=\"text-align: center;\"><strong>Offer Letter</strong></p>\n                    <p>&nbsp;</p>\n                    <p>Dear {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is excited to bring you on board as {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Were just a few formalities away from getting down to work. Please take the time to review our formal offer. It includes important details about your compensation, benefits, and the terms and conditions of your anticipated employment with {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is offering a {job_type}. position for you as {job_title}, reporting to [immediate manager/supervisor] starting on {start_date} at{workplace_location}. Expected hours of work are{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>In this position, {app_name} is offering to start you at a pay rate of {salary} per {salary_type}. You will be paid on a{salary_duration} basis.&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>As part of your compensation, were also offering [if applicable, youll describe your bonus, profit sharing, commission structure, stock options, and compensation committee rules here].</p>\n                    <p>&nbsp;</p>\n                    <p>As an employee of {app_name} , you will be eligible for briefly name benefits, such as health insurance, stock plan, dental insurance, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>Please indicate your agreement with these terms and accept this offer by signing and dating this agreement on or before {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Sincerely,</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(5,'es','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Estimado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} se complace en incorporarlo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltaban s&oacute;lo unos tr&aacute;mites para ponerse manos a la obra. T&oacute;mese el tiempo para revisar nuestra oferta formal. Incluye detalles importantes sobre su compensaci&oacute;n, beneficios y los t&eacute;rminos y condiciones de su empleo anticipado con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; ofreciendo {job_type}. posici&oacute;n para usted como {job_title}, reportando al gerente/supervisor inmediato a partir del {start_date} en {workplace_location}. Las horas de trabajo esperadas son {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En este puesto, {app_name} te ofrece comenzar con una tarifa de pago de {salary} por {salary_type}. Se le pagar&aacute; sobre la base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de su compensaci&oacute;n, tambi&eacute;n ofrecemos, si corresponde, aqu&iacute; describir&aacute; su bonificaci&oacute;n, participaci&oacute;n en las ganancias, estructura de comisiones, opciones sobre acciones y reglas del comit&eacute; de compensaci&oacute;n.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como empleado de {app_name}, ser&aacute; elegible para beneficios de nombre breve, como seguro m&eacute;dico, plan de acciones, seguro dental, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique su acuerdo con estos t&eacute;rminos y acepte esta oferta firmando y fechando este acuerdo el {offer_expiration_date} o antes.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(6,'fr','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettre doffre</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cher {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est ravi de vous accueillir en tant que {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Eacute;taient juste quelques formalit&eacute;s loin de se mettre au travail. Veuillez prendre le temps dexaminer notre offre formelle. Il comprend des d&eacute;tails importants sur votre r&eacute;mun&eacute;ration, vos avantages et les termes et conditions de votre emploi pr&eacute;vu avec {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} propose un {job_type}. poste pour vous en tant que {job_title}, relevant du directeur/superviseur imm&eacute;diat &agrave; partir du {start_date} &agrave; {workplace_location}. Les heures de travail pr&eacute;vues sont de {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Agrave; ce poste, {app_name} vous propose de commencer avec un taux de r&eacute;mun&eacute;ration de {salary} par {salary_type}. Vous serez pay&eacute; sur une base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Dans le cadre de votre r&eacute;mun&eacute;ration, le cas &eacute;ch&eacute;ant, vous d&eacute;crivez ici votre bonus, votre participation aux b&eacute;n&eacute;fices, votre structure de commission, vos options sur actions et les r&egrave;gles du comit&eacute; de r&eacute;mun&eacute;ration.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En tant quemploy&eacute; de {app_name}, vous aurez droit &agrave; des avantages bri&egrave;vement nomm&eacute;s, tels que lassurance maladie, le plan dactionnariat, lassurance dentaire, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Veuillez indiquer votre accord avec ces conditions et accepter cette offre en signant et en datant cet accord au plus tard le {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinc&egrave;rement,</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(7,'id','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Surat penawaran</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} yang terhormat,</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} dengan senang hati membawa Anda sebagai {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Tinggal beberapa formalitas lagi untuk mulai bekerja. Harap luangkan waktu untuk meninjau penawaran resmi kami. Ini mencakup detail penting tentang kompensasi, tunjangan, serta persyaratan dan ketentuan pekerjaan yang Anda harapkan dengan {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} menawarkan {job_type}. posisi untuk Anda sebagai {job_title}, melapor ke manajer/penyelia langsung mulai {start_date} di{workplace_location}. Jam kerja yang diharapkan adalah{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Di posisi ini, {app_name} menawarkan untuk memulai Anda dengan tarif pembayaran {salary} per {salary_type}. Anda akan dibayar berdasarkan {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai bagian dari kompensasi Anda, yang juga ditawarkan jika berlaku, Anda akan menjelaskan bonus, pembagian keuntungan, struktur komisi, opsi saham, dan aturan komite kompensasi Anda di sini.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai karyawan {app_name} , Anda akan memenuhi syarat untuk mendapatkan manfaat singkat, seperti asuransi kesehatan, paket saham, asuransi gigi, dll.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Harap tunjukkan persetujuan Anda dengan persyaratan ini dan terima penawaran ini dengan menandatangani dan memberi tanggal pada perjanjian ini pada atau sebelum {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sungguh-sungguh,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(8,'it','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettera di offerta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Gentile {nome_richiedente},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} &egrave; entusiasta di portarti a bordo come {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Mancavano solo poche formalit&agrave; per mettersi al lavoro. Per favore, prenditi del tempo per rivedere la nostra offerta formale. Include dettagli importanti sul compenso, i vantaggi e i termini e le condizioni del tuo impiego previsto con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} offre un {job_type}. posizione per te come {job_title}, riportando al manager/supervisore immediato a partire da {start_date} a {workplace_location}. Lorario di lavoro previsto &egrave; di {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In questa posizione, {app_name} ti offre di iniziare con una paga di {salary} per {salary_type}. Sarai pagato su base {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Come parte del tuo compenso, se applicabile, descrivi anche il tuo bonus, la partecipazione agli utili, la struttura delle commissioni, le stock option e le regole del comitato di compensazione qui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In qualit&agrave; di dipendente di {app_name} , avrai diritto a vantaggi per nomi brevi, come assicurazione sanitaria, piano azionario, assicurazione dentale, ecc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indica il tuo accordo con questi termini e accetta questa offerta firmando e datando questo accordo entro il {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cordiali saluti,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(9,'ja','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>内定通知</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} 様</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} は、あなたを {job_title} として迎えることに興奮しています。</p>\n                    <p>&nbsp;</p>\n                    <p>仕事に取り掛かる前に、ほんの少しの手続きがありました。時間をかけて正式なオファーを確認してください。これには、あなたの報酬、福利厚生、および {app_name} での予想される雇用条件に関する重要な詳細が含まれています。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} が {job_type} を提供しています。 {job_title} として、{start_date} から {workplace_location} の直属のマネージャー/スーパーバイザーに報告します。予想される勤務時間は {days_of_week} です。</p>\n                    <p>&nbsp;</p>\n                    <p>このポジションでは、{app_name} は、{salary_type} あたり {salary} の賃金率であなたをスタートさせることを提案しています。 {salary_duration} 単位で支払われます。</p>\n                    <p>&nbsp;</p>\n                    <p>報酬の一部として、該当する場合は提供もしていました。ボーナス、利益分配、手数料体系、ストック オプション、および報酬委員会の規則についてここに説明します。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} の従業員として、健康保険、ストック プラン、歯科保険などの簡単な名前の特典を受ける資格があります。</p>\n                    <p>&nbsp;</p>\n                    <p>{offer_expiration_date} 日までに本契約に署名し日付を記入して、これらの条件に同意し、このオファーを受け入れてください。</p>\n                    <p>&nbsp;</p>\n                    <p>心から、</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(10,'nl','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Aanbiedingsbrief</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Beste {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is verheugd je aan boord te mogen verwelkomen als {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Waren slechts een paar formaliteiten verwijderd om aan het werk te gaan. Neem de tijd om ons formele aanbod te bekijken. Het bevat belangrijke details over uw vergoeding, voordelen en de voorwaarden van uw verwachte dienstverband bij {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} biedt een {job_type} aan. functie voor jou als {job_title}, rapporterend aan directe manager/supervisor vanaf {start_date} op {workplace_location}. De verwachte werkuren zijn {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In deze functie biedt {app_name} aan om je te starten tegen een salaris van {salary} per {salary_type}. U wordt betaald op basis van {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als onderdeel van uw vergoeding, die u, indien van toepassing, ook aanbiedt, beschrijft u hier uw bonus, winstdeling, commissiestructuur, aandelenopties en regels van het vergoedingscomit&eacute;.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als medewerker van {app_name} kom je in aanmerking voor korte naamvoordelen, zoals een ziektekostenverzekering, aandelenplan, tandartsverzekering, enz.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Geef aan dat u akkoord gaat met deze voorwaarden en accepteer deze aanbieding door deze overeenkomst op of v&oacute;&oacute;r {offer_expiration_date} te ondertekenen en te dateren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Eerlijk,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(11,'pl','<p style=\"text-align: center;\"><strong><span style=\"font-size: 18pt;\">List ofertowy</span></strong></p>\n                    <p>&nbsp;</p>\n                    <p>Drogi {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} z radością zaprasza Cię do wsp&oacute;łpracy jako {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Od rozpoczęcia pracy dzieliło mnie tylko kilka formalności. Prosimy o poświęcenie czasu na zapoznanie się z naszą oficjalną ofertą. Zawiera ważne szczeg&oacute;ły dotyczące Twojego wynagrodzenia, świadczeń oraz warunk&oacute;w Twojego przewidywanego zatrudnienia w {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} oferuje {job_type}. stanowisko dla Ciebie jako {job_title}, raportowanie do bezpośredniego przełożonego/przełożonego począwszy od {start_date} w {workplace_location}. Przewidywane godziny pracy to {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Na tym stanowisku {app_name} oferuje Ci rozpoczęcie pracy za stawkę {salary} za {salary_type}. Otrzymasz zapłatę na podstawie {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>W ramach wynagrodzenia, kt&oacute;re oferowaliśmy, jeśli dotyczy, opiszesz tutaj swoją premię, podział zysk&oacute;w, strukturę prowizji, opcje na akcje i zasady komitetu ds. Wynagrodzeń.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Jako pracownik {app_name} będziesz mieć prawo do kr&oacute;tkich imiennych świadczeń, takich jak ubezpieczenie zdrowotne, plan akcji, ubezpieczenie dentystyczne itp.</p>\n                    <p>&nbsp;</p>\n                    <p>Zaznacz, że zgadzasz się z tymi warunkami i zaakceptuj tę ofertę, podpisując i datując tę ​​umowę w dniu {offer_expiration_date} lub wcześniej.</p>\n                    <p>&nbsp;</p>\n                    <p>Z poważaniem,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(12,'pt','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Prezado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tem o prazer de trazer voc&ecirc; a bordo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltavam apenas algumas formalidades para come&ccedil;ar a trabalhar. Por favor, reserve um tempo para revisar nossa oferta formal. Ele inclui detalhes importantes sobre sua remunera&ccedil;&atilde;o, benef&iacute;cios e os termos e condi&ccedil;&otilde;es de seu emprego previsto com {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; oferecendo um {job_type}. posi&ccedil;&atilde;o para voc&ecirc; como {job_title}, reportando-se ao gerente/supervisor imediato a partir de {start_date} em {workplace_location}. As horas de trabalho previstas s&atilde;o {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nesta posi&ccedil;&atilde;o, {app_name} est&aacute; oferecendo para voc&ecirc; come&ccedil;ar com uma taxa de pagamento de {salary} por {salary_type}. Voc&ecirc; ser&aacute; pago em uma base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de sua remunera&ccedil;&atilde;o, tamb&eacute;m oferecida, se aplic&aacute;vel, voc&ecirc; descrever&aacute; seu b&ocirc;nus, participa&ccedil;&atilde;o nos lucros, estrutura de comiss&otilde;es, op&ccedil;&otilde;es de a&ccedil;&otilde;es e regras do comit&ecirc; de remunera&ccedil;&atilde;o aqui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como funcion&aacute;rio de {app_name} , voc&ecirc; se qualificar&aacute; para benef&iacute;cios de nome breve, como seguro sa&uacute;de, plano de a&ccedil;&otilde;es, seguro odontol&oacute;gico etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique sua concord&acirc;ncia com estes termos e aceite esta oferta assinando e datando este contrato em ou antes de {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(13,'ru','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Письмо с предложением</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Уважаемый {applicant_name!</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} рад предложить вам присоединиться к нам в качестве {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Осталось всего несколько формальностей, чтобы приступить к работе. Пожалуйста, найдите время, чтобы ознакомиться с нашим официальным предложением. В нем содержится важная информация о вашем вознаграждении, льготах и ​​условиях вашего предполагаемого трудоустройства в {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} предлагает {job_type}. должность для вас как {job_title}, подчинение непосредственному руководителю/руководителю начиная с {start_date} в {workplace_location}. Ожидаемое рабочее время: {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>На этой должности {app_name} предлагает вам начать работу со ставкой заработной платы {salary} за {salary_type}. Вам будут платить на основе {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>В рамках вашего вознаграждения мы также предлагаем, если это применимо, вы описываете свой бонус, распределение прибыли, структуру комиссионных, опционы на акции и правила компенсационного комитета здесь.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Как сотрудник {app_name}, вы будете иметь право на краткосрочные льготы, такие как медицинская страховка, план акций, стоматологическая страховка и т. д.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Пожалуйста, подтвердите свое согласие с этими условиями и примите это предложение, подписав и датировав это соглашение не позднее {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Искренне,</p>\n                    <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(14,'ar','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>رسالة عرض</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>عزيزي {applicationant_name} ،</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} متحمس لاصطحابك على متن الطائرة بصفتك {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>كنت على بعد خطوات قليلة من الشروع في العمل. يرجى أخذ الوقت الكافي لمراجعة عرضنا الرسمي. يتضمن تفاصيل مهمة حول راتبك ومزاياك وبنود وشروط عملك المتوقع مع {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} يقدم {job_type}. المنصب بالنسبة لك كـ {job_title} ، تقديم التقارير إلى [المدير المباشر / المشرف] بدءًا من {start_date} في {workplace_location}. ساعات العمل المتوقعة هي {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>في هذا المنصب ، يعرض عليك {app_name}&nbsp; {salary}أن تبدأ لك بمعدل دفع {salary_type} لكل {salary_duration}. سوف يتم الدفع لك على أساس.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>كجزء من تعويضك ، إذا كان ذلك ممكنًا ، ستصف مكافأتك ومشاركة الأرباح وهيكل العمولة وخيارات الأسهم وقواعد لجنة التعويضات هنا.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>بصفتك موظفًا في {app_name} ، ستكون مؤهلاً للحصول على مزايا الاسم المختصر ، مثل التأمين الصحي ، وخطة الأسهم ، والتأمين على الأسنان ، وما إلى ذلك.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>الرجاء توضيح موافقتك على هذه البنود وقبول هذا العرض عن طريق التوقيع على هذه الاتفاقية وتأريخها في أو قبل {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>بإخلاص،</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>\n                    <p>&nbsp;</p>',4,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(15,'da','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Tilbudsbrev</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>K&aelig;re {applicant_name}</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} er glade for at f&aring; dig med som {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Der var kun et par formaliteter fra at komme p&aring; arbejde. Tag dig tid til at gennemg&aring; vores formelle tilbud. Den indeholder vigtige oplysninger om din kompensation, fordele og vilk&aring;rene og betingelserne for din forventede ans&aelig;ttelse hos {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tilbyder en {job_type}. stilling til dig som {job_title}, der rapporterer til [n&aelig;rmeste leder/supervisor] fra og med {start_date} p&aring;{workplace_location}. Forventet arbejdstid er {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>I denne stilling tilbyder {app_name} at starte dig med en l&oslash;nsats p&aring; {salary} pr. {salary_type}. Du vil blive betalt p&aring; {salary_duration}-basis.</p>\n                    <p>&nbsp;</p>\n                    <p>Som en del af din kompensation, du ogs&aring; tilbyder, hvis det er relevant, vil du beskrive din bonus, overskudsdeling, kommissionsstruktur, aktieoptioner og regler for kompensationsudvalget her.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Som ansat hos {app_name} vil du v&aelig;re berettiget til kort navnefordele, s&aring;som sundhedsforsikring, aktieplan, tandforsikring osv.</p>\n                    <p>&nbsp;</p>\n                    <p>Angiv venligst din accept af disse vilk&aring;r og accepter dette tilbud ved at underskrive og datere denne aftale p&aring; eller f&oslash;r {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(16,'de','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Angebotsschreiben</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sehr geehrter {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} freut sich, Sie als {job_title} an Bord zu holen.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nur noch wenige Formalit&auml;ten bis zur Arbeit. Bitte nehmen Sie sich die Zeit, unser formelles Angebot zu pr&uuml;fen. Es enth&auml;lt wichtige Details zu Ihrer Verg&uuml;tung, Ihren Leistungen und den Bedingungen Ihrer voraussichtlichen Anstellung bei {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} bietet einen {job_type} an. Position f&uuml;r Sie als {job_title}, ab {start_date} am {workplace_location} unterstellt an unmittelbarer Manager/Vorgesetzter. Erwartete Arbeitszeiten sind {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In dieser Position bietet {app_name} Ihnen an, mit einem Gehaltssatz von {salary} pro {salary_type} zu beginnen. Sie werden auf Basis von {salary_duration} bezahlt.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Teil Ihrer Verg&uuml;tung, die Sie gegebenenfalls auch anbieten, beschreiben Sie hier Ihren Bonus, Ihre Gewinnbeteiligung, Ihre Provisionsstruktur, Ihre Aktienoptionen und die Regeln des Verg&uuml;tungsausschusses.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Mitarbeiter von {app_name} haben Sie Anspruch auf Kurznamenvorteile wie Krankenversicherung, Aktienplan, Zahnversicherung usw.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Bitte erkl&auml;ren Sie Ihr Einverst&auml;ndnis mit diesen Bedingungen und nehmen Sie dieses Angebot an, indem Sie diese Vereinbarung am oder vor dem {offer_expiration_date} unterzeichnen und datieren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Aufrichtig,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(17,'en','<p style=\"text-align: center;\"><strong>Offer Letter</strong></p>\n                    <p>&nbsp;</p>\n                    <p>Dear {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is excited to bring you on board as {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Were just a few formalities away from getting down to work. Please take the time to review our formal offer. It includes important details about your compensation, benefits, and the terms and conditions of your anticipated employment with {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is offering a {job_type}. position for you as {job_title}, reporting to [immediate manager/supervisor] starting on {start_date} at{workplace_location}. Expected hours of work are{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>In this position, {app_name} is offering to start you at a pay rate of {salary} per {salary_type}. You will be paid on a{salary_duration} basis.&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>As part of your compensation, were also offering [if applicable, youll describe your bonus, profit sharing, commission structure, stock options, and compensation committee rules here].</p>\n                    <p>&nbsp;</p>\n                    <p>As an employee of {app_name} , you will be eligible for briefly name benefits, such as health insurance, stock plan, dental insurance, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>Please indicate your agreement with these terms and accept this offer by signing and dating this agreement on or before {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Sincerely,</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(18,'es','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Estimado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} se complace en incorporarlo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltaban s&oacute;lo unos tr&aacute;mites para ponerse manos a la obra. T&oacute;mese el tiempo para revisar nuestra oferta formal. Incluye detalles importantes sobre su compensaci&oacute;n, beneficios y los t&eacute;rminos y condiciones de su empleo anticipado con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; ofreciendo {job_type}. posici&oacute;n para usted como {job_title}, reportando al gerente/supervisor inmediato a partir del {start_date} en {workplace_location}. Las horas de trabajo esperadas son {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En este puesto, {app_name} te ofrece comenzar con una tarifa de pago de {salary} por {salary_type}. Se le pagar&aacute; sobre la base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de su compensaci&oacute;n, tambi&eacute;n ofrecemos, si corresponde, aqu&iacute; describir&aacute; su bonificaci&oacute;n, participaci&oacute;n en las ganancias, estructura de comisiones, opciones sobre acciones y reglas del comit&eacute; de compensaci&oacute;n.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como empleado de {app_name}, ser&aacute; elegible para beneficios de nombre breve, como seguro m&eacute;dico, plan de acciones, seguro dental, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique su acuerdo con estos t&eacute;rminos y acepte esta oferta firmando y fechando este acuerdo el {offer_expiration_date} o antes.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(19,'fr','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettre doffre</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cher {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est ravi de vous accueillir en tant que {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Eacute;taient juste quelques formalit&eacute;s loin de se mettre au travail. Veuillez prendre le temps dexaminer notre offre formelle. Il comprend des d&eacute;tails importants sur votre r&eacute;mun&eacute;ration, vos avantages et les termes et conditions de votre emploi pr&eacute;vu avec {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} propose un {job_type}. poste pour vous en tant que {job_title}, relevant du directeur/superviseur imm&eacute;diat &agrave; partir du {start_date} &agrave; {workplace_location}. Les heures de travail pr&eacute;vues sont de {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Agrave; ce poste, {app_name} vous propose de commencer avec un taux de r&eacute;mun&eacute;ration de {salary} par {salary_type}. Vous serez pay&eacute; sur une base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Dans le cadre de votre r&eacute;mun&eacute;ration, le cas &eacute;ch&eacute;ant, vous d&eacute;crivez ici votre bonus, votre participation aux b&eacute;n&eacute;fices, votre structure de commission, vos options sur actions et les r&egrave;gles du comit&eacute; de r&eacute;mun&eacute;ration.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En tant quemploy&eacute; de {app_name}, vous aurez droit &agrave; des avantages bri&egrave;vement nomm&eacute;s, tels que lassurance maladie, le plan dactionnariat, lassurance dentaire, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Veuillez indiquer votre accord avec ces conditions et accepter cette offre en signant et en datant cet accord au plus tard le {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinc&egrave;rement,</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(20,'id','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Surat penawaran</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} yang terhormat,</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} dengan senang hati membawa Anda sebagai {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Tinggal beberapa formalitas lagi untuk mulai bekerja. Harap luangkan waktu untuk meninjau penawaran resmi kami. Ini mencakup detail penting tentang kompensasi, tunjangan, serta persyaratan dan ketentuan pekerjaan yang Anda harapkan dengan {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} menawarkan {job_type}. posisi untuk Anda sebagai {job_title}, melapor ke manajer/penyelia langsung mulai {start_date} di{workplace_location}. Jam kerja yang diharapkan adalah{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Di posisi ini, {app_name} menawarkan untuk memulai Anda dengan tarif pembayaran {salary} per {salary_type}. Anda akan dibayar berdasarkan {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai bagian dari kompensasi Anda, yang juga ditawarkan jika berlaku, Anda akan menjelaskan bonus, pembagian keuntungan, struktur komisi, opsi saham, dan aturan komite kompensasi Anda di sini.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai karyawan {app_name} , Anda akan memenuhi syarat untuk mendapatkan manfaat singkat, seperti asuransi kesehatan, paket saham, asuransi gigi, dll.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Harap tunjukkan persetujuan Anda dengan persyaratan ini dan terima penawaran ini dengan menandatangani dan memberi tanggal pada perjanjian ini pada atau sebelum {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sungguh-sungguh,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(21,'it','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettera di offerta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Gentile {nome_richiedente},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} &egrave; entusiasta di portarti a bordo come {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Mancavano solo poche formalit&agrave; per mettersi al lavoro. Per favore, prenditi del tempo per rivedere la nostra offerta formale. Include dettagli importanti sul compenso, i vantaggi e i termini e le condizioni del tuo impiego previsto con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} offre un {job_type}. posizione per te come {job_title}, riportando al manager/supervisore immediato a partire da {start_date} a {workplace_location}. Lorario di lavoro previsto &egrave; di {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In questa posizione, {app_name} ti offre di iniziare con una paga di {salary} per {salary_type}. Sarai pagato su base {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Come parte del tuo compenso, se applicabile, descrivi anche il tuo bonus, la partecipazione agli utili, la struttura delle commissioni, le stock option e le regole del comitato di compensazione qui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In qualit&agrave; di dipendente di {app_name} , avrai diritto a vantaggi per nomi brevi, come assicurazione sanitaria, piano azionario, assicurazione dentale, ecc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indica il tuo accordo con questi termini e accetta questa offerta firmando e datando questo accordo entro il {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cordiali saluti,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(22,'ja','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>内定通知</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} 様</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} は、あなたを {job_title} として迎えることに興奮しています。</p>\n                    <p>&nbsp;</p>\n                    <p>仕事に取り掛かる前に、ほんの少しの手続きがありました。時間をかけて正式なオファーを確認してください。これには、あなたの報酬、福利厚生、および {app_name} での予想される雇用条件に関する重要な詳細が含まれています。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} が {job_type} を提供しています。 {job_title} として、{start_date} から {workplace_location} の直属のマネージャー/スーパーバイザーに報告します。予想される勤務時間は {days_of_week} です。</p>\n                    <p>&nbsp;</p>\n                    <p>このポジションでは、{app_name} は、{salary_type} あたり {salary} の賃金率であなたをスタートさせることを提案しています。 {salary_duration} 単位で支払われます。</p>\n                    <p>&nbsp;</p>\n                    <p>報酬の一部として、該当する場合は提供もしていました。ボーナス、利益分配、手数料体系、ストック オプション、および報酬委員会の規則についてここに説明します。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} の従業員として、健康保険、ストック プラン、歯科保険などの簡単な名前の特典を受ける資格があります。</p>\n                    <p>&nbsp;</p>\n                    <p>{offer_expiration_date} 日までに本契約に署名し日付を記入して、これらの条件に同意し、このオファーを受け入れてください。</p>\n                    <p>&nbsp;</p>\n                    <p>心から、</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(23,'nl','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Aanbiedingsbrief</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Beste {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is verheugd je aan boord te mogen verwelkomen als {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Waren slechts een paar formaliteiten verwijderd om aan het werk te gaan. Neem de tijd om ons formele aanbod te bekijken. Het bevat belangrijke details over uw vergoeding, voordelen en de voorwaarden van uw verwachte dienstverband bij {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} biedt een {job_type} aan. functie voor jou als {job_title}, rapporterend aan directe manager/supervisor vanaf {start_date} op {workplace_location}. De verwachte werkuren zijn {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In deze functie biedt {app_name} aan om je te starten tegen een salaris van {salary} per {salary_type}. U wordt betaald op basis van {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als onderdeel van uw vergoeding, die u, indien van toepassing, ook aanbiedt, beschrijft u hier uw bonus, winstdeling, commissiestructuur, aandelenopties en regels van het vergoedingscomit&eacute;.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als medewerker van {app_name} kom je in aanmerking voor korte naamvoordelen, zoals een ziektekostenverzekering, aandelenplan, tandartsverzekering, enz.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Geef aan dat u akkoord gaat met deze voorwaarden en accepteer deze aanbieding door deze overeenkomst op of v&oacute;&oacute;r {offer_expiration_date} te ondertekenen en te dateren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Eerlijk,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(24,'pl','<p style=\"text-align: center;\"><strong><span style=\"font-size: 18pt;\">List ofertowy</span></strong></p>\n                    <p>&nbsp;</p>\n                    <p>Drogi {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} z radością zaprasza Cię do wsp&oacute;łpracy jako {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Od rozpoczęcia pracy dzieliło mnie tylko kilka formalności. Prosimy o poświęcenie czasu na zapoznanie się z naszą oficjalną ofertą. Zawiera ważne szczeg&oacute;ły dotyczące Twojego wynagrodzenia, świadczeń oraz warunk&oacute;w Twojego przewidywanego zatrudnienia w {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} oferuje {job_type}. stanowisko dla Ciebie jako {job_title}, raportowanie do bezpośredniego przełożonego/przełożonego począwszy od {start_date} w {workplace_location}. Przewidywane godziny pracy to {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Na tym stanowisku {app_name} oferuje Ci rozpoczęcie pracy za stawkę {salary} za {salary_type}. Otrzymasz zapłatę na podstawie {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>W ramach wynagrodzenia, kt&oacute;re oferowaliśmy, jeśli dotyczy, opiszesz tutaj swoją premię, podział zysk&oacute;w, strukturę prowizji, opcje na akcje i zasady komitetu ds. Wynagrodzeń.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Jako pracownik {app_name} będziesz mieć prawo do kr&oacute;tkich imiennych świadczeń, takich jak ubezpieczenie zdrowotne, plan akcji, ubezpieczenie dentystyczne itp.</p>\n                    <p>&nbsp;</p>\n                    <p>Zaznacz, że zgadzasz się z tymi warunkami i zaakceptuj tę ofertę, podpisując i datując tę ​​umowę w dniu {offer_expiration_date} lub wcześniej.</p>\n                    <p>&nbsp;</p>\n                    <p>Z poważaniem,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(25,'pt','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Prezado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tem o prazer de trazer voc&ecirc; a bordo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltavam apenas algumas formalidades para come&ccedil;ar a trabalhar. Por favor, reserve um tempo para revisar nossa oferta formal. Ele inclui detalhes importantes sobre sua remunera&ccedil;&atilde;o, benef&iacute;cios e os termos e condi&ccedil;&otilde;es de seu emprego previsto com {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; oferecendo um {job_type}. posi&ccedil;&atilde;o para voc&ecirc; como {job_title}, reportando-se ao gerente/supervisor imediato a partir de {start_date} em {workplace_location}. As horas de trabalho previstas s&atilde;o {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nesta posi&ccedil;&atilde;o, {app_name} est&aacute; oferecendo para voc&ecirc; come&ccedil;ar com uma taxa de pagamento de {salary} por {salary_type}. Voc&ecirc; ser&aacute; pago em uma base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de sua remunera&ccedil;&atilde;o, tamb&eacute;m oferecida, se aplic&aacute;vel, voc&ecirc; descrever&aacute; seu b&ocirc;nus, participa&ccedil;&atilde;o nos lucros, estrutura de comiss&otilde;es, op&ccedil;&otilde;es de a&ccedil;&otilde;es e regras do comit&ecirc; de remunera&ccedil;&atilde;o aqui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como funcion&aacute;rio de {app_name} , voc&ecirc; se qualificar&aacute; para benef&iacute;cios de nome breve, como seguro sa&uacute;de, plano de a&ccedil;&otilde;es, seguro odontol&oacute;gico etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique sua concord&acirc;ncia com estes termos e aceite esta oferta assinando e datando este contrato em ou antes de {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(26,'ru','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Письмо с предложением</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Уважаемый {applicant_name!</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} рад предложить вам присоединиться к нам в качестве {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Осталось всего несколько формальностей, чтобы приступить к работе. Пожалуйста, найдите время, чтобы ознакомиться с нашим официальным предложением. В нем содержится важная информация о вашем вознаграждении, льготах и ​​условиях вашего предполагаемого трудоустройства в {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} предлагает {job_type}. должность для вас как {job_title}, подчинение непосредственному руководителю/руководителю начиная с {start_date} в {workplace_location}. Ожидаемое рабочее время: {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>На этой должности {app_name} предлагает вам начать работу со ставкой заработной платы {salary} за {salary_type}. Вам будут платить на основе {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>В рамках вашего вознаграждения мы также предлагаем, если это применимо, вы описываете свой бонус, распределение прибыли, структуру комиссионных, опционы на акции и правила компенсационного комитета здесь.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Как сотрудник {app_name}, вы будете иметь право на краткосрочные льготы, такие как медицинская страховка, план акций, стоматологическая страховка и т. д.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Пожалуйста, подтвердите свое согласие с этими условиями и примите это предложение, подписав и датировав это соглашение не позднее {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Искренне,</p>\n                    <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(27,'ar','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>رسالة عرض</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>عزيزي {applicationant_name} ،</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} متحمس لاصطحابك على متن الطائرة بصفتك {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>كنت على بعد خطوات قليلة من الشروع في العمل. يرجى أخذ الوقت الكافي لمراجعة عرضنا الرسمي. يتضمن تفاصيل مهمة حول راتبك ومزاياك وبنود وشروط عملك المتوقع مع {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} يقدم {job_type}. المنصب بالنسبة لك كـ {job_title} ، تقديم التقارير إلى [المدير المباشر / المشرف] بدءًا من {start_date} في {workplace_location}. ساعات العمل المتوقعة هي {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>في هذا المنصب ، يعرض عليك {app_name}&nbsp; {salary}أن تبدأ لك بمعدل دفع {salary_type} لكل {salary_duration}. سوف يتم الدفع لك على أساس.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>كجزء من تعويضك ، إذا كان ذلك ممكنًا ، ستصف مكافأتك ومشاركة الأرباح وهيكل العمولة وخيارات الأسهم وقواعد لجنة التعويضات هنا.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>بصفتك موظفًا في {app_name} ، ستكون مؤهلاً للحصول على مزايا الاسم المختصر ، مثل التأمين الصحي ، وخطة الأسهم ، والتأمين على الأسنان ، وما إلى ذلك.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>الرجاء توضيح موافقتك على هذه البنود وقبول هذا العرض عن طريق التوقيع على هذه الاتفاقية وتأريخها في أو قبل {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>بإخلاص،</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>\n                    <p>&nbsp;</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(28,'da','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Tilbudsbrev</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>K&aelig;re {applicant_name}</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} er glade for at f&aring; dig med som {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Der var kun et par formaliteter fra at komme p&aring; arbejde. Tag dig tid til at gennemg&aring; vores formelle tilbud. Den indeholder vigtige oplysninger om din kompensation, fordele og vilk&aring;rene og betingelserne for din forventede ans&aelig;ttelse hos {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tilbyder en {job_type}. stilling til dig som {job_title}, der rapporterer til [n&aelig;rmeste leder/supervisor] fra og med {start_date} p&aring;{workplace_location}. Forventet arbejdstid er {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>I denne stilling tilbyder {app_name} at starte dig med en l&oslash;nsats p&aring; {salary} pr. {salary_type}. Du vil blive betalt p&aring; {salary_duration}-basis.</p>\n                    <p>&nbsp;</p>\n                    <p>Som en del af din kompensation, du ogs&aring; tilbyder, hvis det er relevant, vil du beskrive din bonus, overskudsdeling, kommissionsstruktur, aktieoptioner og regler for kompensationsudvalget her.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Som ansat hos {app_name} vil du v&aelig;re berettiget til kort navnefordele, s&aring;som sundhedsforsikring, aktieplan, tandforsikring osv.</p>\n                    <p>&nbsp;</p>\n                    <p>Angiv venligst din accept af disse vilk&aring;r og accepter dette tilbud ved at underskrive og datere denne aftale p&aring; eller f&oslash;r {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(29,'de','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Angebotsschreiben</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sehr geehrter {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} freut sich, Sie als {job_title} an Bord zu holen.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nur noch wenige Formalit&auml;ten bis zur Arbeit. Bitte nehmen Sie sich die Zeit, unser formelles Angebot zu pr&uuml;fen. Es enth&auml;lt wichtige Details zu Ihrer Verg&uuml;tung, Ihren Leistungen und den Bedingungen Ihrer voraussichtlichen Anstellung bei {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} bietet einen {job_type} an. Position f&uuml;r Sie als {job_title}, ab {start_date} am {workplace_location} unterstellt an unmittelbarer Manager/Vorgesetzter. Erwartete Arbeitszeiten sind {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In dieser Position bietet {app_name} Ihnen an, mit einem Gehaltssatz von {salary} pro {salary_type} zu beginnen. Sie werden auf Basis von {salary_duration} bezahlt.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Teil Ihrer Verg&uuml;tung, die Sie gegebenenfalls auch anbieten, beschreiben Sie hier Ihren Bonus, Ihre Gewinnbeteiligung, Ihre Provisionsstruktur, Ihre Aktienoptionen und die Regeln des Verg&uuml;tungsausschusses.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Mitarbeiter von {app_name} haben Sie Anspruch auf Kurznamenvorteile wie Krankenversicherung, Aktienplan, Zahnversicherung usw.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Bitte erkl&auml;ren Sie Ihr Einverst&auml;ndnis mit diesen Bedingungen und nehmen Sie dieses Angebot an, indem Sie diese Vereinbarung am oder vor dem {offer_expiration_date} unterzeichnen und datieren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Aufrichtig,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(30,'en','<p style=\"text-align: center;\"><strong>Offer Letter</strong></p>\n                    <p>&nbsp;</p>\n                    <p>Dear {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is excited to bring you on board as {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Were just a few formalities away from getting down to work. Please take the time to review our formal offer. It includes important details about your compensation, benefits, and the terms and conditions of your anticipated employment with {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is offering a {job_type}. position for you as {job_title}, reporting to [immediate manager/supervisor] starting on {start_date} at{workplace_location}. Expected hours of work are{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>In this position, {app_name} is offering to start you at a pay rate of {salary} per {salary_type}. You will be paid on a{salary_duration} basis.&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>As part of your compensation, were also offering [if applicable, youll describe your bonus, profit sharing, commission structure, stock options, and compensation committee rules here].</p>\n                    <p>&nbsp;</p>\n                    <p>As an employee of {app_name} , you will be eligible for briefly name benefits, such as health insurance, stock plan, dental insurance, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>Please indicate your agreement with these terms and accept this offer by signing and dating this agreement on or before {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Sincerely,</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(31,'es','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Estimado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} se complace en incorporarlo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltaban s&oacute;lo unos tr&aacute;mites para ponerse manos a la obra. T&oacute;mese el tiempo para revisar nuestra oferta formal. Incluye detalles importantes sobre su compensaci&oacute;n, beneficios y los t&eacute;rminos y condiciones de su empleo anticipado con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; ofreciendo {job_type}. posici&oacute;n para usted como {job_title}, reportando al gerente/supervisor inmediato a partir del {start_date} en {workplace_location}. Las horas de trabajo esperadas son {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En este puesto, {app_name} te ofrece comenzar con una tarifa de pago de {salary} por {salary_type}. Se le pagar&aacute; sobre la base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de su compensaci&oacute;n, tambi&eacute;n ofrecemos, si corresponde, aqu&iacute; describir&aacute; su bonificaci&oacute;n, participaci&oacute;n en las ganancias, estructura de comisiones, opciones sobre acciones y reglas del comit&eacute; de compensaci&oacute;n.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como empleado de {app_name}, ser&aacute; elegible para beneficios de nombre breve, como seguro m&eacute;dico, plan de acciones, seguro dental, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique su acuerdo con estos t&eacute;rminos y acepte esta oferta firmando y fechando este acuerdo el {offer_expiration_date} o antes.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(32,'fr','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettre doffre</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cher {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est ravi de vous accueillir en tant que {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Eacute;taient juste quelques formalit&eacute;s loin de se mettre au travail. Veuillez prendre le temps dexaminer notre offre formelle. Il comprend des d&eacute;tails importants sur votre r&eacute;mun&eacute;ration, vos avantages et les termes et conditions de votre emploi pr&eacute;vu avec {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} propose un {job_type}. poste pour vous en tant que {job_title}, relevant du directeur/superviseur imm&eacute;diat &agrave; partir du {start_date} &agrave; {workplace_location}. Les heures de travail pr&eacute;vues sont de {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Agrave; ce poste, {app_name} vous propose de commencer avec un taux de r&eacute;mun&eacute;ration de {salary} par {salary_type}. Vous serez pay&eacute; sur une base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Dans le cadre de votre r&eacute;mun&eacute;ration, le cas &eacute;ch&eacute;ant, vous d&eacute;crivez ici votre bonus, votre participation aux b&eacute;n&eacute;fices, votre structure de commission, vos options sur actions et les r&egrave;gles du comit&eacute; de r&eacute;mun&eacute;ration.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En tant quemploy&eacute; de {app_name}, vous aurez droit &agrave; des avantages bri&egrave;vement nomm&eacute;s, tels que lassurance maladie, le plan dactionnariat, lassurance dentaire, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Veuillez indiquer votre accord avec ces conditions et accepter cette offre en signant et en datant cet accord au plus tard le {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinc&egrave;rement,</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(33,'id','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Surat penawaran</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} yang terhormat,</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} dengan senang hati membawa Anda sebagai {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Tinggal beberapa formalitas lagi untuk mulai bekerja. Harap luangkan waktu untuk meninjau penawaran resmi kami. Ini mencakup detail penting tentang kompensasi, tunjangan, serta persyaratan dan ketentuan pekerjaan yang Anda harapkan dengan {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} menawarkan {job_type}. posisi untuk Anda sebagai {job_title}, melapor ke manajer/penyelia langsung mulai {start_date} di{workplace_location}. Jam kerja yang diharapkan adalah{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Di posisi ini, {app_name} menawarkan untuk memulai Anda dengan tarif pembayaran {salary} per {salary_type}. Anda akan dibayar berdasarkan {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai bagian dari kompensasi Anda, yang juga ditawarkan jika berlaku, Anda akan menjelaskan bonus, pembagian keuntungan, struktur komisi, opsi saham, dan aturan komite kompensasi Anda di sini.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai karyawan {app_name} , Anda akan memenuhi syarat untuk mendapatkan manfaat singkat, seperti asuransi kesehatan, paket saham, asuransi gigi, dll.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Harap tunjukkan persetujuan Anda dengan persyaratan ini dan terima penawaran ini dengan menandatangani dan memberi tanggal pada perjanjian ini pada atau sebelum {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sungguh-sungguh,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(34,'it','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettera di offerta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Gentile {nome_richiedente},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} &egrave; entusiasta di portarti a bordo come {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Mancavano solo poche formalit&agrave; per mettersi al lavoro. Per favore, prenditi del tempo per rivedere la nostra offerta formale. Include dettagli importanti sul compenso, i vantaggi e i termini e le condizioni del tuo impiego previsto con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} offre un {job_type}. posizione per te come {job_title}, riportando al manager/supervisore immediato a partire da {start_date} a {workplace_location}. Lorario di lavoro previsto &egrave; di {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In questa posizione, {app_name} ti offre di iniziare con una paga di {salary} per {salary_type}. Sarai pagato su base {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Come parte del tuo compenso, se applicabile, descrivi anche il tuo bonus, la partecipazione agli utili, la struttura delle commissioni, le stock option e le regole del comitato di compensazione qui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In qualit&agrave; di dipendente di {app_name} , avrai diritto a vantaggi per nomi brevi, come assicurazione sanitaria, piano azionario, assicurazione dentale, ecc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indica il tuo accordo con questi termini e accetta questa offerta firmando e datando questo accordo entro il {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cordiali saluti,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(35,'ja','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>内定通知</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} 様</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} は、あなたを {job_title} として迎えることに興奮しています。</p>\n                    <p>&nbsp;</p>\n                    <p>仕事に取り掛かる前に、ほんの少しの手続きがありました。時間をかけて正式なオファーを確認してください。これには、あなたの報酬、福利厚生、および {app_name} での予想される雇用条件に関する重要な詳細が含まれています。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} が {job_type} を提供しています。 {job_title} として、{start_date} から {workplace_location} の直属のマネージャー/スーパーバイザーに報告します。予想される勤務時間は {days_of_week} です。</p>\n                    <p>&nbsp;</p>\n                    <p>このポジションでは、{app_name} は、{salary_type} あたり {salary} の賃金率であなたをスタートさせることを提案しています。 {salary_duration} 単位で支払われます。</p>\n                    <p>&nbsp;</p>\n                    <p>報酬の一部として、該当する場合は提供もしていました。ボーナス、利益分配、手数料体系、ストック オプション、および報酬委員会の規則についてここに説明します。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} の従業員として、健康保険、ストック プラン、歯科保険などの簡単な名前の特典を受ける資格があります。</p>\n                    <p>&nbsp;</p>\n                    <p>{offer_expiration_date} 日までに本契約に署名し日付を記入して、これらの条件に同意し、このオファーを受け入れてください。</p>\n                    <p>&nbsp;</p>\n                    <p>心から、</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(36,'nl','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Aanbiedingsbrief</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Beste {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is verheugd je aan boord te mogen verwelkomen als {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Waren slechts een paar formaliteiten verwijderd om aan het werk te gaan. Neem de tijd om ons formele aanbod te bekijken. Het bevat belangrijke details over uw vergoeding, voordelen en de voorwaarden van uw verwachte dienstverband bij {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} biedt een {job_type} aan. functie voor jou als {job_title}, rapporterend aan directe manager/supervisor vanaf {start_date} op {workplace_location}. De verwachte werkuren zijn {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In deze functie biedt {app_name} aan om je te starten tegen een salaris van {salary} per {salary_type}. U wordt betaald op basis van {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als onderdeel van uw vergoeding, die u, indien van toepassing, ook aanbiedt, beschrijft u hier uw bonus, winstdeling, commissiestructuur, aandelenopties en regels van het vergoedingscomit&eacute;.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als medewerker van {app_name} kom je in aanmerking voor korte naamvoordelen, zoals een ziektekostenverzekering, aandelenplan, tandartsverzekering, enz.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Geef aan dat u akkoord gaat met deze voorwaarden en accepteer deze aanbieding door deze overeenkomst op of v&oacute;&oacute;r {offer_expiration_date} te ondertekenen en te dateren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Eerlijk,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(37,'pl','<p style=\"text-align: center;\"><strong><span style=\"font-size: 18pt;\">List ofertowy</span></strong></p>\n                    <p>&nbsp;</p>\n                    <p>Drogi {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} z radością zaprasza Cię do wsp&oacute;łpracy jako {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Od rozpoczęcia pracy dzieliło mnie tylko kilka formalności. Prosimy o poświęcenie czasu na zapoznanie się z naszą oficjalną ofertą. Zawiera ważne szczeg&oacute;ły dotyczące Twojego wynagrodzenia, świadczeń oraz warunk&oacute;w Twojego przewidywanego zatrudnienia w {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} oferuje {job_type}. stanowisko dla Ciebie jako {job_title}, raportowanie do bezpośredniego przełożonego/przełożonego począwszy od {start_date} w {workplace_location}. Przewidywane godziny pracy to {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Na tym stanowisku {app_name} oferuje Ci rozpoczęcie pracy za stawkę {salary} za {salary_type}. Otrzymasz zapłatę na podstawie {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>W ramach wynagrodzenia, kt&oacute;re oferowaliśmy, jeśli dotyczy, opiszesz tutaj swoją premię, podział zysk&oacute;w, strukturę prowizji, opcje na akcje i zasady komitetu ds. Wynagrodzeń.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Jako pracownik {app_name} będziesz mieć prawo do kr&oacute;tkich imiennych świadczeń, takich jak ubezpieczenie zdrowotne, plan akcji, ubezpieczenie dentystyczne itp.</p>\n                    <p>&nbsp;</p>\n                    <p>Zaznacz, że zgadzasz się z tymi warunkami i zaakceptuj tę ofertę, podpisując i datując tę ​​umowę w dniu {offer_expiration_date} lub wcześniej.</p>\n                    <p>&nbsp;</p>\n                    <p>Z poważaniem,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(38,'pt','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Prezado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tem o prazer de trazer voc&ecirc; a bordo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltavam apenas algumas formalidades para come&ccedil;ar a trabalhar. Por favor, reserve um tempo para revisar nossa oferta formal. Ele inclui detalhes importantes sobre sua remunera&ccedil;&atilde;o, benef&iacute;cios e os termos e condi&ccedil;&otilde;es de seu emprego previsto com {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; oferecendo um {job_type}. posi&ccedil;&atilde;o para voc&ecirc; como {job_title}, reportando-se ao gerente/supervisor imediato a partir de {start_date} em {workplace_location}. As horas de trabalho previstas s&atilde;o {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nesta posi&ccedil;&atilde;o, {app_name} est&aacute; oferecendo para voc&ecirc; come&ccedil;ar com uma taxa de pagamento de {salary} por {salary_type}. Voc&ecirc; ser&aacute; pago em uma base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de sua remunera&ccedil;&atilde;o, tamb&eacute;m oferecida, se aplic&aacute;vel, voc&ecirc; descrever&aacute; seu b&ocirc;nus, participa&ccedil;&atilde;o nos lucros, estrutura de comiss&otilde;es, op&ccedil;&otilde;es de a&ccedil;&otilde;es e regras do comit&ecirc; de remunera&ccedil;&atilde;o aqui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como funcion&aacute;rio de {app_name} , voc&ecirc; se qualificar&aacute; para benef&iacute;cios de nome breve, como seguro sa&uacute;de, plano de a&ccedil;&otilde;es, seguro odontol&oacute;gico etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique sua concord&acirc;ncia com estes termos e aceite esta oferta assinando e datando este contrato em ou antes de {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(39,'ru','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Письмо с предложением</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Уважаемый {applicant_name!</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} рад предложить вам присоединиться к нам в качестве {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Осталось всего несколько формальностей, чтобы приступить к работе. Пожалуйста, найдите время, чтобы ознакомиться с нашим официальным предложением. В нем содержится важная информация о вашем вознаграждении, льготах и ​​условиях вашего предполагаемого трудоустройства в {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} предлагает {job_type}. должность для вас как {job_title}, подчинение непосредственному руководителю/руководителю начиная с {start_date} в {workplace_location}. Ожидаемое рабочее время: {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>На этой должности {app_name} предлагает вам начать работу со ставкой заработной платы {salary} за {salary_type}. Вам будут платить на основе {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>В рамках вашего вознаграждения мы также предлагаем, если это применимо, вы описываете свой бонус, распределение прибыли, структуру комиссионных, опционы на акции и правила компенсационного комитета здесь.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Как сотрудник {app_name}, вы будете иметь право на краткосрочные льготы, такие как медицинская страховка, план акций, стоматологическая страховка и т. д.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Пожалуйста, подтвердите свое согласие с этими условиями и примите это предложение, подписав и датировав это соглашение не позднее {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Искренне,</p>\n                    <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(40,'ar','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>رسالة عرض</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>عزيزي {applicationant_name} ،</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} متحمس لاصطحابك على متن الطائرة بصفتك {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>كنت على بعد خطوات قليلة من الشروع في العمل. يرجى أخذ الوقت الكافي لمراجعة عرضنا الرسمي. يتضمن تفاصيل مهمة حول راتبك ومزاياك وبنود وشروط عملك المتوقع مع {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} يقدم {job_type}. المنصب بالنسبة لك كـ {job_title} ، تقديم التقارير إلى [المدير المباشر / المشرف] بدءًا من {start_date} في {workplace_location}. ساعات العمل المتوقعة هي {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>في هذا المنصب ، يعرض عليك {app_name}&nbsp; {salary}أن تبدأ لك بمعدل دفع {salary_type} لكل {salary_duration}. سوف يتم الدفع لك على أساس.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>كجزء من تعويضك ، إذا كان ذلك ممكنًا ، ستصف مكافأتك ومشاركة الأرباح وهيكل العمولة وخيارات الأسهم وقواعد لجنة التعويضات هنا.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>بصفتك موظفًا في {app_name} ، ستكون مؤهلاً للحصول على مزايا الاسم المختصر ، مثل التأمين الصحي ، وخطة الأسهم ، والتأمين على الأسنان ، وما إلى ذلك.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>الرجاء توضيح موافقتك على هذه البنود وقبول هذا العرض عن طريق التوقيع على هذه الاتفاقية وتأريخها في أو قبل {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>بإخلاص،</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>\n                    <p>&nbsp;</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(41,'da','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Tilbudsbrev</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>K&aelig;re {applicant_name}</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} er glade for at f&aring; dig med som {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Der var kun et par formaliteter fra at komme p&aring; arbejde. Tag dig tid til at gennemg&aring; vores formelle tilbud. Den indeholder vigtige oplysninger om din kompensation, fordele og vilk&aring;rene og betingelserne for din forventede ans&aelig;ttelse hos {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tilbyder en {job_type}. stilling til dig som {job_title}, der rapporterer til [n&aelig;rmeste leder/supervisor] fra og med {start_date} p&aring;{workplace_location}. Forventet arbejdstid er {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>I denne stilling tilbyder {app_name} at starte dig med en l&oslash;nsats p&aring; {salary} pr. {salary_type}. Du vil blive betalt p&aring; {salary_duration}-basis.</p>\n                    <p>&nbsp;</p>\n                    <p>Som en del af din kompensation, du ogs&aring; tilbyder, hvis det er relevant, vil du beskrive din bonus, overskudsdeling, kommissionsstruktur, aktieoptioner og regler for kompensationsudvalget her.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Som ansat hos {app_name} vil du v&aelig;re berettiget til kort navnefordele, s&aring;som sundhedsforsikring, aktieplan, tandforsikring osv.</p>\n                    <p>&nbsp;</p>\n                    <p>Angiv venligst din accept af disse vilk&aring;r og accepter dette tilbud ved at underskrive og datere denne aftale p&aring; eller f&oslash;r {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(42,'de','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Angebotsschreiben</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sehr geehrter {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} freut sich, Sie als {job_title} an Bord zu holen.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nur noch wenige Formalit&auml;ten bis zur Arbeit. Bitte nehmen Sie sich die Zeit, unser formelles Angebot zu pr&uuml;fen. Es enth&auml;lt wichtige Details zu Ihrer Verg&uuml;tung, Ihren Leistungen und den Bedingungen Ihrer voraussichtlichen Anstellung bei {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} bietet einen {job_type} an. Position f&uuml;r Sie als {job_title}, ab {start_date} am {workplace_location} unterstellt an unmittelbarer Manager/Vorgesetzter. Erwartete Arbeitszeiten sind {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In dieser Position bietet {app_name} Ihnen an, mit einem Gehaltssatz von {salary} pro {salary_type} zu beginnen. Sie werden auf Basis von {salary_duration} bezahlt.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Teil Ihrer Verg&uuml;tung, die Sie gegebenenfalls auch anbieten, beschreiben Sie hier Ihren Bonus, Ihre Gewinnbeteiligung, Ihre Provisionsstruktur, Ihre Aktienoptionen und die Regeln des Verg&uuml;tungsausschusses.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Mitarbeiter von {app_name} haben Sie Anspruch auf Kurznamenvorteile wie Krankenversicherung, Aktienplan, Zahnversicherung usw.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Bitte erkl&auml;ren Sie Ihr Einverst&auml;ndnis mit diesen Bedingungen und nehmen Sie dieses Angebot an, indem Sie diese Vereinbarung am oder vor dem {offer_expiration_date} unterzeichnen und datieren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Aufrichtig,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(43,'en','<p style=\"text-align: center;\"><strong>Offer Letter</strong></p>\n                    <p>&nbsp;</p>\n                    <p>Dear {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is excited to bring you on board as {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Were just a few formalities away from getting down to work. Please take the time to review our formal offer. It includes important details about your compensation, benefits, and the terms and conditions of your anticipated employment with {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is offering a {job_type}. position for you as {job_title}, reporting to [immediate manager/supervisor] starting on {start_date} at{workplace_location}. Expected hours of work are{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>In this position, {app_name} is offering to start you at a pay rate of {salary} per {salary_type}. You will be paid on a{salary_duration} basis.&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>As part of your compensation, were also offering [if applicable, youll describe your bonus, profit sharing, commission structure, stock options, and compensation committee rules here].</p>\n                    <p>&nbsp;</p>\n                    <p>As an employee of {app_name} , you will be eligible for briefly name benefits, such as health insurance, stock plan, dental insurance, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>Please indicate your agreement with these terms and accept this offer by signing and dating this agreement on or before {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Sincerely,</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(44,'es','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Estimado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} se complace en incorporarlo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltaban s&oacute;lo unos tr&aacute;mites para ponerse manos a la obra. T&oacute;mese el tiempo para revisar nuestra oferta formal. Incluye detalles importantes sobre su compensaci&oacute;n, beneficios y los t&eacute;rminos y condiciones de su empleo anticipado con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; ofreciendo {job_type}. posici&oacute;n para usted como {job_title}, reportando al gerente/supervisor inmediato a partir del {start_date} en {workplace_location}. Las horas de trabajo esperadas son {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En este puesto, {app_name} te ofrece comenzar con una tarifa de pago de {salary} por {salary_type}. Se le pagar&aacute; sobre la base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de su compensaci&oacute;n, tambi&eacute;n ofrecemos, si corresponde, aqu&iacute; describir&aacute; su bonificaci&oacute;n, participaci&oacute;n en las ganancias, estructura de comisiones, opciones sobre acciones y reglas del comit&eacute; de compensaci&oacute;n.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como empleado de {app_name}, ser&aacute; elegible para beneficios de nombre breve, como seguro m&eacute;dico, plan de acciones, seguro dental, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique su acuerdo con estos t&eacute;rminos y acepte esta oferta firmando y fechando este acuerdo el {offer_expiration_date} o antes.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(45,'fr','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettre doffre</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cher {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est ravi de vous accueillir en tant que {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Eacute;taient juste quelques formalit&eacute;s loin de se mettre au travail. Veuillez prendre le temps dexaminer notre offre formelle. Il comprend des d&eacute;tails importants sur votre r&eacute;mun&eacute;ration, vos avantages et les termes et conditions de votre emploi pr&eacute;vu avec {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} propose un {job_type}. poste pour vous en tant que {job_title}, relevant du directeur/superviseur imm&eacute;diat &agrave; partir du {start_date} &agrave; {workplace_location}. Les heures de travail pr&eacute;vues sont de {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Agrave; ce poste, {app_name} vous propose de commencer avec un taux de r&eacute;mun&eacute;ration de {salary} par {salary_type}. Vous serez pay&eacute; sur une base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Dans le cadre de votre r&eacute;mun&eacute;ration, le cas &eacute;ch&eacute;ant, vous d&eacute;crivez ici votre bonus, votre participation aux b&eacute;n&eacute;fices, votre structure de commission, vos options sur actions et les r&egrave;gles du comit&eacute; de r&eacute;mun&eacute;ration.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En tant quemploy&eacute; de {app_name}, vous aurez droit &agrave; des avantages bri&egrave;vement nomm&eacute;s, tels que lassurance maladie, le plan dactionnariat, lassurance dentaire, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Veuillez indiquer votre accord avec ces conditions et accepter cette offre en signant et en datant cet accord au plus tard le {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinc&egrave;rement,</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(46,'id','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Surat penawaran</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} yang terhormat,</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} dengan senang hati membawa Anda sebagai {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Tinggal beberapa formalitas lagi untuk mulai bekerja. Harap luangkan waktu untuk meninjau penawaran resmi kami. Ini mencakup detail penting tentang kompensasi, tunjangan, serta persyaratan dan ketentuan pekerjaan yang Anda harapkan dengan {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} menawarkan {job_type}. posisi untuk Anda sebagai {job_title}, melapor ke manajer/penyelia langsung mulai {start_date} di{workplace_location}. Jam kerja yang diharapkan adalah{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Di posisi ini, {app_name} menawarkan untuk memulai Anda dengan tarif pembayaran {salary} per {salary_type}. Anda akan dibayar berdasarkan {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai bagian dari kompensasi Anda, yang juga ditawarkan jika berlaku, Anda akan menjelaskan bonus, pembagian keuntungan, struktur komisi, opsi saham, dan aturan komite kompensasi Anda di sini.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai karyawan {app_name} , Anda akan memenuhi syarat untuk mendapatkan manfaat singkat, seperti asuransi kesehatan, paket saham, asuransi gigi, dll.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Harap tunjukkan persetujuan Anda dengan persyaratan ini dan terima penawaran ini dengan menandatangani dan memberi tanggal pada perjanjian ini pada atau sebelum {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sungguh-sungguh,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(47,'it','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettera di offerta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Gentile {nome_richiedente},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} &egrave; entusiasta di portarti a bordo come {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Mancavano solo poche formalit&agrave; per mettersi al lavoro. Per favore, prenditi del tempo per rivedere la nostra offerta formale. Include dettagli importanti sul compenso, i vantaggi e i termini e le condizioni del tuo impiego previsto con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} offre un {job_type}. posizione per te come {job_title}, riportando al manager/supervisore immediato a partire da {start_date} a {workplace_location}. Lorario di lavoro previsto &egrave; di {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In questa posizione, {app_name} ti offre di iniziare con una paga di {salary} per {salary_type}. Sarai pagato su base {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Come parte del tuo compenso, se applicabile, descrivi anche il tuo bonus, la partecipazione agli utili, la struttura delle commissioni, le stock option e le regole del comitato di compensazione qui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In qualit&agrave; di dipendente di {app_name} , avrai diritto a vantaggi per nomi brevi, come assicurazione sanitaria, piano azionario, assicurazione dentale, ecc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indica il tuo accordo con questi termini e accetta questa offerta firmando e datando questo accordo entro il {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cordiali saluti,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(48,'ja','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>内定通知</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} 様</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} は、あなたを {job_title} として迎えることに興奮しています。</p>\n                    <p>&nbsp;</p>\n                    <p>仕事に取り掛かる前に、ほんの少しの手続きがありました。時間をかけて正式なオファーを確認してください。これには、あなたの報酬、福利厚生、および {app_name} での予想される雇用条件に関する重要な詳細が含まれています。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} が {job_type} を提供しています。 {job_title} として、{start_date} から {workplace_location} の直属のマネージャー/スーパーバイザーに報告します。予想される勤務時間は {days_of_week} です。</p>\n                    <p>&nbsp;</p>\n                    <p>このポジションでは、{app_name} は、{salary_type} あたり {salary} の賃金率であなたをスタートさせることを提案しています。 {salary_duration} 単位で支払われます。</p>\n                    <p>&nbsp;</p>\n                    <p>報酬の一部として、該当する場合は提供もしていました。ボーナス、利益分配、手数料体系、ストック オプション、および報酬委員会の規則についてここに説明します。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} の従業員として、健康保険、ストック プラン、歯科保険などの簡単な名前の特典を受ける資格があります。</p>\n                    <p>&nbsp;</p>\n                    <p>{offer_expiration_date} 日までに本契約に署名し日付を記入して、これらの条件に同意し、このオファーを受け入れてください。</p>\n                    <p>&nbsp;</p>\n                    <p>心から、</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(49,'nl','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Aanbiedingsbrief</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Beste {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is verheugd je aan boord te mogen verwelkomen als {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Waren slechts een paar formaliteiten verwijderd om aan het werk te gaan. Neem de tijd om ons formele aanbod te bekijken. Het bevat belangrijke details over uw vergoeding, voordelen en de voorwaarden van uw verwachte dienstverband bij {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} biedt een {job_type} aan. functie voor jou als {job_title}, rapporterend aan directe manager/supervisor vanaf {start_date} op {workplace_location}. De verwachte werkuren zijn {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In deze functie biedt {app_name} aan om je te starten tegen een salaris van {salary} per {salary_type}. U wordt betaald op basis van {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als onderdeel van uw vergoeding, die u, indien van toepassing, ook aanbiedt, beschrijft u hier uw bonus, winstdeling, commissiestructuur, aandelenopties en regels van het vergoedingscomit&eacute;.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als medewerker van {app_name} kom je in aanmerking voor korte naamvoordelen, zoals een ziektekostenverzekering, aandelenplan, tandartsverzekering, enz.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Geef aan dat u akkoord gaat met deze voorwaarden en accepteer deze aanbieding door deze overeenkomst op of v&oacute;&oacute;r {offer_expiration_date} te ondertekenen en te dateren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Eerlijk,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(50,'pl','<p style=\"text-align: center;\"><strong><span style=\"font-size: 18pt;\">List ofertowy</span></strong></p>\n                    <p>&nbsp;</p>\n                    <p>Drogi {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} z radością zaprasza Cię do wsp&oacute;łpracy jako {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Od rozpoczęcia pracy dzieliło mnie tylko kilka formalności. Prosimy o poświęcenie czasu na zapoznanie się z naszą oficjalną ofertą. Zawiera ważne szczeg&oacute;ły dotyczące Twojego wynagrodzenia, świadczeń oraz warunk&oacute;w Twojego przewidywanego zatrudnienia w {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} oferuje {job_type}. stanowisko dla Ciebie jako {job_title}, raportowanie do bezpośredniego przełożonego/przełożonego począwszy od {start_date} w {workplace_location}. Przewidywane godziny pracy to {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Na tym stanowisku {app_name} oferuje Ci rozpoczęcie pracy za stawkę {salary} za {salary_type}. Otrzymasz zapłatę na podstawie {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>W ramach wynagrodzenia, kt&oacute;re oferowaliśmy, jeśli dotyczy, opiszesz tutaj swoją premię, podział zysk&oacute;w, strukturę prowizji, opcje na akcje i zasady komitetu ds. Wynagrodzeń.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Jako pracownik {app_name} będziesz mieć prawo do kr&oacute;tkich imiennych świadczeń, takich jak ubezpieczenie zdrowotne, plan akcji, ubezpieczenie dentystyczne itp.</p>\n                    <p>&nbsp;</p>\n                    <p>Zaznacz, że zgadzasz się z tymi warunkami i zaakceptuj tę ofertę, podpisując i datując tę ​​umowę w dniu {offer_expiration_date} lub wcześniej.</p>\n                    <p>&nbsp;</p>\n                    <p>Z poważaniem,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(51,'pt','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Prezado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tem o prazer de trazer voc&ecirc; a bordo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltavam apenas algumas formalidades para come&ccedil;ar a trabalhar. Por favor, reserve um tempo para revisar nossa oferta formal. Ele inclui detalhes importantes sobre sua remunera&ccedil;&atilde;o, benef&iacute;cios e os termos e condi&ccedil;&otilde;es de seu emprego previsto com {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; oferecendo um {job_type}. posi&ccedil;&atilde;o para voc&ecirc; como {job_title}, reportando-se ao gerente/supervisor imediato a partir de {start_date} em {workplace_location}. As horas de trabalho previstas s&atilde;o {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nesta posi&ccedil;&atilde;o, {app_name} est&aacute; oferecendo para voc&ecirc; come&ccedil;ar com uma taxa de pagamento de {salary} por {salary_type}. Voc&ecirc; ser&aacute; pago em uma base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de sua remunera&ccedil;&atilde;o, tamb&eacute;m oferecida, se aplic&aacute;vel, voc&ecirc; descrever&aacute; seu b&ocirc;nus, participa&ccedil;&atilde;o nos lucros, estrutura de comiss&otilde;es, op&ccedil;&otilde;es de a&ccedil;&otilde;es e regras do comit&ecirc; de remunera&ccedil;&atilde;o aqui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como funcion&aacute;rio de {app_name} , voc&ecirc; se qualificar&aacute; para benef&iacute;cios de nome breve, como seguro sa&uacute;de, plano de a&ccedil;&otilde;es, seguro odontol&oacute;gico etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique sua concord&acirc;ncia com estes termos e aceite esta oferta assinando e datando este contrato em ou antes de {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(52,'ru','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Письмо с предложением</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Уважаемый {applicant_name!</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} рад предложить вам присоединиться к нам в качестве {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Осталось всего несколько формальностей, чтобы приступить к работе. Пожалуйста, найдите время, чтобы ознакомиться с нашим официальным предложением. В нем содержится важная информация о вашем вознаграждении, льготах и ​​условиях вашего предполагаемого трудоустройства в {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} предлагает {job_type}. должность для вас как {job_title}, подчинение непосредственному руководителю/руководителю начиная с {start_date} в {workplace_location}. Ожидаемое рабочее время: {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>На этой должности {app_name} предлагает вам начать работу со ставкой заработной платы {salary} за {salary_type}. Вам будут платить на основе {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>В рамках вашего вознаграждения мы также предлагаем, если это применимо, вы описываете свой бонус, распределение прибыли, структуру комиссионных, опционы на акции и правила компенсационного комитета здесь.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Как сотрудник {app_name}, вы будете иметь право на краткосрочные льготы, такие как медицинская страховка, план акций, стоматологическая страховка и т. д.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Пожалуйста, подтвердите свое согласие с этими условиями и примите это предложение, подписав и датировав это соглашение не позднее {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Искренне,</p>\n                    <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(53,'ar','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>رسالة عرض</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>عزيزي {applicationant_name} ،</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} متحمس لاصطحابك على متن الطائرة بصفتك {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>كنت على بعد خطوات قليلة من الشروع في العمل. يرجى أخذ الوقت الكافي لمراجعة عرضنا الرسمي. يتضمن تفاصيل مهمة حول راتبك ومزاياك وبنود وشروط عملك المتوقع مع {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} يقدم {job_type}. المنصب بالنسبة لك كـ {job_title} ، تقديم التقارير إلى [المدير المباشر / المشرف] بدءًا من {start_date} في {workplace_location}. ساعات العمل المتوقعة هي {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>في هذا المنصب ، يعرض عليك {app_name}&nbsp; {salary}أن تبدأ لك بمعدل دفع {salary_type} لكل {salary_duration}. سوف يتم الدفع لك على أساس.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>كجزء من تعويضك ، إذا كان ذلك ممكنًا ، ستصف مكافأتك ومشاركة الأرباح وهيكل العمولة وخيارات الأسهم وقواعد لجنة التعويضات هنا.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>بصفتك موظفًا في {app_name} ، ستكون مؤهلاً للحصول على مزايا الاسم المختصر ، مثل التأمين الصحي ، وخطة الأسهم ، والتأمين على الأسنان ، وما إلى ذلك.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>الرجاء توضيح موافقتك على هذه البنود وقبول هذا العرض عن طريق التوقيع على هذه الاتفاقية وتأريخها في أو قبل {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>بإخلاص،</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>\n                    <p>&nbsp;</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(54,'da','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Tilbudsbrev</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>K&aelig;re {applicant_name}</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} er glade for at f&aring; dig med som {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Der var kun et par formaliteter fra at komme p&aring; arbejde. Tag dig tid til at gennemg&aring; vores formelle tilbud. Den indeholder vigtige oplysninger om din kompensation, fordele og vilk&aring;rene og betingelserne for din forventede ans&aelig;ttelse hos {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tilbyder en {job_type}. stilling til dig som {job_title}, der rapporterer til [n&aelig;rmeste leder/supervisor] fra og med {start_date} p&aring;{workplace_location}. Forventet arbejdstid er {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>I denne stilling tilbyder {app_name} at starte dig med en l&oslash;nsats p&aring; {salary} pr. {salary_type}. Du vil blive betalt p&aring; {salary_duration}-basis.</p>\n                    <p>&nbsp;</p>\n                    <p>Som en del af din kompensation, du ogs&aring; tilbyder, hvis det er relevant, vil du beskrive din bonus, overskudsdeling, kommissionsstruktur, aktieoptioner og regler for kompensationsudvalget her.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Som ansat hos {app_name} vil du v&aelig;re berettiget til kort navnefordele, s&aring;som sundhedsforsikring, aktieplan, tandforsikring osv.</p>\n                    <p>&nbsp;</p>\n                    <p>Angiv venligst din accept af disse vilk&aring;r og accepter dette tilbud ved at underskrive og datere denne aftale p&aring; eller f&oslash;r {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Med venlig hilsen</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(55,'de','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Angebotsschreiben</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sehr geehrter {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} freut sich, Sie als {job_title} an Bord zu holen.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nur noch wenige Formalit&auml;ten bis zur Arbeit. Bitte nehmen Sie sich die Zeit, unser formelles Angebot zu pr&uuml;fen. Es enth&auml;lt wichtige Details zu Ihrer Verg&uuml;tung, Ihren Leistungen und den Bedingungen Ihrer voraussichtlichen Anstellung bei {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} bietet einen {job_type} an. Position f&uuml;r Sie als {job_title}, ab {start_date} am {workplace_location} unterstellt an unmittelbarer Manager/Vorgesetzter. Erwartete Arbeitszeiten sind {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In dieser Position bietet {app_name} Ihnen an, mit einem Gehaltssatz von {salary} pro {salary_type} zu beginnen. Sie werden auf Basis von {salary_duration} bezahlt.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Teil Ihrer Verg&uuml;tung, die Sie gegebenenfalls auch anbieten, beschreiben Sie hier Ihren Bonus, Ihre Gewinnbeteiligung, Ihre Provisionsstruktur, Ihre Aktienoptionen und die Regeln des Verg&uuml;tungsausschusses.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als Mitarbeiter von {app_name} haben Sie Anspruch auf Kurznamenvorteile wie Krankenversicherung, Aktienplan, Zahnversicherung usw.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Bitte erkl&auml;ren Sie Ihr Einverst&auml;ndnis mit diesen Bedingungen und nehmen Sie dieses Angebot an, indem Sie diese Vereinbarung am oder vor dem {offer_expiration_date} unterzeichnen und datieren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Aufrichtig,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(56,'en','<p style=\"text-align: center;\"><strong>Offer Letter</strong></p>\n                    <p>&nbsp;</p>\n                    <p>Dear {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is excited to bring you on board as {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Were just a few formalities away from getting down to work. Please take the time to review our formal offer. It includes important details about your compensation, benefits, and the terms and conditions of your anticipated employment with {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is offering a {job_type}. position for you as {job_title}, reporting to [immediate manager/supervisor] starting on {start_date} at{workplace_location}. Expected hours of work are{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>In this position, {app_name} is offering to start you at a pay rate of {salary} per {salary_type}. You will be paid on a{salary_duration} basis.&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>As part of your compensation, were also offering [if applicable, youll describe your bonus, profit sharing, commission structure, stock options, and compensation committee rules here].</p>\n                    <p>&nbsp;</p>\n                    <p>As an employee of {app_name} , you will be eligible for briefly name benefits, such as health insurance, stock plan, dental insurance, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>Please indicate your agreement with these terms and accept this offer by signing and dating this agreement on or before {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>Sincerely,</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(57,'es','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Estimado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} se complace en incorporarlo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltaban s&oacute;lo unos tr&aacute;mites para ponerse manos a la obra. T&oacute;mese el tiempo para revisar nuestra oferta formal. Incluye detalles importantes sobre su compensaci&oacute;n, beneficios y los t&eacute;rminos y condiciones de su empleo anticipado con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; ofreciendo {job_type}. posici&oacute;n para usted como {job_title}, reportando al gerente/supervisor inmediato a partir del {start_date} en {workplace_location}. Las horas de trabajo esperadas son {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En este puesto, {app_name} te ofrece comenzar con una tarifa de pago de {salary} por {salary_type}. Se le pagar&aacute; sobre la base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de su compensaci&oacute;n, tambi&eacute;n ofrecemos, si corresponde, aqu&iacute; describir&aacute; su bonificaci&oacute;n, participaci&oacute;n en las ganancias, estructura de comisiones, opciones sobre acciones y reglas del comit&eacute; de compensaci&oacute;n.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como empleado de {app_name}, ser&aacute; elegible para beneficios de nombre breve, como seguro m&eacute;dico, plan de acciones, seguro dental, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique su acuerdo con estos t&eacute;rminos y acepte esta oferta firmando y fechando este acuerdo el {offer_expiration_date} o antes.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(58,'fr','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettre doffre</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cher {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est ravi de vous accueillir en tant que {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Eacute;taient juste quelques formalit&eacute;s loin de se mettre au travail. Veuillez prendre le temps dexaminer notre offre formelle. Il comprend des d&eacute;tails importants sur votre r&eacute;mun&eacute;ration, vos avantages et les termes et conditions de votre emploi pr&eacute;vu avec {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} propose un {job_type}. poste pour vous en tant que {job_title}, relevant du directeur/superviseur imm&eacute;diat &agrave; partir du {start_date} &agrave; {workplace_location}. Les heures de travail pr&eacute;vues sont de {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&Agrave; ce poste, {app_name} vous propose de commencer avec un taux de r&eacute;mun&eacute;ration de {salary} par {salary_type}. Vous serez pay&eacute; sur une base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Dans le cadre de votre r&eacute;mun&eacute;ration, le cas &eacute;ch&eacute;ant, vous d&eacute;crivez ici votre bonus, votre participation aux b&eacute;n&eacute;fices, votre structure de commission, vos options sur actions et les r&egrave;gles du comit&eacute; de r&eacute;mun&eacute;ration.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>En tant quemploy&eacute; de {app_name}, vous aurez droit &agrave; des avantages bri&egrave;vement nomm&eacute;s, tels que lassurance maladie, le plan dactionnariat, lassurance dentaire, etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Veuillez indiquer votre accord avec ces conditions et accepter cette offre en signant et en datant cet accord au plus tard le {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinc&egrave;rement,</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(59,'id','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Surat penawaran</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} yang terhormat,</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} dengan senang hati membawa Anda sebagai {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Tinggal beberapa formalitas lagi untuk mulai bekerja. Harap luangkan waktu untuk meninjau penawaran resmi kami. Ini mencakup detail penting tentang kompensasi, tunjangan, serta persyaratan dan ketentuan pekerjaan yang Anda harapkan dengan {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} menawarkan {job_type}. posisi untuk Anda sebagai {job_title}, melapor ke manajer/penyelia langsung mulai {start_date} di{workplace_location}. Jam kerja yang diharapkan adalah{days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Di posisi ini, {app_name} menawarkan untuk memulai Anda dengan tarif pembayaran {salary} per {salary_type}. Anda akan dibayar berdasarkan {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai bagian dari kompensasi Anda, yang juga ditawarkan jika berlaku, Anda akan menjelaskan bonus, pembagian keuntungan, struktur komisi, opsi saham, dan aturan komite kompensasi Anda di sini.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sebagai karyawan {app_name} , Anda akan memenuhi syarat untuk mendapatkan manfaat singkat, seperti asuransi kesehatan, paket saham, asuransi gigi, dll.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Harap tunjukkan persetujuan Anda dengan persyaratan ini dan terima penawaran ini dengan menandatangani dan memberi tanggal pada perjanjian ini pada atau sebelum {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sungguh-sungguh,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(60,'it','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Lettera di offerta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Gentile {nome_richiedente},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} &egrave; entusiasta di portarti a bordo come {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Mancavano solo poche formalit&agrave; per mettersi al lavoro. Per favore, prenditi del tempo per rivedere la nostra offerta formale. Include dettagli importanti sul compenso, i vantaggi e i termini e le condizioni del tuo impiego previsto con {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} offre un {job_type}. posizione per te come {job_title}, riportando al manager/supervisore immediato a partire da {start_date} a {workplace_location}. Lorario di lavoro previsto &egrave; di {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In questa posizione, {app_name} ti offre di iniziare con una paga di {salary} per {salary_type}. Sarai pagato su base {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Come parte del tuo compenso, se applicabile, descrivi anche il tuo bonus, la partecipazione agli utili, la struttura delle commissioni, le stock option e le regole del comitato di compensazione qui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In qualit&agrave; di dipendente di {app_name} , avrai diritto a vantaggi per nomi brevi, come assicurazione sanitaria, piano azionario, assicurazione dentale, ecc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indica il tuo accordo con questi termini e accetta questa offerta firmando e datando questo accordo entro il {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Cordiali saluti,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(61,'ja','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>内定通知</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{applicant_name} 様</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} は、あなたを {job_title} として迎えることに興奮しています。</p>\n                    <p>&nbsp;</p>\n                    <p>仕事に取り掛かる前に、ほんの少しの手続きがありました。時間をかけて正式なオファーを確認してください。これには、あなたの報酬、福利厚生、および {app_name} での予想される雇用条件に関する重要な詳細が含まれています。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} が {job_type} を提供しています。 {job_title} として、{start_date} から {workplace_location} の直属のマネージャー/スーパーバイザーに報告します。予想される勤務時間は {days_of_week} です。</p>\n                    <p>&nbsp;</p>\n                    <p>このポジションでは、{app_name} は、{salary_type} あたり {salary} の賃金率であなたをスタートさせることを提案しています。 {salary_duration} 単位で支払われます。</p>\n                    <p>&nbsp;</p>\n                    <p>報酬の一部として、該当する場合は提供もしていました。ボーナス、利益分配、手数料体系、ストック オプション、および報酬委員会の規則についてここに説明します。</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} の従業員として、健康保険、ストック プラン、歯科保険などの簡単な名前の特典を受ける資格があります。</p>\n                    <p>&nbsp;</p>\n                    <p>{offer_expiration_date} 日までに本契約に署名し日付を記入して、これらの条件に同意し、このオファーを受け入れてください。</p>\n                    <p>&nbsp;</p>\n                    <p>心から、</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(62,'nl','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Aanbiedingsbrief</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Beste {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} is verheugd je aan boord te mogen verwelkomen als {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Waren slechts een paar formaliteiten verwijderd om aan het werk te gaan. Neem de tijd om ons formele aanbod te bekijken. Het bevat belangrijke details over uw vergoeding, voordelen en de voorwaarden van uw verwachte dienstverband bij {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} biedt een {job_type} aan. functie voor jou als {job_title}, rapporterend aan directe manager/supervisor vanaf {start_date} op {workplace_location}. De verwachte werkuren zijn {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>In deze functie biedt {app_name} aan om je te starten tegen een salaris van {salary} per {salary_type}. U wordt betaald op basis van {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als onderdeel van uw vergoeding, die u, indien van toepassing, ook aanbiedt, beschrijft u hier uw bonus, winstdeling, commissiestructuur, aandelenopties en regels van het vergoedingscomit&eacute;.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Als medewerker van {app_name} kom je in aanmerking voor korte naamvoordelen, zoals een ziektekostenverzekering, aandelenplan, tandartsverzekering, enz.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Geef aan dat u akkoord gaat met deze voorwaarden en accepteer deze aanbieding door deze overeenkomst op of v&oacute;&oacute;r {offer_expiration_date} te ondertekenen en te dateren.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Eerlijk,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(63,'pl','<p style=\"text-align: center;\"><strong><span style=\"font-size: 18pt;\">List ofertowy</span></strong></p>\n                    <p>&nbsp;</p>\n                    <p>Drogi {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} z radością zaprasza Cię do wsp&oacute;łpracy jako {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>Od rozpoczęcia pracy dzieliło mnie tylko kilka formalności. Prosimy o poświęcenie czasu na zapoznanie się z naszą oficjalną ofertą. Zawiera ważne szczeg&oacute;ły dotyczące Twojego wynagrodzenia, świadczeń oraz warunk&oacute;w Twojego przewidywanego zatrudnienia w {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} oferuje {job_type}. stanowisko dla Ciebie jako {job_title}, raportowanie do bezpośredniego przełożonego/przełożonego począwszy od {start_date} w {workplace_location}. Przewidywane godziny pracy to {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Na tym stanowisku {app_name} oferuje Ci rozpoczęcie pracy za stawkę {salary} za {salary_type}. Otrzymasz zapłatę na podstawie {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>W ramach wynagrodzenia, kt&oacute;re oferowaliśmy, jeśli dotyczy, opiszesz tutaj swoją premię, podział zysk&oacute;w, strukturę prowizji, opcje na akcje i zasady komitetu ds. Wynagrodzeń.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Jako pracownik {app_name} będziesz mieć prawo do kr&oacute;tkich imiennych świadczeń, takich jak ubezpieczenie zdrowotne, plan akcji, ubezpieczenie dentystyczne itp.</p>\n                    <p>&nbsp;</p>\n                    <p>Zaznacz, że zgadzasz się z tymi warunkami i zaakceptuj tę ofertę, podpisując i datując tę ​​umowę w dniu {offer_expiration_date} lub wcześniej.</p>\n                    <p>&nbsp;</p>\n                    <p>Z poważaniem,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(64,'pt','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Carta de oferta</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Prezado {applicant_name},</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} tem o prazer de trazer voc&ecirc; a bordo como {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Faltavam apenas algumas formalidades para come&ccedil;ar a trabalhar. Por favor, reserve um tempo para revisar nossa oferta formal. Ele inclui detalhes importantes sobre sua remunera&ccedil;&atilde;o, benef&iacute;cios e os termos e condi&ccedil;&otilde;es de seu emprego previsto com {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} est&aacute; oferecendo um {job_type}. posi&ccedil;&atilde;o para voc&ecirc; como {job_title}, reportando-se ao gerente/supervisor imediato a partir de {start_date} em {workplace_location}. As horas de trabalho previstas s&atilde;o {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Nesta posi&ccedil;&atilde;o, {app_name} est&aacute; oferecendo para voc&ecirc; come&ccedil;ar com uma taxa de pagamento de {salary} por {salary_type}. Voc&ecirc; ser&aacute; pago em uma base de {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como parte de sua remunera&ccedil;&atilde;o, tamb&eacute;m oferecida, se aplic&aacute;vel, voc&ecirc; descrever&aacute; seu b&ocirc;nus, participa&ccedil;&atilde;o nos lucros, estrutura de comiss&otilde;es, op&ccedil;&otilde;es de a&ccedil;&otilde;es e regras do comit&ecirc; de remunera&ccedil;&atilde;o aqui.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Como funcion&aacute;rio de {app_name} , voc&ecirc; se qualificar&aacute; para benef&iacute;cios de nome breve, como seguro sa&uacute;de, plano de a&ccedil;&otilde;es, seguro odontol&oacute;gico etc.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Indique sua concord&acirc;ncia com estes termos e aceite esta oferta assinando e datando este contrato em ou antes de {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Sinceramente,</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(65,'ru','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>Письмо с предложением</strong></span></p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Уважаемый {applicant_name!</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} рад предложить вам присоединиться к нам в качестве {job_title}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Осталось всего несколько формальностей, чтобы приступить к работе. Пожалуйста, найдите время, чтобы ознакомиться с нашим официальным предложением. В нем содержится важная информация о вашем вознаграждении, льготах и ​​условиях вашего предполагаемого трудоустройства в {app_name}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>{app_name} предлагает {job_type}. должность для вас как {job_title}, подчинение непосредственному руководителю/руководителю начиная с {start_date} в {workplace_location}. Ожидаемое рабочее время: {days_of_week}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>На этой должности {app_name} предлагает вам начать работу со ставкой заработной платы {salary} за {salary_type}. Вам будут платить на основе {salary_duration}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>В рамках вашего вознаграждения мы также предлагаем, если это применимо, вы описываете свой бонус, распределение прибыли, структуру комиссионных, опционы на акции и правила компенсационного комитета здесь.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Как сотрудник {app_name}, вы будете иметь право на краткосрочные льготы, такие как медицинская страховка, план акций, стоматологическая страховка и т. д.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Пожалуйста, подтвердите свое согласие с этими условиями и примите это предложение, подписав и датировав это соглашение не позднее {offer_expiration_date}.</p>\n                    <p>&nbsp;</p>\n                    <p>&nbsp;</p>\n                    <p>Искренне,</p>\n                    <p>{app_name}</p>',14,'2022-11-18 05:40:33','2022-11-18 05:40:33');
/*!40000 ALTER TABLE `generate_offer_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genrate_payslip_options`
--

DROP TABLE IF EXISTS `genrate_payslip_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genrate_payslip_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genrate_payslip_options`
--

LOCK TABLES `genrate_payslip_options` WRITE;
/*!40000 ALTER TABLE `genrate_payslip_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `genrate_payslip_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_trackings`
--

DROP TABLE IF EXISTS `goal_trackings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_trackings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL,
  `goal_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_achievement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `progress` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_trackings`
--

LOCK TABLES `goal_trackings` WRITE;
/*!40000 ALTER TABLE `goal_trackings` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal_trackings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_types`
--

DROP TABLE IF EXISTS `goal_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_types`
--

LOCK TABLES `goal_types` WRITE;
/*!40000 ALTER TABLE `goal_types` DISABLE KEYS */;
INSERT INTO `goal_types` VALUES (1,'Individual Goal',4,'2022-09-16 09:01:13','2022-09-16 09:01:13'),(2,'Department Goal',4,'2022-09-16 09:01:53','2022-09-16 09:01:53');
/*!40000 ALTER TABLE `goal_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holidays` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `occasion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holidays`
--

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_types`
--

DROP TABLE IF EXISTS `income_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_types`
--

LOCK TABLES `income_types` WRITE;
/*!40000 ALTER TABLE `income_types` DISABLE KEYS */;
INSERT INTO `income_types` VALUES (1,'Contract Amount',4,'2022-09-16 09:10:02','2022-09-16 09:10:02');
/*!40000 ALTER TABLE `income_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicators`
--

DROP TABLE IF EXISTS `indicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL DEFAULT 0,
  `department` int(11) NOT NULL DEFAULT 0,
  `designation` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT 0,
  `marketing` int(11) NOT NULL DEFAULT 0,
  `administration` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `integrity` int(11) NOT NULL DEFAULT 0,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicators`
--

LOCK TABLES `indicators` WRITE;
/*!40000 ALTER TABLE `indicators` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_schedules`
--

DROP TABLE IF EXISTS `interview_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_schedules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int(11) NOT NULL,
  `employee` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_schedules`
--

LOCK TABLES `interview_schedules` WRITE;
/*!40000 ALTER TABLE `interview_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_restricts`
--

DROP TABLE IF EXISTS `ip_restricts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_restricts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_restricts`
--

LOCK TABLES `ip_restricts` WRITE;
/*!40000 ALTER TABLE `ip_restricts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_restricts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_application_notes`
--

DROP TABLE IF EXISTS `job_application_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_application_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL DEFAULT 0,
  `note_created` int(11) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_application_notes`
--

LOCK TABLES `job_application_notes` WRITE;
/*!40000 ALTER TABLE `job_application_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_application_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `skill` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `is_archive` int(11) NOT NULL DEFAULT 0,
  `custom_question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_categories`
--

DROP TABLE IF EXISTS `job_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_categories`
--

LOCK TABLES `job_categories` WRITE;
/*!40000 ALTER TABLE `job_categories` DISABLE KEYS */;
INSERT INTO `job_categories` VALUES (1,'Entry',4,'2022-09-16 09:06:40','2022-09-16 09:06:40'),(2,'Intermediate',4,'2022-09-16 09:06:51','2022-09-16 09:06:51'),(4,'Experienced',4,'2022-09-16 09:07:17','2022-09-16 09:07:17'),(5,'Advanced',4,'2022-09-16 09:07:27','2022-09-16 09:07:27'),(6,'Expert',4,'2022-09-16 09:07:36','2022-09-16 09:07:36');
/*!40000 ALTER TABLE `job_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_on_boards`
--

DROP TABLE IF EXISTS `job_on_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_on_boards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `application` int(11) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_of_week` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convert_to_employee` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_on_boards`
--

LOCK TABLES `job_on_boards` WRITE;
/*!40000 ALTER TABLE `job_on_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_on_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_stages`
--

DROP TABLE IF EXISTS `job_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_stages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_stages`
--

LOCK TABLES `job_stages` WRITE;
/*!40000 ALTER TABLE `job_stages` DISABLE KEYS */;
INSERT INTO `job_stages` VALUES (1,'Applied',0,2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(2,'Phone Screen',0,2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(3,'Interview',0,2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(4,'Hired',0,2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(5,'Rejected',0,2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(6,'Applied',0,4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(7,'Phone Screen',0,4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(8,'Interview',0,4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(9,'Hired',0,4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(10,'Rejected',0,4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(11,'Applied',0,5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(12,'Phone Screen',0,5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(13,'Interview',0,5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(14,'Hired',0,5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(15,'Rejected',0,5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(16,'Applied',0,6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(17,'Phone Screen',0,6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(18,'Interview',0,6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(19,'Hired',0,6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(20,'Rejected',0,6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(21,'Applied',0,14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(22,'Phone Screen',0,14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(23,'Interview',0,14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(24,'Hired',0,14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(25,'Rejected',0,14,'2022-11-18 05:40:34','2022-11-18 05:40:34');
/*!40000 ALTER TABLE `job_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `skill` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
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
-- Table structure for table `joining_letters`
--

DROP TABLE IF EXISTS `joining_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joining_letters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joining_letters`
--

LOCK TABLES `joining_letters` WRITE;
/*!40000 ALTER TABLE `joining_letters` DISABLE KEYS */;
/*!40000 ALTER TABLE `joining_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_page_sections`
--

DROP TABLE IF EXISTS `landing_page_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landing_page_sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_order` int(11) NOT NULL DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_type` enum('section-1','section-2','section-3','section-4','section-5','section-6','section-7','section-8','section-9','section-10','section-plan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_demo_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_blade_file_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_page_sections`
--

LOCK TABLES `landing_page_sections` WRITE;
/*!40000 ALTER TABLE `landing_page_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_page_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_types`
--

LOCK TABLES `leave_types` WRITE;
/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
INSERT INTO `leave_types` VALUES (1,'Sick Leave',12,4,'2022-09-16 08:52:22','2022-09-16 08:52:22'),(2,'Casual Leave',30,4,'2022-09-16 08:52:37','2022-09-16 08:52:37'),(3,'Compensatory Off',10,4,'2022-09-16 08:52:56','2022-09-16 08:52:56');
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaves` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves`
--

LOCK TABLES `leaves` WRITE;
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` VALUES (1,1,2,'2022-10-04','2022-09-01','2022-09-02','0','Not Well','Not Well','Approved',4,'2022-10-04 03:59:27','2022-10-04 04:31:24'),(2,1,1,'0000-00-00','0000-00-00','0000-00-00','13-10-2022','0',NULL,'xyz',4,'2022-10-10 16:24:28','2022-10-10 16:24:28'),(7,2,2,'2022-11-05','2022-10-10','2022-10-20','10','Diwali','Annual Leave','Approved',4,'2022-11-05 02:54:59','2022-11-05 02:54:59');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_options`
--

DROP TABLE IF EXISTS `loan_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_options`
--

LOCK TABLES `loan_options` WRITE;
/*!40000 ALTER TABLE `loan_options` DISABLE KEYS */;
INSERT INTO `loan_options` VALUES (1,'Advance Salary',4,'2022-09-16 08:59:19','2022-09-16 08:59:19'),(2,'Company Car Loan',4,'2022-09-16 08:59:45','2022-09-16 08:59:45');
/*!40000 ALTER TABLE `loan_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `loan_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_employees`
--

DROP TABLE IF EXISTS `meeting_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_employees`
--

LOCK TABLES `meeting_employees` WRITE;
/*!40000 ALTER TABLE `meeting_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_22_192348_create_messages_table',1),(5,'2019_09_28_102009_create_settings_table',1),(6,'2019_10_16_211433_create_favorites_table',1),(7,'2019_10_18_223259_add_avatar_to_users',1),(8,'2019_10_20_211056_add_messenger_color_to_users',1),(9,'2019_10_22_000539_add_dark_mode_to_users',1),(10,'2019_10_25_214038_add_active_status_to_users',1),(11,'2019_12_26_101754_create_departments_table',1),(12,'2019_12_26_101814_create_designations_table',1),(13,'2019_12_26_105721_create_documents_table',1),(14,'2019_12_27_083751_create_branches_table',1),(15,'2019_12_27_090831_create_employees_table',1),(16,'2019_12_27_112922_create_employee_documents_table',1),(17,'2019_12_28_050508_create_awards_table',1),(18,'2019_12_28_050919_create_award_types_table',1),(19,'2019_12_31_060916_create_termination_types_table',1),(20,'2019_12_31_062259_create_terminations_table',1),(21,'2019_12_31_070521_create_resignations_table',1),(22,'2019_12_31_072252_create_travels_table',1),(23,'2019_12_31_090637_create_promotions_table',1),(24,'2019_12_31_092838_create_transfers_table',1),(25,'2019_12_31_100319_create_warnings_table',1),(26,'2019_12_31_103019_create_complaints_table',1),(27,'2020_01_02_090837_create_payslip_types_table',1),(28,'2020_01_02_093331_create_allowance_options_table',1),(29,'2020_01_02_102558_create_loan_options_table',1),(30,'2020_01_02_103822_create_deduction_options_table',1),(31,'2020_01_02_110828_create_genrate_payslip_options_table',1),(32,'2020_01_02_111807_create_set_salaries_table',1),(33,'2020_01_03_084302_create_allowances_table',1),(34,'2020_01_03_101735_create_commissions_table',1),(35,'2020_01_03_105019_create_loans_table',1),(36,'2020_01_03_105046_create_saturation_deductions_table',1),(37,'2020_01_03_105100_create_other_payments_table',1),(38,'2020_01_03_105111_create_overtimes_table',1),(39,'2020_01_04_072527_create_pay_slips_table',1),(40,'2020_01_06_045425_create_account_lists_table',1),(41,'2020_01_06_062213_create_payees_table',1),(42,'2020_01_06_070037_create_payers_table',1),(43,'2020_01_06_072939_create_income_types_table',1),(44,'2020_01_06_073055_create_expense_types_table',1),(45,'2020_01_06_085218_create_deposits_table',1),(46,'2020_01_06_090709_create_payment_types_table',1),(47,'2020_01_06_121442_create_expenses_table',1),(48,'2020_01_06_124036_create_transfer_balances_table',1),(49,'2020_01_13_084720_create_events_table',1),(50,'2020_01_16_041720_create_announcements_table',1),(51,'2020_01_16_090747_create_leave_types_table',1),(52,'2020_01_16_093256_create_leaves_table',1),(53,'2020_01_16_110357_create_meetings_table',1),(54,'2020_01_17_051906_create_tickets_table',1),(55,'2020_01_17_112647_create_ticket_replies_table',1),(56,'2020_01_23_101613_create_meeting_employees_table',1),(57,'2020_01_23_123844_create_event_employees_table',1),(58,'2020_01_24_062752_create_announcement_employees_table',1),(59,'2020_01_27_052503_create_attendance_employees_table',1),(60,'2020_02_17_035047_create_plans_table',1),(61,'2020_02_17_072503_create_orders_table',1),(62,'2020_02_28_051636_create_time_sheets_table',1),(63,'2020_03_12_095629_create_coupons_table',1),(64,'2020_03_12_120749_create_user_coupons_table',1),(65,'2020_04_21_115823_create_assets_table',1),(66,'2020_05_01_122144_create_ducument_uploads_table',1),(67,'2020_05_04_070452_create_indicators_table',1),(68,'2020_05_05_023742_create_appraisals_table',1),(69,'2020_05_05_061241_create_goal_types_table',1),(70,'2020_05_05_095926_create_goal_trackings_table',1),(71,'2020_05_07_093520_create_company_policies_table',1),(72,'2020_05_07_131311_create_training_types_table',1),(73,'2020_05_08_023838_create_trainers_table',1),(74,'2020_05_08_043039_create_trainings_table',1),(75,'2020_05_21_065337_create_permission_tables',1),(76,'2020_07_06_102454_add_payment_type_in_orders_table',1),(77,'2020_07_18_065859_create_messageses_table',1),(78,'2020_07_22_131715_change_amount_type_size',1),(79,'2020_10_07_034726_create_holidays_table',1),(80,'2021_02_19_085311_add_ticket_created__in_tickets',1),(81,'2021_03_13_093312_create_ip_restricts_table',1),(82,'2021_03_13_114832_create_job_categories_table',1),(83,'2021_03_13_123125_create_job_stages_table',1),(84,'2021_03_15_094707_create_jobs_table',1),(85,'2021_03_15_153745_create_job_applications_table',1),(86,'2021_03_16_115140_create_job_application_notes_table',1),(87,'2021_03_17_163107_create_custom_questions_table',1),(88,'2021_03_18_140630_create_interview_schedules_table',1),(89,'2021_03_22_122532_create_job_on_boards_table',1),(90,'2021_06_22_094220_create_landing_page_sections_table',1),(91,'2021_06_25_032625_admin_payment_setting',1),(92,'2021_08_20_084119_create_competencies_table',1),(93,'2021_08_21_044211_add_rating_in_competencies',1),(94,'2021_09_10_165514_create_plan_requests_table',1),(95,'2021_11_22_043537_create_performance__types_table',1),(96,'2021_12_24_061634_create_zoom_meetings_table',1),(97,'2022_03_11_103119_add_type_to_allowance',1),(98,'2022_06_30_114800_remove_date_from_holidays_table',1),(99,'2022_06_30_115926_add_start_date_to_holidays_table',1),(100,'2022_06_30_115932_add_end_date_to_holidays_table',1),(101,'2022_07_13_085418_create_email_templates_table',1),(102,'2022_07_13_085511_create_email_template_langs_table',1),(103,'2022_07_13_085553_user_email_templates_table',1),(104,'2022_07_26_054753_create_contract_types_table',1),(105,'2022_07_28_035621_create_contracts_table',1),(106,'2022_07_28_035654_create_contract_attechments_table',1),(107,'2022_07_28_035713_create_contract_comments_table',1),(108,'2022_07_28_035731_create_contract_notes_table',1),(109,'2022_08_10_051439_generate__offer__letter',1),(110,'2022_08_16_050109_joining_letter',1),(111,'2022_08_17_045033_experience_certificate',1),(112,'2022_08_17_065806_noc_certificate',1),(113,'2019_12_14_000001_create_personal_access_tokens_table',2),(114,'2022_09_27_095406_add_expiry_date_to_tasks',2),(115,'2022_09_27_172917_add_expiry_date_to_documents_upload',3),(116,'2022_10_12_082128_add_bank_details_company',4),(117,'2022_10_12_121707_create_company_documents',4),(118,'2022_10_13_065542_rename_columns',5),(119,'2022_10_13_073143_drop_columns_settings',6),(120,'2022_10_15_070222_add_user_ducuments_upload',7),(121,'2022_10_15_081621_mody_role_nullable',8),(122,'2022_10_19_101649_add_agent_passport_eid__details_employee',9),(123,'2022_10_26_065150_add_gross_sal_deductions_ytd_wd_ld_payslips',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2),(2,'App\\Models\\User',4),(2,'App\\Models\\User',5),(2,'App\\Models\\User',6),(2,'App\\Models\\User',14),(3,'App\\Models\\User',3),(4,'App\\Models\\User',8),(4,'App\\Models\\User',9),(4,'App\\Models\\User',10),(4,'App\\Models\\User',11),(4,'App\\Models\\User',12),(4,'App\\Models\\User',13);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noc_certificates`
--

DROP TABLE IF EXISTS `noc_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noc_certificates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noc_certificates`
--

LOCK TABLES `noc_certificates` WRITE;
/*!40000 ALTER TABLE `noc_certificates` DISABLE KEYS */;
INSERT INTO `noc_certificates` VALUES (1,'ar','<h3 style=\"text-align: center;\">شهادة عدم ممانعة</h3>\n            \n            \n            \n            <p>التاريخ: {date}</p>\n            \n            \n            \n            <p>إلى من يهمه الأمر</p>\n            \n            \n            \n            <p>هذه الشهادة مخصصة للمطالبة بشهادة عدم ممانعة (NoC) للسيدة / السيد {employee_name} إذا انضمت إلى أي مؤسسة أخرى وقدمت خدماتها / خدماتها. يتم إبلاغه لأنه قام بتصفية جميع أرصدته واستلام أمانه من شركة {app_name}.</p>\n            \n            \n            \n            <p>نتمنى لها / لها التوفيق في المستقبل.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(2,'da','<h3 style=\"text-align: center;\">Ingen indsigelsesattest</h3>\n            \n            \n            \n            <p>Dato: {date}</p>\n            \n            \n            \n            <p>Til hvem det m&aring;tte vedr&oslash;re</p>\n            \n            \n            \n            <p>Dette certifikat er for at g&oslash;re krav p&aring; et No Objection Certificate (NoC) for Ms. / Mr. {employee_name}, hvis hun/han tilslutter sig og leverer sine tjenester til enhver anden organisation. Det informeres, da hun/han har udlignet alle sine saldi og modtaget sin sikkerhed fra {app_name}-virksomheden.</p>\n            \n            \n            \n            <p>Vi &oslash;nsker hende/ham held og lykke i fremtiden.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(3,'de','<h3 style=\"text-align: center;\">Kein Einwand-Zertifikat</h3>\n            \n            \n            \n            <p>Datum {date}</p>\n            \n            \n            \n            <p>Wen auch immer es betrifft</p>\n            \n            \n            \n            <p>Dieses Zertifikat soll ein Unbedenklichkeitszertifikat (NoC) f&uuml;r Frau / Herrn {employee_name} beanspruchen, wenn sie/er einer anderen Organisation beitritt und ihre/seine Dienste anbietet. Sie wird informiert, da sie/er alle ihre/seine Guthaben ausgeglichen und ihre/seine Sicherheit von der Firma {app_name} erhalten hat.</p>\n            \n            \n            \n            <p>Wir w&uuml;nschen ihr/ihm viel Gl&uuml;ck f&uuml;r die Zukunft.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(4,'en','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>No Objection Certificate</strong></span></p>\n            \n            <p>Date: {date}</p>\n            \n            <p>To Whomsoever It May Concern</p>\n            \n            <p>This certificate is to claim a No Objection Certificate (NoC) for Ms. / Mr. {employee_name} if she/he joins and provides her/his services to any other organization. It is informed as she/he has cleared all her/his balances and received her/his security from {app_name} Company.</p>\n            \n            <p>We wish her/him good luck in the future.</p>\n            \n            <p>Sincerely,</p>\n            <p>{employee_name}</p>\n            <p>{designation}</p>\n            <p>Signature</p>\n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(5,'es','<h3 style=\"text-align: center;\">Certificado de conformidad</h3>\n            \n            \n            \n            <p>Fecha: {date}</p>\n            \n            \n            \n            <p>A quien corresponda</p>\n            \n            \n            \n            <p>Este certificado es para reclamar un Certificado de No Objeci&oacute;n (NoC) para la Sra. / Sr. {employee_name} si ella / &eacute;l se une y brinda sus servicios a cualquier otra organizaci&oacute;n. Se informa que &eacute;l/ella ha liquidado todos sus saldos y recibido su seguridad de {app_name} Company.</p>\n            \n            \n            \n            <p>Le deseamos buena suerte en el futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(6,'fr','<h3 style=\"text-align: center;\">Aucun certificat dopposition</h3>\n            \n            \n            <p>Date : {date}</p>\n            \n            \n            <p>&Agrave; toute personne concern&eacute;e</p>\n            \n            \n            <p>Ce certificat sert &agrave; r&eacute;clamer un certificat de non-objection (NoC) pour Mme / M. {employee_name} sil rejoint et fournit ses services &agrave; toute autre organisation. Il est inform&eacute; quil a sold&eacute; tous ses soldes et re&ccedil;u sa garantie de la part de la soci&eacute;t&eacute; {app_name}.</p>\n            \n            \n            <p>Nous lui souhaitons bonne chance pour lavenir.</p>\n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(7,'id','<h3 style=\"text-align: center;\">Sertifikat Tidak Keberatan</h3>\n            \n            \n            \n            <p>Tanggal: {date}</p>\n            \n            \n            \n            <p>Kepada Siapa Pun Yang Memprihatinkan</p>\n            \n            \n            \n            <p>Sertifikat ini untuk mengklaim No Objection Certificate (NoC) untuk Ibu / Bapak {employee_name} jika dia bergabung dan memberikan layanannya ke organisasi lain mana pun. Diberitahukan karena dia telah melunasi semua saldonya dan menerima jaminannya dari Perusahaan {app_name}.</p>\n            \n            \n            \n            <p>Kami berharap dia sukses di masa depan.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(8,'it','<h3 style=\"text-align: center;\">Certificato di nulla osta</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A chi pu&ograve; interessare</p>\n            \n            \n            \n            <p>Questo certificato serve a richiedere un certificato di non obiezione (NoC) per la signora / il signor {employee_name} se si unisce e fornisce i suoi servizi a qualsiasi altra organizzazione. Viene informato in quanto ha liquidato tutti i suoi saldi e ricevuto la sua sicurezza dalla societ&agrave; {app_name}.</p>\n            \n            \n            \n            <p>Le auguriamo buona fortuna per il futuro.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(9,'ja','<h3 style=\"text-align: center;\">異議なし証明書</h3>\n            \n            \n            \n            <p>日付: {date}</p>\n            \n            \n            \n            <p>関係者各位</p>\n            \n            \n            \n            <p>この証明書は、Ms. / Mr. {employee_name} が他の組織に参加してサービスを提供する場合に、異議なし証明書 (NoC) を請求するためのものです。彼女/彼/彼がすべての残高を清算し、{app_name} 会社から彼女/彼のセキュリティを受け取ったことが通知されます。</p>\n            \n            \n            \n            <p>彼女/彼の今後の幸運を祈っています。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(10,'nl','<h3 style=\"text-align: center;\">Geen bezwaarcertificaat</h3>\n            \n            \n            \n            <p>Datum: {date}</p>\n            \n            \n            \n            <p>Aan wie het ook aangaat</p>\n            \n            \n            \n            <p>Dit certificaat is bedoeld om aanspraak te maken op een Geen Bezwaarcertificaat (NoC) voor mevrouw/dhr. {employee_name} als zij/hij lid wordt en haar/zijn diensten verleent aan een andere organisatie. Het wordt ge&iuml;nformeerd als zij/hij al haar/zijn saldos heeft gewist en haar/zijn zekerheid heeft ontvangen van {app_name} Company.</p>\n            \n            \n            \n            <p>We wensen haar/hem veel succes in de toekomst.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(11,'pl','<h3 style=\"text-align: center;\">Certyfikat braku sprzeciwu</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>Do kogo to może dotyczyć</p>\n            \n            \n            \n            <p>Ten certyfikat służy do ubiegania się o Certyfikat No Objection Certificate (NoC) dla Pani/Pana {employee_name}, jeśli ona/ona dołącza i świadczy swoje usługi na rzecz jakiejkolwiek innej organizacji. Jest o tym informowany, ponieważ wyczyścił wszystkie swoje salda i otrzymał swoje zabezpieczenie od firmy {app_name}.</p>\n            \n            \n            \n            <p>Życzymy jej/jej powodzenia w przyszłości.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(12,'pt','<h3 style=\"text-align: center;\">Certificado de n&atilde;o obje&ccedil;&atilde;o</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A quem interessar</p>\n            \n            \n            \n            <p>Este certificado &eacute; para reivindicar um Certificado de N&atilde;o Obje&ccedil;&atilde;o (NoC) para a Sra. / Sr. {employee_name} se ela ingressar e fornecer seus servi&ccedil;os a qualquer outra organiza&ccedil;&atilde;o. &Eacute; informado que ela cancelou todos os seus saldos e recebeu sua garantia da empresa {app_name}.</p>\n            \n            \n            \n            <p>Desejamos-lhe boa sorte no futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(13,'ru','<h3 style=\"text-align: center;\">Сертификат об отсутствии возражений</h3>\n            \n            \n            \n            <p>Дата: {date}</p>\n            \n            \n            \n            <p>Кого бы это ни касалось</p>\n            \n            \n            \n            <p>Этот сертификат предназначен для получения Сертификата об отсутствии возражений (NoC) для г-жи / г-на {employee_name}, если она / он присоединяется и предоставляет свои услуги любой другой организации. Сообщается, что она/он очистила все свои балансы и получила свою безопасность от компании {app_name}.</p>\n            \n            \n            \n            <p>Мы желаем ей/ему удачи в будущем.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',2,'2022-09-13 19:42:08','2022-09-13 19:42:08'),(14,'ar','<h3 style=\"text-align: center;\">شهادة عدم ممانعة</h3>\n            \n            \n            \n            <p>التاريخ: {date}</p>\n            \n            \n            \n            <p>إلى من يهمه الأمر</p>\n            \n            \n            \n            <p>هذه الشهادة مخصصة للمطالبة بشهادة عدم ممانعة (NoC) للسيدة / السيد {employee_name} إذا انضمت إلى أي مؤسسة أخرى وقدمت خدماتها / خدماتها. يتم إبلاغه لأنه قام بتصفية جميع أرصدته واستلام أمانه من شركة {app_name}.</p>\n            \n            \n            \n            <p>نتمنى لها / لها التوفيق في المستقبل.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(15,'da','<h3 style=\"text-align: center;\">Ingen indsigelsesattest</h3>\n            \n            \n            \n            <p>Dato: {date}</p>\n            \n            \n            \n            <p>Til hvem det m&aring;tte vedr&oslash;re</p>\n            \n            \n            \n            <p>Dette certifikat er for at g&oslash;re krav p&aring; et No Objection Certificate (NoC) for Ms. / Mr. {employee_name}, hvis hun/han tilslutter sig og leverer sine tjenester til enhver anden organisation. Det informeres, da hun/han har udlignet alle sine saldi og modtaget sin sikkerhed fra {app_name}-virksomheden.</p>\n            \n            \n            \n            <p>Vi &oslash;nsker hende/ham held og lykke i fremtiden.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(16,'de','<h3 style=\"text-align: center;\">Kein Einwand-Zertifikat</h3>\n            \n            \n            \n            <p>Datum {date}</p>\n            \n            \n            \n            <p>Wen auch immer es betrifft</p>\n            \n            \n            \n            <p>Dieses Zertifikat soll ein Unbedenklichkeitszertifikat (NoC) f&uuml;r Frau / Herrn {employee_name} beanspruchen, wenn sie/er einer anderen Organisation beitritt und ihre/seine Dienste anbietet. Sie wird informiert, da sie/er alle ihre/seine Guthaben ausgeglichen und ihre/seine Sicherheit von der Firma {app_name} erhalten hat.</p>\n            \n            \n            \n            <p>Wir w&uuml;nschen ihr/ihm viel Gl&uuml;ck f&uuml;r die Zukunft.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(17,'en','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>No Objection Certificate</strong></span></p>\n            \n            <p>Date: {date}</p>\n            \n            <p>To Whomsoever It May Concern</p>\n            \n            <p>This certificate is to claim a No Objection Certificate (NoC) for Ms. / Mr. {employee_name} if she/he joins and provides her/his services to any other organization. It is informed as she/he has cleared all her/his balances and received her/his security from {app_name} Company.</p>\n            \n            <p>We wish her/him good luck in the future.</p>\n            \n            <p>Sincerely,</p>\n            <p>{employee_name}</p>\n            <p>{designation}</p>\n            <p>Signature</p>\n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(18,'es','<h3 style=\"text-align: center;\">Certificado de conformidad</h3>\n            \n            \n            \n            <p>Fecha: {date}</p>\n            \n            \n            \n            <p>A quien corresponda</p>\n            \n            \n            \n            <p>Este certificado es para reclamar un Certificado de No Objeci&oacute;n (NoC) para la Sra. / Sr. {employee_name} si ella / &eacute;l se une y brinda sus servicios a cualquier otra organizaci&oacute;n. Se informa que &eacute;l/ella ha liquidado todos sus saldos y recibido su seguridad de {app_name} Company.</p>\n            \n            \n            \n            <p>Le deseamos buena suerte en el futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(19,'fr','<h3 style=\"text-align: center;\">Aucun certificat dopposition</h3>\n            \n            \n            <p>Date : {date}</p>\n            \n            \n            <p>&Agrave; toute personne concern&eacute;e</p>\n            \n            \n            <p>Ce certificat sert &agrave; r&eacute;clamer un certificat de non-objection (NoC) pour Mme / M. {employee_name} sil rejoint et fournit ses services &agrave; toute autre organisation. Il est inform&eacute; quil a sold&eacute; tous ses soldes et re&ccedil;u sa garantie de la part de la soci&eacute;t&eacute; {app_name}.</p>\n            \n            \n            <p>Nous lui souhaitons bonne chance pour lavenir.</p>\n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(20,'id','<h3 style=\"text-align: center;\">Sertifikat Tidak Keberatan</h3>\n            \n            \n            \n            <p>Tanggal: {date}</p>\n            \n            \n            \n            <p>Kepada Siapa Pun Yang Memprihatinkan</p>\n            \n            \n            \n            <p>Sertifikat ini untuk mengklaim No Objection Certificate (NoC) untuk Ibu / Bapak {employee_name} jika dia bergabung dan memberikan layanannya ke organisasi lain mana pun. Diberitahukan karena dia telah melunasi semua saldonya dan menerima jaminannya dari Perusahaan {app_name}.</p>\n            \n            \n            \n            <p>Kami berharap dia sukses di masa depan.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(21,'it','<h3 style=\"text-align: center;\">Certificato di nulla osta</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A chi pu&ograve; interessare</p>\n            \n            \n            \n            <p>Questo certificato serve a richiedere un certificato di non obiezione (NoC) per la signora / il signor {employee_name} se si unisce e fornisce i suoi servizi a qualsiasi altra organizzazione. Viene informato in quanto ha liquidato tutti i suoi saldi e ricevuto la sua sicurezza dalla societ&agrave; {app_name}.</p>\n            \n            \n            \n            <p>Le auguriamo buona fortuna per il futuro.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(22,'ja','<h3 style=\"text-align: center;\">異議なし証明書</h3>\n            \n            \n            \n            <p>日付: {date}</p>\n            \n            \n            \n            <p>関係者各位</p>\n            \n            \n            \n            <p>この証明書は、Ms. / Mr. {employee_name} が他の組織に参加してサービスを提供する場合に、異議なし証明書 (NoC) を請求するためのものです。彼女/彼/彼がすべての残高を清算し、{app_name} 会社から彼女/彼のセキュリティを受け取ったことが通知されます。</p>\n            \n            \n            \n            <p>彼女/彼の今後の幸運を祈っています。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(23,'nl','<h3 style=\"text-align: center;\">Geen bezwaarcertificaat</h3>\n            \n            \n            \n            <p>Datum: {date}</p>\n            \n            \n            \n            <p>Aan wie het ook aangaat</p>\n            \n            \n            \n            <p>Dit certificaat is bedoeld om aanspraak te maken op een Geen Bezwaarcertificaat (NoC) voor mevrouw/dhr. {employee_name} als zij/hij lid wordt en haar/zijn diensten verleent aan een andere organisatie. Het wordt ge&iuml;nformeerd als zij/hij al haar/zijn saldos heeft gewist en haar/zijn zekerheid heeft ontvangen van {app_name} Company.</p>\n            \n            \n            \n            <p>We wensen haar/hem veel succes in de toekomst.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(24,'pl','<h3 style=\"text-align: center;\">Certyfikat braku sprzeciwu</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>Do kogo to może dotyczyć</p>\n            \n            \n            \n            <p>Ten certyfikat służy do ubiegania się o Certyfikat No Objection Certificate (NoC) dla Pani/Pana {employee_name}, jeśli ona/ona dołącza i świadczy swoje usługi na rzecz jakiejkolwiek innej organizacji. Jest o tym informowany, ponieważ wyczyścił wszystkie swoje salda i otrzymał swoje zabezpieczenie od firmy {app_name}.</p>\n            \n            \n            \n            <p>Życzymy jej/jej powodzenia w przyszłości.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(25,'pt','<h3 style=\"text-align: center;\">Certificado de n&atilde;o obje&ccedil;&atilde;o</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A quem interessar</p>\n            \n            \n            \n            <p>Este certificado &eacute; para reivindicar um Certificado de N&atilde;o Obje&ccedil;&atilde;o (NoC) para a Sra. / Sr. {employee_name} se ela ingressar e fornecer seus servi&ccedil;os a qualquer outra organiza&ccedil;&atilde;o. &Eacute; informado que ela cancelou todos os seus saldos e recebeu sua garantia da empresa {app_name}.</p>\n            \n            \n            \n            <p>Desejamos-lhe boa sorte no futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(26,'ru','<h3 style=\"text-align: center;\">Сертификат об отсутствии возражений</h3>\n            \n            \n            \n            <p>Дата: {date}</p>\n            \n            \n            \n            <p>Кого бы это ни касалось</p>\n            \n            \n            \n            <p>Этот сертификат предназначен для получения Сертификата об отсутствии возражений (NoC) для г-жи / г-на {employee_name}, если она / он присоединяется и предоставляет свои услуги любой другой организации. Сообщается, что она/он очистила все свои балансы и получила свою безопасность от компании {app_name}.</p>\n            \n            \n            \n            <p>Мы желаем ей/ему удачи в будущем.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',4,'2022-09-13 20:00:26','2022-09-13 20:00:26'),(27,'ar','<h3 style=\"text-align: center;\">شهادة عدم ممانعة</h3>\n            \n            \n            \n            <p>التاريخ: {date}</p>\n            \n            \n            \n            <p>إلى من يهمه الأمر</p>\n            \n            \n            \n            <p>هذه الشهادة مخصصة للمطالبة بشهادة عدم ممانعة (NoC) للسيدة / السيد {employee_name} إذا انضمت إلى أي مؤسسة أخرى وقدمت خدماتها / خدماتها. يتم إبلاغه لأنه قام بتصفية جميع أرصدته واستلام أمانه من شركة {app_name}.</p>\n            \n            \n            \n            <p>نتمنى لها / لها التوفيق في المستقبل.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(28,'da','<h3 style=\"text-align: center;\">Ingen indsigelsesattest</h3>\n            \n            \n            \n            <p>Dato: {date}</p>\n            \n            \n            \n            <p>Til hvem det m&aring;tte vedr&oslash;re</p>\n            \n            \n            \n            <p>Dette certifikat er for at g&oslash;re krav p&aring; et No Objection Certificate (NoC) for Ms. / Mr. {employee_name}, hvis hun/han tilslutter sig og leverer sine tjenester til enhver anden organisation. Det informeres, da hun/han har udlignet alle sine saldi og modtaget sin sikkerhed fra {app_name}-virksomheden.</p>\n            \n            \n            \n            <p>Vi &oslash;nsker hende/ham held og lykke i fremtiden.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(29,'de','<h3 style=\"text-align: center;\">Kein Einwand-Zertifikat</h3>\n            \n            \n            \n            <p>Datum {date}</p>\n            \n            \n            \n            <p>Wen auch immer es betrifft</p>\n            \n            \n            \n            <p>Dieses Zertifikat soll ein Unbedenklichkeitszertifikat (NoC) f&uuml;r Frau / Herrn {employee_name} beanspruchen, wenn sie/er einer anderen Organisation beitritt und ihre/seine Dienste anbietet. Sie wird informiert, da sie/er alle ihre/seine Guthaben ausgeglichen und ihre/seine Sicherheit von der Firma {app_name} erhalten hat.</p>\n            \n            \n            \n            <p>Wir w&uuml;nschen ihr/ihm viel Gl&uuml;ck f&uuml;r die Zukunft.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(30,'en','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>No Objection Certificate</strong></span></p>\n            \n            <p>Date: {date}</p>\n            \n            <p>To Whomsoever It May Concern</p>\n            \n            <p>This certificate is to claim a No Objection Certificate (NoC) for Ms. / Mr. {employee_name} if she/he joins and provides her/his services to any other organization. It is informed as she/he has cleared all her/his balances and received her/his security from {app_name} Company.</p>\n            \n            <p>We wish her/him good luck in the future.</p>\n            \n            <p>Sincerely,</p>\n            <p>{employee_name}</p>\n            <p>{designation}</p>\n            <p>Signature</p>\n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(31,'es','<h3 style=\"text-align: center;\">Certificado de conformidad</h3>\n            \n            \n            \n            <p>Fecha: {date}</p>\n            \n            \n            \n            <p>A quien corresponda</p>\n            \n            \n            \n            <p>Este certificado es para reclamar un Certificado de No Objeci&oacute;n (NoC) para la Sra. / Sr. {employee_name} si ella / &eacute;l se une y brinda sus servicios a cualquier otra organizaci&oacute;n. Se informa que &eacute;l/ella ha liquidado todos sus saldos y recibido su seguridad de {app_name} Company.</p>\n            \n            \n            \n            <p>Le deseamos buena suerte en el futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(32,'fr','<h3 style=\"text-align: center;\">Aucun certificat dopposition</h3>\n            \n            \n            <p>Date : {date}</p>\n            \n            \n            <p>&Agrave; toute personne concern&eacute;e</p>\n            \n            \n            <p>Ce certificat sert &agrave; r&eacute;clamer un certificat de non-objection (NoC) pour Mme / M. {employee_name} sil rejoint et fournit ses services &agrave; toute autre organisation. Il est inform&eacute; quil a sold&eacute; tous ses soldes et re&ccedil;u sa garantie de la part de la soci&eacute;t&eacute; {app_name}.</p>\n            \n            \n            <p>Nous lui souhaitons bonne chance pour lavenir.</p>\n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(33,'id','<h3 style=\"text-align: center;\">Sertifikat Tidak Keberatan</h3>\n            \n            \n            \n            <p>Tanggal: {date}</p>\n            \n            \n            \n            <p>Kepada Siapa Pun Yang Memprihatinkan</p>\n            \n            \n            \n            <p>Sertifikat ini untuk mengklaim No Objection Certificate (NoC) untuk Ibu / Bapak {employee_name} jika dia bergabung dan memberikan layanannya ke organisasi lain mana pun. Diberitahukan karena dia telah melunasi semua saldonya dan menerima jaminannya dari Perusahaan {app_name}.</p>\n            \n            \n            \n            <p>Kami berharap dia sukses di masa depan.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(34,'it','<h3 style=\"text-align: center;\">Certificato di nulla osta</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A chi pu&ograve; interessare</p>\n            \n            \n            \n            <p>Questo certificato serve a richiedere un certificato di non obiezione (NoC) per la signora / il signor {employee_name} se si unisce e fornisce i suoi servizi a qualsiasi altra organizzazione. Viene informato in quanto ha liquidato tutti i suoi saldi e ricevuto la sua sicurezza dalla societ&agrave; {app_name}.</p>\n            \n            \n            \n            <p>Le auguriamo buona fortuna per il futuro.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(35,'ja','<h3 style=\"text-align: center;\">異議なし証明書</h3>\n            \n            \n            \n            <p>日付: {date}</p>\n            \n            \n            \n            <p>関係者各位</p>\n            \n            \n            \n            <p>この証明書は、Ms. / Mr. {employee_name} が他の組織に参加してサービスを提供する場合に、異議なし証明書 (NoC) を請求するためのものです。彼女/彼/彼がすべての残高を清算し、{app_name} 会社から彼女/彼のセキュリティを受け取ったことが通知されます。</p>\n            \n            \n            \n            <p>彼女/彼の今後の幸運を祈っています。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(36,'nl','<h3 style=\"text-align: center;\">Geen bezwaarcertificaat</h3>\n            \n            \n            \n            <p>Datum: {date}</p>\n            \n            \n            \n            <p>Aan wie het ook aangaat</p>\n            \n            \n            \n            <p>Dit certificaat is bedoeld om aanspraak te maken op een Geen Bezwaarcertificaat (NoC) voor mevrouw/dhr. {employee_name} als zij/hij lid wordt en haar/zijn diensten verleent aan een andere organisatie. Het wordt ge&iuml;nformeerd als zij/hij al haar/zijn saldos heeft gewist en haar/zijn zekerheid heeft ontvangen van {app_name} Company.</p>\n            \n            \n            \n            <p>We wensen haar/hem veel succes in de toekomst.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(37,'pl','<h3 style=\"text-align: center;\">Certyfikat braku sprzeciwu</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>Do kogo to może dotyczyć</p>\n            \n            \n            \n            <p>Ten certyfikat służy do ubiegania się o Certyfikat No Objection Certificate (NoC) dla Pani/Pana {employee_name}, jeśli ona/ona dołącza i świadczy swoje usługi na rzecz jakiejkolwiek innej organizacji. Jest o tym informowany, ponieważ wyczyścił wszystkie swoje salda i otrzymał swoje zabezpieczenie od firmy {app_name}.</p>\n            \n            \n            \n            <p>Życzymy jej/jej powodzenia w przyszłości.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(38,'pt','<h3 style=\"text-align: center;\">Certificado de n&atilde;o obje&ccedil;&atilde;o</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A quem interessar</p>\n            \n            \n            \n            <p>Este certificado &eacute; para reivindicar um Certificado de N&atilde;o Obje&ccedil;&atilde;o (NoC) para a Sra. / Sr. {employee_name} se ela ingressar e fornecer seus servi&ccedil;os a qualquer outra organiza&ccedil;&atilde;o. &Eacute; informado que ela cancelou todos os seus saldos e recebeu sua garantia da empresa {app_name}.</p>\n            \n            \n            \n            <p>Desejamos-lhe boa sorte no futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(39,'ru','<h3 style=\"text-align: center;\">Сертификат об отсутствии возражений</h3>\n            \n            \n            \n            <p>Дата: {date}</p>\n            \n            \n            \n            <p>Кого бы это ни касалось</p>\n            \n            \n            \n            <p>Этот сертификат предназначен для получения Сертификата об отсутствии возражений (NoC) для г-жи / г-на {employee_name}, если она / он присоединяется и предоставляет свои услуги любой другой организации. Сообщается, что она/он очистила все свои балансы и получила свою безопасность от компании {app_name}.</p>\n            \n            \n            \n            <p>Мы желаем ей/ему удачи в будущем.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',5,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(40,'ar','<h3 style=\"text-align: center;\">شهادة عدم ممانعة</h3>\n            \n            \n            \n            <p>التاريخ: {date}</p>\n            \n            \n            \n            <p>إلى من يهمه الأمر</p>\n            \n            \n            \n            <p>هذه الشهادة مخصصة للمطالبة بشهادة عدم ممانعة (NoC) للسيدة / السيد {employee_name} إذا انضمت إلى أي مؤسسة أخرى وقدمت خدماتها / خدماتها. يتم إبلاغه لأنه قام بتصفية جميع أرصدته واستلام أمانه من شركة {app_name}.</p>\n            \n            \n            \n            <p>نتمنى لها / لها التوفيق في المستقبل.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(41,'da','<h3 style=\"text-align: center;\">Ingen indsigelsesattest</h3>\n            \n            \n            \n            <p>Dato: {date}</p>\n            \n            \n            \n            <p>Til hvem det m&aring;tte vedr&oslash;re</p>\n            \n            \n            \n            <p>Dette certifikat er for at g&oslash;re krav p&aring; et No Objection Certificate (NoC) for Ms. / Mr. {employee_name}, hvis hun/han tilslutter sig og leverer sine tjenester til enhver anden organisation. Det informeres, da hun/han har udlignet alle sine saldi og modtaget sin sikkerhed fra {app_name}-virksomheden.</p>\n            \n            \n            \n            <p>Vi &oslash;nsker hende/ham held og lykke i fremtiden.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(42,'de','<h3 style=\"text-align: center;\">Kein Einwand-Zertifikat</h3>\n            \n            \n            \n            <p>Datum {date}</p>\n            \n            \n            \n            <p>Wen auch immer es betrifft</p>\n            \n            \n            \n            <p>Dieses Zertifikat soll ein Unbedenklichkeitszertifikat (NoC) f&uuml;r Frau / Herrn {employee_name} beanspruchen, wenn sie/er einer anderen Organisation beitritt und ihre/seine Dienste anbietet. Sie wird informiert, da sie/er alle ihre/seine Guthaben ausgeglichen und ihre/seine Sicherheit von der Firma {app_name} erhalten hat.</p>\n            \n            \n            \n            <p>Wir w&uuml;nschen ihr/ihm viel Gl&uuml;ck f&uuml;r die Zukunft.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(43,'en','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>No Objection Certificate</strong></span></p>\n            \n            <p>Date: {date}</p>\n            \n            <p>To Whomsoever It May Concern</p>\n            \n            <p>This certificate is to claim a No Objection Certificate (NoC) for Ms. / Mr. {employee_name} if she/he joins and provides her/his services to any other organization. It is informed as she/he has cleared all her/his balances and received her/his security from {app_name} Company.</p>\n            \n            <p>We wish her/him good luck in the future.</p>\n            \n            <p>Sincerely,</p>\n            <p>{employee_name}</p>\n            <p>{designation}</p>\n            <p>Signature</p>\n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(44,'es','<h3 style=\"text-align: center;\">Certificado de conformidad</h3>\n            \n            \n            \n            <p>Fecha: {date}</p>\n            \n            \n            \n            <p>A quien corresponda</p>\n            \n            \n            \n            <p>Este certificado es para reclamar un Certificado de No Objeci&oacute;n (NoC) para la Sra. / Sr. {employee_name} si ella / &eacute;l se une y brinda sus servicios a cualquier otra organizaci&oacute;n. Se informa que &eacute;l/ella ha liquidado todos sus saldos y recibido su seguridad de {app_name} Company.</p>\n            \n            \n            \n            <p>Le deseamos buena suerte en el futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(45,'fr','<h3 style=\"text-align: center;\">Aucun certificat dopposition</h3>\n            \n            \n            <p>Date : {date}</p>\n            \n            \n            <p>&Agrave; toute personne concern&eacute;e</p>\n            \n            \n            <p>Ce certificat sert &agrave; r&eacute;clamer un certificat de non-objection (NoC) pour Mme / M. {employee_name} sil rejoint et fournit ses services &agrave; toute autre organisation. Il est inform&eacute; quil a sold&eacute; tous ses soldes et re&ccedil;u sa garantie de la part de la soci&eacute;t&eacute; {app_name}.</p>\n            \n            \n            <p>Nous lui souhaitons bonne chance pour lavenir.</p>\n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(46,'id','<h3 style=\"text-align: center;\">Sertifikat Tidak Keberatan</h3>\n            \n            \n            \n            <p>Tanggal: {date}</p>\n            \n            \n            \n            <p>Kepada Siapa Pun Yang Memprihatinkan</p>\n            \n            \n            \n            <p>Sertifikat ini untuk mengklaim No Objection Certificate (NoC) untuk Ibu / Bapak {employee_name} jika dia bergabung dan memberikan layanannya ke organisasi lain mana pun. Diberitahukan karena dia telah melunasi semua saldonya dan menerima jaminannya dari Perusahaan {app_name}.</p>\n            \n            \n            \n            <p>Kami berharap dia sukses di masa depan.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(47,'it','<h3 style=\"text-align: center;\">Certificato di nulla osta</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A chi pu&ograve; interessare</p>\n            \n            \n            \n            <p>Questo certificato serve a richiedere un certificato di non obiezione (NoC) per la signora / il signor {employee_name} se si unisce e fornisce i suoi servizi a qualsiasi altra organizzazione. Viene informato in quanto ha liquidato tutti i suoi saldi e ricevuto la sua sicurezza dalla societ&agrave; {app_name}.</p>\n            \n            \n            \n            <p>Le auguriamo buona fortuna per il futuro.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(48,'ja','<h3 style=\"text-align: center;\">異議なし証明書</h3>\n            \n            \n            \n            <p>日付: {date}</p>\n            \n            \n            \n            <p>関係者各位</p>\n            \n            \n            \n            <p>この証明書は、Ms. / Mr. {employee_name} が他の組織に参加してサービスを提供する場合に、異議なし証明書 (NoC) を請求するためのものです。彼女/彼/彼がすべての残高を清算し、{app_name} 会社から彼女/彼のセキュリティを受け取ったことが通知されます。</p>\n            \n            \n            \n            <p>彼女/彼の今後の幸運を祈っています。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(49,'nl','<h3 style=\"text-align: center;\">Geen bezwaarcertificaat</h3>\n            \n            \n            \n            <p>Datum: {date}</p>\n            \n            \n            \n            <p>Aan wie het ook aangaat</p>\n            \n            \n            \n            <p>Dit certificaat is bedoeld om aanspraak te maken op een Geen Bezwaarcertificaat (NoC) voor mevrouw/dhr. {employee_name} als zij/hij lid wordt en haar/zijn diensten verleent aan een andere organisatie. Het wordt ge&iuml;nformeerd als zij/hij al haar/zijn saldos heeft gewist en haar/zijn zekerheid heeft ontvangen van {app_name} Company.</p>\n            \n            \n            \n            <p>We wensen haar/hem veel succes in de toekomst.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(50,'pl','<h3 style=\"text-align: center;\">Certyfikat braku sprzeciwu</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>Do kogo to może dotyczyć</p>\n            \n            \n            \n            <p>Ten certyfikat służy do ubiegania się o Certyfikat No Objection Certificate (NoC) dla Pani/Pana {employee_name}, jeśli ona/ona dołącza i świadczy swoje usługi na rzecz jakiejkolwiek innej organizacji. Jest o tym informowany, ponieważ wyczyścił wszystkie swoje salda i otrzymał swoje zabezpieczenie od firmy {app_name}.</p>\n            \n            \n            \n            <p>Życzymy jej/jej powodzenia w przyszłości.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(51,'pt','<h3 style=\"text-align: center;\">Certificado de n&atilde;o obje&ccedil;&atilde;o</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A quem interessar</p>\n            \n            \n            \n            <p>Este certificado &eacute; para reivindicar um Certificado de N&atilde;o Obje&ccedil;&atilde;o (NoC) para a Sra. / Sr. {employee_name} se ela ingressar e fornecer seus servi&ccedil;os a qualquer outra organiza&ccedil;&atilde;o. &Eacute; informado que ela cancelou todos os seus saldos e recebeu sua garantia da empresa {app_name}.</p>\n            \n            \n            \n            <p>Desejamos-lhe boa sorte no futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(52,'ru','<h3 style=\"text-align: center;\">Сертификат об отсутствии возражений</h3>\n            \n            \n            \n            <p>Дата: {date}</p>\n            \n            \n            \n            <p>Кого бы это ни касалось</p>\n            \n            \n            \n            <p>Этот сертификат предназначен для получения Сертификата об отсутствии возражений (NoC) для г-жи / г-на {employee_name}, если она / он присоединяется и предоставляет свои услуги любой другой организации. Сообщается, что она/он очистила все свои балансы и получила свою безопасность от компании {app_name}.</p>\n            \n            \n            \n            <p>Мы желаем ей/ему удачи в будущем.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',6,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(53,'ar','<h3 style=\"text-align: center;\">شهادة عدم ممانعة</h3>\n            \n            \n            \n            <p>التاريخ: {date}</p>\n            \n            \n            \n            <p>إلى من يهمه الأمر</p>\n            \n            \n            \n            <p>هذه الشهادة مخصصة للمطالبة بشهادة عدم ممانعة (NoC) للسيدة / السيد {employee_name} إذا انضمت إلى أي مؤسسة أخرى وقدمت خدماتها / خدماتها. يتم إبلاغه لأنه قام بتصفية جميع أرصدته واستلام أمانه من شركة {app_name}.</p>\n            \n            \n            \n            <p>نتمنى لها / لها التوفيق في المستقبل.</p>\n            \n            \n            \n            <p>بإخلاص،</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>التوقيع</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(54,'da','<h3 style=\"text-align: center;\">Ingen indsigelsesattest</h3>\n            \n            \n            \n            <p>Dato: {date}</p>\n            \n            \n            \n            <p>Til hvem det m&aring;tte vedr&oslash;re</p>\n            \n            \n            \n            <p>Dette certifikat er for at g&oslash;re krav p&aring; et No Objection Certificate (NoC) for Ms. / Mr. {employee_name}, hvis hun/han tilslutter sig og leverer sine tjenester til enhver anden organisation. Det informeres, da hun/han har udlignet alle sine saldi og modtaget sin sikkerhed fra {app_name}-virksomheden.</p>\n            \n            \n            \n            <p>Vi &oslash;nsker hende/ham held og lykke i fremtiden.</p>\n            \n            \n            \n            <p>Med venlig hilsen</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Underskrift</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(55,'de','<h3 style=\"text-align: center;\">Kein Einwand-Zertifikat</h3>\n            \n            \n            \n            <p>Datum {date}</p>\n            \n            \n            \n            <p>Wen auch immer es betrifft</p>\n            \n            \n            \n            <p>Dieses Zertifikat soll ein Unbedenklichkeitszertifikat (NoC) f&uuml;r Frau / Herrn {employee_name} beanspruchen, wenn sie/er einer anderen Organisation beitritt und ihre/seine Dienste anbietet. Sie wird informiert, da sie/er alle ihre/seine Guthaben ausgeglichen und ihre/seine Sicherheit von der Firma {app_name} erhalten hat.</p>\n            \n            \n            \n            <p>Wir w&uuml;nschen ihr/ihm viel Gl&uuml;ck f&uuml;r die Zukunft.</p>\n            \n            \n            \n            <p>Aufrichtig,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Unterschrift</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(56,'en','<p style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><strong>No Objection Certificate</strong></span></p>\n            \n            <p>Date: {date}</p>\n            \n            <p>To Whomsoever It May Concern</p>\n            \n            <p>This certificate is to claim a No Objection Certificate (NoC) for Ms. / Mr. {employee_name} if she/he joins and provides her/his services to any other organization. It is informed as she/he has cleared all her/his balances and received her/his security from {app_name} Company.</p>\n            \n            <p>We wish her/him good luck in the future.</p>\n            \n            <p>Sincerely,</p>\n            <p>{employee_name}</p>\n            <p>{designation}</p>\n            <p>Signature</p>\n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(57,'es','<h3 style=\"text-align: center;\">Certificado de conformidad</h3>\n            \n            \n            \n            <p>Fecha: {date}</p>\n            \n            \n            \n            <p>A quien corresponda</p>\n            \n            \n            \n            <p>Este certificado es para reclamar un Certificado de No Objeci&oacute;n (NoC) para la Sra. / Sr. {employee_name} si ella / &eacute;l se une y brinda sus servicios a cualquier otra organizaci&oacute;n. Se informa que &eacute;l/ella ha liquidado todos sus saldos y recibido su seguridad de {app_name} Company.</p>\n            \n            \n            \n            <p>Le deseamos buena suerte en el futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(58,'fr','<h3 style=\"text-align: center;\">Aucun certificat dopposition</h3>\n            \n            \n            <p>Date : {date}</p>\n            \n            \n            <p>&Agrave; toute personne concern&eacute;e</p>\n            \n            \n            <p>Ce certificat sert &agrave; r&eacute;clamer un certificat de non-objection (NoC) pour Mme / M. {employee_name} sil rejoint et fournit ses services &agrave; toute autre organisation. Il est inform&eacute; quil a sold&eacute; tous ses soldes et re&ccedil;u sa garantie de la part de la soci&eacute;t&eacute; {app_name}.</p>\n            \n            \n            <p>Nous lui souhaitons bonne chance pour lavenir.</p>\n            \n            \n            <p>Sinc&egrave;rement,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Signature</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(59,'id','<h3 style=\"text-align: center;\">Sertifikat Tidak Keberatan</h3>\n            \n            \n            \n            <p>Tanggal: {date}</p>\n            \n            \n            \n            <p>Kepada Siapa Pun Yang Memprihatinkan</p>\n            \n            \n            \n            <p>Sertifikat ini untuk mengklaim No Objection Certificate (NoC) untuk Ibu / Bapak {employee_name} jika dia bergabung dan memberikan layanannya ke organisasi lain mana pun. Diberitahukan karena dia telah melunasi semua saldonya dan menerima jaminannya dari Perusahaan {app_name}.</p>\n            \n            \n            \n            <p>Kami berharap dia sukses di masa depan.</p>\n            \n            \n            \n            <p>Sungguh-sungguh,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Tanda tangan</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(60,'it','<h3 style=\"text-align: center;\">Certificato di nulla osta</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A chi pu&ograve; interessare</p>\n            \n            \n            \n            <p>Questo certificato serve a richiedere un certificato di non obiezione (NoC) per la signora / il signor {employee_name} se si unisce e fornisce i suoi servizi a qualsiasi altra organizzazione. Viene informato in quanto ha liquidato tutti i suoi saldi e ricevuto la sua sicurezza dalla societ&agrave; {app_name}.</p>\n            \n            \n            \n            <p>Le auguriamo buona fortuna per il futuro.</p>\n            \n            \n            \n            <p>Cordiali saluti,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Firma</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(61,'ja','<h3 style=\"text-align: center;\">異議なし証明書</h3>\n            \n            \n            \n            <p>日付: {date}</p>\n            \n            \n            \n            <p>関係者各位</p>\n            \n            \n            \n            <p>この証明書は、Ms. / Mr. {employee_name} が他の組織に参加してサービスを提供する場合に、異議なし証明書 (NoC) を請求するためのものです。彼女/彼/彼がすべての残高を清算し、{app_name} 会社から彼女/彼のセキュリティを受け取ったことが通知されます。</p>\n            \n            \n            \n            <p>彼女/彼の今後の幸運を祈っています。</p>\n            \n            \n            \n            <p>心から、</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>サイン</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(62,'nl','<h3 style=\"text-align: center;\">Geen bezwaarcertificaat</h3>\n            \n            \n            \n            <p>Datum: {date}</p>\n            \n            \n            \n            <p>Aan wie het ook aangaat</p>\n            \n            \n            \n            <p>Dit certificaat is bedoeld om aanspraak te maken op een Geen Bezwaarcertificaat (NoC) voor mevrouw/dhr. {employee_name} als zij/hij lid wordt en haar/zijn diensten verleent aan een andere organisatie. Het wordt ge&iuml;nformeerd als zij/hij al haar/zijn saldos heeft gewist en haar/zijn zekerheid heeft ontvangen van {app_name} Company.</p>\n            \n            \n            \n            <p>We wensen haar/hem veel succes in de toekomst.</p>\n            \n            \n            \n            <p>Eerlijk,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Handtekening</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(63,'pl','<h3 style=\"text-align: center;\">Certyfikat braku sprzeciwu</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>Do kogo to może dotyczyć</p>\n            \n            \n            \n            <p>Ten certyfikat służy do ubiegania się o Certyfikat No Objection Certificate (NoC) dla Pani/Pana {employee_name}, jeśli ona/ona dołącza i świadczy swoje usługi na rzecz jakiejkolwiek innej organizacji. Jest o tym informowany, ponieważ wyczyścił wszystkie swoje salda i otrzymał swoje zabezpieczenie od firmy {app_name}.</p>\n            \n            \n            \n            <p>Życzymy jej/jej powodzenia w przyszłości.</p>\n            \n            \n            \n            <p>Z poważaniem,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Podpis</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(64,'pt','<h3 style=\"text-align: center;\">Certificado de n&atilde;o obje&ccedil;&atilde;o</h3>\n            \n            \n            \n            <p>Data: {date}</p>\n            \n            \n            \n            <p>A quem interessar</p>\n            \n            \n            \n            <p>Este certificado &eacute; para reivindicar um Certificado de N&atilde;o Obje&ccedil;&atilde;o (NoC) para a Sra. / Sr. {employee_name} se ela ingressar e fornecer seus servi&ccedil;os a qualquer outra organiza&ccedil;&atilde;o. &Eacute; informado que ela cancelou todos os seus saldos e recebeu sua garantia da empresa {app_name}.</p>\n            \n            \n            \n            <p>Desejamos-lhe boa sorte no futuro.</p>\n            \n            \n            \n            <p>Sinceramente,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Assinatura</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34'),(65,'ru','<h3 style=\"text-align: center;\">Сертификат об отсутствии возражений</h3>\n            \n            \n            \n            <p>Дата: {date}</p>\n            \n            \n            \n            <p>Кого бы это ни касалось</p>\n            \n            \n            \n            <p>Этот сертификат предназначен для получения Сертификата об отсутствии возражений (NoC) для г-жи / г-на {employee_name}, если она / он присоединяется и предоставляет свои услуги любой другой организации. Сообщается, что она/он очистила все свои балансы и получила свою безопасность от компании {app_name}.</p>\n            \n            \n            \n            <p>Мы желаем ей/ему удачи в будущем.</p>\n            \n            \n            \n            <p>Искренне,</p>\n            \n            <p>{employee_name}</p>\n            \n            <p>{designation}</p>\n            \n            <p>Подпись</p>\n            \n            <p>{app_name}</p>',14,'2022-11-18 05:40:34','2022-11-18 05:40:34');
/*!40000 ALTER TABLE `noc_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_month` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_order_id_unique` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'632155BC24A4D774935441',NULL,NULL,NULL,NULL,NULL,'Gold',4,300.00,'USD','','succeeded','Manually',NULL,4,'2022-09-13 22:47:00','2022-09-13 22:47:00'),(2,'6321562CE34CF998618931',NULL,NULL,NULL,NULL,NULL,'Silver',2,3000.00,'USD','','succeeded','Manually',NULL,5,'2022-09-13 22:48:52','2022-09-13 22:48:52'),(3,'6321565380A6A334210079',NULL,NULL,NULL,NULL,NULL,'Enterprise',3,5000.00,'USD','','succeeded','Manually',NULL,6,'2022-09-13 22:49:31','2022-09-13 22:49:31'),(4,'6350B38893BBA921520166',NULL,NULL,NULL,NULL,NULL,'Enterprise',3,5000.00,'USD','','succeeded','Manually',NULL,4,'2022-10-20 02:33:44','2022-10-20 02:33:44'),(5,'63771BC253B03997777292',NULL,NULL,NULL,NULL,NULL,'WPS Test',6,100.00,'USD','','succeeded','Manually',NULL,14,'2022-11-18 05:44:34','2022-11-18 05:44:34');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_payments`
--

DROP TABLE IF EXISTS `other_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_payments`
--

LOCK TABLES `other_payments` WRITE;
/*!40000 ALTER TABLE `other_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overtimes`
--

DROP TABLE IF EXISTS `overtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overtimes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overtimes`
--

LOCK TABLES `overtimes` WRITE;
/*!40000 ALTER TABLE `overtimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `overtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `pay_slips`
--

DROP TABLE IF EXISTS `pay_slips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_slips` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `net_payble` int(11) NOT NULL,
  `salary_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `allowance` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saturation_deduction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gross_salary` int(11) NOT NULL,
  `deductions` int(11) NOT NULL,
  `ytd_salary` int(11) NOT NULL,
  `working_days` int(11) NOT NULL,
  `leave_days` int(11) NOT NULL,
  `gratuity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_slips`
--

LOCK TABLES `pay_slips` WRITE;
/*!40000 ALTER TABLE `pay_slips` DISABLE KEYS */;
INSERT INTO `pay_slips` VALUES (1,1,15000,'2022-09',0,15000,'[]','[]','[]','[]','[]','[]',4,'2022-09-18 03:15:12','2022-09-18 03:15:12',0,0,0,0,0,0),(8,1,20000,'2022-07',0,20000,'[]','[]','[]','[]','[]','[]',4,'2022-11-02 15:23:48','2022-11-02 15:23:48',0,0,33000,21,0,0),(9,1,20000,'2022-10',0,20000,'[]','[]','[]','[]','[]','[]',4,'2022-11-03 03:11:51','2022-11-03 03:11:51',0,0,35000,21,0,0),(10,2,21500,'2022-10',0,19000,'[{\"id\":1,\"employee_id\":2,\"allowance_option\":4,\"title\":\"Bill\",\"amount\":2500,\"type\":\"fixed\",\"created_by\":4,\"created_at\":\"2022-10-22T18:02:17.000000Z\",\"updated_at\":\"2022-10-22T18:02:17.000000Z\"}]','[]','[]','[]','[]','[]',4,'2022-11-03 03:16:23','2022-11-03 03:16:23',2500,0,0,21,0,0),(11,3,450000,'2022-10',0,450000,'[]','[]','[]','[]','[]','[]',4,'2022-11-03 03:23:49','2022-11-03 03:23:49',0,0,0,21,0,0),(12,4,34000,'2022-10',0,34000,'[]','[]','[]','[]','[]','[]',4,'2022-11-03 03:23:49','2022-11-03 03:23:49',0,0,0,21,0,0),(13,5,40000,'2022-10',0,40000,'[]','[]','[]','[]','[]','[]',4,'2022-11-03 03:23:49','2022-11-03 03:23:49',0,0,0,21,0,0),(14,6,19000,'2022-10',0,19000,'[]','[]','[]','[]','[]','[]',4,'2022-11-03 03:23:49','2022-11-03 03:23:49',0,0,0,21,0,0),(15,1,20000,'2022-11',0,20000,'[]','[]','[]','[]','[]','[]',4,'2022-11-14 15:00:27','2022-11-14 15:00:27',0,0,55000,22,0,0),(16,2,21500,'2022-11',0,19000,'[{\"id\":1,\"employee_id\":2,\"allowance_option\":4,\"title\":\"Bill\",\"amount\":2500,\"type\":\"fixed\",\"created_by\":4,\"created_at\":\"2022-10-22T18:02:17.000000Z\",\"updated_at\":\"2022-10-22T18:02:17.000000Z\"}]','[]','[]','[]','[]','[]',4,'2022-11-14 15:00:27','2022-11-14 15:00:27',2500,0,21500,22,0,0),(17,3,450000,'2022-11',0,450000,'[]','[]','[]','[]','[]','[]',4,'2022-11-14 15:00:27','2022-11-14 15:00:27',0,0,450000,22,0,0),(18,4,34000,'2022-11',0,34000,'[]','[]','[]','[]','[]','[]',4,'2022-11-14 15:00:28','2022-11-14 15:00:28',0,0,34000,22,0,0),(19,5,40000,'2022-11',0,40000,'[]','[]','[]','[]','[]','[]',4,'2022-11-14 15:00:28','2022-11-14 15:00:28',0,0,40000,22,0,0),(20,6,19000,'2022-11',0,19000,'[]','[]','[]','[]','[]','[]',4,'2022-11-14 15:00:28','2022-11-14 15:00:28',0,0,19000,22,0,0);
/*!40000 ALTER TABLE `pay_slips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payees`
--

DROP TABLE IF EXISTS `payees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payees`
--

LOCK TABLES `payees` WRITE;
/*!40000 ALTER TABLE `payees` DISABLE KEYS */;
/*!40000 ALTER TABLE `payees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payers`
--

DROP TABLE IF EXISTS `payers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payers`
--

LOCK TABLES `payers` WRITE;
/*!40000 ALTER TABLE `payers` DISABLE KEYS */;
/*!40000 ALTER TABLE `payers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_types`
--

DROP TABLE IF EXISTS `payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_types`
--

LOCK TABLES `payment_types` WRITE;
/*!40000 ALTER TABLE `payment_types` DISABLE KEYS */;
INSERT INTO `payment_types` VALUES (1,'Cash',4,'2022-09-16 09:10:14','2022-09-16 09:10:14'),(2,'Card',4,'2022-09-16 09:10:22','2022-09-16 09:10:22'),(3,'Cheque',4,'2022-09-16 09:10:32','2022-09-16 09:10:32');
/*!40000 ALTER TABLE `payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payslip_types`
--

DROP TABLE IF EXISTS `payslip_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payslip_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payslip_types`
--

LOCK TABLES `payslip_types` WRITE;
/*!40000 ALTER TABLE `payslip_types` DISABLE KEYS */;
INSERT INTO `payslip_types` VALUES (1,'Permanent Employee',4,'2022-09-16 08:54:18','2022-09-16 08:54:18'),(2,'Contract Employee',4,'2022-09-16 08:54:42','2022-09-16 08:54:42'),(3,'Test Payslip TYpe',4,'2022-09-20 13:51:00','2022-09-20 13:51:00');
/*!40000 ALTER TABLE `payslip_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance__types`
--

DROP TABLE IF EXISTS `performance__types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance__types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance__types`
--

LOCK TABLES `performance__types` WRITE;
/*!40000 ALTER TABLE `performance__types` DISABLE KEYS */;
INSERT INTO `performance__types` VALUES (1,'A','4','2022-09-16 09:08:30','2022-09-16 09:08:30'),(2,'B','4','2022-09-16 09:08:36','2022-09-16 09:08:36'),(3,'C','4','2022-09-16 09:08:43','2022-09-16 09:08:43');
/*!40000 ALTER TABLE `performance__types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Manage User','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(2,'Create User','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(3,'Edit User','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(4,'Delete User','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(5,'Manage Role','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(6,'Create Role','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(7,'Delete Role','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(8,'Edit Role','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(9,'Manage Award','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(10,'Create Award','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(11,'Delete Award','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(12,'Edit Award','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(13,'Manage Transfer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(14,'Create Transfer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(15,'Delete Transfer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(16,'Edit Transfer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(17,'Manage Resignation','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(18,'Create Resignation','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(19,'Edit Resignation','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(20,'Delete Resignation','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(21,'Manage Travel','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(22,'Create Travel','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(23,'Edit Travel','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(24,'Delete Travel','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(25,'Manage Promotion','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(26,'Create Promotion','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(27,'Edit Promotion','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(28,'Delete Promotion','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(29,'Manage Complaint','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(30,'Create Complaint','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(31,'Edit Complaint','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(32,'Delete Complaint','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(33,'Manage Warning','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(34,'Create Warning','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(35,'Edit Warning','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(36,'Delete Warning','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(37,'Manage Termination','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(38,'Create Termination','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(39,'Edit Termination','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(40,'Delete Termination','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(41,'Manage Department','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(42,'Create Department','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(43,'Edit Department','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(44,'Delete Department','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(45,'Manage Designation','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(46,'Create Designation','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(47,'Edit Designation','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(48,'Delete Designation','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(49,'Manage Document Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(50,'Create Document Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(51,'Edit Document Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(52,'Delete Document Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(53,'Manage Branch','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(54,'Create Branch','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(55,'Edit Branch','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(56,'Delete Branch','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(57,'Manage Award Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(58,'Create Award Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(59,'Edit Award Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(60,'Delete Award Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(61,'Manage Termination Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(62,'Create Termination Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(63,'Edit Termination Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(64,'Delete Termination Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(65,'Manage Employee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(66,'Create Employee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(67,'Edit Employee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(68,'Delete Employee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(69,'Show Employee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(70,'Manage Payslip Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(71,'Create Payslip Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(72,'Edit Payslip Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(73,'Delete Payslip Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(74,'Manage Allowance Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(75,'Create Allowance Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(76,'Edit Allowance Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(77,'Delete Allowance Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(78,'Manage Loan Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(79,'Create Loan Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(80,'Edit Loan Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(81,'Delete Loan Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(82,'Manage Deduction Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(83,'Create Deduction Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(84,'Edit Deduction Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(85,'Delete Deduction Option','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(86,'Manage Set Salary','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(87,'Create Set Salary','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(88,'Edit Set Salary','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(89,'Delete Set Salary','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(90,'Manage Allowance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(91,'Create Allowance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(92,'Edit Allowance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(93,'Delete Allowance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(94,'Create Commission','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(95,'Create Loan','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(96,'Create Saturation Deduction','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(97,'Create Other Payment','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(98,'Create Overtime','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(99,'Edit Commission','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(100,'Delete Commission','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(101,'Edit Loan','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(102,'Delete Loan','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(103,'Edit Saturation Deduction','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(104,'Delete Saturation Deduction','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(105,'Edit Other Payment','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(106,'Delete Other Payment','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(107,'Edit Overtime','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(108,'Delete Overtime','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(109,'Manage Pay Slip','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(110,'Create Pay Slip','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(111,'Edit Pay Slip','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(112,'Delete Pay Slip','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(113,'Manage Account List','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(114,'Create Account List','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(115,'Edit Account List','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(116,'Delete Account List','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(117,'View Balance Account List','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(118,'Manage Payee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(119,'Create Payee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(120,'Edit Payee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(121,'Delete Payee','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(122,'Manage Payer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(123,'Create Payer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(124,'Edit Payer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(125,'Delete Payer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(126,'Manage Expense Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(127,'Create Expense Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(128,'Edit Expense Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(129,'Delete Expense Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(130,'Manage Income Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(131,'Edit Income Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(132,'Delete Income Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(133,'Create Income Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(134,'Manage Payment Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(135,'Create Payment Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(136,'Edit Payment Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(137,'Delete Payment Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(138,'Manage Deposit','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(139,'Create Deposit','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(140,'Edit Deposit','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(141,'Delete Deposit','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(142,'Manage Expense','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(143,'Create Expense','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(144,'Edit Expense','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(145,'Delete Expense','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(146,'Manage Transfer Balance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(147,'Create Transfer Balance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(148,'Edit Transfer Balance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(149,'Delete Transfer Balance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(150,'Manage Event','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(151,'Create Event','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(152,'Edit Event','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(153,'Delete Event','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(154,'Manage Announcement','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(155,'Create Announcement','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(156,'Edit Announcement','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(157,'Delete Announcement','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(158,'Manage Leave Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(159,'Create Leave Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(160,'Edit Leave Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(161,'Delete Leave Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(162,'Manage Leave','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(163,'Create Leave','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(164,'Edit Leave','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(165,'Delete Leave','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(166,'Manage Meeting','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(167,'Create Meeting','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(168,'Edit Meeting','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(169,'Delete Meeting','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(170,'Manage Ticket','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(171,'Create Ticket','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(172,'Edit Ticket','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(173,'Delete Ticket','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(174,'Manage Attendance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(175,'Create Attendance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(176,'Edit Attendance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(177,'Delete Attendance','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(178,'Manage Language','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(179,'Create Language','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(180,'Manage Plan','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(181,'Create Plan','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(182,'Edit Plan','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(183,'Buy Plan','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(184,'Manage System Settings','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(185,'Manage Company Settings','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(186,'Manage TimeSheet','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(187,'Create TimeSheet','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(188,'Edit TimeSheet','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(189,'Delete TimeSheet','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(190,'Manage Order','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(191,'manage coupon','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(192,'create coupon','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(193,'edit coupon','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(194,'delete coupon','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(195,'Manage Assets','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(196,'Create Assets','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(197,'Edit Assets','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(198,'Delete Assets','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(199,'Manage Document','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(200,'Create Document','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(201,'Edit Document','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(202,'Delete Document','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(203,'Manage Employee Profile','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(204,'Show Employee Profile','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(205,'Manage Employee Last Login','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(206,'Manage Indicator','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(207,'Create Indicator','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(208,'Edit Indicator','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(209,'Delete Indicator','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(210,'Show Indicator','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(211,'Manage Appraisal','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(212,'Create Appraisal','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(213,'Edit Appraisal','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(214,'Delete Appraisal','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(215,'Show Appraisal','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(216,'Manage Goal Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(217,'Create Goal Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(218,'Edit Goal Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(219,'Delete Goal Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(220,'Manage Goal Tracking','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(221,'Create Goal Tracking','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(222,'Edit Goal Tracking','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(223,'Delete Goal Tracking','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(224,'Manage Company Policy','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(225,'Create Company Policy','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(226,'Edit Company Policy','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(227,'Delete Company Policy','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(228,'Manage Trainer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(229,'Create Trainer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(230,'Edit Trainer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(231,'Delete Trainer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(232,'Show Trainer','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(233,'Manage Training','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(234,'Create Training','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(235,'Edit Training','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(236,'Delete Training','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(237,'Show Training','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(238,'Manage Training Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(239,'Create Training Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(240,'Edit Training Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(241,'Delete Training Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(242,'Manage Report','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(243,'Manage Holiday','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(244,'Create Holiday','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(245,'Edit Holiday','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(246,'Delete Holiday','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(247,'Manage Job Category','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(248,'Create Job Category','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(249,'Edit Job Category','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(250,'Delete Job Category','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(251,'Manage Job Stage','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(252,'Create Job Stage','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(253,'Edit Job Stage','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(254,'Delete Job Stage','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(255,'Manage Job','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(256,'Create Job','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(257,'Edit Job','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(258,'Delete Job','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(259,'Show Job','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(260,'Manage Job Application','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(261,'Create Job Application','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(262,'Edit Job Application','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(263,'Delete Job Application','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(264,'Show Job Application','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(265,'Move Job Application','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(266,'Add Job Application Note','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(267,'Delete Job Application Note','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(268,'Add Job Application Skill','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(269,'Manage Job OnBoard','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(270,'Manage Custom Question','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(271,'Create Custom Question','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(272,'Edit Custom Question','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(273,'Delete Custom Question','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(274,'Manage Interview Schedule','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(275,'Create Interview Schedule','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(276,'Edit Interview Schedule','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(277,'Delete Interview Schedule','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(278,'Manage Career','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(279,'Manage Competencies','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(280,'Create Competencies','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(281,'Edit Competencies','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(282,'Delete Competencies','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(283,'Create Performance Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(284,'Edit Performance Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(285,'Delete Performance Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(286,'Create Performance Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(287,'Edit Performance Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(288,'Delete Performance Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(289,'Manage Contract Types','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(290,'Create Contract Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(291,'Edit Contract Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(292,'Delete Contract Type','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(293,'Manage Contracts','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(294,'Store note','web','2022-09-13 19:42:04','2022-09-13 19:42:04'),(295,'Store Comment','web','2022-09-13 19:42:04','2022-09-13 19:42:04');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `plan_requests`
--

DROP TABLE IF EXISTS `plan_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_requests`
--

LOCK TABLES `plan_requests` WRITE;
/*!40000 ALTER TABLE `plan_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `duration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_users` int(11) NOT NULL DEFAULT 0,
  `max_employees` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Free Plan',0.00,'month',1,5,NULL,'free_plan.png','2022-09-13 19:42:09','2022-09-13 22:42:51'),(2,'Silver',3000.00,'year',1,10,NULL,NULL,'2022-09-13 20:21:03','2022-09-13 22:44:55'),(3,'Enterprise',5000.00,'year',-1,-1,NULL,NULL,'2022-09-13 22:41:21','2022-09-13 22:45:08'),(4,'Gold',300.00,'month',1,10,NULL,NULL,'2022-09-13 22:46:23','2022-09-13 22:46:23'),(5,'Platinum',6000.00,'month',1,60,NULL,NULL,'2022-09-20 13:37:29','2022-09-20 13:37:29'),(6,'WPS Test',100.00,'month',2,50,NULL,NULL,'2022-11-18 05:44:10','2022-11-18 05:44:10');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `promotion_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resignations`
--

DROP TABLE IF EXISTS `resignations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resignations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resignations`
--

LOCK TABLES `resignations` WRITE;
/*!40000 ALTER TABLE `resignations` DISABLE KEYS */;
/*!40000 ALTER TABLE `resignations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(1,3),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,2),(41,3),(42,2),(42,3),(43,2),(43,3),(44,2),(44,3),(45,2),(45,3),(46,2),(46,3),(47,2),(47,3),(48,2),(48,3),(49,2),(49,3),(50,2),(50,3),(51,2),(51,3),(52,2),(52,3),(53,2),(53,3),(54,2),(54,3),(55,2),(55,3),(56,2),(56,3),(57,3),(58,3),(59,3),(60,3),(61,3),(62,3),(63,3),(64,3),(65,2),(65,3),(65,4),(66,2),(66,3),(67,2),(67,3),(67,4),(68,2),(68,3),(69,2),(69,3),(69,4),(70,2),(70,3),(71,2),(71,3),(72,2),(72,3),(73,2),(73,3),(74,2),(74,3),(75,2),(75,3),(76,2),(76,3),(77,2),(77,3),(78,2),(78,3),(79,2),(79,3),(80,2),(80,3),(81,2),(81,3),(82,2),(82,3),(83,2),(83,3),(84,2),(84,3),(85,2),(85,3),(86,2),(86,3),(87,2),(87,3),(88,2),(88,3),(89,2),(89,3),(90,2),(90,3),(91,2),(91,3),(92,2),(92,3),(93,2),(93,3),(94,2),(94,3),(95,2),(95,3),(96,2),(96,3),(97,2),(97,3),(98,2),(98,3),(99,2),(99,3),(100,2),(100,3),(101,2),(101,3),(102,2),(102,3),(103,2),(103,3),(104,2),(104,3),(105,2),(105,3),(106,2),(106,3),(107,2),(107,3),(108,2),(108,3),(109,2),(109,3),(110,2),(110,3),(111,2),(111,3),(112,2),(112,3),(150,3),(151,3),(152,3),(153,3),(154,1),(154,2),(154,3),(154,4),(155,1),(155,2),(155,3),(156,1),(156,2),(156,3),(157,1),(157,2),(157,3),(158,2),(158,3),(159,2),(159,3),(160,2),(160,3),(161,2),(161,3),(162,2),(162,3),(162,4),(163,2),(163,3),(163,4),(164,2),(164,3),(164,4),(165,2),(165,3),(165,4),(166,3),(167,3),(168,3),(169,3),(170,3),(171,3),(172,3),(173,3),(174,3),(175,3),(176,3),(177,3),(178,2),(178,3),(179,2),(180,1),(181,1),(182,1),(186,3),(187,3),(188,3),(189,3),(195,2),(195,3),(196,2),(196,3),(197,2),(197,3),(198,2),(198,3),(199,2),(199,3),(199,4),(200,2),(200,4),(201,2),(201,4),(202,2),(203,2),(203,3),(204,2),(204,3),(205,2),(205,3),(206,3),(207,3),(208,3),(209,3),(210,3),(211,3),(212,3),(213,3),(214,3),(215,3),(216,3),(217,3),(218,3),(219,3),(220,3),(221,3),(222,3),(223,3),(224,3),(225,3),(226,3),(227,3),(228,3),(229,3),(230,3),(231,3),(232,3),(233,3),(234,3),(235,3),(236,3),(237,3),(238,3),(239,3),(240,3),(241,3),(243,3),(244,3),(245,3),(246,3),(247,3),(248,3),(249,3),(250,3),(251,3),(252,3),(253,3),(254,3),(255,3),(256,3),(257,3),(258,3),(259,3),(260,3),(261,3),(262,3),(263,3),(264,3),(265,3),(266,3),(267,3),(268,3),(269,3),(270,3),(271,3),(272,3),(273,3),(274,3),(275,3),(276,3),(277,3),(278,3),(283,3),(284,3),(285,3),(289,3),(290,3),(291,3),(292,3),(293,3),(294,3),(295,3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super admin','web',0,'2022-09-13 19:42:04','2022-09-13 19:42:04'),(2,'company','web',1,'2022-09-13 19:42:04','2022-09-13 19:42:04'),(3,'hr','web',2,'2022-09-13 19:42:06','2022-09-13 19:42:06'),(4,'employee','web',2,'2022-09-13 19:42:07','2022-09-13 19:42:07');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saturation_deductions`
--

DROP TABLE IF EXISTS `saturation_deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saturation_deductions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `deduction_option` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saturation_deductions`
--

LOCK TABLES `saturation_deductions` WRITE;
/*!40000 ALTER TABLE `saturation_deductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `saturation_deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `set_salaries`
--

DROP TABLE IF EXISTS `set_salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `set_salaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `set_salaries`
--

LOCK TABLES `set_salaries` WRITE;
/*!40000 ALTER TABLE `set_salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'default_language','en',1,NULL,NULL),(2,'theme_color','theme-2',1,NULL,NULL),(3,'cust_theme_bg','on',1,NULL,NULL),(4,'display_landing_page','off',1,NULL,NULL),(5,'gdpr_cookie','off',1,NULL,NULL),(6,'disable_signup_button','off',1,NULL,NULL),(7,'cust_darklayout','off',1,NULL,NULL),(8,'SITE_RTL','off',1,NULL,NULL),(17,'company_name','Tech Mahindra',4,NULL,NULL),(18,'company_address','Electronic City',4,NULL,NULL),(19,'company_city','Bangalore',4,NULL,NULL),(20,'company_state','Karnataka',4,NULL,NULL),(21,'company_zipcode','560100',4,NULL,NULL),(22,'company_country','India',4,NULL,NULL),(23,'company_telephone','1111111111',4,NULL,NULL),(24,'company_email','admin@techmahindra.com',4,NULL,NULL),(25,'company_email_from_name','Admin',4,NULL,NULL),(26,'company_start_time','09:00',4,NULL,NULL),(27,'company_end_time','18:00',4,NULL,NULL),(28,'ip_restrict','off',4,NULL,NULL),(61,'title_text','WPS System',1,NULL,NULL),(62,'footer_text','WPS System',1,NULL,NULL),(71,'title_text','WPS System',4,NULL,NULL),(72,'theme_color','theme-2',4,NULL,NULL),(73,'cust_theme_bg','on',4,NULL,NULL),(74,'cust_darklayout','off',4,NULL,NULL),(75,'SITE_RTL','off',4,NULL,NULL),(111,'company_name','Amazon',6,NULL,NULL),(112,'company_address','WTC',6,NULL,NULL),(113,'company_city','Bangalore',6,NULL,NULL),(114,'company_state','Karnataka',6,NULL,NULL),(115,'company_zipcode','560032',6,NULL,NULL),(116,'company_country','India',6,NULL,NULL),(117,'company_telephone','123456789',6,NULL,NULL),(118,'company_email','admin@amazon.com',6,NULL,NULL),(119,'company_email_from_name','Amazon',6,NULL,NULL),(120,'company_start_time','09:00',6,NULL,NULL),(121,'company_end_time','18:00',6,NULL,NULL),(122,'ip_restrict','off',6,NULL,NULL),(180,'company_account_number','dgsdg',4,NULL,NULL),(181,'company_bank_name','sdfsdf',4,NULL,NULL),(182,'company_iban_number','sfdf',4,NULL,NULL),(183,'company_swift_code','sdfsd',4,NULL,NULL),(200,'company_tl_num','sdfds',4,NULL,NULL),(201,'company_tl_issue_date','sdfsd',4,NULL,NULL),(202,'company_tl_expiry_date','sdfsd',4,NULL,NULL),(203,'company_partner_details','sdfsd',4,NULL,NULL),(204,'company_vat_number','dsfds',4,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termination_types`
--

DROP TABLE IF EXISTS `termination_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termination_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termination_types`
--

LOCK TABLES `termination_types` WRITE;
/*!40000 ALTER TABLE `termination_types` DISABLE KEYS */;
INSERT INTO `termination_types` VALUES (1,'PIP',4,'2022-09-16 09:04:19','2022-09-16 09:04:19'),(2,'POSH',4,'2022-09-16 09:04:29','2022-09-16 09:04:29');
/*!40000 ALTER TABLE `termination_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminations`
--

DROP TABLE IF EXISTS `terminations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminations`
--

LOCK TABLES `terminations` WRITE;
/*!40000 ALTER TABLE `terminations` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_replies`
--

DROP TABLE IF EXISTS `ticket_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_replies`
--

LOCK TABLES `ticket_replies` WRITE;
/*!40000 ALTER TABLE `ticket_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_created` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_sheets`
--

DROP TABLE IF EXISTS `time_sheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_sheets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `hours` double(8,2) NOT NULL DEFAULT 0.00,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_sheets`
--

LOCK TABLES `time_sheets` WRITE;
/*!40000 ALTER TABLE `time_sheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_sheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expertise` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_types`
--

DROP TABLE IF EXISTS `training_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_types`
--

LOCK TABLES `training_types` WRITE;
/*!40000 ALTER TABLE `training_types` DISABLE KEYS */;
INSERT INTO `training_types` VALUES (1,'Java Training',4,'2022-09-16 09:02:16','2022-09-16 09:02:16'),(2,'ITIL',4,'2022-09-16 09:02:41','2022-09-16 09:02:41'),(3,'PMP',4,'2022-09-16 09:02:58','2022-09-16 09:02:58');
/*!40000 ALTER TABLE `training_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `training_type` int(11) NOT NULL,
  `trainer` int(11) NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `employee` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `performance` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_balances`
--

DROP TABLE IF EXISTS `transfer_balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_balances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `referal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_balances`
--

LOCK TABLES `transfer_balances` WRITE;
/*!40000 ALTER TABLE `transfer_balances` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travels`
--

DROP TABLE IF EXISTS `travels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_visit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travels`
--

LOCK TABLES `travels` WRITE;
/*!40000 ALTER TABLE `travels` DISABLE KEYS */;
/*!40000 ALTER TABLE `travels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_coupons`
--

DROP TABLE IF EXISTS `user_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_coupons`
--

LOCK TABLES `user_coupons` WRITE;
/*!40000 ALTER TABLE `user_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_email_templates`
--

DROP TABLE IF EXISTS `user_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_email_templates`
--

LOCK TABLES `user_email_templates` WRITE;
/*!40000 ALTER TABLE `user_email_templates` DISABLE KEYS */;
INSERT INTO `user_email_templates` VALUES (1,1,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(2,2,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(3,3,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(4,4,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(5,5,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(6,6,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(7,7,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(8,8,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(9,9,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(10,10,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(11,11,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(12,12,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(13,13,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(14,14,2,1,'2022-09-13 19:42:09','2022-09-13 19:42:09'),(15,1,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:00'),(16,2,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:01'),(17,3,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:02'),(18,4,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:04'),(19,5,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:05'),(20,6,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:06'),(21,7,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:08'),(22,8,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:09'),(23,9,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:10'),(24,10,4,0,'2022-09-13 20:00:25','2022-10-19 17:33:11'),(25,11,4,1,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(26,12,4,1,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(27,13,4,1,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(28,14,4,1,'2022-09-13 20:00:25','2022-09-13 20:00:25'),(29,1,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(30,2,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(31,3,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(32,4,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(33,5,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(34,6,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(35,7,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(36,8,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(37,9,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(38,10,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(39,11,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(40,12,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(41,13,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(42,14,5,1,'2022-09-13 22:48:24','2022-09-13 22:48:24'),(43,1,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(44,2,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(45,3,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(46,4,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(47,5,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(48,6,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(49,7,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(50,8,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(51,9,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(52,10,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(53,11,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(54,12,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(55,13,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(56,14,6,1,'2022-09-13 22:49:16','2022-09-13 22:49:16'),(57,1,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(58,2,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(59,3,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(60,4,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(61,5,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(62,6,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(63,7,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(64,8,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(65,9,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(66,10,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(67,11,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(68,12,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(69,13,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33'),(70,14,14,1,'2022-11-18 05:40:33','2022-11-18 05:40:33');
/*!40000 ALTER TABLE `user_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` int(11) DEFAULT NULL,
  `plan_expire_date` date DEFAULT NULL,
  `requested_plan` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Super Admin','superadmin@example.com',NULL,'$2y$10$w5aU/mX7a1qBk7RCl2Ks2OpmEzaJy6OedcYrcQWOC1harYYK.6ZxW','super admin','','en',NULL,NULL,0,'2022-11-23 03:26:36',1,'0',NULL,'2022-09-13 19:42:04','2022-11-23 03:26:36','#2180f3',0,0),(2,'company','company@example.com',NULL,'$2y$10$rW1wRTGH2faPCP/iZU0JTOcp8mN/njChgL1QbOeTRJPd9SqzvL1Ha','company','','en',1,NULL,0,'2022-09-13 19:48:10',1,'1',NULL,'2022-09-13 19:42:06','2022-09-13 19:48:10','#2180f3',0,0),(3,'hr','hr@example.com',NULL,'$2y$10$LXRvgT5mYpUuWKGZytB85uXz.dxuBB6Q0tk9exxlitkU6s7I9z6TK','hr','','en',NULL,NULL,0,'2022-09-13 19:55:49',1,'2',NULL,'2022-09-13 19:42:07','2022-09-13 19:55:49','#2180f3',0,0),(4,'Tech Mahindra','touqeer.ahmed.m@gmail.com',NULL,'$2y$10$Oh6zZFoxpqQTP63CMWGQ9Oe7dI4.KYX5Pgh5hkloWFOaFNS2XWMmG','company','India Emblem_1665453082.jpg','',3,'2023-10-20',0,'2022-11-23 03:22:51',1,'1',NULL,'2022-09-13 20:00:25','2022-11-23 03:22:51','#2180f3',0,0),(5,'TCS','admin@tcs.com',NULL,'$2y$10$Ycrw1kDqZfUOg8nrjaShDuZAkKTb5Gi6odtZQ/FJgBONBx/sN6n8a','company',NULL,'',2,'2023-09-14',0,NULL,1,'1',NULL,'2022-09-13 22:48:24','2022-09-13 22:48:52','#2180f3',0,0),(6,'amazon','admin@amazon.com',NULL,'$2y$10$/c410gtCJxQI5pAqzdOli.pzW87TpoyD5.e98A3UaS6mLAD9uEaTO','company',NULL,'',3,'2023-09-14',0,'2022-10-13 02:34:07',1,'1',NULL,'2022-09-13 22:49:16','2022-10-13 02:34:07','#2180f3',0,0),(7,'Affan','affan@techmahindra.com',NULL,'$2y$10$kctGBKI3GBeXl1Zm4hYNE.5orx7LT7hHGclkpNhn.zcsy2YpvzWa2','Employee Role',NULL,'',NULL,NULL,0,'2022-09-14 10:36:02',1,'4',NULL,'2022-09-14 10:31:32','2022-09-14 10:36:02','#2180f3',0,0),(8,'Ajay','ajay@techmahindra.com',NULL,'$2y$10$a3T5N1zA6KsSfzyaFDpFIeHh5/qYgRjtlwBi6OOaV6/9WlrksA3Wa','employee','ajay1_1665453490.jpg','en',NULL,NULL,0,'2022-11-18 06:12:10',1,'4',NULL,'2022-09-16 09:50:20','2022-11-18 06:12:10','#2180f3',0,0),(9,'Vijay','vijay@test.com',NULL,'$2y$10$A9UHK30LMuwDLQqU0X9CGuZ69HengrSoFzvBuLsE3VvmUoEUC/pvi','employee',NULL,'en',NULL,NULL,0,NULL,1,'4',NULL,'2022-10-19 17:23:59','2022-10-19 17:23:59','#2180f3',0,0),(10,'sujay','sujay@test.com',NULL,'$2y$10$egWImgemgvOfGZ2DoFnchuk6i/KYnQMky1odWetcN5JRj8vrpXRTy','employee',NULL,'en',NULL,NULL,0,NULL,1,'4',NULL,'2022-10-19 17:37:45','2022-10-19 17:37:45','#2180f3',0,0),(11,'kiran','kiran@test.com',NULL,'$2y$10$wOaMoHJLn3BElKb2YfYlv./8wS21vlyp7VMlOZmvEkcu1hTUJXy.S','employee',NULL,'en',NULL,NULL,0,NULL,1,'4',NULL,'2022-10-19 17:41:12','2022-10-19 17:41:12','#2180f3',0,0),(12,'shan','shan@test.com',NULL,'$2y$10$tCEDXixqQIrakydruIEsXe/xNdtm6IeLCq046TKE6iCw2V1yCpCF2','employee',NULL,'en',NULL,NULL,0,NULL,1,'4',NULL,'2022-10-19 17:51:26','2022-10-19 17:51:26','#2180f3',0,0),(13,'suman','suman@test.com',NULL,'$2y$10$AcSXMqA.UPQqa7glOmuYie/UeE7QcKYZoR39SSHjGouchrob5Hn2O','employee',NULL,'en',NULL,NULL,0,NULL,1,'4',NULL,'2022-10-20 02:35:58','2022-10-20 02:35:58','#2180f3',0,0),(14,'Accel','accel@example.com',NULL,'$2y$10$ZJtjwbVx/XE0Lxvq8AVCDucoxoJe0.AOVPoA9shpr/B.frYXwF9uq','company',NULL,'en',6,'2022-12-18',0,NULL,1,'1',NULL,'2022-11-18 05:40:33','2022-11-18 05:44:34','#2180f3',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warnings`
--

DROP TABLE IF EXISTS `warnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warnings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `warning_to` int(11) NOT NULL,
  `warning_by` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warnings`
--

LOCK TABLES `warnings` WRITE;
/*!40000 ALTER TABLE `warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `warnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoom_meetings`
--

DROP TABLE IF EXISTS `zoom_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zoom_meetings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(11) NOT NULL DEFAULT 0,
  `start_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'waiting',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoom_meetings`
--

LOCK TABLES `zoom_meetings` WRITE;
/*!40000 ALTER TABLE `zoom_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `zoom_meetings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 22:12:08