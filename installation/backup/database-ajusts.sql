-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 13, 2024 at 06:31 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--
--

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE IF NOT EXISTS `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `current_balance` decimal(24,2) NOT NULL,
  `amount` decimal(24,2) NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'collected',
  `created_by` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE IF NOT EXISTS `addon_settings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_values` longtext COLLATE utf8mb4_unicode_ci,
  `test_values` longtext COLLATE utf8mb4_unicode_ci,
  `settings_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

REPLACE INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":null,\"messaging_service_sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":null,\"messaging_service_sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:29', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:36', NULL),
('0d8a9308-d6a5-11ed-962c-0c7a158e4469', 'mercadopago', '{\"gateway\":\"mercadopago\",\"mode\":\"test\",\"status\":0,\"access_token\":null,\"public_key\":null}', '{\"gateway\":\"mercadopago\",\"mode\":\"test\",\"status\":0,\"access_token\":null,\"public_key\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:07:21', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc19a924305.png\"}'),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"test\",\"status\":0,\"private_key\":null,\"public_key\":null}', '{\"gateway\":\"liqpay\",\"mode\":\"test\",\"status\":0,\"private_key\":null,\"public_key\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:07:47', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc19c308041.png\"}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"test\",\"status\":0,\"client_id\":null,\"client_secret\":null}', '{\"gateway\":\"paypal\",\"mode\":\"test\",\"status\":0,\"client_id\":null,\"client_secret\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:08:04', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc19d453744.png\"}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":null,\"auth_key\":null}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":null,\"auth_key\":null}', 'sms_config', 'live', 1, NULL, '2023-08-12 07:01:48', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:33', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":0,\"merchant_key\":null,\"merchant_id\":null,\"merchant_website_link\":null}', '{\"gateway\":\"paytm\",\"mode\":\"test\",\"status\":0,\"merchant_key\":null,\"merchant_id\":null,\"merchant_website_link\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:08:21', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc19e5542b7.png\"}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:07', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"test\",\"status\":0,\"profile_id\":null,\"server_key\":null,\"base_url\":null}', '{\"gateway\":\"paytabs\",\"mode\":\"test\",\"status\":0,\"profile_id\":null,\"server_key\":null,\"base_url\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:08:41', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc19f90bf16.png\"}'),
('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469', 'bkash', '{\"gateway\":\"bkash\",\"mode\":\"test\",\"status\":0,\"app_key\":null,\"app_secret\":null,\"username\":null,\"password\":null}', '{\"gateway\":\"bkash\",\"mode\":\"test\",\"status\":0,\"app_key\":null,\"app_secret\":null,\"username\":null,\"password\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:08:55', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc1a06f2df1.png\"}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:24', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:42:38', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:40', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:16:17', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:37:43', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:09', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:13', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:38', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"test\",\"status\":0,\"api_key\":null,\"published_key\":null}', '{\"gateway\":\"stripe\",\"mode\":\"test\",\"status\":0,\"api_key\":null,\"published_key\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:09:18', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc1a1ebd052.png\"}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:19:28', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:34', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('ad5af1c1-d6a2-11ed-962c-0c7a158e4469', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"test\",\"status\":0,\"api_key\":null,\"api_secret\":null}', '{\"gateway\":\"razor_pay\",\"mode\":\"test\",\"status\":0,\"api_key\":null,\"api_secret\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:09:33', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc1a2d3b25a.png\"}'),
('ad5b02a0-d6a2-11ed-962c-0c7a158e4469', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"test\",\"status\":0,\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', '{\"gateway\":\"senang_pay\",\"mode\":\"test\",\"status\":0,\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:09:51', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc1a3fef9ea.png\"}'),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b8992bd4-d6a0-11ed-962c-0c7a158e4469', 'paymob_accept', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":0,\"callback_url\":null,\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":0,\"callback_url\":null,\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', 'payment_config', 'live', 0, NULL, '2023-09-08 18:10:19', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc1a5bb7958.png\"}'),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:49:15', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"test\",\"status\":0,\"secret_key\":null,\"public_key\":null,\"hash\":null}', '{\"gateway\":\"flutterwave\",\"mode\":\"test\",\"status\":0,\"secret_key\":null,\"public_key\":null,\"hash\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:10:44', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc1a74e1c4a.png\"}'),
('d822f1a5-c864-11ed-ac7a-0c7a158e4469', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"test\",\"status\":0,\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', '{\"gateway\":\"paystack\",\"mode\":\"test\",\"status\":0,\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:11:02', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc1a8629213.png\"}'),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:46', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:26', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('ea346efe-cdda-11ed-affe-0c7a158e4469', 'ssl_commerz', '{\"gateway\":\"ssl_commerz\",\"mode\":\"test\",\"status\":0,\"store_id\":null,\"store_password\":null}', '{\"gateway\":\"ssl_commerz\",\"mode\":\"test\",\"status\":0,\"store_id\":null,\"store_password\":null}', 'payment_config', 'test', 0, NULL, '2023-09-08 18:11:22', '{\"gateway_title\":null,\"gateway_image\":\"2023-09-09-64fc1a9a82fad.png\"}'),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE IF NOT EXISTS `add_ons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `stock_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unlimited',
  `addon_stock` int(11) NOT NULL DEFAULT '0',
  `sell_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_ons`
--

REPLACE INTO `add_ons` (`id`, `name`, `price`, `created_at`, `updated_at`, `restaurant_id`, `status`, `stock_type`, `addon_stock`, `sell_count`) VALUES
(1, 'Agua', '10.00', '2023-09-08 16:47:03', '2023-09-08 16:47:03', 1, 1, 'unlimited', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_features`
--

CREATE TABLE IF NOT EXISTS `admin_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_features`
--

REPLACE INTO `admin_features` (`id`, `title`, `sub_title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Suporte 24h', NULL, 'Serviço de suporte ao cliente 24/7 para apoiá-lo.', '2023-09-08-64fc024bc54d2.png', 1, '2023-09-08 15:29:24', '2023-09-08 16:27:39'),
(2, 'Pagamento fácil', NULL, 'Sistema de pagamento inteligente e fácil para manter seus negócios.', '2023-09-08-64fc02451b503.png', 1, '2023-09-08 15:41:25', '2023-09-08 16:27:33'),
(3, 'Entrega rápida', NULL, 'Sistema de entrega mais rápido para alcançar seu cliente.', '2023-09-08-64fc023ed0117.png', 1, '2023-09-08 15:42:02', '2023-09-08 16:27:26'),
(4, 'Preço razoável', NULL, 'Comece seu negócio com custo barato em seu orçamento', '2023-09-08-64fc02384e21a.png', 1, '2023-09-08 15:42:46', '2023-09-08 16:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

REPLACE INTO `admin_roles` (`id`, `name`, `modules`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_special_criterias`
--

CREATE TABLE IF NOT EXISTS `admin_special_criterias` (
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_testimonials`
--

CREATE TABLE IF NOT EXISTS `admin_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `reviewer_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_testimonials`
--

REPLACE INTO `admin_testimonials` (`id`, `name`, `designation`, `review`, `reviewer_image`, `company_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jhon Doe', 'President of Sales', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!', '2023-09-08-64fc02123f537.png', NULL, 1, '2023-09-08 16:20:42', '2023-09-08 16:26:42');
-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE IF NOT EXISTS `admin_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `total_commission_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `digital_received` decimal(24,2) NOT NULL DEFAULT '0.00',
  `manual_received` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE IF NOT EXISTS `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE IF NOT EXISTS `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

REPLACE INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'cash_on_delivery', '{\"status\":\"1\"}', '2021-05-11 03:56:38', '2021-09-09 22:27:34'),
(2, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '2021-05-11 03:57:02', '2021-09-09 22:28:18'),
(4, 'mail_config', '{\"status\":0,\"name\":\"\",\"host\":\"\",\"driver\":\"\",\"port\":\"\",\"username\":\"\",\"email_id\":\"\",\"encryption\":\"\",\"password\":\"\"}', NULL, '2023-09-06 23:04:39'),
(5, 'fcm_project_id', NULL, NULL, NULL),
(6, 'push_notification_key', NULL, NULL, NULL),
(7, 'order_pending_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(8, 'order_confirmation_msg', '{\"status\":0,\"message\":null}', NULL, NULL),
(9, 'order_processing_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(10, 'out_for_delivery_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(11, 'order_delivered_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(12, 'delivery_boy_assign_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(13, 'delivery_boy_start_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(14, 'delivery_boy_delivered_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(15, 'terms_and_conditions', NULL, NULL, '2021-06-29 06:44:49'),
(16, 'business_name', 'admin', NULL, NULL),
(17, 'currency', 'BRL', NULL, NULL),
(18, 'logo', '2023-08-26-64e9ce4d87716.png', NULL, NULL),
(19, 'phone', '48998463846', NULL, NULL),
(20, 'email_address', 'admin@admin.com', NULL, NULL),
(21, 'address', 'Av. Paulista, Centro, São Paulo', NULL, NULL),
(22, 'footer_text', 'Todos os Direitos Reservados', NULL, NULL),
(23, 'customer_verification', NULL, NULL, NULL),
(24, 'map_api_key', '', NULL, NULL),
(25, 'privacy_policy', NULL, NULL, '2021-06-28 09:46:55'),
(26, 'about_us', NULL, NULL, '2021-06-29 06:43:25'),
(27, 'minimum_shipping_charge', '0', NULL, NULL),
(28, 'per_km_shipping_charge', '0', NULL, NULL),
(29, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":null,\"store_password\":null}', '2021-07-04 08:52:20', '2021-09-09 22:28:30'),
(30, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', '2021-07-04 08:53:04', '2021-09-09 22:28:25'),
(31, 'digital_payment', '{\"status\":\"1\"}', '2021-07-04 08:53:10', '2021-10-16 03:11:55'),
(32, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}', '2021-07-04 08:53:18', '2021-09-09 22:28:36'),
(33, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":null,\"merchantEmail\":null}', '2021-07-04 09:14:07', '2021-10-16 03:12:17'),
(34, 'senang_pay', '{\"status\":null,\"secret_key\":null,\"published_key\":null,\"merchant_id\":null}', '2021-07-04 09:14:13', '2021-09-09 22:28:04'),
(35, 'order_handover_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(36, 'order_cancled_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(37, 'timezone', 'America/Sao_Paulo', NULL, NULL),
(38, 'order_delivery_verification', '1', NULL, NULL),
(39, 'currency_symbol_position', 'left', NULL, NULL),
(40, 'schedule_order', '1', NULL, NULL),
(41, 'app_minimum_version', '0', NULL, NULL),
(42, 'tax', NULL, NULL, NULL),
(43, 'admin_commission', '0', NULL, NULL),
(44, 'country', 'BR', NULL, NULL),
(45, 'app_url', 'up_comming', NULL, NULL),
(46, 'default_location', '{\"lat\":\"0\",\"lng\":\"0\"}', NULL, NULL),
(47, 'twilio_sms', '{\"status\":\"0\",\"sid\":null,\"messaging_service_id\":null,\"token\":null,\"from\":null,\"otp_template\":\"Seu OTP é #OTP#.\"}', '2021-10-16 03:10:30', '2021-10-16 03:10:30'),
(48, 'nexmo_sms', '{\"status\":\"0\",\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":\"Seu OTP é #OTP#.\"}', '2021-10-16 03:10:22', '2021-10-16 03:10:22'),
(49, '2factor_sms', '{\"status\":\"0\",\"api_key\":\"Your otp is #OTP#.\"}', '2021-10-16 03:10:36', '2021-10-16 03:10:36'),
(50, 'msg91_sms', '{\"status\":\"0\",\"template_id\":null,\"authkey\":null}', '2021-10-16 03:09:59', '2021-10-16 03:09:59'),
(51, 'admin_order_notification', '1', NULL, NULL),
(52, 'free_delivery_over', NULL, NULL, NULL),
(53, 'maintenance_mode', '0', '2021-09-09 21:33:55', '2021-09-09 21:33:58'),
(54, 'app_minimum_version_android', NULL, NULL, NULL),
(55, 'app_minimum_version_ios', NULL, NULL, NULL),
(56, 'app_url_android', NULL, NULL, NULL),
(57, 'app_url_ios', NULL, NULL, NULL),
(58, 'dm_maximum_orders', '5', NULL, NULL),
(59, 'flutterwave', '{\"status\":\"1\",\"public_key\":null,\"secret_key\":null,\"hash\":null}', '2021-09-23 06:51:28', '2021-10-16 03:12:01'),
(60, 'order_confirmation_model', 'deliveryman', NULL, NULL),
(61, 'mercadopago', '{\"status\":null,\"public_key\":null,\"access_token\":null}', NULL, '2021-10-16 03:12:09'),
(62, 'popular_food', '1', NULL, NULL),
(63, 'popular_restaurant', '1', NULL, NULL),
(64, 'new_restaurant', '1', NULL, NULL),
(65, 'landing_page_text', '{\"header_title_1\":\"App Food\",\"header_title_2\":\"Por que ficar com fome quando você pode pedir no FastDelivery\",\"header_title_3\":\"Receba 10% de desconto em seu primeiro pedido\",\"about_title\":\"FastDelivery é o melhor serviço de entrega perto de você\",\"why_choose_us\":\"Porque escolher-nos?\",\"why_choose_us_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"testimonial_title\":\"Confiável pelo cliente e dono de restaurante\",\"footer_article\":\"Suspendisse ultrices at diam lectus nullam. Nisl, sagittis viverra enim erat tortor ultricies massa turpis. Arcu pulvinar.\"}', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(66, 'landing_page_links', '{\"app_url_android_status\":\"1\",\"app_url_android\":\"https:\\/\\/play.google.com\",\"app_url_ios_status\":\"1\",\"app_url_ios\":\"https:\\/\\/www.apple.com\\/app-store\",\"web_app_url_status\":\"1\",\"web_app_url\":\"https:\\/\\/seusite.com.br\\/\"}', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(67, 'speciality', '[{\"img\":\"clean_&_cheap_icon.png\",\"title\":\"Clean & Cheap Price\"},{\"img\":\"best_dishes_icon.png\",\"title\":\"Melhores pratos perto de você\"},{\"img\":\"virtual_restaurant_icon.png\",\"title\":\"Seu próprio restaurante virtual\"}]', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(68, 'testimonial', '[{\"img\":\"2021-10-28-617aa5a9e4b4a.png\",\"name\":\"Barry Allen\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A\\r\\n                    aliquam amet animi blanditiis consequatur debitis dicta\\r\\n                    distinctio, enim error eum iste libero modi nam natus\\r\\n                    perferendis possimus quasi sint sit tempora voluptatem. Est,\\r\\n                    exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9b13c57b.png\",\"name\":\"Sophia Martino\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9db9752d.png\",\"name\":\"Alan Turing\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"2021-10-28-617aa9faa8c78.png\",\"name\":\"Ann Marie\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"}]', '2021-10-31 15:21:57', '2021-10-31 15:21:57'),
(69, 'most_reviewed_foods', '1', NULL, NULL),
(70, 'paymob_accept', '{\"status\":\"0\",\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', NULL, '2021-11-12 21:02:39'),
(71, 'timeformat', '24', NULL, NULL),
(72, 'canceled_by_restaurant', '1', NULL, NULL),
(73, 'canceled_by_deliveryman', '0', NULL, NULL),
(74, 'show_dm_earning', NULL, NULL, NULL),
(75, 'toggle_veg_non_veg', '0', NULL, NULL),
(76, 'toggle_dm_registration', '1', NULL, NULL),
(77, 'toggle_restaurant_registration', '1', NULL, NULL),
(78, 'recaptcha', '{\"status\":\"0\",\"site_key\":null,\"secret_key\":null}', '2022-01-09 20:03:59', '2022-01-09 20:03:59'),
(79, 'language', '[\"pt-BR\"]', NULL, NULL),
(80, 'schedule_order_slot_duration', '0', NULL, NULL),
(81, 'digit_after_decimal_point', '2', NULL, NULL),
(82, 'icon', '2023-08-26-64e9cd6eeb087.png', NULL, NULL),
(83, 'delivery_charge_comission', '0', '2022-07-03 17:07:00', '2022-07-03 17:07:00'),
(84, 'dm_max_cash_in_hand', '10000', '2022-07-03 17:07:00', '2022-07-03 17:07:00'),
(85, 'theme', '1', '2022-07-03 17:37:00', '2022-07-03 17:37:00'),
(86, 'dm_tips_status', NULL, NULL, NULL),
(87, 'wallet_status', '0', NULL, NULL),
(88, 'loyalty_point_status', '0', NULL, NULL),
(89, 'ref_earning_status', '0', NULL, NULL),
(90, 'wallet_add_refund', '0', NULL, NULL),
(91, 'loyalty_point_exchange_rate', '0', NULL, NULL),
(92, 'ref_earning_exchange_rate', '0', NULL, NULL),
(93, 'loyalty_point_item_purchase_point', '0', NULL, NULL),
(94, 'loyalty_point_minimum_point', '0', NULL, NULL),
(95, 'order_refunded_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(96, 'fcm_credentials', '{\"apiKey\":\"\",\"authDomain\":\"\",\"projectId\":\"\",\"storageBucket\":\"\",\"messagingSenderId\":\"\",\"appId\":\"\",\"measurementId\":\"\"}', NULL, NULL),
(97, 'feature', '[]', NULL, NULL),
(98, 'tax_included', NULL, '2023-03-20 04:07:28', '2023-03-20 04:07:28'),
(99, 'site_direction', 'ltr', '2023-03-20 04:07:28', '2023-03-20 04:07:28'),
(100, 'system_language', '[{\"id\":1,\"direction\":\"ltr\",\"code\":\"pt-BR\",\"status\":1,\"default\":true}]', '2023-07-10 00:56:39', '2023-07-10 00:56:39'),
(101, 'take_away', '1', '2023-07-10 00:56:39', '2023-07-10 00:56:39'),
(102, 'repeat_order_option', '1', '2023-07-10 00:56:39', '2023-07-10 00:56:39'),
(103, 'home_delivery', '1', '2023-07-10 00:56:39', '2023-07-10 00:56:39'),
(104, 'refund_active_status', '1', '2023-07-10 00:56:58', '2023-07-10 00:56:58'),
(105, 'business_model', '{\"commission\":1,\"subscription\":0}', '2023-07-10 00:56:58', '2023-07-10 00:56:58'),
(106, 'cookies_text', 'Cookies', NULL, NULL),
(107, 'social_login', '[{\"login_medium\":\"google\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"0\"},{\"login_medium\":\"facebook\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"}]', '2023-09-06 23:04:50', '2023-09-06 23:04:50'),
(108, 'apple_login', '[{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\",\"status\":\"\"}]', '2023-09-06 23:04:50', '2023-09-06 23:04:50'),
(109, 'order_notification_type', 'manual', NULL, NULL),
(110, 'additional_charge_status', NULL, NULL, NULL),
(111, 'additional_charge_name', 'Cobrança adicional', NULL, NULL),
(112, 'additional_charge', NULL, NULL, NULL),
(113, 'partial_payment_status', '1', NULL, NULL),
(114, 'partial_payment_method', 'both', NULL, NULL),
(115, 'dm_picture_upload_status', NULL, NULL, NULL),
(116, 'add_fund_status', '0', NULL, NULL),
(117, 'landing_page', '1', '2023-09-08 15:23:08', '2023-09-08 15:23:08'),
(118, 'backgroundChange', '{\"primary_1_hex\":\"#3aa843\",\"primary_1_rgb\":\"58, 168, 67\",\"primary_2_hex\":\"#333e4f\",\"primary_2_rgb\":\"51, 62, 79\"}', NULL, NULL),
(119, 'check_subscription_validity_on', '2023-09-08', '2023-09-08 16:46:14', '2023-09-08 16:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_restaurant`
--

CREATE TABLE IF NOT EXISTS `campaign_restaurant` (
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `campaign_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `add_on_ids` text COLLATE utf8mb4_unicode_ci,
  `add_on_qtys` text COLLATE utf8mb4_unicode_ci,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(24,3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variation_options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_backs`
--

CREATE TABLE IF NOT EXISTS `cash_backs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '["all"]',
  `cashback_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `same_user_limit` int(11) NOT NULL DEFAULT '1',
  `total_used` int(11) NOT NULL DEFAULT '0',
  `cashback_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `min_purchase` double(23,3) NOT NULL DEFAULT '0.000',
  `max_discount` double(23,3) NOT NULL DEFAULT '0.000',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_back_histories`
--

CREATE TABLE IF NOT EXISTS `cash_back_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cash_back_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cashback_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calculated_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `cashback_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `min_purchase` double(23,3) NOT NULL DEFAULT '0.000',
  `max_discount` double(23,3) NOT NULL DEFAULT '0.000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `parent_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

REPLACE INTO `categories` (`id`, `name`, `image`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `priority`, `slug`) VALUES
(1, 'Categoria Padrão', '2023-09-08-64fc02a1514ff.png', 0, 0, 1, '2023-09-08 16:29:05', '2023-09-08 16:29:05', 0, 'cotegoria-demo'),
(2, 'Sub categoria Padrão', 'def.png', 1, 1, 1, '2023-09-08 16:29:46', '2023-09-08 16:29:46', 0, 'demo-sub-category');

-- --------------------------------------------------------

--
-- Table structure for table `characteristics`
--

CREATE TABLE IF NOT EXISTS `characteristics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `characteristic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `characteristic_restaurant`
--

CREATE TABLE IF NOT EXISTS `characteristic_restaurant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `characteristic_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE IF NOT EXISTS `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `feedback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `seen` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE IF NOT EXISTS `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sender_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_message_time` timestamp NULL DEFAULT NULL,
  `unread_message_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(24,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `coupon_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_uses` bigint(20) DEFAULT '0',
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'admin',
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '["all"]',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE IF NOT EXISTS `cuisines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisines`
--

REPLACE INTO `cuisines` (`id`, `name`, `image`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Italiana', '2023-09-08-64fc01e29d648.png', 1, 'italiana', '2023-09-08 16:25:54', '2023-09-08 16:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `cuisine_restaurant`
--

CREATE TABLE IF NOT EXISTS `cuisine_restaurant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `cuisine_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisine_restaurant`
--

REPLACE INTO `cuisine_restaurant` (`id`, `restaurant_id`, `cuisine_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

REPLACE INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(18, 'Real Brasileiro', 'BRL', 'R$', '1.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE IF NOT EXISTS `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_settings`
--

CREATE TABLE IF NOT EXISTS `data_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_settings`
--

REPLACE INTO `data_settings` (`id`, `key`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'admin_login_url', 'admin', 'login_admin', '2023-06-20 16:55:51', '2023-06-20 16:55:51'),
(2, 'admin_employee_login_url', 'admin-empregado', 'login_admin_employee', '2023-06-20 16:55:51', '2023-06-20 16:55:51'),
(3, 'restaurant_login_url', 'restaurante', 'login_restaurant', '2023-06-20 16:55:51', '2023-06-20 16:55:51'),
(4, 'restaurant_employee_login_url', 'empregado', 'login_restaurant_employee', '2023-06-20 16:55:51', '2023-06-20 16:55:51'),
(5, 'header_title', 'Por que ficar com fome!', 'admin_landing_page', '2023-06-20 17:59:39', '2023-06-20 17:59:39'),
(6, 'header_sub_title', 'Quando você pode fazer o pedido, sempre...', 'admin_landing_page', '2023-06-20 17:59:39', '2023-06-20 17:59:39'),
(7, 'header_tag_line', 'Comece seu negócio ou faça o download do aplicativo', 'admin_landing_page', '2023-06-20 17:59:39', '2023-06-20 17:59:39'),
(8, 'header_app_button_name', 'Peça agora', 'admin_landing_page', '2023-06-20 17:59:39', '2023-06-20 17:59:39'),
(9, 'header_app_button_status', '1', 'admin_landing_page', '2023-06-20 17:59:39', '2023-06-20 17:59:39'),
(10, 'header_button_content', 'https://seusite.com.br/', 'admin_landing_page', '2023-06-20 17:59:39', '2023-06-20 17:59:39'),
(11, 'header_image_content', '{\"header_content_image\":null,\"header_bg_image\":null}', 'admin_landing_page', '2023-06-20 18:01:47', '2023-09-08 15:31:26'),
(12, 'header_floating_content', '{\"header_floating_total_order\":\"5000\",\"header_floating_total_user\":\"999\",\"header_floating_total_reviews\":\"2330\"}', 'admin_landing_page', '2023-06-20 18:04:04', '2023-06-20 18:04:04'),
(13, 'about_us_image_content', '2023-09-08-64fbf699ca3ba.png', 'admin_landing_page', '2023-06-20 18:10:05', '2023-09-08 15:37:45'),
(14, 'about_us_title', 'FastDelivery', 'admin_landing_page', '2023-06-20 18:10:05', '2023-06-20 18:10:05'),
(15, 'about_us_sub_title', 'é o melhor serviço de entrega perto de você', 'admin_landing_page', '2023-06-20 18:10:05', '2023-06-20 18:10:05'),
(16, 'about_us_text', 'Tornamos a entrega de alimentos mais interessante.\r\nEncontre as melhores ofertas dos restaurantes perto de você.\r\nPratos saborosos e saudáveis.Traga um restaurante para sua casa.', 'admin_landing_page', '2023-06-20 18:10:06', '2023-06-20 18:12:42'),
(17, 'about_us_app_button_name', 'Baixe Agora', 'admin_landing_page', '2023-06-20 18:10:06', '2023-06-20 18:10:06'),
(18, 'about_us_app_button_status', '1', 'admin_landing_page', '2023-06-20 18:10:06', '2023-06-20 18:10:06'),
(19, 'about_us_button_content', 'https://play.google.com/store/', 'admin_landing_page', '2023-06-20 18:10:06', '2023-06-20 18:10:06'),
(20, 'feature_title', 'Recursos impressionantes', 'admin_landing_page', '2023-06-20 18:13:41', '2023-06-20 18:13:41'),
(21, 'feature_sub_title', 'Recursos notáveis que você pode contar!', 'admin_landing_page', '2023-06-20 18:13:41', '2023-06-20 18:13:41'),
(22, 'services_title', 'Nossa plataforma', 'admin_landing_page', '2023-06-20 18:29:43', '2023-06-20 18:29:43'),
(23, 'services_sub_title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'admin_landing_page', '2023-06-20 18:29:43', '2023-06-20 18:44:11'),
(24, 'services_order_title_1', 'Encomende sua comida', 'admin_landing_page', '2023-06-20 18:45:36', '2023-06-20 18:45:36'),
(25, 'services_order_title_2', 'Use o aplicativo FastDelivery', 'admin_landing_page', '2023-06-20 18:45:36', '2023-06-20 18:45:36'),
(26, 'services_order_description_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex odio,  turpis accumsan congue. Quisque blandit dui P', 'admin_landing_page', '2023-06-20 18:45:36', '2023-06-20 18:45:36'),
(27, 'services_order_description_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex odio,  turpis accumsan congue. Quisque blandit dui P', 'admin_landing_page', '2023-06-20 18:45:36', '2023-06-20 18:45:36'),
(28, 'services_order_button_name', 'Baixe Agora', 'admin_landing_page', '2023-06-20 18:45:36', '2023-06-20 18:45:36'),
(29, 'services_order_button_status', '1', 'admin_landing_page', '2023-06-20 18:45:36', '2023-06-20 18:45:36'),
(30, 'services_order_button_link', 'https://play.google.com/store/', 'admin_landing_page', '2023-06-20 18:45:36', '2023-06-20 18:45:36'),
(31, 'services_manage_restaurant_title_1', 'Gerencie seu pedido', 'admin_landing_page', '2023-06-20 18:47:13', '2023-06-20 18:47:13'),
(32, 'services_manage_restaurant_title_2', 'Gerencie sua carteira', 'admin_landing_page', '2023-06-20 18:47:13', '2023-06-20 18:47:13'),
(33, 'services_manage_restaurant_description_1', 'Gerenciar o pedido do cliente com muita facilidade usando o painel de restaurantes e aplicativo de restaurante', 'admin_landing_page', '2023-06-20 18:47:13', '2023-06-20 18:47:13'),
(34, 'services_manage_restaurant_description_2', 'Gerencie a carteira de restaurantes e monitore os ganhos e transações de restaurantes.', 'admin_landing_page', '2023-06-20 18:47:13', '2023-06-20 18:47:13'),
(35, 'services_manage_restaurant_button_name', 'Baixe Agora', 'admin_landing_page', '2023-06-20 18:47:13', '2023-06-20 18:47:13'),
(36, 'services_manage_restaurant_button_status', '1', 'admin_landing_page', '2023-06-20 18:47:13', '2023-06-20 18:47:13'),
(37, 'services_manage_restaurant_button_link', 'https://play.google.com/', 'admin_landing_page', '2023-06-20 18:47:13', '2023-06-20 18:47:13'),
(38, 'services_manage_delivery_title_1', 'Entregue sua comida', 'admin_landing_page', '2023-06-20 18:47:57', '2023-06-20 18:47:57'),
(39, 'services_manage_delivery_title_2', 'Ganhe por entrega', 'admin_landing_page', '2023-06-20 18:47:57', '2023-06-20 18:47:57'),
(40, 'services_manage_delivery_description_1', 'Download do aplicativo de entrega da Play Store & App Store e registre -se como entregador para fornecer alimentos em toda a área.', 'admin_landing_page', '2023-06-20 18:47:57', '2023-06-20 18:47:57'),
(41, 'services_manage_delivery_description_2', 'Torne -se um entregador e ganha com cada entrega de alimentos', 'admin_landing_page', '2023-06-20 18:47:57', '2023-06-20 18:47:57'),
(42, 'services_manage_delivery_button_name', 'Baixe Agora', 'admin_landing_page', '2023-06-20 18:47:57', '2023-06-20 18:47:57'),
(43, 'services_manage_delivery_button_status', '1', 'admin_landing_page', '2023-06-20 18:47:57', '2023-06-20 18:47:57'),
(44, 'services_manage_delivery_button_link', 'https://play.google.com/', 'admin_landing_page', '2023-06-20 18:47:57', '2023-06-20 18:47:57'),
(45, 'earn_money_title', 'Porque escolher a gente?', 'admin_landing_page', '2023-06-20 18:48:17', '2023-06-20 18:48:17'),
(46, 'earn_money_sub_title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'admin_landing_page', '2023-06-20 18:48:17', '2023-06-20 18:48:17'),
(47, 'earn_money_reg_title', 'Ganhe dinheiro com FastDelivery', 'admin_landing_page', '2023-06-20 18:51:41', '2023-06-20 18:51:41'),
(48, 'earn_money_restaurant_req_button_name', 'Seja um vendedor', 'admin_landing_page', '2023-06-20 18:51:41', '2023-06-20 18:51:41'),
(49, 'earn_money_restaurant_req_button_status', '1', 'admin_landing_page', '2023-06-20 18:51:41', '2023-06-20 18:51:41'),
(50, 'earn_money_restaurant_req_button_link', 'https://play.google.com/', 'admin_landing_page', '2023-06-20 18:51:41', '2023-06-20 18:51:41'),
(51, 'earn_money_delivety_man_req_button_name', 'Seja entregador', 'admin_landing_page', '2023-06-20 18:51:41', '2023-06-20 18:51:41'),
(52, 'earn_money_delivery_man_req_button_status', '1', 'admin_landing_page', '2023-06-20 18:51:41', '2023-06-20 18:51:41'),
(53, 'earn_money_delivery_man_req_button_link', 'https://play.google.com/', 'admin_landing_page', '2023-06-20 18:51:41', '2023-06-20 18:51:41'),
(54, 'earn_money_reg_image', '2023-09-08-64fbfbce08c86.png', 'admin_landing_page', '2023-06-20 18:51:41', '2023-09-08 15:59:58'),
(55, 'why_choose_us_title', 'Porque escolher a gente?', 'admin_landing_page', '2023-06-20 18:51:57', '2023-06-20 18:51:57'),
(56, 'why_choose_us_sub_title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'admin_landing_page', '2023-06-20 18:51:57', '2023-06-20 18:51:57'),
(57, 'why_choose_us_title_1', 'Encontre sua refeição diária', 'admin_landing_page', '2023-06-20 18:53:32', '2023-06-20 18:53:32'),
(58, 'why_choose_us_image_1', '2023-09-08-64fbfcbb1ded2.png', 'admin_landing_page', '2023-06-20 18:53:32', '2023-09-08 16:03:55'),
(59, 'why_choose_us_title_2', 'Sistema de pedidos tipo Ifood', 'admin_landing_page', '2023-06-20 18:53:46', '2023-06-20 18:53:46'),
(60, 'why_choose_us_image_2', '2023-09-08-64fbfcc98c136.png', 'admin_landing_page', '2023-06-20 18:53:46', '2023-09-08 16:04:09'),
(61, 'why_choose_us_title_3', 'Serviço de entrega de comida mais rápido', 'admin_landing_page', '2023-06-20 18:54:02', '2023-06-20 18:54:02'),
(62, 'why_choose_us_image_3', '2023-09-08-64fbfcd9f04cd.png', 'admin_landing_page', '2023-06-20 18:54:02', '2023-09-08 16:04:25'),
(63, 'why_choose_us_title_4', 'Rastreie seu pedido de comida', 'admin_landing_page', '2023-06-20 18:54:19', '2023-06-20 18:54:19'),
(64, 'why_choose_us_image_4', '2023-09-08-64fbfde2928e5.png', 'admin_landing_page', '2023-06-20 18:54:19', '2023-09-08 16:08:50'),
(65, 'testimonial_title', 'Satisfazemos alguns proprietários de Restaurantes e clientes', 'admin_landing_page', '2023-06-21 09:24:53', '2023-06-21 09:24:53'),
(66, 'news_letter_title', 'Inscreva-se no nosso boletim', 'admin_landing_page', '2023-06-21 09:25:14', '2023-06-21 09:25:14'),
(67, 'news_letter_sub_title', 'Receba as últimas notícias, atualizações e muitas outras notícias toda semana', 'admin_landing_page', '2023-06-21 09:25:14', '2023-06-21 09:25:14'),
(68, 'footer_data', 'O FastDelivery é um pacote completo!É hora de capacitar seu negócio de alimentos on -line com recursos poderosos!', 'admin_landing_page', '2023-06-21 09:26:16', '2023-06-21 09:26:16'),
(69, 'react_header_title', 'FastDelivery', 'react_landing_page', '2023-06-21 09:41:59', '2023-06-21 09:41:59'),
(70, 'react_header_sub_title', 'Encontre restaurantes perto de você', 'react_landing_page', '2023-06-21 09:41:59', '2023-06-21 09:41:59'),
(71, 'react_header_image', '2023-09-08-64fbe604ddb25.png', 'react_landing_page', '2023-06-21 09:41:59', '2023-09-08 14:27:00'),
(72, 'react_restaurant_section_title', 'Abra seu próprio restaurante', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(73, 'react_restaurant_section_sub_title', 'Registre -se como vendedor e loja aberta para iniciar seu negócio', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(74, 'react_restaurant_section_button_name', 'Registro', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(75, 'react_restaurant_section_button_status', '1', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(76, 'react_restaurant_section_image', '2023-09-08-64fbe7647ba5b.png', 'react_landing_page', '2023-06-21 09:48:57', '2023-09-08 14:32:52'),
(77, 'react_restaurant_section_link_data', 'https://seusite.com.br/restaurant/apply', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(78, 'react_delivery_section_title', 'Torne -se um entregador', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(79, 'react_delivery_section_sub_title', 'Registre -se como entrega e ganhe dinheiro', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(80, 'react_delivery_section_button_name', 'Registro', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(81, 'react_delivery_section_button_status', '1', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(82, 'react_delivery_section_image', '2023-09-08-64fbe76489736.png', 'react_landing_page', '2023-06-21 09:48:57', '2023-09-08 14:32:52'),
(83, 'react_delivery_section_link_data', 'https://seusite.com.br/deliveryman/apply', 'react_landing_page', '2023-06-21 09:48:57', '2023-06-21 09:48:57'),
(84, 'react_download_apps_banner_image', '2023-09-08-64fbecbd82cdc.png', 'react_landing_page', '2023-06-21 09:50:18', '2023-09-08 14:55:41'),
(85, 'react_download_apps_title', 'Baixe o aplicativo para aproveitar mais!', 'react_landing_page', '2023-06-21 09:52:39', '2023-06-21 09:52:39'),
(86, 'react_download_apps_sub_title', 'Todos os melhores restaurantes estão a um clique de distância', 'react_landing_page', '2023-06-21 09:52:39', '2023-06-21 09:52:39'),
(87, 'react_download_apps_tag', 'Faça o download do nosso aplicativo da Google Play Store e App Store.', 'react_landing_page', '2023-06-21 09:52:39', '2023-06-21 09:52:39'),
(88, 'react_download_apps_button_name', 'https://play.google.com/', 'react_landing_page', '2023-06-21 09:52:39', '2023-06-21 09:52:39'),
(89, 'react_download_apps_button_status', '1', 'react_landing_page', '2023-06-21 09:52:39', '2023-06-21 09:52:39'),
(90, 'react_download_apps_image', '2023-09-08-64fbe8bfa9da1.png', 'react_landing_page', '2023-06-21 09:52:39', '2023-09-08 14:38:39'),
(91, 'react_download_apps_link_data', '{\"react_download_apps_link_status\":\"1\",\"react_download_apps_link\":\"https:\\/\\/www.apple.com\\/app-store\\/\"}', 'react_landing_page', '2023-06-21 09:52:39', '2023-06-21 09:52:39'),
(92, 'news_letter_title', 'Vamos conectar -se!', 'react_landing_page', '2023-06-21 09:53:57', '2023-06-21 09:53:57'),
(93, 'news_letter_sub_title', 'Fique atualizado com restaurantes ao seu redor.Inscreva -se com email.', 'react_landing_page', '2023-06-21 09:53:57', '2023-06-21 09:53:57'),
(94, 'footer_data', 'é o melhor serviço de entrega perto de você', 'react_landing_page', '2023-06-21 09:55:11', '2023-06-21 09:55:11'),
(95, 'promotional_banner_image', '2023-09-08-64fc0ca9e4310.png', 'promotional_banner', '2023-09-08 17:11:53', '2023-09-08 17:11:53'),
(96, 'promotional_banner_title', 'Banner de demonstração', 'promotional_banner', '2023-09-08 17:11:53', '2023-09-08 17:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE IF NOT EXISTS `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_wallets`
--

CREATE TABLE IF NOT EXISTS `delivery_man_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `collected_cash` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` decimal(24,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE IF NOT EXISTS `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `earning` tinyint(1) NOT NULL DEFAULT '1',
  `current_orders` int(11) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'zone_wise',
  `restaurant_id` bigint(20) DEFAULT NULL,
  `application_status` enum('approved','denied','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `assigned_order_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `additional_data` text COLLATE utf8mb4_unicode_ci,
  `additional_documents` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disbursements`
--

CREATE TABLE IF NOT EXISTS `disbursements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `total_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disbursement_details`
--

CREATE TABLE IF NOT EXISTS `disbursement_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disbursement_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `disbursement_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `payment_method` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disbursement_withdrawal_methods`
--

CREATE TABLE IF NOT EXISTS `disbursement_withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE IF NOT EXISTS `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `min_purchase` decimal(24,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE IF NOT EXISTS `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `background_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `refund` tinyint(1) NOT NULL DEFAULT '0',
  `cancelation` tinyint(1) NOT NULL DEFAULT '0',
  `contact` tinyint(1) NOT NULL DEFAULT '0',
  `facebook` tinyint(1) NOT NULL DEFAULT '0',
  `instagram` tinyint(1) NOT NULL DEFAULT '0',
  `twitter` tinyint(1) NOT NULL DEFAULT '0',
  `linkedin` tinyint(1) NOT NULL DEFAULT '0',
  `pinterest` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body_2` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

REPLACE INTO `email_templates` (`id`, `title`, `body`, `background_image`, `image`, `logo`, `icon`, `button_name`, `button_url`, `footer_text`, `copyright_text`, `type`, `email_type`, `email_template`, `privacy`, `refund`, `cancelation`, `contact`, `facebook`, `instagram`, `twitter`, `linkedin`, `pinterest`, `status`, `created_at`, `updated_at`, `body_2`) VALUES
(1, 'Alterar a solicitação de senha', '<p>O usuário a seguir esqueceu sua senha & amp;Solicitado para alterar/redefinir sua senha.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nome de usuário: {userName}</strong></p>', NULL, NULL, NULL, '2023-06-21-64928742ceb74.png', '', '', 'Rodapé texto, entre em contato conosco para qualquer dúvida; Estamos sempre felizes em ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'admin', 'forget_password', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-20 18:19:43', '2023-06-21 00:14:42', NULL),
(2, 'Novo pedido de registro de restaurante', '<p>Encontre abaixo os detalhes do novo registro de restaurante:</p>\r\n\r\n<p><strong>Nome do restaurante: </strong>{restaurantName}</p>\r\n\r\n<p>Para revisar o restaurante do respectivo módulo, vá para:&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ou você pode revisar diretamente o restaurante aqui &rarr;</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-21-649287b247980.png', '2023-06-21-649287b247c83.png', NULL, 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre felizes em ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'admin', 'restaurant_registration', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-20 18:26:41', '2023-06-21 00:16:34', NULL),
(3, 'Novo Pedido de Registro de Entregadores', '<p>Encontre abaixo os detalhes do novo registro do entregador:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nome do entregador: </strong>{deliveryManName}</p>\r\n\r\n<p>Para revisar o restaurante do respectivo módulo, vá para:&nbsp;</p>\r\n\r\n<p><strong>Gerenciamento de entregador&rarr;Novo entregador</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ou você pode revisar diretamente o restaurante aqui &rarr;</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-21-649287e9b49f8.png', '2023-06-21-649287e9b4d4a.png', NULL, 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre felizes em ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'admin', 'dm_registration', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-20 18:35:57', '2023-06-21 00:18:47', NULL),
(4, 'Nova solicitação de retirada', '<p>Encontre abaixo os detalhes da nova solicitação de retirada:</p>\r\n\r\n<p><br />\r\n<strong>Nome do restaurante: </strong>{restaurantName}</p>\r\n\r\n<p>Para revisar o pedido de reembolso, vá para:&nbsp;<br />\r\nTransações &amp; Relatórios&rarr;Retirar solicitações</p>\r\n\r\n<p>Ou você pode revisar diretamente o restaurante aqui &rarr;</p>', NULL, NULL, NULL, '2023-06-21-6492898f6f2aa.png', 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre felizes em ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'admin', 'withdraw_request', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:24:31', '2023-06-21 00:24:31', NULL),
(5, '“COMPRE UM GANHE UM” Pedido de ingresso na campanha', '<p>Encontre abaixo os detalhes da nova solicitação de ingresso da campanha:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nome do restaurante: </strong>{restaurantName}</p>\r\n\r\n<p>Para revisar o pedido de reembolso, vá para:&nbsp;</p>\r\n\r\n<p><strong>Campanhas&rarr;Campanhas básicas&rarr;Compre um ganhe um</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ou você pode revisar diretamente o restaurante aqui &rarr;</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-21-64928a71d990e.png', '2023-06-21-64928a71d9bca.png', NULL, 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'admin', 'campaign_request', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:28:17', '2023-06-21 00:28:17', NULL),
(6, 'Você tem um pedido de reembolso.', '<p>Encontre abaixo os detalhes da nova solicitação de reembolso:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>nome do cliente: </strong>{userName}</p>\r\n\r\n<p><strong>ID do pedido: </strong>{orderId}</p>\r\n\r\n<p>Revise o restaurante aqui &rarr;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '2023-06-21-64928b0c3415a.png', NULL, 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'admin', 'refund_request', '2', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:30:52', '2023-06-21 00:30:52', NULL),
(7, 'Seu registro foi submetido ao sucesso', '<p>Querido(a) {userName},</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Recebemos sua solicitação de registro de restaurante.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Em breve, você saberá se o registro do seu restaurante foi aceito ou recusado pelo administrador.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fique atento!</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-64928c23e1ee1.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'restaurant', 'registration', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:35:31', '2023-06-21 00:36:15', NULL),
(8, 'Parabéns!Seu registro está aprovando', '<p>Querido(a) {userName},</p>\r\n\r\n<p>Seu registro é aprovado pelo administrador.&nbsp;</p>\r\n\r\n<p><strong>Primeira</strong>, .&nbsp;</pvocê precisa fazer login no painel do seu restaurante>\r\n\r\n<p><strong>Depois disso,</strong> Por favor, configure seu restaurante e comece a vender!&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Clique aqui</strong><strong> &rarr; </strong><a href=\"https://seusite.com.br/restaurant-panel/business-settings/restaurant-setup\">https://seusite.com.br/restaurant-panel/business-settings/restaurant-setup</a></p>', NULL, NULL, NULL, '2023-06-21-64928ccce5098.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'restaurant', 'approve', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:38:20', '2023-06-21 00:38:20', NULL),
(9, 'Seu registro foi rejeitado', '<p>Querido(a) {userName} ,&nbsp;</p>\r\n\r\n<p>Lamentamos anunciar que o seu registro de restaurante foi rejeitado pelo administrador.&nbsp;</p>\r\n\r\n<p>Para saber mais, por favor contate-nos.&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-64928d568a579.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'restaurant', 'deny', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:40:38', '2023-06-21 00:40:38', NULL),
(10, 'Parabéns!Sua retirada é aprovada!', '<p>Querido(a) {userName},</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>O valor que você solicitou para retirar é aprovado pelo administrador e transferido para sua conta bancária.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-64928df27058a.png', 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'restaurant', 'withdraw_approve', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:43:14', '2023-06-21 00:43:14', NULL),
(11, 'Seu pedido de retirada foi rejeitado.', '<p>Querido(a) {userName} ,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>O valor que você pediu para retirar foi rejeitado pelo administrador.</p>\r\n\r\n<p>Razão: Saldo insuficiente.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-64928ead57d52.png', 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'restaurant', 'withdraw_deny', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:46:21', '2023-06-21 00:46:21', NULL),
(12, 'Sua solicitação foi concluída!', '<p>Querido(a) {userName} ,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nós recebemos sua solicitação de campanha.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Em breve, você saberá se sua solicitação é aprovada ou rejeitada pelo administrador.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fique atento!</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-21-64928f57d4793.png', '2023-06-21-64928f57d4a3e.png', NULL, 'Veja o status', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'restaurant', 'campaign_request', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:49:11', '2023-06-21 00:50:03', NULL),
(13, 'Parabéns!Sua solicitação foi aprovada!', '<p>Querido(a) {userName} ,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Seu pedido para participar &lsquo;&rsquo;COMPRE UM GANHE UM&rdquo; A campanha é aprovada pelo administrador.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-21-649290d86eb06.png', '2023-06-21-649290d86ede0.png', NULL, 'Visualizar status', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'restaurant', 'campaign_approve', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:55:36', '2023-06-21 00:55:36', NULL),
(14, 'Sua solicitação de participação na campanha foi rejeitada.', '<p>Querido(a) {userName},</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Seu pedido para ingressar no &ldquo;Compre um ganhe um&rdquo; A campanha foi rejeitada pelo administrador.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Motivo: alimentos irrelevantes.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-21-6492918e7d5f6.png', '2023-06-21-6492918e7da37.png', NULL, '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'restaurant', 'campaign_deny', '7', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 00:58:38', '2023-06-21 00:58:57', NULL),
(15, 'Seu registro está concluído!', '<p>Querido(a) {userName},</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nós recebemos sua solicitação de registro de entregador.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Logo você saberá se o seu registro do seu entregador é aceito ou recusado pelo administrador.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fique atento!</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-649292352bbb1.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'dm', 'registration', '5', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, '2023-06-21 01:01:25', '2023-06-21 01:01:25', NULL),
(16, 'Parabéns!Seu registro está aprovando', '<p>Querido(a) {deliveryManName} ,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Seu registro é aprovado pelo administrador.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Aqui está o que fazer a seguir:&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>Baixe o aplicativo entregador</li>\r\n	<li>Faça login com as credenciais abaixo.</li>\r\n</ol>\r\n\r\n<p><strong>Depois disso,</strong> Configure sua conta e inicie a entrega!&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Clique aqui</strong><strong> Para baixar o aplicativo&rarr; </strong><em>Baixe o link para o aplicativo FastDelivery Entregador</em></p>', NULL, NULL, NULL, '2023-06-21-649292f1aa096.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'dm', 'approve', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:04:33', '2023-06-21 01:04:47', NULL),
(17, 'Seu registro foi rejeitado', '<p>Querido(a) {deliveryManName},</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lamentamos anunciar que seu registro do seu entregador foi rejeitado pelo administrador.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Para saber mais, por favor contate-nos.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-649293646ff54.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'dm', 'deny', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:06:28', '2023-06-21 01:06:28', NULL),
(18, 'Sua conta está suspensa.', '<p>Querido(a) {deliveryManName},</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sua conta do entregador foi suspensa pelo administrador/restaurante.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Entre em contato com a pessoa relacionada para saber mais.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-21-649293fa34204.png', '2023-06-21-6492941da37bc.png', NULL, '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'dm', 'suspend', '7', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:08:58', '2023-06-21 01:09:33', NULL),
(19, 'Dinheiro coletado.', '<p>Querido(a) Usuário,</p>\r\n\r\n<p>{transactionId}</p>\r\n\r\n<p>O administrador coletou dinheiro de você.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-64929477319d2.png', 'Veja detalhes', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'dm', 'cash_collect', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:11:03', '2023-06-21 01:11:03', NULL),
(20, 'Redefina sua senha', '<p>Clique neste link para redefinir sua senha&nbsp;&rarr;</p>', NULL, NULL, NULL, '2023-06-21-649294c9ca03d.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'dm', 'forget_password', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:12:25', '2023-06-21 01:12:25', NULL),
(21, 'Seu registro foi bem sucedido!', '<p>Parabéns!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Você se registrou com sucesso.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-6492959c850ac.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'registration', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:15:56', '2023-06-21 01:15:56', NULL),
(22, 'Por favor, registre -se no OTP', '<p>MAIS UM PASSO:&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Copie o seguinte OTP &amp; Cole na sua página de inscrição para concluir seu registro.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-6492967f1bfac.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'registration_otp', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:19:43', '2023-06-21 01:19:43', NULL),
(23, 'Confirme seu login com OTP.', '<p>Copie o seguinte OTP &amp; Cole -o na sua página de login para confirmar sua conta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-64929700e4548.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'login_otp', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:21:13', '2023-06-21 01:21:52', NULL),
(24, 'Por favor, verifique sua entrega.', '<p>Dê o seguinte OTP ao seu entregador para garantir seu pedido.</p>', NULL, NULL, NULL, '2023-06-21-64929767a486d.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'order_verification', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:23:35', '2023-06-21 01:23:35', NULL),
(25, 'Seu pedido fio bem sucedido', '<p>Olá {userName},</p>\r\n\r\n<p>Seu pedido é bem -sucedido.Encontre sua fatura abaixo.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'new_order', '3', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:25:02', '2023-06-21 01:25:02', NULL),
(26, 'Pedido de reembolso', '<p>Olá {userName},</p>\r\n\r\n<p>Reembolsamos o valor solicitado.Encontre sua fatura de reembolso abaixo.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'refund_order', '9', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:26:53', '2023-06-21 01:27:32', NULL),
(27, 'Seu pedido de reembolso foi rejeitado.', '<p>Querido(a) {userName} ,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>O valor que você solicitou para um reembolso foi rejeitado pelo administrador.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Para saber mais, entre em contato conosco.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '2023-06-21-649298c0949c3.png', NULL, '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'refund_request_deny', '8', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:29:20', '2023-06-21 01:29:20', NULL),
(28, 'Redefina sua senha', '<p>Clique neste link para redefinir sua senha&nbsp;&rarr;</p>', NULL, NULL, NULL, '2023-06-21-64929958a6442.png', '', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'forget_password', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:31:52', '2023-06-21 01:31:52', NULL),
(29, 'Fundo adicionado à sua carteira.', '<p>Querido(a) {userName}</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>O administrador enviou fundos para sua carteira.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-21-649299ada7670.png', 'Solicitação de revisão', '', 'Entre em contato conosco para qualquer dúvida; Estamos sempre dispostos a ajudar.', '© 2024 LojaDev. Todos Direitos Reservados.', 'user', 'add_fund', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-21 01:33:17', '2023-06-21 01:33:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE IF NOT EXISTS `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_roles`
--

CREATE TABLE IF NOT EXISTS `employee_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'custom',
  `amount` decimal(23,3) NOT NULL DEFAULT '0.000',
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'admin',
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `add_ons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `available_time_starts` time DEFAULT NULL,
  `available_time_ends` time DEFAULT NULL,
  `veg` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_count` int(11) NOT NULL DEFAULT '0',
  `avg_rating` double(16,14) NOT NULL DEFAULT '0.00000000000000',
  `rating_count` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_cart_quantity` int(11) DEFAULT NULL,
  `is_halal` tinyint(1) NOT NULL DEFAULT '0',
  `item_stock` int(11) NOT NULL DEFAULT '0',
  `sell_count` int(11) NOT NULL DEFAULT '0',
  `stock_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unlimited'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

REPLACE INTO `food` (`id`, `name`, `description`, `image`, `category_id`, `category_ids`, `variations`, `add_ons`, `attributes`, `choice_options`, `price`, `tax`, `tax_type`, `discount`, `discount_type`, `available_time_starts`, `available_time_ends`, `veg`, `status`, `restaurant_id`, `created_at`, `updated_at`, `order_count`, `avg_rating`, `rating_count`, `rating`, `recommended`, `slug`, `maximum_cart_quantity`, `is_halal`, `item_stock`, `sell_count`, `stock_type`) VALUES
(1, 'Comida demo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!', '2023-09-08-64fc0b1842f31.png', 2, '[{\"id\":\"1\",\"position\":1},{\"id\":\"2\",\"position\":2}]', '[{\"name\":\"Vatiation-1\",\"type\":\"single\",\"min\":0,\"max\":0,\"required\":\"on\",\"values\":[{\"label\":\"Small\",\"optionPrice\":\"10\"},{\"label\":\"Large\",\"optionPrice\":\"20\"}]},{\"name\":\"Vatiation-2\",\"type\":\"multi\",\"min\":\"1\",\"max\":\"3\",\"required\":\"off\",\"values\":[{\"label\":\"Demo Option-1\",\"optionPrice\":\"2\"},{\"label\":\"Demo Option-2\",\"optionPrice\":\"3\"},{\"label\":\"Demo Option-3\",\"optionPrice\":\"2\"}]}]', '[\"1\"]', '[]', '[]', '100.00', '0.00', 'percent', '10.00', 'percent', '00:00:00', '23:59:00', 0, 1, 1, '2023-09-08 17:05:12', '2023-09-08 17:05:12', 0, 0.00000000000000, 0, NULL, 0, 'demo-food', 5, 0, 0, 0, 'unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `food_tag`
--

CREATE TABLE IF NOT EXISTS `food_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_tag`
--

REPLACE INTO `food_tag` (`id`, `food_id`, `tag_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE IF NOT EXISTS `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incentives`
--

CREATE TABLE IF NOT EXISTS `incentives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `earning` decimal(23,3) NOT NULL,
  `incentive` decimal(23,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incentive_logs`
--

CREATE TABLE IF NOT EXISTS `incentive_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `earning` decimal(23,3) NOT NULL DEFAULT '0.000',
  `incentive` decimal(23,3) NOT NULL DEFAULT '0.000',
  `date` date DEFAULT NULL,
  `today_earning` decimal(23,3) NOT NULL DEFAULT '0.000',
  `working_hours` decimal(23,3) NOT NULL DEFAULT '0.000',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_campaigns`
--

CREATE TABLE IF NOT EXISTS `item_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `add_ons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `discount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `veg` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_cart_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logable_id` bigint(20) UNSIGNED NOT NULL,
  `logable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `action_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before_state` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `after_state` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE IF NOT EXISTS `loyalty_point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_configs`
--

CREATE TABLE IF NOT EXISTS `mail_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_05_081114_create_admins_table', 1),
(5, '2021_05_05_102600_create_attributes_table', 1),
(6, '2021_05_05_102742_create_categories_table', 1),
(7, '2021_05_06_102004_create_vendors_table', 1),
(8, '2021_05_06_153204_create_restaurants_table', 1),
(9, '2021_05_08_113436_create_add_ons_table', 2),
(47, '2021_05_08_123446_create_food_table', 10),
(48, '2021_05_08_141209_create_currencies_table', 10),
(49, '2021_05_09_050232_create_orders_table', 10),
(50, '2021_05_09_051907_create_reviews_table', 10),
(51, '2021_05_09_054237_create_order_details_table', 10),
(52, '2021_05_10_105324_create_mail_configs_table', 10),
(53, '2021_05_10_152713_create_business_settings_table', 10),
(54, '2021_05_11_111722_create_banners_table', 11),
(55, '2021_05_11_134442_create_coupons_table', 11),
(56, '2021_05_12_053344_create_conversations_table', 11),
(57, '2021_05_12_055454_create_delivery_men_table', 12),
(58, '2021_05_12_060138_create_d_m_reviews_table', 12),
(59, '2021_05_12_060527_create_track_deliverymen_table', 12),
(60, '2021_05_12_061345_create_email_verifications_table', 12),
(61, '2021_05_12_061454_create_delivery_histories_table', 12),
(62, '2021_05_12_061718_create_wishlists_table', 12),
(63, '2021_05_12_061924_create_notifications_table', 12),
(64, '2021_05_12_062152_create_customer_addresses_table', 12),
(68, '2021_05_12_062412_create_order_delivery_histories_table', 13),
(69, '2021_05_19_115112_create_zones_table', 13),
(70, '2021_05_19_120612_create_restaurant_zone_table', 13),
(71, '2021_06_07_103835_add_column_to_vendor_table', 14),
(73, '2021_06_07_112335_add_column_to_vendors_table', 15),
(74, '2021_06_08_162354_add_column_to_restaurants_table', 16),
(77, '2021_06_09_115719_add_column_to_add_ons_table', 17),
(78, '2021_06_10_091547_add_column_to_coupons_table', 18),
(79, '2021_06_12_070530_rename_banners_table', 19),
(80, '2021_06_12_091154_add_column_on_campaigns_table', 20),
(87, '2021_06_12_091848_create_item_campaigns_table', 21),
(92, '2021_06_13_155531_create_campaign_restaurant_table', 22),
(93, '2021_06_14_090520_add_item_campaign_id_column_to_reviews_table', 23),
(94, '2021_06_14_091735_add_item_campaign_id_column_to_order_details_table', 24),
(95, '2021_06_14_120713_create_new_banners_table', 25),
(96, '2021_06_15_103656_add_zone_id_column_to_banners_table', 26),
(97, '2021_06_16_110322_create_discounts_table', 27),
(100, '2021_06_17_150243_create_withdraw_requests_table', 28),
(103, '2016_06_01_000001_create_oauth_auth_codes_table', 30),
(104, '2016_06_01_000002_create_oauth_access_tokens_table', 30),
(105, '2016_06_01_000003_create_oauth_refresh_tokens_table', 30),
(106, '2016_06_01_000004_create_oauth_clients_table', 30),
(107, '2016_06_01_000005_create_oauth_personal_access_clients_table', 30),
(108, '2021_06_21_051135_add_delivery_charge_to_orders_table', 31),
(110, '2021_06_23_080009_add_role_id_to_admins_table', 32),
(111, '2021_06_27_140224_add_interest_column_to_users_table', 33),
(113, '2021_06_27_142558_change_column_to_restaurants_table', 34),
(114, '2021_06_27_152139_add_restaurant_id_column_to_wishlists_table', 35),
(115, '2021_06_28_142443_add_restaurant_id_column_to_customer_addresses_table', 36),
(118, '2021_06_29_134119_add_schedule_column_to_orders_table', 37),
(122, '2021_06_30_084854_add_cm_firebase_token_column_to_users_table', 38),
(123, '2021_06_30_133932_add_code_column_to_coupons_table', 39),
(127, '2021_07_01_151103_change_column_food_id_from_admin_wallet_histories_table', 40),
(129, '2021_07_04_142159_add_callback_column_to_orders_table', 41),
(131, '2021_07_05_155506_add_cm_firebase_token_to_vendors_table', 42),
(133, '2021_07_05_162404_add_otp_to_orders_table', 43),
(134, '2021_07_13_133941_create_admin_roles_table', 44),
(135, '2021_07_14_074431_add_status_to_delivery_men_table', 45),
(136, '2021_07_14_104102_create_vendor_employees_table', 46),
(137, '2021_07_14_110011_create_employee_roles_table', 46),
(138, '2021_07_15_124141_add_cover_photo_to_restaurants_table', 47),
(143, '2021_06_17_145949_create_wallets_table', 48),
(144, '2021_06_19_052600_create_admin_wallets_table', 48),
(145, '2021_07_19_103748_create_delivery_man_wallets_table', 48),
(146, '2021_07_19_105442_create_account_transactions_table', 48),
(147, '2021_07_19_110152_create_order_transactions_table', 48),
(148, '2021_07_19_134356_add_column_to_notifications_table', 49),
(149, '2021_07_25_125316_add_available_to_delivery_men_table', 50),
(150, '2021_07_25_154722_add_columns_to_restaurants_table', 51),
(151, '2021_07_29_162336_add_schedule_order_column_to_restaurants_table', 52),
(152, '2021_07_31_140756_create_phone_verifications_table', 53),
(153, '2021_08_01_151717_add_column_to_order_transactions_table', 54),
(154, '2021_08_01_163520_add_column_to_admin_wallets_table', 54),
(155, '2021_08_02_141909_change_time_column_to_restaurants_table', 55),
(157, '2021_08_02_183356_add_tax_column_to_restaurants_table', 56),
(158, '2021_08_04_215618_add_zone_id_column_to_restaurants_table', 57),
(159, '2021_08_06_123001_add_address_column_to_orders_table', 58),
(160, '2021_08_06_123326_add_zone_wise_topic_column_to_zones_table', 58),
(161, '2021_08_08_112127_add_scheduled_column_on_orders_table', 59),
(162, '2021_08_08_203108_add_status_column_to_users_table', 60),
(163, '2021_08_11_193805_add_product_discount_ammount_column_to_orders_table', 61),
(165, '2021_08_12_112511_add_addons_column_to_order_details_table', 62),
(166, '2021_08_12_195346_add_zone_id_to_notifications_table', 63),
(167, '2021_08_14_110131_create_user_notifications_table', 64),
(168, '2021_08_14_175657_add_order_count_column_to_foods_table', 65),
(169, '2021_08_14_180044_add_order_count_column_to_users_table', 65),
(170, '2021_08_19_051055_add_earnign_column_to_deliverymen_table', 66),
(171, '2021_08_19_051721_add_original_delivery_charge_column_to_orders_table', 66),
(172, '2021_08_19_055839_create_provide_d_m_earnings_table', 67),
(173, '2021_08_19_112810_add_original_delivery_charge_column_to_order_transactions_table', 67),
(174, '2021_08_19_114851_add_columns_to_delivery_man_wallets_table', 67),
(175, '2021_08_21_162616_change_comission_column_to_restaurants_table', 68),
(176, '2021_06_17_054551_create_soft_credentials_table', 69),
(177, '2021_08_22_232507_add_failed_column_to_orders_table', 69),
(178, '2021_09_04_172723_add_column_reviews_section_to_restaurants_table', 69),
(179, '2021_09_11_164936_change_delivery_address_column_to_orders_table', 70),
(180, '2021_09_11_165426_change_address_column_to_customer_addresses_table', 70),
(181, '2021_09_23_120332_change_available_column_to_delivery_men_table', 71),
(182, '2021_10_03_214536_add_active_column_to_restaurants_table', 72),
(183, '2021_10_04_123739_add_priority_column_to_categories_table', 72),
(184, '2021_10_06_200730_add_restaurant_id_column_to_demiverymen_table', 72),
(185, '2021_10_07_223332_add_self_delivery_column_to_restaurants_table', 72),
(186, '2021_10_11_214123_change_add_ons_column_to_order_details_table', 72),
(187, '2021_10_11_215352_add_adjustment_column_to_orders_table', 72),
(188, '2021_10_24_184553_change_column_to_account_transactions_table', 73),
(189, '2021_10_24_185143_change_column_to_add_ons_table', 73),
(190, '2021_10_24_185525_change_column_to_admin_roles_table', 73),
(191, '2021_10_24_185831_change_column_to_admin_wallets_table', 73),
(192, '2021_10_24_190550_change_column_to_coupons_table', 73),
(193, '2021_10_24_190826_change_column_to_delivery_man_wallets_table', 73),
(194, '2021_10_24_191018_change_column_to_discounts_table', 73),
(195, '2021_10_24_191209_change_column_to_employee_roles_table', 73),
(196, '2021_10_24_191343_change_column_to_food_table', 73),
(197, '2021_10_24_191514_change_column_to_item_campaigns_table', 73),
(198, '2021_10_24_191626_change_column_to_orders_table', 73),
(199, '2021_10_24_191938_change_column_to_order_details_table', 73),
(200, '2021_10_24_192341_change_column_to_order_transactions_table', 73),
(201, '2021_10_24_192621_change_column_to_provide_d_m_earnings_table', 73),
(202, '2021_10_24_192820_change_column_type_to_restaurants_table', 73),
(203, '2021_10_24_192959_change_column_type_to_restaurant_wallets_table', 73),
(204, '2021_11_02_123115_add_delivery_time_column_to_restaurants_table', 74),
(205, '2021_11_02_170217_add_total_uses_column_to_coupons_table', 74),
(206, '2021_12_01_131746_add_status_column_to_reviews_table', 75),
(207, '2021_12_01_135115_add_status_column_to_d_m_reviews_table', 75),
(208, '2021_12_13_125126_rename_comlumn_set_menu_to_food_table', 75),
(209, '2021_12_13_132438_add_zone_id_column_to_admins_table', 75),
(210, '2021_12_18_174714_add_application_status_column_to_delivery_men_table', 75),
(211, '2021_12_20_185736_change_status_column_to_vendors_table', 75),
(212, '2021_12_22_114414_create_translations_table', 75),
(213, '2022_01_05_133920_add_sosial_data_column_to_users_table', 75),
(214, '2022_01_05_172441_add_veg_non_veg_column_to_restaurants_table', 75),
(215, '2022_01_20_151449_add_restaurant_id_column_on_employee_roles_table', 76),
(216, '2022_01_31_124517_add_veg_column_to_item_campaigns_table', 76),
(217, '2022_02_01_101248_change_coupon_code_column_length_to_coupons_table', 76),
(218, '2022_02_01_104336_change_column_length_to_notifications_table', 76),
(219, '2022_02_06_160701_change_column_length_to_item_campaigns_table', 76),
(220, '2022_02_06_161110_change_column_length_to_campaigns_table', 76),
(221, '2022_02_07_091359_add_zone_id_column_on_orders_table', 76),
(222, '2022_02_07_101547_change_name_column_to_categories_table', 76),
(223, '2022_02_07_152844_add_zone_id_column_to_order_transactions_table', 76),
(224, '2022_02_07_162330_add_zone_id_column_to_users_table', 76),
(225, '2022_02_07_173644_add_column_to_food_table', 76),
(226, '2022_02_07_181314_add_column_to_delivery_men_table', 76),
(227, '2022_02_07_183001_add_total_order_count_column_to_restaurants_table', 76),
(228, '2022_01_19_060356_create_restaurant_schedule_table', 77),
(229, '2022_03_31_103418_create_wallet_transactions_table', 78),
(230, '2022_03_31_103827_create_loyalty_point_transactions_table', 78),
(231, '2022_04_09_161150_add_wallet_point_columns_to_users_table', 78),
(232, '2022_04_12_121040_create_social_media_table', 78),
(233, '2022_04_17_140353_change_column_transaction_referance_to_orders_table', 78),
(234, '2022_04_10_030533_create_newsletters_table', 79),
(235, '2022_05_14_122133_add_dm_tips_column_to_orders_table', 80),
(236, '2022_05_14_122603_add_dm_tips_column_to_order_transactions_table', 80),
(237, '2022_05_14_131338_add_processing_time_column_to_orders_table', 80),
(238, '2022_05_17_153333_add_ref_code_to_users_table', 80),
(239, '2022_05_22_162129_add_new_columns_to_customer_addresses_table', 80),
(240, '2022_06_26_170341_add_delivery_fee_comission_to_ordertransactions', 80),
(241, '2022_06_29_112637_add_delivery_fee_column_to_zones_table', 80),
(242, '2022_06_29_125553_add_rename_delivery_charge_column_to_restaurants_table', 80),
(243, '2022_06_29_151416_create_time_logs_table', 80),
(244, '2022_07_31_103626_add_free_delivery_by_column_to_orders_table', 81),
(245, '2022_08_06_122044_create_user_infos_table', 82),
(246, '2022_08_06_124645_create_messages_table', 82),
(247, '2022_08_16_095504_update_converstions_table', 82),
(248, '2022_09_13_113428_change_data_column_to_user_notifications_table', 83),
(249, '2022_09_20_002050_create_refunds_table', 84),
(250, '2022_09_20_050949_add_refund_request_cancel_column_to_orders_table', 84),
(251, '2022_09_20_233442_create_refund_reasons_table', 84),
(252, '2022_09_29_095242_create_subscription_packages_table', 84),
(253, '2022_09_29_101701_create_restaurant_subscriptions_table', 84),
(254, '2022_09_29_102521_create_subscription_transactions_table', 84),
(255, '2022_10_04_094314_add_restaurant_model_column_to_restaurants_table', 84),
(256, '2022_11_05_105722_alter_table_order_details_change_variation', 84),
(257, '2022_11_13_144443_create_contact_messages_table', 84),
(258, '2022_11_16_091912_create_expenses_table', 84),
(259, '2022_11_16_092235_add_expense_column_to_order_transactions_table', 84),
(260, '2023_01_05_153438_add_status_col_to_campaign_restaurant_table', 85),
(261, '2023_01_07_162303_add_maximum_delivery_charge_col_to_zones_table', 85),
(262, '2023_01_07_162740_add_maximum_delivery_charge_col_to_restaurants_table', 85),
(263, '2023_01_08_104102_create_vehicles_table', 85),
(264, '2023_01_08_124859_add_vehicle_id_col_to_delivery_men_table', 85),
(265, '2023_01_08_152910_create_tags_table', 85),
(266, '2023_01_08_153321_create_food_tags_table', 85),
(267, '2023_01_09_115851_add_max_cod_order_amount_col_to_zones_table', 85),
(268, '2023_01_09_132704_create_order_cancel_reasons_table', 85),
(269, '2023_01_09_132841_add_cancellation_reason_col_to_orders_table', 85),
(270, '2023_01_09_173540_add_recommended_col_to_foods_table', 85),
(271, '2023_01_09_180114_create_cuisines_table', 85),
(272, '2023_01_09_180928_add_cuisine_id_col_to_restaurants_table', 85),
(273, '2023_01_10_112851_alter_refund_amount_col_to_refunds_table', 85),
(274, '2023_01_10_175439_add_tax_status_col_to_orders_table', 85),
(275, '2023_01_11_142252_add_customer_id_col_to_coupons_table', 85),
(276, '2023_01_12_142420_add_restaurant_id_col_to_expenses_table', 85),
(277, '2023_01_12_143506_add_restaurant_expense_col_to_order_transactions_table', 85),
(278, '2023_01_12_145658_add_coupon_created_by_col_to_orders_table', 85),
(279, '2023_01_14_103226_add_slug_by_col_to_campaigns_table', 85),
(280, '2023_01_14_105544_add_slug_col_to_categories_table', 85),
(281, '2023_01_14_105607_add_slug_by_col_to_restaurants_table', 85),
(282, '2023_01_24_152947_add_vehicle_id_col_to_orders_table', 85),
(283, '2023_01_25_133959_add_slug_col_to_food_table', 85),
(284, '2023_01_25_145750_add_slug_col_to_item_campaigns_table', 85),
(285, '2023_01_28_100238_remane_discription_col_to__order_id_to_expenses_table', 85),
(286, '2023_01_28_100425_add_description_col_to_expenses_table', 85),
(287, '2023_01_28_161813_create_cuisine_restaurants_table', 85),
(288, '2023_01_28_185144_remove_col_cuisine_id_from_restaurant_table', 85),
(289, '2023_01_30_121227_add_col_to_discount_on_product_by_order_table', 85),
(290, '2023_02_01_114155_add_distance_col_to_orders_table', 85),
(291, '2023_02_01_151408_add_commission_percentage_col_to_order_transactions_table', 85),
(292, '2023_02_01_182929_add_discount_amount_by_restaurant_col_to_order_transactions_table', 85),
(293, '2023_02_06_121643_add_fcm_token_web_to_vendors_table', 85),
(294, '2023_02_08_113749_add_ref_by_col_to_users_table', 86),
(295, '2023_02_08_163747_create_withdrawal_methods_table', 86),
(296, '2023_02_08_165109_add_cols_to_withdraw_requests_table', 86),
(297, '2023_02_14_112313_create_incentive_logs_table', 86),
(298, '2023_02_14_112417_create_incentives_table', 86),
(299, '2023_02_14_165851_add_delivery_man_id_col_to_wallet_transactions_table', 86),
(300, '2023_02_14_172250_change_amount_col_to_expenses_table', 86),
(301, '2023_02_15_131107_add_otp_hit_count_cols_in_phone_verifications_table', 86),
(302, '2023_02_16_104809_add_hit_count_at_col_in_password_resets_table', 86),
(303, '2023_02_16_123420_add_increased_delivery_fee_in_zones_table', 86),
(304, '2023_02_16_145350_create_shifts_table', 86),
(305, '2023_02_16_145830_add_shift_id_col_to_time_logs_table', 86),
(306, '2023_02_16_145934_add_shift_id_col_to_delivery_men_table', 86),
(307, '2023_02_18_070327_create_subscriptions_table', 86),
(308, '2023_02_18_070628_create_subscription_logs_table', 86),
(309, '2023_02_18_070757_create_subscription_pauses_table', 86),
(310, '2023_02_18_070826_create_subscription_schedules_table', 86),
(311, '2023_02_18_071042_add_subscription_id_col_to_order_table', 86),
(312, '2023_02_18_071609_add_is_subscription_order_col_to_order_transactions_table', 86),
(313, '2023_02_19_164536_create_visitor_logs_table', 86),
(314, '2023_03_11_120645_add_temp_block_time_col_to_phone_verifications_table', 86),
(315, '2023_03_11_121000_add_temp_block_time_col_to_password_resets_table', 86),
(316, '2023_03_16_163907_add_order_subscription_col_in_restaurant_table', 86),
(317, '2023_03_18_121906_add_order_cancel_note_col_in_orders_table', 86),
(318, '2023_03_18_144849_add_temp_token_col_in_users_table', 86),
(319, '2023_03_19_153620_add_increase_delivery_charge_message_col_in_zones_table', 86),
(320, '2023_03_13_144714_create_logs_table', 87),
(321, '2023_04_08_132653_add_created_by_col_to_password_resets_table', 87),
(322, '2023_04_17_112228_create_notification_messages_table', 87),
(323, '2023_05_07_155839_change_delivery_charge_col_in_admin_wallets_table', 87),
(324, '2023_05_10_162452_create_admin_testimonials_table', 87),
(325, '2023_05_10_184114_create_data_settings_table', 87),
(326, '2023_05_13_115610_create_admin_features_table', 87),
(327, '2023_05_14_092428_create_react_services_table', 87),
(328, '2023_05_14_104308_create_react_promotional_banners_table', 87),
(329, '2023_05_18_161133_create_email_templates_table', 87),
(330, '2023_05_31_154309_create_admin_special_criterias_table', 87),
(331, '2023_06_11_040112_add_cutlery_col_in_orders_table', 87),
(332, '2023_06_11_171524_change_delivery_time_col_in_restaurants_table', 87),
(333, '2023_06_13_112622_add_cutlery_on_restaurants_table', 87),
(334, '2023_07_05_135741_add_service_charge_col_to_orders_table', 88),
(335, '2023_07_05_145800_add_service_charge_col_to_order_transactions_table', 88),
(336, '2023_07_25_130949_create_wallet_payments_table', 88),
(337, '2023_07_25_131036_create_wallet_bonuses_table', 88),
(338, '2023_07_25_131958_add_user_id_col_expenses_table', 88),
(339, '2023_07_26_171058_create_order_payments_table', 88),
(340, '2023_07_31_235517_add_maximum_cart_quantity_col_to_food', 88),
(341, '2023_07_31_235555_add_maximum_cart_quantity_col_to_item_campaigns', 88),
(342, '2023_08_02_043239_add_meta_data_to_restaurants_table', 88),
(343, '2023_08_05_232205_add_payment_status_to_subscription_transactions_table', 88),
(344, '0000_00_00_000000_create_websockets_statistics_entries_table', 89),
(345, '2023_08_30_130431_create_offline_payment_methods_table', 89),
(346, '2023_08_30_130446_create_offline_payments_table', 89),
(347, '2023_08_30_162632_add_announcement_cols_to_restaurants_table', 89),
(348, '2023_08_30_171559_create_guests_table', 89),
(349, '2023_08_30_181336_add_is_guest_col_to_orders_table', 89),
(350, '2023_09_03_174650_add_qr_code_col_to_restaurants_table', 89),
(351, '2023_10_02_114519_create_carts_table', 89),
(352, '2023_10_04_142129_add_free_delivery_distance_col_to_restaurants_table', 89),
(353, '2023_10_18_124954_create_restaurant_configs_table', 89),
(354, '2023_10_19_093057_create_restaurant_tags_table', 89),
(355, '2023_10_22_183705_add_additional_data_col_in_restaurants_table', 89),
(356, '2023_10_25_173519_add_additional_data_col_to_delivery_men_table', 89),
(357, '2023_10_26_105254_change_name_col_on_user_infos', 89),
(358, '2023_10_29_114625_add_created_by_col_to_account_transactions_table', 89),
(359, '2023_10_29_161701_create_disbursements_table', 89),
(360, '2023_10_29_161757_create_disbursement_details_table', 89),
(361, '2023_10_29_183055_create_disbursement_withdrawal_methods_table', 89),
(362, '2023_10_30_093234_add_type_col_to_withdraw_requests_table', 89),
(363, '2023_11_21_132325_add_current_language_key_col_to_users_table', 90),
(364, '2024_03_09_094824_add_is_default_col_to_order_cancel_reasons_table', 91),
(365, '2024_03_19_124736_add_halal_tag_status_col_to_restaurant_configs_table', 91),
(366, '2024_03_19_132910_add_is_halal_col_to_food_table', 91),
(367, '2024_03_21_113032_add_body_2_col_to_email_templates', 91),
(368, '2024_04_21_041436_create_cash_backs_table', 92),
(369, '2024_04_21_042152_create_cash_back_histories_table', 92),
(370, '2024_04_21_115033_add_cashback_ref_amount_cols_to_orders_table', 92),
(371, '2024_04_21_115411_add_extra_packaging_cols_to_restaurant_configs_table', 92),
(372, '2024_04_21_124756_add_extra_packaging_ref_bonus_amount_col_to_order_transactions_table', 92),
(373, '2024_04_21_134012_add_reply_col_to_reviews_table', 92),
(374, '2024_04_22_112655_create_variations_table', 92),
(375, '2024_04_22_112708_create_variation_options_table', 92),
(376, '2024_04_22_115714_create_characteristics_table', 92),
(377, '2024_04_22_115813_create_characteristic_restaurants_table', 92),
(378, '2024_04_22_164150_add_stock_col_to_food_table', 92),
(379, '2024_04_24_115636_create_priority_lists_table', 92),
(380, '2024_04_24_124714_add_variation_option_col_on_cart_table', 92),
(381, '2024_04_24_173317_add_stock_col_to_add_ons_table', 92);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE IF NOT EXISTS `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Subscribers email',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tergat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_messages`
--

CREATE TABLE IF NOT EXISTS `notification_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

REPLACE INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02c187400441f53687a30af580361503d21ab9e30fc263f729536e3e6fb8e013c5f10f170df66154', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-14 07:26:44', '2021-08-14 07:26:44', '2022-08-14 13:26:44'),
('03652f98734cb46633be656afd61eb9d6bef93da6cb3f97e5d862e758bc8a7458f4271c9fc525a03', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-04 04:56:56', '2021-07-04 04:56:56', '2022-07-04 10:56:56'),
('0c0698d04088cdad39a6551a639e02242373bd8cb6e115ff58d9ab11357d3295c6ba0edc08176abb', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-03 23:08:38', '2022-07-03 23:08:38', '2023-07-04 05:08:38'),
('0ce77d214106aa7d2691f22e57a52d61e83c4a74e232b6cf6409728c337a731412d5f011c265abf9', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-08 14:51:24', '2021-08-08 14:51:24', '2022-08-08 20:51:24'),
('1796645666d7dd6ef53186e095fb9c39d2128e5cca19f2e1ac8e7e7da82d6174fe98b14e94925188', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-04 07:35:29', '2021-08-04 07:35:29', '2022-08-04 13:35:29'),
('2919672ecc1e3dd9f2759d15f8cc54882d1d9f780cfda82fb83c8359de8654492ea6703956a7c50d', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-15 08:22:28', '2021-07-15 08:22:28', '2022-07-15 14:22:28'),
('2f49586a4ac33179f846e60afba15e655ceef494cd64f6812d4ab109336f5fb008cb3005137f700c', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-03 13:21:13', '2021-08-03 13:21:13', '2022-08-03 19:21:13'),
('3115e428f22908fa2d94bf2804d1ed2d9929cb27da233aedf24c8bc71dc8066f91b0c63a795c26e9', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-31 08:33:37', '2021-07-31 08:33:37', '2022-07-31 14:33:37'),
('36217e984b8904eb4dfd30ed62eef9d725c1e8e63a6c1485bb084ef323ad5eea852c84e17560bd54', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-14 00:51:51', '2021-07-14 00:51:51', '2022-07-14 06:51:51'),
('3abfb4980fdf3c858e1c371352db40dae9e1e40f095b00dcd09c84ff7c8189a305f1be985e4274b3', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-19 03:50:53', '2021-06-19 03:50:53', '2022-06-19 09:50:53'),
('3cd3269423e543961a7b64e8169875725eb47f8d0f309c69a4a770258de65e9c02057ed9000942da', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-04 07:35:04', '2021-08-04 07:35:04', '2022-08-04 13:35:04'),
('3e923b1f4084faba1a2e5448bd8b72e09b74db6ed25fbe14f6960a5f005107496cc507c1ba15c6e1', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-22 01:32:58', '2021-06-22 01:32:58', '2022-06-22 07:32:58'),
('4140d5b9b3d16e4bbef1b676b01f13f75d9c3fb2cada6548e50b0b2679562aace3b9b44f82f15f30', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-19 17:10:26', '2021-08-19 17:10:26', '2022-08-19 23:10:26'),
('42ee059b49880163a34848cfc528e347915f9b9358c4b69c8d98fb1dd17492e4917198a77a6d81b6', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-03 22:59:58', '2022-07-03 22:59:58', '2023-07-04 04:59:58'),
('4cfad08796e4a1eecfe8bbdc20e512e0954570168990fa60442ad41b5ecf05e4005cadcae08fbddd', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-19 03:29:52', '2021-06-19 03:29:52', '2022-06-19 09:29:52'),
('53afc11b36d08435d8ec82c42305f7aa4397d10b2d296f6e7d819e091d0d7c6d48e14cdc5e66e6c9', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-23 23:08:01', '2021-06-23 23:08:01', '2022-06-24 05:08:01'),
('5646d6337aaed0e662c059ed368372e2da241ff97a42df56310667ec321fdbf2252d92771988640a', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-04 07:37:55', '2021-08-04 07:37:55', '2022-08-04 13:37:55'),
('57cc3fb7ede5d1b60a4fb23218a28d0e49daee4ded226e584f03adb4c87547860e99eb18d0f28def', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-03 23:09:37', '2022-07-03 23:09:37', '2023-07-04 05:09:37'),
('59551e481bc1fb037bee07e1501d81dad38d4ff34fdca68a49c40d0cf423176ca111940acd359aeb', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-08 14:50:59', '2021-08-08 14:50:59', '2022-08-08 20:50:59'),
('68b06321c4bbbea81e7dfcbd8d5fae1a94a2fa0500041ee5774be2d9300c1ff7590d03604b77514a', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-28 02:33:54', '2021-07-28 02:33:54', '2022-07-28 08:33:54'),
('723ceee668cd1a7fc2e977be48cab3f31aed1ace0883692711b5cc2ddf42c2f23c6d75461172105f', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-01 05:46:27', '2021-07-01 05:46:27', '2022-07-01 11:46:27'),
('74e2dd27429bb92c12e33f891ccff32f48c22463166666705d145cfd8968d96ec992fa2cc3a36e76', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-23 23:08:23', '2021-06-23 23:08:23', '2022-06-24 05:08:23'),
('77c9389b2ab3031e09005a7e7be90d00496ff073dbbefeb57229cee5d0a240376c1f7c3c8a94faff', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-19 03:38:22', '2021-06-19 03:38:22', '2022-06-19 09:38:22'),
('7cf10043f8e537bf9b773fb421598ef009714321483c7e542c4ceeb69b374cd81a9f6167ec271826', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-03 23:04:52', '2022-07-03 23:04:52', '2023-07-04 05:04:52'),
('8a20c4f8656e404615f9abc15a95f6754dd87e4e894677647dd17236b95d8a5d7cc243c38457b048', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-04 02:36:57', '2021-07-04 02:36:57', '2022-07-04 08:36:57'),
('8b46ab5b929aa6097229e3606d70d25ed30993640f567aa79dd002d9f55527bc6144af164aee97a2', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-03 23:11:21', '2022-07-03 23:11:21', '2023-07-04 05:11:21'),
('8ffc458ddbcbbbec17035dc2153c4baeebb5c54796b3a9008f24c8699197a8a2fc1111c36cc1d7da', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-14 07:27:12', '2021-08-14 07:27:12', '2022-08-14 13:27:12'),
('a092dc4a49ec27a06d8c9c335446de3d90e03363c6059cdf6fbf2113edaab5fe752053a794ac9236', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-08-08 10:12:49', '2021-08-08 10:12:49', '2022-08-08 16:12:49'),
('b4651c7e8bbe8a68b4959504c3a7e3705208cbdb79fcc2498b9b3d0efa9c7cadc77699590cf8f2d4', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-20 03:59:46', '2021-06-20 03:59:46', '2022-06-20 09:59:46'),
('bf24e16194d82c4e2982724df0fef68f7923d6d01ce8c5e1b64e2716d2412db6e62891f0f8dae8a6', 57, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-07-31 08:34:19', '2021-07-31 08:34:19', '2022-07-31 14:34:19'),
('c1b7df78e7373f5eca5f64083ac9bbc6c9bd582adf6c143f520c8a65420d3ee050044e6f65f0a033', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-24 03:40:43', '2021-06-24 03:40:43', '2022-06-24 09:40:43'),
('dd6578c99fc90f666b9433871d28f9913fefc860d9a60427388cfcf727be6f5c10eb8b764b39c557', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-28 10:20:50', '2021-06-28 10:20:50', '2022-06-28 16:20:50'),
('ea3ca170bd7935fe3f2a9c80c74d1e8e6eda8cc197ce2066305a286d175ad250475a4657e498779b', 56, 1, 'RestaurantCustomerAuth', '[]', 0, '2021-06-21 01:24:25', '2021-06-21 01:24:25', '2022-06-21 07:24:25'),
('f0e9bba3e6ba5a0dd39acea36fc1b4f278349e61af71fe79a1b88539e88b631122e4364bb59f0634', 1, 1, 'RestaurantCustomerAuth', '[]', 0, '2022-07-03 23:07:01', '2022-07-03 23:07:01', '2023-07-04 05:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

REPLACE INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'qFAwGhxq8A6SDmolyxZunXyQ4mxOH0jEezXsgaxP', NULL, 'http://localhost', 1, 0, 0, '2021-06-19 03:27:59', '2021-06-19 03:27:59'),
(2, NULL, 'Laravel Password Grant Client', 'qdV021R3MGGAwRxvvqG0mWgnypwzolzusBq1L5W6', 'users', 'http://localhost', 0, 1, 0, '2021-06-19 03:27:59', '2021-06-19 03:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

REPLACE INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-06-19 03:27:59', '2021-06-19 03:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE IF NOT EXISTS `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `note` text COLLATE utf8mb4_unicode_ci,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `method_fields` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

CREATE TABLE IF NOT EXISTS `offline_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_informations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `coupon_discount_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `coupon_discount_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci,
  `order_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivery',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `schedule_at` timestamp NULL DEFAULT NULL,
  `callback` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending` timestamp NULL DEFAULT NULL,
  `accepted` timestamp NULL DEFAULT NULL,
  `confirmed` timestamp NULL DEFAULT NULL,
  `processing` timestamp NULL DEFAULT NULL,
  `handover` timestamp NULL DEFAULT NULL,
  `picked_up` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `canceled` timestamp NULL DEFAULT NULL,
  `refund_requested` timestamp NULL DEFAULT NULL,
  `refunded` timestamp NULL DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci,
  `scheduled` tinyint(1) NOT NULL DEFAULT '0',
  `restaurant_discount_amount` decimal(24,2) NOT NULL,
  `original_delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `failed` timestamp NULL DEFAULT NULL,
  `adjusment` decimal(24,2) NOT NULL DEFAULT '0.00',
  `edited` tinyint(1) NOT NULL DEFAULT '0',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dm_tips` double(24,2) NOT NULL DEFAULT '0.00',
  `processing_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_delivery_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_request_canceled` timestamp NULL DEFAULT NULL,
  `cancellation_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canceled_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_on_product_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vendor',
  `distance` double(23,3) DEFAULT '0.000',
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cancellation_note` text COLLATE utf8mb4_unicode_ci,
  `tax_percentage` double(24,3) DEFAULT NULL,
  `delivery_instruction` text COLLATE utf8mb4_unicode_ci,
  `unavailable_item_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cutlery` tinyint(1) NOT NULL DEFAULT '0',
  `additional_charge` double(23,3) NOT NULL DEFAULT '0.000',
  `partially_paid_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `order_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `cash_back_id` bigint(20) UNSIGNED DEFAULT NULL,
  `extra_packaging_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `ref_bonus_amount` double(23,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_cancel_reasons`
--

CREATE TABLE IF NOT EXISTS `order_cancel_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE IF NOT EXISTS `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT '0.00',
  `food_details` text COLLATE utf8mb4_unicode_ci,
  `variation` text COLLATE utf8mb4_unicode_ci,
  `add_ons` text COLLATE utf8mb4_unicode_ci,
  `discount_on_food` decimal(24,2) DEFAULT NULL,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `tax_amount` decimal(24,2) NOT NULL DEFAULT '1.00',
  `variant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_add_on_price` decimal(24,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE IF NOT EXISTS `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE IF NOT EXISTS `order_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_amount` decimal(24,2) NOT NULL,
  `restaurant_amount` decimal(24,2) NOT NULL,
  `admin_commission` decimal(24,2) NOT NULL,
  `received_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `original_delivery_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dm_tips` double(24,2) NOT NULL DEFAULT '0.00',
  `delivery_fee_comission` double(24,2) NOT NULL DEFAULT '0.00',
  `admin_expense` decimal(23,3) DEFAULT '0.000',
  `restaurant_expense` double(23,3) DEFAULT '0.000',
  `commission_percentage` double(16,3) DEFAULT '0.000',
  `is_subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_amount_by_restaurant` double(23,3) DEFAULT '0.000',
  `is_subscription` tinyint(1) DEFAULT '0',
  `additional_charge` double(23,3) NOT NULL DEFAULT '0.000',
  `extra_packaging_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `ref_bonus_amount` double(23,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT '0',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE IF NOT EXISTS `payment_requests` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `gateway_callback_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_hook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failure_hook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `external_redirect_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `attribute_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE IF NOT EXISTS `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT '0',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `priority_lists`
--

CREATE TABLE IF NOT EXISTS `priority_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provide_d_m_earnings`
--

CREATE TABLE IF NOT EXISTS `provide_d_m_earnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `react_promotional_banners`
--

CREATE TABLE IF NOT EXISTS `react_promotional_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `react_promotional_banners`
--

REPLACE INTO `react_promotional_banners` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '2023-09-08-64fbeb729093c.png', 1, '2023-09-08 14:50:10', '2023-09-08 14:50:10'),
(2, NULL, NULL, '2023-09-08-64fbf13a51f31.png', 1, '2023-09-08 15:14:50', '2023-09-08 15:14:50'),
(3, NULL, NULL, '2023-09-08-64fbf1458ea9b.png', 1, '2023-09-08 15:15:01', '2023-09-08 15:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `react_services`
--

CREATE TABLE IF NOT EXISTS `react_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `react_services`
--

REPLACE INTO `react_services` (`id`, `title`, `sub_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Peça online', 'Encomende por si mesmo ou para o grupo, sem restrições no valor da pedido', '2023-09-08-64fbf0925f6da.png', 1, '2023-09-08 15:12:02', '2023-09-08 15:12:02'),
(2, 'Entrega rápida', 'Encomende por si mesmo ou para o grupo, sem restrições no valor da pedido', '2023-09-08-64fbf0d1dc201.png', 1, '2023-09-08 15:13:05', '2023-09-08 15:13:05'),
(3, 'Desfrute de comida fresca', 'Encomende por si mesmo ou para o grupo, sem restrições no valor da pedido', '2023-09-08-64fbf0f56a9bd.png', 1, '2023-09-08 15:13:41', '2023-09-08 15:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE IF NOT EXISTS `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `refund_amount` decimal(24,3) NOT NULL DEFAULT '0.000',
  `refund_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_reasons`
--

CREATE TABLE IF NOT EXISTS `refund_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `minimum_order` decimal(24,2) NOT NULL DEFAULT '0.00',
  `comission` decimal(24,2) DEFAULT NULL,
  `schedule_order` tinyint(1) NOT NULL DEFAULT '0',
  `opening_time` time DEFAULT '10:00:00',
  `closeing_time` time DEFAULT '23:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT '1',
  `take_away` tinyint(1) NOT NULL DEFAULT '1',
  `food_section` tinyint(1) NOT NULL DEFAULT '1',
  `tax` decimal(24,2) NOT NULL DEFAULT '0.00',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reviews_section` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `off_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `gst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_delivery_system` tinyint(1) NOT NULL DEFAULT '0',
  `pos_system` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_shipping_charge` decimal(24,2) NOT NULL DEFAULT '0.00',
  `delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '30-40',
  `veg` tinyint(1) NOT NULL DEFAULT '1',
  `non_veg` tinyint(1) NOT NULL DEFAULT '1',
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `per_km_shipping_charge` double(16,3) UNSIGNED DEFAULT NULL,
  `restaurant_model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'commission',
  `maximum_shipping_charge` double(23,3) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_subscription_active` tinyint(1) DEFAULT '0',
  `cutlery` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement` tinyint(1) NOT NULL DEFAULT '0',
  `announcement_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code` text COLLATE utf8mb4_unicode_ci,
  `free_delivery_distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_data` text COLLATE utf8mb4_unicode_ci,
  `additional_documents` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

REPLACE INTO `restaurants` (`id`, `name`, `phone`, `email`, `logo`, `latitude`, `longitude`, `address`, `footer_text`, `minimum_order`, `comission`, `schedule_order`, `opening_time`, `closeing_time`, `status`, `vendor_id`, `created_at`, `updated_at`, `free_delivery`, `rating`, `cover_photo`, `delivery`, `take_away`, `food_section`, `tax`, `zone_id`, `reviews_section`, `active`, `off_day`, `gst`, `self_delivery_system`, `pos_system`, `minimum_shipping_charge`, `delivery_time`, `veg`, `non_veg`, `order_count`, `total_order`, `per_km_shipping_charge`, `restaurant_model`, `maximum_shipping_charge`, `slug`, `order_subscription_active`, `cutlery`, `meta_title`, `meta_description`, `meta_image`, `announcement`, `announcement_message`, `qr_code`, `free_delivery_distance`, `additional_data`, `additional_documents`) VALUES
(1, 'Restaurante 1', '01700000000', 'Demo@Restaurante.com', '2023-09-08-64fc04066bce7.png', '24.16883944018075', '90.30561873693928', 'Rua das Palmeiras, 78, Santa Luzia', NULL, '0.00', NULL, 0, '10:00:00', '23:00:00', 1, 1, '2023-09-08 16:35:02', '2023-09-08 16:45:54', 0, NULL, '2023-09-08-64fc0406702e9.png', 1, 1, 1, '10.00', 1, 1, 1, ' ', NULL, 0, 0, '0.00', '15-20-min', 1, 1, 0, 0, NULL, 'commission', NULL, 'demo-restaurant', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_configs`
--

CREATE TABLE IF NOT EXISTS `restaurant_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `instant_order` tinyint(1) NOT NULL DEFAULT '0',
  `customer_date_order_sratus` tinyint(1) NOT NULL DEFAULT '0',
  `customer_order_date` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `halal_tag_status` tinyint(1) NOT NULL DEFAULT '0',
  `extra_packaging_status` tinyint(1) NOT NULL DEFAULT '0',
  `is_extra_packaging_active` tinyint(1) NOT NULL DEFAULT '0',
  `extra_packaging_amount` double(23,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_schedule`
--

CREATE TABLE IF NOT EXISTS `restaurant_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_subscriptions`
--

CREATE TABLE IF NOT EXISTS `restaurant_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `expiry_date` date NOT NULL,
  `max_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT '0',
  `mobile_app` tinyint(1) NOT NULL DEFAULT '0',
  `chat` tinyint(1) NOT NULL DEFAULT '0',
  `review` tinyint(1) NOT NULL DEFAULT '0',
  `self_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `total_package_renewed` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tag`
--

CREATE TABLE IF NOT EXISTS `restaurant_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_wallets`
--

CREATE TABLE IF NOT EXISTS `restaurant_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `total_earning` decimal(24,2) NOT NULL DEFAULT '0.00',
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` decimal(24,2) NOT NULL DEFAULT '0.00',
  `collected_cash` decimal(24,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_zone`
--

CREATE TABLE IF NOT EXISTS `restaurant_zone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE IF NOT EXISTS `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE IF NOT EXISTS `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE IF NOT EXISTS `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `end_at` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `billing_amount` decimal(23,3) NOT NULL DEFAULT '0.000',
  `paid_amount` decimal(23,3) NOT NULL DEFAULT '0.000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_logs`
--

CREATE TABLE IF NOT EXISTS `subscription_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `accepted` timestamp NULL DEFAULT NULL,
  `confirmed` timestamp NULL DEFAULT NULL,
  `processing` timestamp NULL DEFAULT NULL,
  `handover` timestamp NULL DEFAULT NULL,
  `picked_up` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `canceled` timestamp NULL DEFAULT NULL,
  `failed` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_packages`
--

CREATE TABLE IF NOT EXISTS `subscription_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(24,3) NOT NULL,
  `validity` int(11) NOT NULL,
  `max_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unlimited',
  `max_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unlimited',
  `pos` tinyint(1) NOT NULL DEFAULT '0',
  `mobile_app` tinyint(1) NOT NULL DEFAULT '0',
  `chat` tinyint(1) NOT NULL DEFAULT '0',
  `review` tinyint(1) NOT NULL DEFAULT '0',
  `self_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `colour` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_pauses`
--

CREATE TABLE IF NOT EXISTS `subscription_pauses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_schedules`
--

CREATE TABLE IF NOT EXISTS `subscription_schedules` (
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_transactions`
--

CREATE TABLE IF NOT EXISTS `subscription_transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(24,3) NOT NULL DEFAULT '0.000',
  `validity` int(11) NOT NULL DEFAULT '0',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double(24,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `package_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'success',
  `transaction_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

REPLACE INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'feijoada', '2023-09-08 17:05:12', '2023-09-08 17:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `time_logs`
--

CREATE TABLE IF NOT EXISTS `time_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `online` time DEFAULT NULL,
  `offline` time DEFAULT NULL,
  `working_hour` decimal(23,3) NOT NULL DEFAULT '0.000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE IF NOT EXISTS `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE IF NOT EXISTS `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

REPLACE INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\DataSetting', 69, 'pt-BR', 'react_header_title', 'FastDelivery', NULL, NULL),
(2, 'App\\Models\\DataSetting', 70, 'pt-BR', 'react_header_sub_title', 'Encontre restaurantes perto de você', NULL, NULL),
(3, 'App\\Models\\DataSetting', 72, 'pt-BR', 'react_restaurant_section_title', 'Abra seu próprio restaurante', NULL, NULL),
(4, 'App\\Models\\DataSetting', 73, 'pt-BR', 'react_restaurant_section_sub_title', 'Registre -se como restaurante para iniciar seu negócio', NULL, NULL),
(5, 'App\\Models\\DataSetting', 74, 'pt-BR', 'react_restaurant_section_button_name', 'Registro', NULL, NULL),
(6, 'App\\Models\\DataSetting', 78, 'pt-BR', 'react_delivery_section_title', 'Torne -se um entregador', NULL, NULL),
(7, 'App\\Models\\DataSetting', 79, 'pt-BR', 'react_delivery_section_sub_title', 'Registre-se como entregador e ganhe dinheiro', NULL, NULL),
(8, 'App\\Models\\DataSetting', 80, 'pt-BR', 'react_delivery_section_button_name', 'Registro', NULL, NULL),
(9, 'App\\Models\\DataSetting', 85, 'pt-BR', 'react_download_apps_title', 'Baixe o aplicativo para aproveitar mais!', NULL, NULL),
(10, 'App\\Models\\DataSetting', 86, 'pt-BR', 'react_download_apps_sub_title', 'Todos os melhores restaurantes estão a um clique de distância', NULL, NULL),
(11, 'App\\Models\\DataSetting', 87, 'pt-BR', 'react_download_apps_tag', 'Faça o download do nosso aplicativo da Google Play Store e App Store.', NULL, NULL),
(12, 'App\\Models\\ReactPromotionalBanner', 1, 'pt-BR', 'react_promotional_banner_title', NULL, NULL, NULL),
(13, 'App\\Models\\ReactPromotionalBanner', 1, 'pt-BR', 'react_promotional_banner_description', NULL, NULL, NULL),
(14, 'App\\Models\\ReactService', 1, 'pt-BR', 'react_service_title', 'Peça online', NULL, NULL),
(15, 'App\\Models\\ReactService', 1, 'pt-BR', 'react_service_sub_title', 'Faça seu pedido para você mesmo ou para o grupo, sem restrições quanto ao valor do pedido', NULL, NULL),
(16, 'App\\Models\\ReactService', 2, 'pt-BR', 'react_service_title', 'Entrega rápida', NULL, NULL),
(17, 'App\\Models\\ReactService', 2, 'pt-BR', 'react_service_sub_title', 'Faça seu pedido para você mesmo ou para o grupo, sem restrições quanto ao valor do pedido', NULL, NULL),
(18, 'App\\Models\\ReactService', 3, 'pt-BR', 'react_service_title', 'Desfrute de comida fresca', NULL, NULL),
(19, 'App\\Models\\ReactService', 3, 'pt-BR', 'react_service_sub_title', 'Faça seu pedido para você mesmo ou para o grupo, sem restrições quanto ao valor do pedido', NULL, NULL),
(20, 'App\\Models\\ReactPromotionalBanner', 2, 'pt-BR', 'react_promotional_banner_title', NULL, NULL, NULL),
(21, 'App\\Models\\ReactPromotionalBanner', 2, 'pt-BR', 'react_promotional_banner_description', NULL, NULL, NULL),
(22, 'App\\Models\\ReactPromotionalBanner', 3, 'pt-BR', 'react_promotional_banner_title', NULL, NULL, NULL),
(23, 'App\\Models\\ReactPromotionalBanner', 3, 'pt-BR', 'react_promotional_banner_description', NULL, NULL, NULL),
(24, 'App\\Models\\DataSetting', 14, 'pt-BR', 'about_us_title', 'FastDelivery', NULL, NULL),
(25, 'App\\Models\\DataSetting', 15, 'pt-BR', 'about_us_sub_title', 'é o melhor serviço de entrega perto de você', NULL, NULL),
(26, 'App\\Models\\DataSetting', 16, 'pt-BR', 'about_us_text', 'Tornamos a entrega de alimentos mais interessante.\r\nEncontre as melhores ofertas dos restaurantes perto de você.\r\nPratos saborosos e saudáveis.Traga um restaurante para sua casa.', NULL, NULL),
(27, 'App\\Models\\DataSetting', 17, 'pt-BR', 'about_us_app_button_name', 'Baixe Agora', NULL, NULL),
(28, 'App\\Models\\AdminFeature', 1, 'pt-BR', 'feature_name', 'Suporte 24h', NULL, NULL),
(29, 'App\\Models\\AdminFeature', 1, 'pt-BR', 'feature_description', 'Serviço de suporte ao cliente 24/7 para apoiá -lo.', NULL, NULL),
(30, 'App\\Models\\AdminFeature', 2, 'pt-BR', 'feature_name', 'Pagamento fácil', NULL, NULL),
(31, 'App\\Models\\AdminFeature', 2, 'pt-BR', 'feature_description', 'Sistema de pagamento inteligente e fácil para manter seus negócios.', NULL, NULL),
(32, 'App\\Models\\AdminFeature', 3, 'pt-BR', 'feature_name', 'Entrega rápida', NULL, NULL),
(33, 'App\\Models\\AdminFeature', 3, 'pt-BR', 'feature_description', 'Sistema de entrega mais rápido para alcançar seu cliente.', NULL, NULL),
(34, 'App\\Models\\AdminFeature', 4, 'pt-BR', 'feature_name', 'Preço acessível', NULL, NULL),
(35, 'App\\Models\\AdminFeature', 4, 'pt-BR', 'feature_description', 'Comece seu negócio com custo baixo em seu orçamento', NULL, NULL),
(36, 'App\\Models\\DataSetting', 47, 'pt-BR', 'earn_money_reg_title', 'Ganhe dinheiro com FastDelivery', NULL, NULL),
(37, 'App\\Models\\DataSetting', 48, 'pt-BR', 'earn_money_restaurant_req_button_name', 'Ser um vendedor', NULL, NULL),
(38, 'App\\Models\\DataSetting', 51, 'pt-BR', 'earn_money_delivety_man_req_button_name', 'Ser entregador', NULL, NULL),
(39, 'App\\Models\\DataSetting', 57, 'pt-BR', 'why_choose_us_title_1', 'Encontre sua refeição diária', NULL, NULL),
(40, 'App\\Models\\DataSetting', 59, 'pt-BR', 'why_choose_us_title_2', 'Sistema de pedidos de alimentos fácil', NULL, NULL),
(41, 'App\\Models\\DataSetting', 61, 'pt-BR', 'why_choose_us_title_3', 'Serviço de entrega de comida mais rápido', NULL, NULL),
(42, 'App\\Models\\DataSetting', 63, 'pt-BR', 'why_choose_us_title_4', 'Rastreie seu pedido de comida', NULL, NULL),
(43, 'App\\Models\\Zone', 1, 'pt-BR', 'name', 'Zona de demonstração', NULL, NULL),
(44, 'App\\Models\\Cuisine', 1, 'pt-BR', 'cuisine_name', 'Cozinha de demonstração', NULL, NULL),
(45, 'App\\Models\\Category', 1, 'pt-BR', 'name', 'Categoria de demonstração', NULL, NULL),
(46, 'App\\Models\\Category', 2, 'pt-BR', 'name', 'Sub categoria de demonstração', NULL, NULL),
(47, 'App\\Models\\Restaurant', 1, 'pt-BR', 'name', 'Restaurante de demonstração', NULL, NULL),
(48, 'App\\Models\\Restaurant', 1, 'pt-BR', 'address', 'Rua dos Programadores, 123, Bairro Tecnópolis, São Paulo, SP, CEP 01000-000', NULL, NULL),
(49, 'App\\Models\\AddOn', 1, 'pt-BR', 'name', 'Água', NULL, NULL),
(50, 'App\\Models\\Food', 1, 'pt-BR', 'name', 'Comida demo', NULL, NULL),
(51, 'App\\Models\\Food', 1, 'pt-BR', 'description', 'Acompanhado de uma porção de batatas fritas crocantes e uma bebida à sua escolha, o Super Burger Deluxe é a pedida perfeita para quem quer uma experiência gastronômica inesquecível!', NULL, NULL),
(52, 'App\\Models\\Vehicle', 1, 'pt-BR', 'type', 'Moto', NULL, NULL),
(53, 'App\\Models\\DataSetting', 96, 'pt-BR', 'promotional_banner_title', 'Banner de demonstração', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order_count` int(11) NOT NULL DEFAULT '0',
  `login_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wallet_balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `loyalty_point` decimal(24,3) NOT NULL DEFAULT '0.000',
  `ref_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_language_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pt-BR'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE IF NOT EXISTS `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deliveryman_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE IF NOT EXISTS `user_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE IF NOT EXISTS `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'multi',
  `min` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_options`
--

CREATE TABLE IF NOT EXISTS `variation_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_price` double(23,3) NOT NULL DEFAULT '0.000',
  `total_stock` int(11) NOT NULL DEFAULT '0',
  `stock_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unlimited',
  `sell_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_coverage_area` double(16,2) NOT NULL,
  `maximum_coverage_area` double(16,2) NOT NULL,
  `extra_charges` double(16,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

REPLACE INTO `vehicles` (`id`, `type`, `starting_coverage_area`, `maximum_coverage_area`, `extra_charges`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Moto', 0.00, 1000.00, 0.00, 1, '2023-09-08 17:07:33', '2023-09-08 17:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE IF NOT EXISTS `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token_web` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

REPLACE INTO `vendors` (`id`, `f_name`, `l_name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `bank_name`, `branch`, `holder_name`, `account_no`, `image`, `status`, `firebase_token`, `auth_token`, `fcm_token_web`) VALUES
(1, 'Demo', 'Restaurante', '01700000000', 'Demo@Restaurante.com', NULL, '$2a$12$NQBXTu9.U.jS0McEJPVEZuVcC2eAorHB8vQXCPlbcXuJM/mb9RpfO', NULL, '2023-09-08 16:35:02', '2023-09-08 16:35:02', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_employees`
--

CREATE TABLE IF NOT EXISTS `vendor_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_role_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs`
--

CREATE TABLE IF NOT EXISTS `visitor_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_log_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor_log_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visit_count` int(11) NOT NULL DEFAULT '0',
  `order_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_bonuses`
--

CREATE TABLE IF NOT EXISTS `wallet_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bonus_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `minimum_add_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `maximum_bonus_amount` double(23,3) NOT NULL DEFAULT '0.000',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_payments`
--

CREATE TABLE IF NOT EXISTS `wallet_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE IF NOT EXISTS `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE IF NOT EXISTS `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE IF NOT EXISTS `withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE IF NOT EXISTS `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(23,3) NOT NULL DEFAULT '0.000',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` polygon NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryman_wise_topic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_shipping_charge` double(16,3) UNSIGNED DEFAULT NULL,
  `per_km_shipping_charge` double(16,3) UNSIGNED DEFAULT NULL,
  `maximum_shipping_charge` double(23,3) DEFAULT NULL,
  `max_cod_order_amount` double(23,3) DEFAULT NULL,
  `increased_delivery_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `increased_delivery_fee_status` tinyint(1) NOT NULL DEFAULT '0',
  `increase_delivery_charge_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

REPLACE INTO `zones` (`id`, `name`, `coordinates`, `status`, `created_at`, `updated_at`, `restaurant_wise_topic`, `customer_wise_topic`, `deliveryman_wise_topic`, `minimum_shipping_charge`, `per_km_shipping_charge`, `maximum_shipping_charge`, `max_cod_order_amount`, `increased_delivery_fee`, `increased_delivery_fee_status`, `increase_delivery_charge_message`) VALUES
(1, 'Zona 1', 0x0000000001030000000100000009000000d2efc2f6da09564088e9c0a1a5523a40d2efc2f6ca82564083de6b9ece663a40d2efc2f69a8556403aeaad01aa5f3940d2efc2f6b221574031e87edc851d3940d2efc2f66235574048dcf428635c3540d2efc2f642195740ae11aa86757a3440d2efc2f6b24056404f9aa343818b3540d2efc2f662fa554073d8853e5b843840d2efc2f6da09564088e9c0a1a5523a40, 1, '2023-09-08 16:23:28', '2023-09-08 16:24:00', 'zone_1_restaurant', 'zone_1_customer', 'zone_1_delivery_man', 10.000, 5.000, NULL, NULL, 0.00, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_features`
--
ALTER TABLE `admin_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_testimonials`
--
ALTER TABLE `admin_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_backs`
--
ALTER TABLE `cash_backs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_back_histories`
--
ALTER TABLE `cash_back_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characteristics`
--
ALTER TABLE `characteristics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characteristic_restaurant`
--
ALTER TABLE `characteristic_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine_restaurant`
--
ALTER TABLE `cuisine_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_settings`
--
ALTER TABLE `data_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_wallets`
--
ALTER TABLE `delivery_man_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `disbursements`
--
ALTER TABLE `disbursements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disbursement_details`
--
ALTER TABLE `disbursement_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disbursement_withdrawal_methods`
--
ALTER TABLE `disbursement_withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_roles`
--
ALTER TABLE `employee_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_tag`
--
ALTER TABLE `food_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incentives`
--
ALTER TABLE `incentives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incentive_logs`
--
ALTER TABLE `incentive_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_configs`
--
ALTER TABLE `mail_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_messages`
--
ALTER TABLE `notification_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cancel_reasons`
--
ALTER TABLE `order_cancel_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_zone_id_index` (`zone_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_verifications_phone_unique` (`phone`);

--
-- Indexes for table `priority_lists`
--
ALTER TABLE `priority_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provide_d_m_earnings`
--
ALTER TABLE `provide_d_m_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `react_promotional_banners`
--
ALTER TABLE `react_promotional_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `react_services`
--
ALTER TABLE `react_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_reasons`
--
ALTER TABLE `refund_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_phone_unique` (`phone`);

--
-- Indexes for table `restaurant_configs`
--
ALTER TABLE `restaurant_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_schedule`
--
ALTER TABLE `restaurant_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_subscriptions`
--
ALTER TABLE `restaurant_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_tag`
--
ALTER TABLE `restaurant_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_wallets`
--
ALTER TABLE `restaurant_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_zone`
--
ALTER TABLE `restaurant_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_logs`
--
ALTER TABLE `subscription_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_packages`
--
ALTER TABLE `subscription_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_pauses`
--
ALTER TABLE `subscription_pauses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_transactions`
--
ALTER TABLE `subscription_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_logs`
--
ALTER TABLE `time_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_ref_code_unique` (`ref_code`),
  ADD KEY `users_zone_id_index` (`zone_id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variation_options`
--
ALTER TABLE `variation_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_phone_unique` (`phone`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendor_employees`
--
ALTER TABLE `vendor_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_employees_email_unique` (`email`);

--
-- Indexes for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_payments`
--
ALTER TABLE `wallet_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_features`
--
ALTER TABLE `admin_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_testimonials`
--
ALTER TABLE `admin_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_backs`
--
ALTER TABLE `cash_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_back_histories`
--
ALTER TABLE `cash_back_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `characteristics`
--
ALTER TABLE `characteristics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characteristic_restaurant`
--
ALTER TABLE `characteristic_restaurant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cuisine_restaurant`
--
ALTER TABLE `cuisine_restaurant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_settings`
--
ALTER TABLE `data_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_man_wallets`
--
ALTER TABLE `delivery_man_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disbursements`
--
ALTER TABLE `disbursements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disbursement_details`
--
ALTER TABLE `disbursement_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disbursement_withdrawal_methods`
--
ALTER TABLE `disbursement_withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_roles`
--
ALTER TABLE `employee_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_tag`
--
ALTER TABLE `food_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incentives`
--
ALTER TABLE `incentives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incentive_logs`
--
ALTER TABLE `incentive_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_configs`
--
ALTER TABLE `mail_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_messages`
--
ALTER TABLE `notification_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_cancel_reasons`
--
ALTER TABLE `order_cancel_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `priority_lists`
--
ALTER TABLE `priority_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provide_d_m_earnings`
--
ALTER TABLE `provide_d_m_earnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `react_promotional_banners`
--
ALTER TABLE `react_promotional_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `react_services`
--
ALTER TABLE `react_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_reasons`
--
ALTER TABLE `refund_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_configs`
--
ALTER TABLE `restaurant_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_schedule`
--
ALTER TABLE `restaurant_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_subscriptions`
--
ALTER TABLE `restaurant_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_tag`
--
ALTER TABLE `restaurant_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_wallets`
--
ALTER TABLE `restaurant_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_zone`
--
ALTER TABLE `restaurant_zone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_logs`
--
ALTER TABLE `subscription_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_packages`
--
ALTER TABLE `subscription_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_pauses`
--
ALTER TABLE `subscription_pauses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_logs`
--
ALTER TABLE `time_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_options`
--
ALTER TABLE `variation_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor_employees`
--
ALTER TABLE `vendor_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_payments`
--
ALTER TABLE `wallet_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
