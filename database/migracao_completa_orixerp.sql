-- ============================================================
-- MIGRAÇÃO COMPLETA ORIX ERP
-- Banco de dados: inlaud99_orixerp
-- Usuário: inlaud99_admin
-- Gerado em: 25/03/2026
-- Baseado no dump completo do sistema INLAUDO
-- ============================================================
-- INSTRUÇÕES DE USO:
-- 1. Crie o banco: CREATE DATABASE inlaud99_orixerp CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- 2. Execute: mysql -u inlaud99_admin -p inlaud99_orixerp < migracao_completa_orixerp.sql
-- ============================================================

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `inlaud99_orixerp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` json DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `context`, `details`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 3, 'access_denied', '{\"permission\": \"view_clients\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 16:35:59'),
(2, 3, 'access_denied', '{\"permission\": \"view_clients\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 16:36:05'),
(3, 3, 'logout', NULL, NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 16:36:52'),
(4, 3, 'login_success', '{\"email\": \"teste@email.com\", \"user_id\": 3, \"dev_override\": \"superadmin\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 16:43:23'),
(5, 3, 'login_success', '{\"email\": \"teste@email.com\", \"user_id\": 3, \"dev_override\": \"superadmin\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 18:13:47'),
(6, 3, 'logout', NULL, NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 18:22:33'),
(7, 3, 'login_success', '{\"email\": \"teste@email.com\", \"user_id\": 3, \"dev_override\": \"superadmin\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 18:32:54'),
(8, 3, 'login_success', '{\"email\": \"teste@email.com\", \"user_id\": 3, \"dev_override\": \"superadmin\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 19:22:03'),
(9, 3, 'login_success', '{\"email\": \"teste@email.com\", \"user_id\": 3, \"dev_override\": \"superadmin\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 20:15:38'),
(10, 3, 'logout', NULL, NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 20:38:24'),
(11, NULL, 'forgot_password_requested', '{\"user_id\": 3}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 22:25:36'),
(12, NULL, 'login_failed', '{\"email\": \"admin@teste.com\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 23:57:07'),
(13, 3, 'login_success', '{\"email\": \"teste@email.com\", \"user_id\": 3, \"dev_override\": \"superadmin\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 23:57:21'),
(14, 3, 'logout', NULL, NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-03 23:57:35'),
(15, 3, 'login_success', '{\"email\": \"teste@email.com\", \"user_id\": 3, \"dev_override\": \"superadmin\"}', NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 00:36:16'),
(16, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 01:42:06'),
(17, 3, 'logout', NULL, NULL, '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 02:37:23'),
(18, NULL, 'login_failed', NULL, '{\"email\":\"teste@admin.com\"}', '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 02:37:37'),
(19, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '138.0.67.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 02:37:52'),
(20, NULL, 'login_failed', NULL, '{\"email\":\"admin@email.com\"}', '179.84.144.70', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/144.0.7559.95 Mobile/15E148 Safari/604.1', '2026-02-04 12:52:50'),
(21, NULL, 'login_failed', NULL, '{\"email\":\"admin@email.com\"}', '179.84.144.70', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/144.0.7559.95 Mobile/15E148 Safari/604.1', '2026-02-04 12:53:10'),
(22, NULL, 'login_failed', NULL, '{\"email\":\"admin@email.com\"}', '179.84.144.70', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/144.0.7559.95 Mobile/15E148 Safari/604.1', '2026-02-04 12:53:32'),
(23, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '179.172.141.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 15:32:40'),
(24, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '201.17.208.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:27:53'),
(25, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '201.17.208.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-04 23:34:37'),
(26, NULL, 'login_failed', NULL, '{\"email\":\"teste@emai.com\"}', '201.17.208.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 00:29:49'),
(27, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '201.17.208.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 00:30:02'),
(28, NULL, 'login_failed', NULL, '{\"email\":\"admin@teste.com\"}', '177.182.222.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 02:52:29'),
(29, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '177.182.222.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 02:52:39'),
(30, 3, 'create_client', NULL, '{\"client_id\":\"1\",\"razao_social\":\"ANDRE SOARES E SILVS\"}', '177.182.222.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 03:18:51'),
(31, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '187.20.29.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:39:01'),
(32, 3, 'logout', NULL, NULL, '187.20.29.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 15:40:07'),
(33, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-05 21:53:48'),
(34, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 00:06:27'),
(35, 3, 'create_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"Chopp On 24 Horas Unidade 01 LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 00:13:04'),
(36, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"Chopp On 24 Horas Unidade 01 LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 00:13:57'),
(37, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"teste@email.com\",\"role\":\"superadmin\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 00:40:33'),
(38, 3, 'create_nota_fiscal', NULL, '{\"id\":\"1\",\"numero_nf\":\"35\",\"serie\":\"900\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 00:41:59'),
(39, 3, 'import_nota_fiscal_failed', NULL, '{\"import_id\":\"1\",\"xml_path\":\"storage\\/uploads\\/notas_fiscais_importacoes\\/3\\/34a51c8839c59966b785ca102cf579d0.xml\",\"error\":\"Documento do destinat\\u00e1rio n\\u00e3o encontrado no XML.\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 00:43:00'),
(40, 3, 'update_email_config', NULL, '{\"status\":\"ativo\",\"protocol\":\"ssl\",\"host\":\"smtp.gmail.com\",\"port\":465}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:01:32'),
(41, 3, 'test_email_failed', NULL, '{\"error\":\"crypto_error\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:01:36'),
(42, 3, 'test_email_failed', NULL, '{\"error\":\"crypto_error\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:01:40'),
(43, 3, 'test_email_failed', NULL, '{\"error\":\"crypto_error\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:01:53'),
(44, 3, 'test_email_failed', NULL, '{\"error\":\"crypto_error\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:08:35'),
(45, 3, 'update_email_config', NULL, '{\"status\":\"ativo\",\"protocol\":\"ssl\",\"host\":\"smtp.gmail.com\",\"port\":465}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:08:42'),
(46, 3, 'logout', NULL, NULL, '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:39:10'),
(47, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:39:22'),
(48, 3, 'update_email_config', NULL, '{\"status\":\"ativo\",\"protocol\":\"ssl\",\"host\":\"smtp.gmail.com\",\"port\":465}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:56:10'),
(49, 3, 'update_email_config', NULL, '{\"status\":\"ativo\",\"protocol\":\"tls\",\"host\":\"smtp.gmail.com\",\"port\":587}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 01:59:21'),
(50, 3, 'update_email_config', NULL, '{\"status\":\"ativo\",\"protocol\":\"tls\",\"host\":\"smtp.gmail.com\",\"port\":587}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 02:13:18'),
(51, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 02:42:54'),
(52, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 14:20:26'),
(53, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 16:49:14'),
(54, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"62137114000135\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 16:49:35'),
(55, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"52282392000122\",\"razao_social\":\"DISTRIBUIDORA DE BEBIDAS SAO JOSE DE ALMEIDA LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 16:49:51'),
(56, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"52282392000122\",\"razao_social\":\"DISTRIBUIDORA DE BEBIDAS SAO JOSE DE ALMEIDA LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 16:51:12'),
(57, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"Chopp On 24 Horas Unidade 01 LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 16:54:56'),
(58, 3, 'create_fornecedor', NULL, '{\"id\":\"1\",\"nome\":\"IOSEI PARTICIPA\\u00c7\\u00d5ES LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-06 17:34:48'),
(59, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-07 01:31:10'),
(60, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"62137114000135\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-07 01:31:29'),
(61, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"62137114000135\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-02-07 01:39:32'),
(62, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:29:25'),
(63, 3, 'create_plano_conta', NULL, '{\"id\":\"30\",\"codigo\":\"1.01\",\"nome\":\"FORNECEDOR DIVERSOS\"}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:30:40'),
(64, 3, 'create_conta_pagar', NULL, '{\"id\":\"1\",\"descricao\":\"MENSALIDADE ACELERADOR - GAMA\",\"valor\":\"12000\"}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:31:51'),
(65, 3, 'upload_conta_pagar_anexo', NULL, '{\"id\":\"1\",\"conta_pagar_id\":1}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:35:20'),
(66, 3, 'upload_conta_pagar_anexo', NULL, '{\"id\":\"2\",\"conta_pagar_id\":1}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:35:28'),
(67, 3, 'update_conta_pagar', NULL, '{\"id\":1,\"descricao\":\"MENSALIDADE ACELERADOR - GAMA\",\"valor\":\"12000.00\"}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:36:08'),
(68, 3, 'update_asaas_config', NULL, '{\"environment\":\"production\",\"status\":\"active\"}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:45:56'),
(69, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:47:07'),
(70, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 22:47:39'),
(71, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 23:36:48'),
(72, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-21 23:37:51'),
(73, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 02:48:12'),
(74, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 02:48:25'),
(75, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35700002\",\"cidade\":\"Sete Lagoas\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:08:53'),
(76, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"62137114000135\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:08:59'),
(77, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35700002\",\"cidade\":\"Sete Lagoas\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:08:59'),
(78, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35700002\",\"cidade\":\"Sete Lagoas\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:08:59'),
(79, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:09:13'),
(80, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:09:16'),
(81, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:09:20'),
(82, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:09:32'),
(83, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:09:32'),
(84, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:09:33'),
(85, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:10:02'),
(86, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:10:48'),
(87, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:10:48'),
(88, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:10:49'),
(89, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:11:00'),
(90, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:11:01'),
(91, 3, 'logout', NULL, NULL, '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:25:45'),
(92, NULL, 'login_failed', NULL, '{\"email\":\"asoaresbh@gmail.com\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:25:56'),
(93, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:31:56'),
(94, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:42:32'),
(95, 3, 'logout', NULL, NULL, '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:42:32'),
(96, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:42:40'),
(97, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":1}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:42:52'),
(98, NULL, 'logout_portal', NULL, '{\"portal_id\":1}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:43:33'),
(99, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:43:49'),
(100, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 03:43:49'),
(101, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"1\",\"usuario_id\":3,\"cliente_id\":1,\"valor\":1.100000000000000088817841970012523233890533447265625,\"meio_pagamento\":\"pix\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 04:06:12'),
(102, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 04:06:47'),
(103, 3, 'update_conta_receber', NULL, '{\"id\":1,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":1.100000000000000088817841970012523233890533447265625}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 04:07:30'),
(104, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 04:08:05'),
(105, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 04:09:29'),
(106, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:00:58'),
(107, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:00:58'),
(108, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:01:12'),
(109, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:01:12'),
(110, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:01:12'),
(111, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:18:55'),
(112, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:18:55'),
(113, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:18:55'),
(114, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:19:25'),
(115, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:19:26'),
(116, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:19:43'),
(117, 3, 'update_asaas_config', NULL, '{\"environment\":\"production\",\"status\":\"active\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:24:18'),
(118, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:24:22'),
(119, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:26:06'),
(120, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:26:06'),
(121, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:26:06'),
(122, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:26:45'),
(123, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:26:46'),
(124, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:26:46'),
(125, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:27:00'),
(126, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:27:00'),
(127, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:27:01'),
(128, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:27:04'),
(129, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:27:04'),
(130, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:40:21'),
(131, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:40:21'),
(132, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:40:21'),
(133, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:47:55'),
(134, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:47:55'),
(135, 3, 'create_client', NULL, '{\"client_id\":\"3\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:49:28'),
(136, 3, 'update_client', NULL, '{\"client_id\":\"3\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:52:05'),
(137, 3, 'update_conta_receber', NULL, '{\"id\":1,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":1.100000000000000088817841970012523233890533447265625}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:54:25'),
(138, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:54:46'),
(139, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:55:19'),
(140, 3, 'logout', NULL, NULL, '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:55:19'),
(141, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 13:55:34'),
(142, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:05:13'),
(143, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:05:13'),
(144, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:06:13'),
(145, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:06:13'),
(146, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:29:25'),
(147, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:29:26'),
(148, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:31:10'),
(149, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:31:11'),
(150, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:31:22'),
(151, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:32:28'),
(152, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:32:28'),
(153, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:32:38'),
(154, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:52:00'),
(155, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:52:00'),
(156, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 14:53:56'),
(157, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 15:03:08'),
(158, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 15:03:09'),
(159, NULL, 'login_failed', NULL, '{\"email\":\"asoaresbh@gmail.com\",\"motivo\":\"senha_incorreta_portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 15:10:31'),
(160, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 15:10:45'),
(161, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:12:38'),
(162, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:12:38'),
(163, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:12:46'),
(164, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:12:46'),
(165, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:13:50'),
(166, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:13:50'),
(167, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"2\",\"usuario_id\":3,\"cliente_id\":3,\"valor\":16852,\"meio_pagamento\":\"checkout\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:55:35'),
(168, 3, 'update_conta_pagar', NULL, '{\"id\":1,\"descricao\":\"MENSALIDADE ACELERADOR - GAMA\",\"valor\":\"12000.00\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:56:29'),
(169, 3, 'update_conta_pagar', NULL, '{\"id\":1,\"descricao\":\"MENSALIDADE ACELERADOR - GAMA\",\"valor\":\"12000.00\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 16:56:33'),
(170, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 17:58:21'),
(171, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 17:58:21'),
(172, 3, 'update_client', NULL, '{\"client_id\":\"3\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 18:23:32'),
(173, NULL, 'login_failed', NULL, '{\"email\":\"financeiro@orix.com.br\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 21:08:56'),
(174, NULL, 'login_failed', NULL, '{\"email\":\"financeiro@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 21:08:56'),
(175, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 21:09:17'),
(176, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 21:09:17'),
(177, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 21:10:49'),
(178, 3, 'update_asaas_config', NULL, '{\"environment\":\"production\",\"status\":\"active\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 21:23:42'),
(179, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-22 21:24:00'),
(180, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-26 12:10:31'),
(181, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-26 12:12:02'),
(182, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-26 12:12:05'),
(183, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-26 12:12:10'),
(184, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\"}', '201.57.170.129', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-02-26 18:09:20'),
(185, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '179.84.147.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/145.0.7632.108 Mobile/15E148 Safari/604.1', '2026-02-26 18:12:15'),
(186, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"179.84.147.40\"}', '179.84.147.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/145.0.7632.108 Mobile/15E148 Safari/604.1', '2026-02-26 18:12:15');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `context`, `details`, `ip_address`, `user_agent`, `created_at`) VALUES
(187, 3, 'logout', NULL, '{\"user_id\":3}', '179.84.147.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/145.0.7632.108 Mobile/15E148 Safari/604.1', '2026-02-26 18:13:07'),
(188, 3, 'logout', NULL, NULL, '179.84.147.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/145.0.7632.108 Mobile/15E148 Safari/604.1', '2026-02-26 18:13:07'),
(189, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"163.7.4.249\"}', '163.7.4.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36 Assetnote/1.0.0', '2026-02-27 01:15:16'),
(190, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"163.7.4.249\"}', '163.7.4.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36 Assetnote/1.0.0', '2026-02-27 01:15:17'),
(191, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:16:24'),
(192, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:16:24'),
(193, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:16:52'),
(194, 3, 'logout', NULL, NULL, '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:16:52'),
(195, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:16:56'),
(196, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:17:14'),
(197, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:17:14'),
(198, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:23:01'),
(199, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:23:01'),
(200, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:24:22'),
(201, 3, 'create_nota_fiscal', NULL, '{\"id\":\"2\",\"numero_nf\":\"35\",\"serie\":\"900\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:25:30'),
(202, 3, 'import_nota_fiscal_failed', NULL, '{\"import_id\":\"2\",\"xml_path\":\"storage\\/uploads\\/notas_fiscais_importacoes\\/3\\/24e64f90f24727d6569e38bb4836bf49.xml\",\"error\":\"Documento do destinat\\u00e1rio n\\u00e3o encontrado no XML.\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 01:25:55'),
(203, 3, 'update_conta_receber', NULL, '{\"id\":1,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":1.100000000000000088817841970012523233890533447265625}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:01:52'),
(204, 3, 'update_conta_receber', NULL, '{\"id\":1,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":1.100000000000000088817841970012523233890533447265625}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:02:15'),
(205, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:04:30'),
(206, 3, 'update_nota_fiscal', NULL, '{\"id\":2,\"numero_nf\":\"35\",\"serie\":\"900\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:08:05'),
(207, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:26:35'),
(208, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:26:35'),
(209, 3, 'upload_conta_receber_anexo', NULL, '{\"id\":\"1\",\"conta_receber_id\":1}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:27:08'),
(210, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:27:30'),
(211, 3, 'logout', NULL, NULL, '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:27:30'),
(212, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:27:36'),
(213, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:28:23'),
(214, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:28:23'),
(215, 3, 'update_nota_fiscal', NULL, '{\"id\":2,\"numero_nf\":\"35\",\"serie\":\"900\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:29:27'),
(216, 3, 'update_nota_fiscal', NULL, '{\"id\":2,\"numero_nf\":\"35\",\"serie\":\"900\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:30:07'),
(217, 3, 'update_nota_fiscal', NULL, '{\"id\":2,\"numero_nf\":\"35\",\"serie\":\"900\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:30:28'),
(218, 3, 'update_nota_fiscal', NULL, '{\"id\":2,\"numero_nf\":\"35\",\"serie\":\"900\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:40:51'),
(219, 3, 'upload_nota_fiscal_anexo', NULL, '{\"id\":\"1\",\"nota_fiscal_id\":2}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:41:03'),
(220, 3, 'update_nota_fiscal', NULL, '{\"id\":2,\"numero_nf\":\"35\",\"serie\":\"900\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 02:41:16'),
(221, 3, 'update_conta_receber', NULL, '{\"id\":1,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":1.100000000000000088817841970012523233890533447265625}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 03:08:10'),
(222, NULL, 'asaas_customer_created', NULL, '{\"customer_id\":\"cus_000163491458\",\"name\":\"ANDRE SOARES E SILVS\",\"email\":\"asoaresbh@gmail.com\",\"cpfCnpj\":\"31865440000135\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 03:08:29'),
(223, NULL, 'asaas_payment_creation_failed', NULL, '{\"error\":\"Asaas API Error (400): O valor m\\u00ednimo para cobran\\u00e7as com a forma de pagamento Pergunte ao Cliente \\u00e9 R$ 5,00.\",\"customer_id\":\"cus_000163491458\",\"value\":1.100000000000000088817841970012523233890533447265625}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 03:08:29'),
(224, NULL, 'asaas_payment_creation_failed', NULL, '{\"error\":\"Asaas API Error (400): O valor m\\u00ednimo para cobran\\u00e7as com a forma de pagamento Pergunte ao Cliente \\u00e9 R$ 5,00.\",\"customer_id\":\"cus_000163491458\",\"value\":1.100000000000000088817841970012523233890533447265625}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 03:08:54'),
(225, 3, 'update_conta_receber', NULL, '{\"id\":1,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":5.5}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 03:11:39'),
(226, NULL, 'asaas_payment_created', NULL, '{\"payment_id\":\"pay_5789c7wkv27x1d3x\",\"customer_id\":\"cus_000163491458\",\"value\":5.5,\"dueDate\":\"2026-02-27\",\"billingType\":\"UNDEFINED\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 03:11:48'),
(227, NULL, 'portal_pagamento_iniciado', NULL, '{\"portal_id\":1,\"cliente_id\":1,\"conta_id\":1,\"asaas_payment_id\":\"pay_5789c7wkv27x1d3x\",\"meio_pagamento\":\"checkout\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 03:11:48'),
(228, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 03:14:14'),
(229, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"163.7.4.249\"}', '163.7.4.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36 Assetnote/1.0.0', '2026-02-27 06:19:57'),
(230, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"163.7.4.249\"}', '163.7.4.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36 Assetnote/1.0.0', '2026-02-27 06:19:58'),
(231, NULL, 'login_failed', NULL, '{\"email\":\"larissarodrigues7@hotmail.com\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"177.129.191.12\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:28:48'),
(232, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 16:37:11'),
(233, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 16:37:11'),
(234, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"3\",\"usuario_id\":3,\"cliente_id\":2,\"valor\":900,\"meio_pagamento\":\"checkout\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 16:41:07'),
(235, 3, 'update_conta_receber', NULL, '{\"id\":3,\"descricao\":\"Licenciamento TAP\",\"valor\":900}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 16:41:40'),
(236, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 16:51:33'),
(237, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:51:49'),
(238, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":8}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:53:38'),
(239, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 16:53:53'),
(240, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:53:56'),
(241, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":9}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:54:09'),
(242, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:54:23'),
(243, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":10}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:54:37'),
(244, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:54:44'),
(245, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":11}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:55:00'),
(246, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:55:19'),
(247, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":12}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:55:50'),
(248, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:56:07'),
(249, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:57:39'),
(250, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:58:50'),
(251, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":15}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:59:03'),
(252, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:59:10'),
(253, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":16}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:59:22'),
(254, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 16:59:30'),
(255, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 16:59:38'),
(256, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 17:02:35'),
(257, NULL, 'logout_portal', NULL, '{\"portal_id\":1}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 17:08:47'),
(258, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 17:15:19'),
(259, NULL, 'logout_portal', NULL, '{\"portal_id\":1}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 17:31:02'),
(260, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 17:31:24'),
(261, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 17:32:38'),
(262, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":3}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 17:32:52'),
(263, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 17:40:25'),
(264, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 17:40:25'),
(265, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 17:50:14'),
(266, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\"}', '177.51.20.92', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-02-27 17:59:42'),
(267, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":2}', '177.51.20.92', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', '2026-02-27 18:00:28'),
(268, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 18:00:44'),
(269, NULL, 'logout_portal', NULL, '{\"portal_id\":2}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 18:02:50'),
(270, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 18:03:52'),
(271, NULL, 'login_success', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\",\"tipo\":\"portal\",\"ip\":\"177.129.191.12\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 18:16:40'),
(272, NULL, 'asaas_customer_created', NULL, '{\"customer_id\":\"cus_000163603358\",\"name\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\",\"email\":\"larissarodrigues7@hotmail.com\",\"cpfCnpj\":\"62137114000135\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 18:16:53'),
(273, NULL, 'asaas_payment_created', NULL, '{\"payment_id\":\"pay_47yrj41546zzxkpa\",\"customer_id\":\"cus_000163603358\",\"value\":900,\"dueDate\":\"2026-02-28\",\"billingType\":\"UNDEFINED\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 18:16:53'),
(274, NULL, 'portal_sync_status_atualizado', NULL, '{\"conta_id\":3,\"status_anterior\":\"aberta\",\"status_novo\":\"recebida\",\"asaas_payment_id\":\"pay_47yrj41546zzxkpa\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-27 18:20:05'),
(275, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 20:13:57'),
(276, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 20:13:57'),
(277, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 21:13:59'),
(278, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 21:13:59'),
(279, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 21:34:57'),
(280, 3, 'logout', NULL, NULL, '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 21:34:57'),
(281, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 21:35:03'),
(282, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 21:35:03'),
(283, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 21:38:34'),
(284, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:01:10'),
(285, 3, 'logout', NULL, NULL, '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:01:10'),
(286, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:01:18'),
(287, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:01:18'),
(288, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:02:56'),
(289, 3, 'logout', NULL, NULL, '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:02:56'),
(290, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:06:30'),
(291, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:06:30'),
(292, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"15309712000164\",\"razao_social\":\"GAMA, MELO E CIA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:43:34'),
(293, 3, 'client_cep_search_success', NULL, '{\"cep\":\"65074115\",\"cidade\":\"S\\u00e3o Lu\\u00eds\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:43:34'),
(294, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:44:05'),
(295, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:44:05'),
(296, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:45:20'),
(297, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:45:21'),
(298, 3, 'change_password', NULL, '{\"user_id\":3,\"timestamp\":\"2026-02-27 19:53:35\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:53:35'),
(299, 3, 'test_asaas_connection_failed', NULL, '{\"environment\":\"production\",\"http_code\":400,\"error\":\"Erro desconhecido\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 22:58:24'),
(300, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 23:07:27'),
(301, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 23:07:27'),
(302, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 23:08:10'),
(303, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 23:12:52'),
(304, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 23:12:52'),
(305, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 23:13:32'),
(306, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-27 23:13:33'),
(307, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:11:10'),
(308, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:11:10'),
(309, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:13:41'),
(310, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"04441470000141\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:28:51'),
(311, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:28:52'),
(312, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31610400\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:29:04'),
(313, 3, 'create_client', NULL, '{\"client_id\":\"4\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:29:10'),
(314, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:29:58'),
(315, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"20328753000138\",\"razao_social\":\"SANTA CASA DE MISERICORDIA DR ZACARIAS\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:42:03'),
(316, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35610000\",\"cidade\":\"Dores do Indai\\u00e1\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:42:03'),
(317, 3, 'create_client', NULL, '{\"client_id\":\"5\",\"razao_social\":\"SANTA CASA DE MISERICORDIA DR ZACARIAS\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:43:33'),
(318, 3, 'update_conta_receber', NULL, '{\"id\":2,\"descricao\":\"Licenciamento Software de Acelera\\u00e7\\u00e3o RM\",\"valor\":16852}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:56:44'),
(319, 3, 'delete_conta_receber', NULL, '{\"id\":2,\"descricao\":\"Licenciamento Software de Acelera\\u00e7\\u00e3o RM\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 00:57:25'),
(320, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"4\",\"usuario_id\":3,\"cliente_id\":4,\"valor\":2282.5,\"meio_pagamento\":\"checkout\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:00:26'),
(321, 3, 'upload_conta_receber_anexo', NULL, '{\"id\":\"2\",\"conta_receber_id\":4}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:00:51'),
(322, 3, 'update_conta_receber', NULL, '{\"id\":4,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":2282.5}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:02:58'),
(323, 3, 'update_conta_receber', NULL, '{\"id\":4,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":2282.5}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:03:09'),
(324, 3, 'update_conta_receber', NULL, '{\"id\":4,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":2282.5}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:04:22'),
(325, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"5\",\"usuario_id\":3,\"cliente_id\":5,\"valor\":1904.5,\"meio_pagamento\":\"checkout\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:05:04'),
(326, 3, 'upload_conta_receber_anexo', NULL, '{\"id\":\"3\",\"conta_receber_id\":5}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:07:32'),
(327, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:09:14'),
(328, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35010172\",\"cidade\":\"Governador Valadares\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:09:17'),
(329, 3, 'update_client', NULL, '{\"client_id\":\"4\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:09:24'),
(330, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:22:42'),
(331, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:23:16'),
(332, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:23:16'),
(333, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"31865440000135\",\"razao_social\":\"31.865.440 ANDRE SOARES E SILVA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:23:41'),
(334, 3, 'client_cep_search_success', NULL, '{\"cep\":\"31620315\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:23:41'),
(335, 3, 'update_client', NULL, '{\"client_id\":\"1\",\"razao_social\":\"31.865.440 ANDRE SOARES E SILVA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:24:04'),
(336, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"52282392000122\",\"razao_social\":\"DISTRIBUIDORA DE BEBIDAS SAO JOSE DE ALMEIDA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:24:47'),
(337, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35830000\",\"cidade\":\"Jaboticatubas\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:24:47'),
(338, 3, 'create_client', NULL, '{\"client_id\":\"6\",\"razao_social\":\"DISTRIBUIDORA DE BEBIDAS SAO JOSE DE ALMEIDA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:25:42'),
(339, 3, 'update_client', NULL, '{\"client_id\":\"6\",\"razao_social\":\"DISTRIBUIDORA DE BEBIDAS SAO JOSE DE ALMEIDA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:25:59'),
(340, 3, 'create_contact', NULL, '{\"client_id\":6,\"nome\":\"ANDRE SOARES E SILVA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:26:14'),
(341, NULL, 'logout_portal', NULL, '{\"portal_id\":1}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:27:03'),
(342, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":4,\"email\":\"financeiro@distribuidorasja.com.br\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:27:08'),
(343, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":4}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:27:33'),
(344, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"6\",\"usuario_id\":3,\"cliente_id\":6,\"valor\":5,\"meio_pagamento\":\"checkout\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:28:15'),
(345, NULL, 'asaas_customer_created', NULL, '{\"customer_id\":\"cus_000163675753\",\"name\":\"DISTRIBUIDORA DE BEBIDAS SAO JOSE DE ALMEIDA LTDA\",\"email\":\"financeiro@distribuidorasja.com.br\",\"cpfCnpj\":\"52282392000122\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:28:27'),
(346, NULL, 'asaas_payment_created', NULL, '{\"payment_id\":\"pay_5tzpkve1lzw3mueq\",\"customer_id\":\"cus_000163675753\",\"value\":5,\"dueDate\":\"2026-02-28\",\"billingType\":\"UNDEFINED\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:28:27'),
(347, NULL, 'portal_sync_status_atualizado', NULL, '{\"conta_id\":6,\"status_anterior\":\"aberta\",\"status_novo\":\"recebida\",\"asaas_payment_id\":\"pay_5tzpkve1lzw3mueq\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:28:59'),
(348, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"7\",\"usuario_id\":3,\"cliente_id\":6,\"valor\":5.5,\"meio_pagamento\":\"checkout\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:46:39'),
(349, NULL, 'asaas_payment_created', NULL, '{\"payment_id\":\"pay_nkinn0p93m68dyus\",\"customer_id\":\"cus_000163675753\",\"value\":5.5,\"dueDate\":\"2026-02-28\",\"billingType\":\"UNDEFINED\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:46:59'),
(350, NULL, 'portal_sync_status_atualizado', NULL, '{\"conta_id\":7,\"status_anterior\":\"aberta\",\"status_novo\":\"recebida\",\"asaas_payment_id\":\"pay_nkinn0p93m68dyus\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 01:47:55'),
(351, NULL, 'login_success', NULL, '{\"portal_id\":4,\"email\":\"financeiro@distribuidorasja.com.br\",\"tipo\":\"portal\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 11:52:53'),
(352, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 11:55:27'),
(353, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 11:55:27'),
(354, 3, 'upload_conta_receber_anexo', NULL, '{\"id\":\"4\",\"conta_receber_id\":5}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 11:59:30'),
(355, 3, 'upload_conta_receber_anexo', NULL, '{\"id\":\"5\",\"conta_receber_id\":4}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 11:59:51'),
(356, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:00:17'),
(357, NULL, 'login_failed', NULL, '{\"email\":\"andre@orix.com.br\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"219.162.227.23\"}', '219.162.227.23', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-02-28 12:04:45'),
(358, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"09476846000177\",\"razao_social\":\"BG - IMAGENS TECNICAS RADIOLOGICAS LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:07:04'),
(359, 3, 'client_cep_search_success', NULL, '{\"cep\":\"32341510\",\"cidade\":\"Contagem\",\"_provedor\":\"ViaCEP\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:07:05'),
(360, 3, 'create_client', NULL, '{\"client_id\":\"7\",\"razao_social\":\"BG - IMAGENS TECNICAS RADIOLOGICAS LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:08:22'),
(361, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"8\",\"usuario_id\":3,\"cliente_id\":7,\"valor\":1530,\"meio_pagamento\":\"checkout\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:11:22'),
(362, 3, 'upload_conta_receber_anexo', NULL, '{\"id\":\"6\",\"conta_receber_id\":8}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:11:40'),
(363, 3, 'upload_conta_receber_anexo', NULL, '{\"id\":\"7\",\"conta_receber_id\":8}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:11:50'),
(364, 3, 'update_conta_receber', NULL, '{\"id\":8,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":1530}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:11:56'),
(365, 3, 'crm_lead_criado', NULL, '{\"lead_id\":\"1\",\"usuario_id\":3}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:27:58'),
(366, 3, 'create_user', NULL, '{\"created_by\":3,\"new_user_id\":\"4\",\"name\":\"RENATA CAVALIERE\",\"email\":\"renata@vivereconsultoria.com.br\",\"role\":\"operador\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:37:40');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `context`, `details`, `ip_address`, `user_agent`, `created_at`) VALUES
(367, 3, 'user_create_exception', NULL, '{\"error\":\"SMTP: resposta inesperada. Esperado 235, obtido: 535-5.7.8 Username and Password not accepted. For more information, go to\\r\\n535 5.7.8  https:\\/\\/support.google.com\\/mail\\/?p=BadCredentials 00721157ae682-79876c8d209sm32374777b3.49 - gsmtp\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 12:37:40'),
(368, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 13:18:05'),
(369, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 13:18:05'),
(370, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 13:18:32'),
(371, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 14:20:20'),
(372, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 14:20:20'),
(373, 3, 'update_client', NULL, '{\"client_id\":\"7\",\"razao_social\":\"BG - IMAGENS TECNICAS RADIOLOGICAS LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 14:29:42'),
(374, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":5,\"email\":\"geraldohumbertogf@yahoo.com.br\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 14:31:11'),
(375, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 15:53:08'),
(376, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.54\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 15:53:08'),
(377, 3, 'update_client', NULL, '{\"client_id\":\"6\",\"razao_social\":\"DISTRIBUIDORA DE BEBIDAS SAO JOSE DE ALMEIDA LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 15:53:57'),
(378, 3, 'update_client', NULL, '{\"client_id\":\"4\",\"razao_social\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\"}', '200.229.247.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 15:56:15'),
(379, NULL, 'login_success', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\",\"tipo\":\"portal\",\"ip\":\"177.129.191.12\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-28 16:21:10'),
(380, NULL, 'login_success', NULL, '{\"portal_id\":1,\"email\":\"asoaresbh@gmail.com\",\"tipo\":\"portal\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 16:26:27'),
(381, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35700002\",\"cidade\":\"Sete Lagoas\",\"_provedor\":\"ViaCEP\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 16:26:54'),
(382, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 16:26:58'),
(383, 3, 'update_client', NULL, '{\"client_id\":\"1\",\"razao_social\":\"31.865.440 ANDRE SOARES E SILVA\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 16:43:12'),
(384, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:06:37'),
(385, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:06:37'),
(386, 3, 'update_client', NULL, '{\"client_id\":\"1\",\"razao_social\":\"31.865.440 ANDRE SOARES E SILVA\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:07:12'),
(387, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:45:08'),
(388, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:45:08'),
(389, 3, 'update_client', NULL, '{\"client_id\":\"1\",\"razao_social\":\"31.865.440 ANDRE SOARES E SILVA\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:45:15'),
(390, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:21:30'),
(391, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:21:30'),
(392, 3, 'conta_receber_created', NULL, '{\"conta_id\":\"9\",\"usuario_id\":3,\"cliente_id\":1,\"valor\":5.79999999999999982236431605997495353221893310546875,\"meio_pagamento\":\"checkout\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:31:50'),
(393, 3, 'update_conta_receber', NULL, '{\"id\":9,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":5.79999999999999982236431605997495353221893310546875}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:32:45'),
(394, NULL, 'login_success', NULL, '{\"portal_id\":4,\"email\":\"financeiro@distribuidorasja.com.br\",\"tipo\":\"portal\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:33:08'),
(395, NULL, 'asaas_payment_created', NULL, '{\"payment_id\":\"pay_plgycvis5cuxed9x\",\"customer_id\":\"cus_000163675753\",\"value\":5.79999999999999982236431605997495353221893310546875,\"dueDate\":\"2026-02-28\",\"billingType\":\"UNDEFINED\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:33:17'),
(396, NULL, 'portal_sync_status_atualizado', NULL, '{\"conta_id\":9,\"status_anterior\":\"aberta\",\"status_novo\":\"recebida\",\"asaas_payment_id\":\"pay_plgycvis5cuxed9x\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:33:44'),
(397, 3, 'update_client', NULL, '{\"client_id\":\"1\",\"razao_social\":\"31.865.440 ANDRE SOARES E SILVA\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:42:11'),
(398, 3, 'password_reset_exception', NULL, '{\"error\":\"SMTP: resposta inesperada. Esperado 235, obtido: 535-5.7.8 Username and Password not accepted. For more information, go to\\r\\n535 5.7.8  https:\\/\\/support.google.com\\/mail\\/?p=BadCredentials 00721157ae682-79876bf938bsm35102627b3.31 - gsmtp\",\"user_id\":4}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:46:40'),
(399, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:47:22'),
(400, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:27:30'),
(401, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:27:30'),
(402, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:27:37'),
(403, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:32:45'),
(404, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:36:25'),
(405, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:36:29'),
(406, NULL, 'login_success', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\",\"tipo\":\"portal\",\"ip\":\"177.129.191.12\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-02-28 22:05:31'),
(407, NULL, 'login_failed', NULL, '{\"email\":\"admsantacasa@yahoo.com.br\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"177.37.100.96\"}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 11:40:36'),
(408, NULL, 'login_failed', NULL, '{\"email\":\"admsantacasa@yahoo.com.br\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"177.37.100.96\"}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 11:42:52'),
(409, NULL, 'login_failed', NULL, '{\"email\":\"financeiro@distribuidorasja.com.br\",\"motivo\":\"senha_incorreta_portal\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 11:46:32'),
(410, NULL, 'login_success', NULL, '{\"portal_id\":4,\"email\":\"financeiro@distribuidorasja.com.br\",\"tipo\":\"portal\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 11:46:49'),
(411, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":6,\"email\":\"admsantacasa@yahoo.com.br\"}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 11:52:49'),
(412, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":6}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 11:53:40'),
(413, NULL, 'asaas_customer_created', NULL, '{\"customer_id\":\"cus_000163937862\",\"name\":\"SANTA CASA DE MISERICORDIA DR ZACARIAS\",\"email\":\"admsantacasa@yahoo.com.br\",\"cpfCnpj\":\"20328753000138\"}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 11:57:20'),
(414, NULL, 'asaas_payment_created', NULL, '{\"payment_id\":\"pay_37c6aese9r2llogm\",\"customer_id\":\"cus_000163937862\",\"value\":1904.5,\"dueDate\":\"2026-03-02\",\"billingType\":\"UNDEFINED\"}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 11:57:20'),
(415, NULL, 'login_success', NULL, '{\"portal_id\":6,\"email\":\"admsantacasa@yahoo.com.br\",\"tipo\":\"portal\",\"ip\":\"177.37.100.96\"}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 17:55:56'),
(416, NULL, 'login_success', NULL, '{\"portal_id\":6,\"email\":\"admsantacasa@yahoo.com.br\",\"tipo\":\"portal\",\"ip\":\"177.37.100.96\"}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-03 10:51:41'),
(417, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 00:57:33'),
(418, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 00:57:33'),
(419, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 00:57:55'),
(420, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 00:57:55'),
(421, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 00:58:16'),
(422, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 00:58:16'),
(423, 3, 'update_conta_pagar', NULL, '{\"id\":1,\"descricao\":\"MENSALIDADE ACELERADOR - GAMA\",\"valor\":\"12000.00\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 00:59:03'),
(424, 3, 'crm_lead_atualizado', NULL, '{\"lead_id\":1,\"usuario_id\":3}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 01:00:16'),
(425, 3, 'crm_lead_atualizado', NULL, '{\"lead_id\":1,\"usuario_id\":3}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 01:00:43'),
(426, 3, 'crm_lead_convertido', NULL, '{\"lead_id\":1,\"oportunidade_id\":\"1\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 01:00:54'),
(427, 3, 'crm_interacao_criada', NULL, '{\"interacao_id\":\"1\",\"op_id\":1}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 01:03:02'),
(428, NULL, 'login_failed', NULL, '{\"email\":\"recepcao.articulargv@gmail.com\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"191.11.24.19\"}', '191.11.24.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 11:43:16'),
(429, NULL, 'portal_primeiro_acesso_solicitado', NULL, '{\"portal_id\":7,\"email\":\"recepcao.articulargv@gmail.com\"}', '177.185.36.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 13:03:00'),
(430, NULL, 'portal_senha_criada', NULL, '{\"portal_id\":7}', '191.11.24.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 13:03:39'),
(431, NULL, 'asaas_customer_created', NULL, '{\"customer_id\":\"cus_000164325394\",\"name\":\"ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA\",\"email\":\"recepcao.articulargv@gmail.com\",\"cpfCnpj\":\"04441470000141\"}', '191.11.24.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 13:04:28'),
(432, NULL, 'asaas_payment_creation_failed', NULL, '{\"error\":\"Asaas API Error (400): N\\u00e3o \\u00e9 permitido data de vencimento inferior a hoje.\",\"customer_id\":\"cus_000164325394\",\"value\":2282.5}', '191.11.24.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 13:04:28'),
(433, NULL, 'asaas_payment_creation_failed', NULL, '{\"error\":\"Asaas API Error (400): N\\u00e3o \\u00e9 permitido data de vencimento inferior a hoje.\",\"customer_id\":\"cus_000164325394\",\"value\":2282.5}', '191.11.24.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 13:04:55'),
(434, NULL, 'login_failed', NULL, '{\"email\":\"renata@vivereconsultoria.com.br\"}', '186.205.7.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-04 13:48:39'),
(435, NULL, 'login_failed', NULL, '{\"email\":\"renata@vivereconsultoria.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"186.205.7.206\"}', '186.205.7.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-04 13:48:39'),
(436, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 13:51:24'),
(437, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 13:51:24'),
(438, 3, 'password_reset_exception', NULL, '{\"error\":\"Configura\\u00e7\\u00e3o de e-mail incompleta. Verifique as vari\\u00e1veis MAIL_* no .env\",\"user_id\":4}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 13:51:48'),
(439, NULL, 'login_failed', NULL, '{\"email\":\"renata@vivereconsultoria.com.br\"}', '186.205.7.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-04 13:54:36'),
(440, NULL, 'login_failed', NULL, '{\"email\":\"renata@vivereconsultoria.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"186.205.7.206\"}', '186.205.7.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-04 13:54:36'),
(441, NULL, 'login_failed', NULL, '{\"email\":\"renata@vivereconsultoria.com.br\"}', '186.205.7.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-04 13:57:43'),
(442, NULL, 'login_failed', NULL, '{\"email\":\"renata@vivereconsultoria.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"186.205.7.206\"}', '186.205.7.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-04 13:57:43'),
(443, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 14:24:42'),
(444, NULL, 'login_success', NULL, '{\"portal_id\":7,\"email\":\"recepcao.articulargv@gmail.com\",\"tipo\":\"portal\",\"ip\":\"177.185.36.96\"}', '177.185.36.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 14:27:38'),
(445, NULL, 'asaas_payment_creation_failed', NULL, '{\"error\":\"Asaas API Error (400): N\\u00e3o \\u00e9 permitido data de vencimento inferior a hoje.\",\"customer_id\":\"cus_000164325394\",\"value\":2282.5}', '177.185.36.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 14:28:39'),
(446, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"52.36.137.50\"}', '52.36.137.50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-04 15:57:45'),
(447, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"52.36.137.50\"}', '52.36.137.50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-04 15:57:45'),
(448, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"52.36.137.50\"}', '52.36.137.50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-04 15:57:46'),
(449, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"34.222.0.15\"}', '34.222.0.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-04 17:18:00'),
(450, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"34.222.0.15\"}', '34.222.0.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-04 17:18:01'),
(451, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"34.222.0.15\"}', '34.222.0.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-04 17:18:01'),
(452, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 01:11:33'),
(453, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 01:11:33'),
(454, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 01:13:27'),
(455, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 01:13:27'),
(456, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:06:29'),
(457, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:06:29'),
(458, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:06:43'),
(459, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:06:43'),
(460, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:06:57'),
(461, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:06:57'),
(462, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:07:14'),
(463, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.45\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:07:14'),
(464, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 12:08:42'),
(465, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"3.255.219.148\"}', '3.255.219.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-06 22:03:27'),
(466, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"3.255.219.148\"}', '3.255.219.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-06 22:03:27'),
(467, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"3.255.219.148\"}', '3.255.219.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-06 22:03:27'),
(468, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"54.185.3.51\"}', '54.185.3.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-06 22:29:54'),
(469, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"54.185.3.51\"}', '54.185.3.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-06 22:29:54'),
(470, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"54.185.3.51\"}', '54.185.3.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-06 22:29:54'),
(471, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 12:27:45'),
(472, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.20\"}', '200.229.247.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 12:27:45'),
(473, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:31:55'),
(474, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"190.154.219.98\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:31:55'),
(475, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:32:11'),
(476, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"190.154.219.98\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:32:11'),
(477, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:32:31'),
(478, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"190.154.219.98\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:32:31'),
(479, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:32:51'),
(480, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"190.154.219.98\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:32:51'),
(481, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 12:33:00'),
(482, 3, 'logout', NULL, NULL, '200.229.247.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 12:33:00'),
(483, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:33:56'),
(484, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"190.154.219.98\"}', '190.154.219.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-07 12:33:56'),
(485, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"54.254.220.223\"}', '54.254.220.223', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-07 21:04:18'),
(486, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"54.254.220.223\"}', '54.254.220.223', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-07 21:04:18'),
(487, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"54.254.220.223\"}', '54.254.220.223', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-07 21:04:19'),
(488, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 23:50:54'),
(489, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.112\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 23:50:54'),
(490, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 23:51:52'),
(491, 3, 'update_email_config', NULL, '{\"status\":\"ativo\",\"protocol\":\"tls\",\"host\":\"smtp.gmail.com\",\"port\":587}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 23:52:06'),
(492, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-08 23:53:38'),
(493, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 00:47:08'),
(494, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.112\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 00:47:08'),
(495, 3, 'password_reset_exception', NULL, '{\"error\":\"Configura\\u00e7\\u00e3o de e-mail incompleta. Verifique as vari\\u00e1veis MAIL_* no .env\",\"user_id\":4}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 00:51:49'),
(496, NULL, 'login_success', NULL, '{\"portal_id\":7,\"email\":\"recepcao.articulargv@gmail.com\",\"tipo\":\"portal\",\"ip\":\"189.27.52.145\"}', '189.27.52.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 11:30:51'),
(497, NULL, 'asaas_payment_creation_failed', NULL, '{\"error\":\"Asaas API Error (400): N\\u00e3o \\u00e9 permitido data de vencimento inferior a hoje.\",\"customer_id\":\"cus_000164325394\",\"value\":2282.5}', '189.27.52.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 11:30:58'),
(498, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 18:29:13'),
(499, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.112\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 18:29:13'),
(500, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 18:29:14'),
(501, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.112\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 18:29:14'),
(502, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '195.86.185.122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-09 18:37:36'),
(503, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"195.86.185.122\"}', '195.86.185.122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-09 18:37:36'),
(504, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '195.86.185.122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-09 18:37:50'),
(505, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"195.86.185.122\"}', '195.86.185.122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-09 18:37:50'),
(506, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 18:37:57'),
(507, 3, 'logout', NULL, NULL, '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 18:37:57'),
(508, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '195.86.185.122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-09 18:39:10'),
(509, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"195.86.185.122\"}', '195.86.185.122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-09 18:39:10'),
(510, NULL, 'login_success', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\",\"tipo\":\"portal\",\"ip\":\"177.129.191.12\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-09 21:14:26'),
(511, NULL, 'login_success', NULL, '{\"portal_id\":7,\"email\":\"recepcao.articulargv@gmail.com\",\"tipo\":\"portal\",\"ip\":\"177.185.36.96\"}', '177.185.36.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-10 11:20:21'),
(512, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-10 13:25:48'),
(513, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 00:01:31'),
(514, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.112\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 00:01:31'),
(515, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35702076\",\"cidade\":\"Sete Lagoas\",\"_provedor\":\"ViaCEP\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 00:05:39'),
(516, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35702076\",\"cidade\":\"Sete Lagoas\",\"_provedor\":\"ViaCEP\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 00:05:42'),
(517, 3, 'client_cep_search_success', NULL, '{\"cep\":\"35702076\",\"cidade\":\"Sete Lagoas\",\"_provedor\":\"ViaCEP\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 00:05:46'),
(518, 3, 'update_client', NULL, '{\"client_id\":\"2\",\"razao_social\":\"CHOPP ON 24 HORAS UNIDADE 01 LTDA\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 00:05:53'),
(519, NULL, 'login_success', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\",\"tipo\":\"portal\",\"ip\":\"177.129.191.12\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 00:07:34'),
(520, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"52.221.180.149\"}', '52.221.180.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-11 01:09:48'),
(521, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"52.221.180.149\"}', '52.221.180.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-11 01:09:48'),
(522, NULL, 'login_failed', NULL, '{\"email\":\"\",\"motivo\":\"email_nao_encontrado\",\"ip\":\"52.221.180.149\"}', '52.221.180.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2026-03-11 01:09:49'),
(523, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 01:28:59'),
(524, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.112\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 01:28:59'),
(525, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-11 01:29:18'),
(526, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:17:44'),
(527, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:17:44'),
(528, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:18:15'),
(529, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:18:15'),
(530, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"error\":\"Criptografia n\\u00e3o configurada\",\"error_type\":\"crypto_error\",\"technical_details\":\"Falha ao descriptografar valor sens\\u00edvel.\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:25:08'),
(531, 3, 'email_password_key_mismatch', NULL, '{\"usuario_id\":3,\"action\":\"Senha criptografada com chave diferente da atual \\u2014 necess\\u00e1rio redigitar\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:55:35'),
(532, 3, 'update_email_config', NULL, '{\"status\":\"ativo\",\"protocol\":\"tls\",\"host\":\"smtp.gmail.com\",\"port\":587}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:56:05'),
(533, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"to_email\":\"admin@orix.com.br\",\"error\":\"Call to undefined method App\\\\Services\\\\MailService::sendText()\",\"host\":\"smtp.gmail.com\",\"port\":587,\"username\":\"admin@orix.com.br\",\"protocol\":\"tls\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:56:08'),
(534, 3, 'update_email_config', NULL, '{\"status\":\"ativo\",\"protocol\":\"tls\",\"host\":\"smtp.gmail.com\",\"port\":587}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:58:28'),
(535, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"to_email\":\"admin@orix.com.br\",\"error\":\"Call to undefined method App\\\\Services\\\\MailService::sendText()\",\"host\":\"smtp.gmail.com\",\"port\":587,\"username\":\"admin@orix.com.br\",\"protocol\":\"tls\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 09:58:30'),
(536, NULL, 'login_success', NULL, '{\"portal_id\":6,\"email\":\"admsantacasa@yahoo.com.br\",\"tipo\":\"portal\",\"ip\":\"177.37.100.96\"}', '177.37.100.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-12 18:13:13'),
(537, NULL, 'login_success', NULL, '{\"portal_id\":7,\"email\":\"recepcao.articulargv@gmail.com\",\"tipo\":\"portal\",\"ip\":\"189.27.52.145\"}', '189.27.52.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 14:41:01');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `context`, `details`, `ip_address`, `user_agent`, `created_at`) VALUES
(538, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 21:55:23'),
(539, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 21:55:23'),
(540, 3, 'email_test_failure', NULL, '{\"usuario_id\":3,\"to_email\":\"admin@orix.com.br\",\"error\":\"Call to undefined method App\\\\Services\\\\MailService::sendText()\",\"host\":\"smtp.gmail.com\",\"port\":587,\"username\":\"admin@orix.com.br\",\"protocol\":\"tls\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 21:55:41'),
(541, 3, 'test_email_success', NULL, '{\"usuario_id\":3}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:06:35'),
(542, 3, 'password_reset_exception', NULL, '{\"error\":\"Configura\\u00e7\\u00e3o de e-mail incompleta. Verifique as vari\\u00e1veis MAIL_* no .env\",\"user_id\":4}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:08:28'),
(543, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:55:35'),
(544, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:55:35'),
(545, 3, 'logout', NULL, '{\"user_id\":3}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:56:36'),
(546, 3, 'logout', NULL, NULL, '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:56:36'),
(547, NULL, 'login_failed', NULL, '{\"email\":\"financeiro@distribuidorasja.com.br\",\"motivo\":\"senha_incorreta_portal\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:57:10'),
(548, NULL, 'login_failed', NULL, '{\"email\":\"financeiro@orix.com.br\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:57:18'),
(549, NULL, 'login_failed', NULL, '{\"email\":\"financeiro@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:57:18'),
(550, NULL, 'login_success', NULL, '{\"portal_id\":4,\"email\":\"financeiro@distribuidorasja.com.br\",\"tipo\":\"portal\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 22:57:38'),
(551, NULL, 'logout_portal', NULL, '{\"portal_id\":4}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 23:29:29'),
(552, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 23:29:36'),
(553, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-13 23:29:36'),
(554, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 01:10:11'),
(555, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 01:10:11'),
(556, 3, 'update_conta_receber', NULL, '{\"id\":4,\"descricao\":\"SERVI\\u00c7OS DE LAUDO\",\"valor\":2282.5}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 01:10:43'),
(557, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 02:32:30'),
(558, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 02:32:30'),
(559, 3, 'create_tabela_exame', NULL, '{\"id\":\"1\",\"nome_exame\":\"RAIO-X DE TORAX\",\"modalidade\":\"RX\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 02:38:45'),
(560, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-15 11:23:46'),
(561, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.104\"}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-15 11:23:46'),
(562, 3, 'test_email_success', NULL, '{\"usuario_id\":3}', '200.229.247.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-15 11:24:06'),
(563, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-16 12:49:23'),
(564, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '191.54.167.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-16 13:04:42'),
(565, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"191.54.167.122\"}', '191.54.167.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-16 13:04:42'),
(566, NULL, 'login_success', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\",\"tipo\":\"portal\",\"ip\":\"177.129.191.12\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-16 18:42:31'),
(567, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '187.32.249.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-16 19:47:46'),
(568, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"187.32.249.180\"}', '187.32.249.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-16 19:47:46'),
(569, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.187.164.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 02:55:25'),
(570, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.187.164.92\"}', '200.187.164.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 02:55:25'),
(571, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.187.164.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:46:51'),
(572, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.187.164.92\"}', '200.187.164.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:46:51'),
(573, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-17 18:01:11'),
(574, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.187.164.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 23:13:25'),
(575, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.187.164.92\"}', '200.187.164.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 23:13:25'),
(576, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.187.164.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-19 01:16:07'),
(577, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.187.164.92\"}', '200.187.164.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-19 01:16:07'),
(578, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:05:26'),
(579, NULL, 'logout_portal', NULL, '{\"portal_id\":2}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:40:07'),
(580, NULL, 'login_success', NULL, '{\"portal_id\":7,\"email\":\"recepcao.articulargv@gmail.com\",\"tipo\":\"portal\",\"ip\":\"189.27.50.107\"}', '189.27.50.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 20:47:33'),
(581, NULL, 'login_success', NULL, '{\"portal_id\":3,\"email\":\"larissarodrigues7@hotmail.com\",\"tipo\":\"portal\",\"ip\":\"177.129.191.12\"}', '177.129.191.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-20 14:57:41'),
(582, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '195.86.226.182', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-20 21:31:04'),
(583, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"195.86.226.182\"}', '195.86.226.182', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-20 21:31:04'),
(584, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '195.86.226.182', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-20 21:31:23'),
(585, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"195.86.226.182\"}', '195.86.226.182', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-20 21:31:23'),
(586, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '168.232.246.134', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-20 21:32:25'),
(587, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"168.232.246.134\"}', '168.232.246.134', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-20 21:32:25'),
(588, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 23:57:34'),
(589, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.69\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 23:57:35'),
(590, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 00:00:51'),
(591, NULL, 'login_failed', NULL, '{\"email\":\"admin@orix.com.br\",\"motivo\":\"senha_incorreta_erp\",\"ip\":\"200.229.247.69\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 00:00:51'),
(592, 3, 'email_alerta_disparo_erro', NULL, '{\"user_id\":3,\"alerta_id\":1,\"error\":\"Call to undefined method App\\\\Models\\\\ContaReceber::findAll()\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 00:02:30'),
(593, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '87.212.53.196', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-23 09:52:34'),
(594, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"87.212.53.196\"}', '87.212.53.196', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-23 09:52:34'),
(595, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 09:53:55'),
(596, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.69\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 09:53:55'),
(597, 3, 'test_email_success', NULL, '{\"usuario_id\":3}', '87.212.53.196', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-23 09:53:56'),
(598, 3, 'email_alerta_disparo_erro', NULL, '{\"user_id\":3,\"alerta_id\":2,\"error\":\"Call to undefined method App\\\\Models\\\\ContaReceber::findAll()\"}', '100.26.40.174', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36; Manus-User/1.0', '2026-03-23 09:55:03'),
(599, 3, 'email_alerta_salvar', NULL, '{\"user_id\":3,\"codigo\":\"financeiro_receber_vencer_3d\",\"success\":true}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 09:55:44'),
(600, 3, 'email_alerta_disparo_erro', NULL, '{\"user_id\":3,\"alerta_id\":2,\"error\":\"Call to undefined method App\\\\Models\\\\ContaReceber::findAll()\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 09:56:27'),
(601, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 11:29:29'),
(602, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 12:51:31'),
(603, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.69\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 12:51:31'),
(604, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 16:03:15'),
(605, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.69\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 16:03:15'),
(606, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 17:09:23'),
(607, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.69\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 17:09:23'),
(608, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"17403114000185\",\"razao_social\":\"BRASFILME COMERCIO EMPREENDIMENTOS E PARTICIPACOES LTDA\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 17:10:29'),
(609, 3, 'client_cep_search_success', NULL, '{\"cep\":\"30330110\",\"cidade\":\"Belo Horizonte\",\"_provedor\":\"ViaCEP\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 17:10:30'),
(610, 3, 'client_cnpj_search_success', NULL, '{\"cnpj\":\"09476846000177\",\"razao_social\":\"BG - IMAGENS TECNICAS RADIOLOGICAS LTDA\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 17:11:49'),
(611, 3, 'client_cnpj_search_failed', NULL, '{\"cnpj\":\"24282392000124\",\"error\":\"CNPJ inv\\u00e1lido - d\\u00edgitos verificadores\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 17:12:20'),
(612, 3, 'create_contact', NULL, '{\"client_id\":7,\"nome\":\"GERALDO HUMBERTO\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 17:14:51'),
(613, 3, 'update_client', NULL, '{\"client_id\":\"7\",\"razao_social\":\"BG - IMAGENS TECNICAS RADIOLOGICAS LTDA\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 17:15:16'),
(614, NULL, 'login_success', NULL, '{\"portal_id\":2,\"email\":\"imedicalma@gmail.com\",\"tipo\":\"portal\",\"ip\":\"201.57.170.129\"}', '201.57.170.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-24 20:15:37'),
(615, NULL, 'login_success', NULL, '{\"portal_id\":7,\"email\":\"recepcao.articulargv@gmail.com\",\"tipo\":\"portal\",\"ip\":\"189.27.48.140\"}', '189.27.48.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-25 12:09:13'),
(616, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"role\":\"superadmin\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-25 15:15:04'),
(617, 3, 'login_success', NULL, '{\"user_id\":3,\"email\":\"admin@orix.com.br\",\"tipo\":\"erp\",\"ip\":\"200.229.247.69\"}', '200.229.247.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-25 15:15:04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL COMMENT 'ID único do cliente',
  `tipo` enum('PF','PJ') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PJ' COMMENT 'Tipo de cliente: Pessoa Física ou Jurídica',
  `cpf_cnpj` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CPF (PF) ou CNPJ (PJ) - sem formatação',
  `razao_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Razão Social (PJ) ou Nome Completo (PF)',
  `nome_fantasia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nome Fantasia (PJ) ou Apelido (PF)',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'E-mail principal do cliente',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Website/URL do cliente',
  `cnae_principal` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'CNAE Principal (PJ)',
  `descricao_cnae` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Descrição do CNAE',
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rua/Avenida',
  `numero` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Número',
  `complemento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Complemento (apto, sala, etc)',
  `bairro` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bairro',
  `cidade` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cidade',
  `estado` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Estado (UF)',
  `cep` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'CEP',
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Telefone comercial',
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Celular principal',
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Usuário Instagram',
  `tiktok` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Usuário TikTok',
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Usuário/Página Facebook',
  `status` enum('ativo','inativo','suspenso') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo' COMMENT 'Status do cliente',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de cadastro',
  `data_atualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Data da última atualização',
  `usuario_id` int(11) NOT NULL COMMENT 'ID do usuário que cadastrou'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabela de Clientes - Armazena informações de PF e PJ';

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `tipo`, `cpf_cnpj`, `razao_social`, `nome_fantasia`, `email`, `website`, `cnae_principal`, `descricao_cnae`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `telefone`, `celular`, `instagram`, `tiktok`, `facebook`, `status`, `created_at`, `data_cadastro`, `data_atualizacao`, `usuario_id`) VALUES
(1, 'PJ', '31865440000135', '31.865.440 ANDRE SOARES E SILVA', 'ORIX Optimized Radiology', 'asoaresbh@gmail.com', '', '', '', 'Rua Soldado Ronaldo de Seixas', '163', 'casa', 'Europa', 'Belo Horizonte', 'MG', '31620315', '5531992746755', '5531992746755', '', '', '', 'ativo', '2026-02-27 22:02:24', '2026-02-05 03:18:51', '2026-02-28 19:53:11', 3),
(2, 'PJ', '62137114000135', 'CHOPP ON 24 HORAS UNIDADE 01 LTDA', 'CHOPP ON', 'larissarodrigues7@hotmail.com', '', '', '', 'Rua Santo André', '408', 'LOJA', 'Santa Maria', 'Sete Lagoas', 'MG', '35702076', '5555389991978', '5555389991978', '', '', '', 'ativo', '2026-02-27 22:02:24', '2026-02-06 00:13:04', '2026-03-11 00:05:53', 3),
(3, 'PJ', '15309712000164', 'GAMA, MELO E CIA LTDA', 'GAMA, MELO E CIA LTDA', 'imedicalma@gmail.com', '', '', '', 'Rua Claudinor Mendes da Silveira', '163', 'casa', '', 'Belo Horizonte', 'MG', '31610400', '5598983390049', '', '', '', '', 'ativo', '2026-02-27 22:02:24', '2026-02-22 13:49:28', '2026-02-28 19:53:11', 3),
(4, 'PJ', '04441470000141', 'ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA', 'ARTICULAR -FISIOTERAPIA E REABILITACAO LTDA', 'recepcao.articulargv@gmail.com', '', '', '', 'Avenida Sete de Setembro', '2587', 'de 2299/2300 a 3251/3252', 'Centro', 'Governador Valadares', 'MG', '35010172', '441155444', '', '', '', '', 'ativo', '2026-02-28 00:29:10', '2026-02-28 00:29:10', '2026-02-28 15:56:15', 3),
(5, 'PJ', '20328753000138', 'SANTA CASA DE MISERICORDIA DR ZACARIAS', 'SANTA CASA DE MISERICORDIA DR ZACARIAS', 'admsantacasa@yahoo.com.br', '', '', '', 'ALEXANDRE LACERDA FILHO', '289', '', 'CENTRO', 'DORES DO INDAIA', 'MG', '35610000', '5537935511200', '', '', '', '', 'ativo', '2026-02-28 00:43:33', '2026-02-28 00:43:33', '2026-02-28 19:53:11', 3),
(6, 'PJ', '52282392000122', 'DISTRIBUIDORA DE BEBIDAS SAO JOSE DE ALMEIDA LTDA', 'DISTRIBUIDORA SJA', 'financeiro@distribuidorasja.com.br', '', '', '', 'RUA 18', '154', '', 'NOVO BELO HORIZONTE', 'Jaboticatubas', 'MG', '35830000', '5531997678080', '', '', '', '', 'ativo', '2026-02-28 01:25:42', '2026-02-28 01:25:42', '2026-02-28 19:53:11', 3),
(7, 'PJ', '09476846000177', 'BG - IMAGENS TECNICAS RADIOLOGICAS LTDA', 'BG - IMAGENS TECNICAS RADIOLOGICAS LTDA', 'geraldohumbertogf@yahoo.com.br', '', '', '', 'Rua Giovani José Chiodi', '320', 'APARTAMENTO: 104;', 'Parque Belo Horizonte Industrial', 'Contagem', 'MG', '32341510', '5555319850306', '5531998026944', '', '', '', 'ativo', '2026-02-28 12:08:22', '2026-02-28 12:08:22', '2026-03-23 17:15:16', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_anexos`
--

CREATE TABLE `clientes_anexos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clientes_anexos`
--

INSERT INTO `clientes_anexos` (`id`, `cliente_id`, `usuario_id`, `file_path`, `original_name`, `file_size`, `mime_type`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '/public/uploads/clientes/2/arq_69a1cbf7c86e4.pdf', 'contrato_TAP_assinado.pdf', 115644, 'application/pdf', '2026-02-27 13:53:11', '2026-02-27 13:53:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes_contatos`
--

CREATE TABLE `clientes_contatos` (
  `id` int(11) NOT NULL COMMENT 'ID único do contato',
  `cliente_id` int(11) NOT NULL COMMENT 'ID do cliente (FK)',
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nome do contato',
  `departamento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Departamento (ex: Financeiro, RH, etc)',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'E-mail do contato',
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Celular do contato',
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Telefone do contato',
  `cargo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Cargo/Função',
  `observacoes` text COLLATE utf8mb4_unicode_ci COMMENT 'Observações adicionais',
  `status` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo' COMMENT 'Status do contato',
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de cadastro',
  `data_atualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Data da última atualização'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabela de Contatos - Relacionamento 1:N com Clientes';

--
-- Despejando dados para a tabela `clientes_contatos`
--

INSERT INTO `clientes_contatos` (`id`, `cliente_id`, `nome`, `departamento`, `email`, `celular`, `telefone`, `cargo`, `observacoes`, `status`, `data_cadastro`, `data_atualizacao`) VALUES
(1, 6, 'ANDRE SOARES E SILVA', 'Portaria', 'andre.programadorbh@gmail.com', '(31) 99274-6755', '(31) 99274-6755', '', '', 'ativo', '2026-02-28 01:26:14', '2026-02-28 01:26:14'),
(2, 7, 'GERALDO HUMBERTO', 'ADMINSTRADOR', 'GG@HOTMAIL.COM', '(31) 98602-4344', '(31) 98602-4344', '', '', 'ativo', '2026-03-23 17:14:51', '2026-03-23 17:14:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config_nfs`
--

CREATE TABLE `config_nfs` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL COMMENT 'Tenant/usuário dono da config',
  `layout_tipo` enum('padrao','personalizado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'padrao' COMMENT 'padrao = envia apenas valor+data; personalizado = envia JSON completo',
  `service_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SERVIÇOS DE LAUDO' COMMENT 'Descrição padrão do serviço para todas as NFs',
  `observations` text COLLATE utf8mb4_unicode_ci COMMENT 'Observações padrão impressas na NF',
  `municipal_service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Serviços de Saúde / Radiologia' COMMENT 'Nome do serviço municipal configurado no Asaas',
  `municipal_service_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Código de serviço municipal (ex: 4.03)',
  `municipal_service_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ID único do serviço municipal no Asaas (alternativo ao code)',
  `cnae` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '8640205' COMMENT 'CNAE da empresa (ex: 8640205 para radiologia)',
  `deductions` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Deduções padrão (não alteram o valor, apenas a base de cálculo do ISS)',
  `retain_iss` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Reter ISS na fonte',
  `iss_aliquota` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Alíquota ISS (%)',
  `pis_aliquota` decimal(5,2) NOT NULL DEFAULT '0.00',
  `cofins_aliquota` decimal(5,2) NOT NULL DEFAULT '0.00',
  `csll_aliquota` decimal(5,2) NOT NULL DEFAULT '0.00',
  `inss_aliquota` decimal(5,2) NOT NULL DEFAULT '0.00',
  `ir_aliquota` decimal(5,2) NOT NULL DEFAULT '0.00',
  `json_template` text COLLATE utf8mb4_unicode_ci COMMENT 'Template JSON personalizado. Placeholders: {{value}}, {{effectiveDate}}, {{payment}}, {{descricao}}',
  `emite_portal_nacional` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = emite pelo Portal Nacional (NFS-e Nacional)',
  `serie_nf` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Série da NF (80000-89999 para Portal Nacional)',
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Configurações de emissão de NFS-e via Asaas (Portal Nacional)';

--
-- Despejando dados para a tabela `config_nfs`
--

INSERT INTO `config_nfs` (`id`, `usuario_id`, `layout_tipo`, `service_description`, `observations`, `municipal_service_name`, `municipal_service_code`, `municipal_service_id`, `cnae`, `deductions`, `retain_iss`, `iss_aliquota`, `pis_aliquota`, `cofins_aliquota`, `csll_aliquota`, `inss_aliquota`, `ir_aliquota`, `json_template`, `emite_portal_nacional`, `serie_nf`, `ativo`, `created_at`, `updated_at`) VALUES
(1, 3, 'padrao', 'PRESTAÇÃO DE SERVIÇOS', '', 'PRESTAÇÃO DE SERVIÇOS', '14.02.01.001', '', '8640205', 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '', 1, '70000', 1, '2026-02-27 21:12:06', '2026-02-28 09:23:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas_pagar`
--

CREATE TABLE `contas_pagar` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `plano_conta_id` int(11) NOT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(15,2) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `codigo_barras` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recorrente` tinyint(1) NOT NULL DEFAULT '0',
  `recorrencia_tipo` enum('mensal','semanal','anual','customizada') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recorrencia_intervalo` int(11) DEFAULT NULL,
  `status` enum('aberta','paga','cancelada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aberta',
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `contas_pagar`
--

INSERT INTO `contas_pagar` (`id`, `usuario_id`, `plano_conta_id`, `fornecedor_id`, `descricao`, `valor`, `data_vencimento`, `data_pagamento`, `codigo_barras`, `recorrente`, `recorrencia_tipo`, `recorrencia_intervalo`, `status`, `observacoes`, `created_at`, `updated_at`) VALUES
(1, 3, 30, 1, 'MENSALIDADE ACELERADOR - GAMA', 12000.00, '2026-03-03', '2026-04-03', NULL, 1, 'mensal', 12, 'paga', NULL, '2026-02-21 22:31:51', '2026-03-04 00:59:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas_pagar_anexos`
--

CREATE TABLE `contas_pagar_anexos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `conta_pagar_id` int(11) NOT NULL,
  `file_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `contas_pagar_anexos`
--

INSERT INTO `contas_pagar_anexos` (`id`, `usuario_id`, `conta_pagar_id`, `file_path`, `original_name`, `mime_type`, `file_size`, `created_at`) VALUES
(1, 3, 1, 'storage/uploads/contas_pagar/3/1/3f97cfb3447350a03dd44067bfef84eb.pdf', '02 2026 - Nota Fiscal - 87 Andre Soares e Silva_Inlaudo_São Luis MA - SWIFTMR - NF454.pdf', 'application/pdf', 311438, '2026-02-21 22:35:20'),
(2, 3, 1, 'storage/uploads/contas_pagar/3/1/b300b7af86655adde5abff6d231289c8.pdf', '02 2026 - Boleto - 87 Andre Soares e Silva_Inlaudo_São Luis MA - SWIFTMR - NF454.pdf', 'application/pdf', 41872, '2026-02-21 22:35:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas_receber`
--

CREATE TABLE `contas_receber` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `plano_conta_id` int(11) NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(15,2) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_recebimento` date DEFAULT NULL,
  `status` enum('aberta','recebida','cancelada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aberta',
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `meio_pagamento` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recorrente` tinyint(1) NOT NULL DEFAULT '0',
  `recorrencia_tipo` enum('mensal','semanal','anual','customizada') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recorrencia_intervalo` int(11) DEFAULT NULL,
  `asaas_payment_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asaas_subscription_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_parcela` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Número da parcela atual',
  `total_parcelas` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Total de parcelas do grupo',
  `grupo_parcelas` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Identificador do grupo de parcelas',
  `external_reference` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `contas_receber`
--

INSERT INTO `contas_receber` (`id`, `usuario_id`, `cliente_id`, `plano_conta_id`, `descricao`, `valor`, `data_vencimento`, `data_recebimento`, `status`, `observacoes`, `meio_pagamento`, `recorrente`, `recorrencia_tipo`, `recorrencia_intervalo`, `asaas_payment_id`, `asaas_subscription_id`, `numero_parcela`, `total_parcelas`, `grupo_parcelas`, `external_reference`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 30, 'SERVIÇOS DE LAUDO', 5.50, '2026-02-27', '2026-02-26', 'recebida', NULL, 'checkout', 0, NULL, NULL, 'pay_5789c7wkv27x1d3x', NULL, NULL, NULL, NULL, 'u:3|cr:1', '2026-02-22 04:06:12', '2026-02-27 21:39:04'),
(2, 3, 3, 30, 'Licenciamento Software de Aceleração RM', 16852.00, '2026-02-27', '2026-02-27', 'cancelada', NULL, 'checkout', 1, 'mensal', 6, NULL, NULL, NULL, NULL, NULL, 'cr:2|u:3', '2026-02-22 16:55:35', '2026-02-28 00:57:25'),
(3, 3, 2, 30, 'Licenciamento TAP', 900.00, '2026-02-28', '2026-02-27', 'recebida', 'relativo a valores de 6 bicos', 'pix', 1, 'mensal', 12, 'pay_47yrj41546zzxkpa', NULL, NULL, NULL, NULL, 'u:3|cr:3', '2026-02-27 16:41:07', '2026-02-27 18:20:05'),
(4, 3, 4, 30, 'SERVIÇOS DE LAUDO', 2282.50, '2026-03-13', NULL, 'recebida', NULL, 'checkout', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cr:4|u:3', '2026-02-28 01:00:26', '2026-03-14 01:10:43'),
(5, 3, 5, 30, 'SERVIÇOS DE LAUDO', 1904.50, '2026-03-02', NULL, 'aberta', NULL, 'checkout', 0, NULL, NULL, 'pay_37c6aese9r2llogm', NULL, NULL, NULL, NULL, 'u:3|cr:5', '2026-02-28 01:05:04', '2026-03-02 11:57:20'),
(6, 3, 6, 30, 'PORTARIA EMPREENDIMENTO', 5.00, '2026-02-28', '2026-02-27', 'recebida', NULL, 'pix', 0, NULL, NULL, 'pay_5tzpkve1lzw3mueq', NULL, NULL, NULL, NULL, 'u:3|cr:6', '2026-02-28 01:28:15', '2026-02-28 01:28:59'),
(7, 3, 6, 30, 'PARCELA REFERENTE A HARWARE DEIXADO', 5.50, '2026-02-28', '2026-02-27', 'recebida', NULL, 'pix', 0, NULL, NULL, 'pay_nkinn0p93m68dyus', NULL, NULL, NULL, NULL, 'u:3|cr:7', '2026-02-28 01:46:39', '2026-02-28 01:47:55'),
(8, 3, 7, 30, 'SERVIÇOS DE LAUDO', 1530.00, '2026-03-02', NULL, 'aberta', NULL, 'checkout', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cr:8|u:3', '2026-02-28 12:11:22', '2026-02-28 12:11:22'),
(9, 3, 6, 30, 'SERVIÇOS DE LAUDO', 5.80, '2026-02-28', '2026-02-28', 'recebida', NULL, 'pix', 0, NULL, NULL, 'pay_plgycvis5cuxed9x', NULL, NULL, NULL, NULL, 'u:3|cr:9', '2026-02-28 19:31:50', '2026-02-28 19:33:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas_receber_anexos`
--

CREATE TABLE `contas_receber_anexos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `conta_receber_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `contas_receber_anexos`
--

INSERT INTO `contas_receber_anexos` (`id`, `usuario_id`, `conta_receber_id`, `file_path`, `original_name`, `mime_type`, `file_size`, `created_at`) VALUES
(1, 3, 1, 'storage/uploads/contas_receber/3/1/131674d778cc6a9265ad639a178270b8.pdf', 'file.pdf', 'application/pdf', 6738, '2026-02-27 02:27:08'),
(2, 3, 4, 'storage/uploads/contas_receber/3/4/6df426823d1d21a94906461945c727fd.pdf', 'REL. ARTICULAR..pdf', 'application/pdf', 438751, '2026-02-28 01:00:51'),
(3, 3, 5, 'storage/uploads/contas_receber/3/5/d0bc12c251035ce87f85eb370ecffed5.pdf', 'REAL STA CASA ZACARIAS.pdf', 'application/pdf', 443896, '2026-02-28 01:07:32'),
(4, 3, 5, 'storage/uploads/contas_receber/3/5/35667aafbaf9bd3aba5c11c99c1f3d59.xlsx', 'relatorio-geral-dtconclusaodetalhado2026-01-012026-01-31 (1).xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 88713, '2026-02-28 11:59:30'),
(5, 3, 4, 'storage/uploads/contas_receber/3/4/056d57e3fb40835dea54bd07c67aacef.xlsx', 'relatorio-geral-dtconclusaodetalhado2026-01-012026-01-31.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 29955, '2026-02-28 11:59:51'),
(6, 3, 8, 'storage/uploads/contas_receber/3/8/f5be058ebab88c49d49c87936f89cac6.pdf', 'BG IMAGENS.pdf', 'application/pdf', 444192, '2026-02-28 12:11:40'),
(7, 3, 8, 'storage/uploads/contas_receber/3/8/3b89c9c42cf375f9283c7993094e080e.xlsx', 'relatorio-geral-dtconclusaodetalhado2025-07-032026-02-28.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 29325, '2026-02-28 12:11:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `crm_interacoes`
--

CREATE TABLE `crm_interacoes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL COMMENT 'Quem registrou a interação (users.id)',
  `related_id` int(11) NOT NULL COMMENT 'ID do lead ou oportunidade',
  `related_type` enum('lead','oportunidade') COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_interacao` datetime NOT NULL COMMENT 'Data e hora da interação',
  `tipo_interacao` enum('email','telefone','whatsapp','reuniao_presencial','reuniao_online','visita_tecnica','proposta_enviada','contrato_enviado','outro') COLLATE utf8mb4_unicode_ci NOT NULL,
  `resumo` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'O que foi discutido / resultado',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `crm_interacoes`
--

INSERT INTO `crm_interacoes` (`id`, `usuario_id`, `related_id`, `related_type`, `data_interacao`, `tipo_interacao`, `resumo`, `created_at`) VALUES
(1, 3, 1, 'oportunidade', '2026-03-03 22:02:00', 'telefone', 'proximo contato marcado quinta feira.', '2026-03-04 01:03:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `crm_leads`
--

CREATE TABLE `crm_leads` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL COMMENT 'Tenant (users.id)',
  `nome_lead` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nome da empresa ou pessoa',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnpj` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'CNPJ para busca automática',
  `cpf` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_pessoa` enum('PJ','PF') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PJ',
  `razao_social` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome_fantasia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnae_principal` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricao_cnae` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complemento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origem` enum('indicacao','site','evento','linkedin','prospeccao_ativa','parceiro','outro') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'outro' COMMENT 'Como o lead chegou',
  `status_lead` enum('novo','contatado','qualificado','descartado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'novo',
  `segmento_principal` enum('clinica_imagem','hospital','upa_pronto_socorro','laboratorio','clinica_ortopedica','clinica_oncologica','consultorio_medico','outro') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tipo de estabelecimento',
  `especialidades_interesse` text COLLATE utf8mb4_unicode_ci COMMENT 'JSON array: ["Tomografia","Ressonância","Raio-X","Mamografia","Ultrassom","Densitometria","PET-CT","Outro"]',
  `volume_exames_mes` int(11) DEFAULT NULL COMMENT 'Estimativa de exames/mês',
  `equipamentos_possui` text COLLATE utf8mb4_unicode_ci COMMENT 'Equipamentos que o lead já possui',
  `sistema_atual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Sistema/software que utiliza atualmente',
  `num_medicos` int(11) DEFAULT NULL COMMENT 'Quantidade de médicos/radiologistas',
  `num_unidades` int(11) DEFAULT NULL COMMENT 'Quantidade de unidades/filiais',
  `acreditacao` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Acreditações (ONA, JCI, etc.)',
  `responsavel_nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsavel_cargo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ex: Diretor Clínico, Gestor de TI, Sócio',
  `responsavel_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsavel_telefone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `produtos_interesse` text COLLATE utf8mb4_unicode_ci COMMENT 'JSON array com IDs ou nomes de produtos/serviços',
  `data_proximo_contato` date DEFAULT NULL COMMENT 'Agendamento de follow-up',
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `convertido_em` enum('oportunidade','cliente') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Indica se foi convertido',
  `convertido_id` int(11) DEFAULT NULL COMMENT 'ID da oportunidade ou cliente gerado',
  `convertido_em_data` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `crm_leads`
--

INSERT INTO `crm_leads` (`id`, `usuario_id`, `nome_lead`, `email`, `telefone`, `celular`, `cnpj`, `cpf`, `tipo_pessoa`, `razao_social`, `nome_fantasia`, `cnae_principal`, `descricao_cnae`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `origem`, `status_lead`, `segmento_principal`, `especialidades_interesse`, `volume_exames_mes`, `equipamentos_possui`, `sistema_atual`, `num_medicos`, `num_unidades`, `acreditacao`, `responsavel_nome`, `responsavel_cargo`, `responsavel_email`, `responsavel_telefone`, `produtos_interesse`, `data_proximo_contato`, `observacoes`, `convertido_em`, `convertido_id`, `convertido_em_data`, `created_at`, `updated_at`) VALUES
(1, 3, 'ASSOCIACAO EVANGELICA BENEFICENTE DE MINAS GERAIS', NULL, '(31) 2138-8300', NULL, '17.214.743/0001-67', NULL, 'PJ', 'ASSOCIACAO EVANGELICA BENEFICENTE DE MINAS GERAIS', 'ASSOCIACAO EVANGELICA BENEFICENTE DE MINAS GERAIS-AEBMG', NULL, NULL, 'DR. ALIPIO GOULART', '25', NULL, 'SERRA', 'BELO HORIZONTE', 'MG', '30220330', 'prospeccao_ativa', 'qualificado', 'hospital', '[\"Tomografia\",\"Resson\\u00e2ncia Magn\\u00e9tica\",\"Raio-X\",\"Mamografia\"]', 5000, 'TC, RM E RAIO-X', 'TASY - PHILIPS', 3, 3, 'NÃO', 'CAIO', 'GETOR DE T.I', 'caio@evangelico.com.br', '31-993334345', NULL, '2026-03-05', NULL, 'oportunidade', 1, '2026-03-03 22:00:54', '2026-02-28 12:27:58', '2026-03-04 01:00:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `crm_oportunidades`
--

CREATE TABLE `crm_oportunidades` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL COMMENT 'Tenant (users.id)',
  `lead_id` int(11) DEFAULT NULL COMMENT 'Lead de origem (crm_leads.id)',
  `cliente_id` int(11) DEFAULT NULL COMMENT 'Cliente existente (clientes.id) — up-sell/cross-sell',
  `titulo_oportunidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ex: Contrato Laudos TC — Hospital São Lucas',
  `etapa_funil` enum('qualificacao','proposta','negociacao','fechamento') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'qualificacao',
  `valor_estimado` decimal(12,2) DEFAULT NULL,
  `data_fechamento_prevista` date DEFAULT NULL,
  `probabilidade_sucesso` tinyint(3) UNSIGNED DEFAULT NULL COMMENT '0-100 (%)',
  `status_oportunidade` enum('aberta','ganha','perdida') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aberta',
  `motivo_perda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modalidade_principal` enum('tomografia','ressonancia','raio_x','mamografia','ultrassom','densitometria','pet_ct','laudos_gerais','outro') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Principal modalidade de interesse',
  `tipo_contrato` enum('laudo_avulso','contrato_mensal','contrato_anual','projeto_implantacao','outro') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume_estimado_mes` int(11) DEFAULT NULL COMMENT 'Volume mensal estimado de exames',
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `crm_oportunidades`
--

INSERT INTO `crm_oportunidades` (`id`, `usuario_id`, `lead_id`, `cliente_id`, `titulo_oportunidade`, `etapa_funil`, `valor_estimado`, `data_fechamento_prevista`, `probabilidade_sucesso`, `status_oportunidade`, `motivo_perda`, `modalidade_principal`, `tipo_contrato`, `volume_estimado_mes`, `observacoes`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, 'Oportunidade — ASSOCIACAO EVANGELICA BENEFICENTE DE MINAS GERAIS', 'qualificacao', NULL, NULL, 20, 'aberta', NULL, NULL, NULL, NULL, NULL, '2026-03-04 01:00:54', '2026-03-04 01:00:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_alertas`
--

CREATE TABLE `email_alertas` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slug único ex: financeiro_contas_vencer_3d',
  `modulo` enum('financeiro','faturamento','crm') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nome legível do alerta',
  `descricao` text COLLATE utf8mb4_unicode_ci COMMENT 'Descrição detalhada do disparo',
  `antecedencia_dias` tinyint(3) UNSIGNED NOT NULL DEFAULT '3' COMMENT 'Dias antes do vencimento para disparar (0 = no dia, negativo = após)',
  `frequencia` enum('unico','diario','semanal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'diario' COMMENT 'Frequência de reenvio enquanto a condição persistir',
  `hora_disparo` time NOT NULL DEFAULT '08:00:00' COMMENT 'Hora do dia para processar o alerta (via cron)',
  `destinatarios` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON array de e-mails: ["email1","email2"] ou tokens: ["responsavel","vendedor","admin"]',
  `cc` text COLLATE utf8mb4_unicode_ci COMMENT 'JSON array de e-mails em cópia',
  `assunto_template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Template do assunto com variáveis: {cliente}, {valor}, {dias}, {vencimento}',
  `corpo_template` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Template HTML do corpo com variáveis dinâmicas',
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `ultimo_disparo` datetime DEFAULT NULL,
  `total_disparos` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `email_alertas`
--

INSERT INTO `email_alertas` (`id`, `usuario_id`, `codigo`, `modulo`, `nome`, `descricao`, `antecedencia_dias`, `frequencia`, `hora_disparo`, `destinatarios`, `cc`, `assunto_template`, `corpo_template`, `ativo`, `ultimo_disparo`, `total_disparos`, `created_at`, `updated_at`) VALUES
(1, 0, 'financeiro_receber_vencer_3d', 'financeiro', 'Contas a Receber — Vencendo em 3 dias', 'Alerta enviado 3 dias antes do vencimento de contas a receber em aberto. Ideal para acionar o setor financeiro e o cliente com antecedência.', 3, 'unico', '08:00:00', '[\"admin\",\"financeiro\"]', NULL, 'Alerta: Conta a Receber vencendo em {dias} dia(s) — {cliente}', '<p>Prezado(a),</p>\r\n<p>Este é um alerta automático do <strong>ERP ORIX</strong>.</p>\r\n<p>A conta a receber abaixo vence em <strong>{dias} dia(s)</strong>:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Cliente</strong></td><td>{cliente}</td></tr>\r\n  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>\r\n  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>\r\n</table>\r\n<p>Acesse o ERP para tomar as providências necessárias.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(2, 0, 'financeiro_receber_atraso', 'financeiro', 'Contas a Receber — Em Atraso', 'Alerta diário para contas a receber vencidas e não pagas. Disparado a partir do dia seguinte ao vencimento.', 0, 'diario', '09:00:00', '[\"admin\",\"financeiro\"]', NULL, 'URGENTE: Conta a Receber em atraso — {cliente} ({dias} dia(s))', '<p>Prezado(a),</p>\r\n<p>A conta a receber abaixo está <strong>em atraso há {dias} dia(s)</strong>:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Cliente</strong></td><td>{cliente}</td></tr>\r\n  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>\r\n  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>\r\n  <tr><td><strong>Dias em atraso</strong></td><td><span style=\"color:red\"><strong>{dias}</strong></span></td></tr>\r\n</table>\r\n<p>Providencie a cobrança imediatamente.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(3, 0, 'financeiro_pagar_vencer_3d', 'financeiro', 'Contas a Pagar — Vencendo em 3 dias', 'Alerta enviado 3 dias antes do vencimento de contas a pagar em aberto. Evita multas e juros por atraso.', 3, 'unico', '08:00:00', '[\"admin\",\"financeiro\"]', NULL, 'Alerta: Conta a Pagar vencendo em {dias} dia(s) — {fornecedor}', '<p>Prezado(a),</p>\r\n<p>A conta a pagar abaixo vence em <strong>{dias} dia(s)</strong>:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Fornecedor</strong></td><td>{fornecedor}</td></tr>\r\n  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>\r\n  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>\r\n</table>\r\n<p>Providencie o pagamento para evitar multas e juros.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(4, 0, 'financeiro_pagar_atraso', 'financeiro', 'Contas a Pagar — Em Atraso', 'Alerta diário para contas a pagar vencidas e não quitadas. Risco de multa, juros e protesto.', 0, 'diario', '09:00:00', '[\"admin\",\"financeiro\"]', NULL, 'URGENTE: Conta a Pagar em atraso — {fornecedor} ({dias} dia(s))', '<p>Prezado(a),</p>\r\n<p>A conta a pagar abaixo está <strong>em atraso há {dias} dia(s)</strong> e ainda não foi quitada:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Fornecedor</strong></td><td>{fornecedor}</td></tr>\r\n  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>\r\n  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>\r\n  <tr><td><strong>Dias em atraso</strong></td><td><span style=\"color:red\"><strong>{dias}</strong></span></td></tr>\r\n</table>\r\n<p>Regularize o pagamento imediatamente para evitar protesto.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(5, 0, 'financeiro_resumo_diario', 'financeiro', 'Resumo Financeiro Diário', 'Relatório diário consolidado com contas a vencer nos próximos 7 dias e contas em atraso.', 0, 'diario', '07:00:00', '[\"admin\"]', NULL, 'Resumo Financeiro do Dia — {data}', '<p>Prezado(a),</p>\r\n<p>Segue o resumo financeiro de <strong>{data}</strong>:</p>\r\n<h4>Contas a Receber</h4>\r\n<ul>\r\n  <li>Vencendo hoje: <strong>R$ {receber_hoje}</strong></li>\r\n  <li>Vencendo nos próximos 7 dias: <strong>R$ {receber_7d}</strong></li>\r\n  <li>Em atraso: <strong style=\"color:red\">R$ {receber_atraso}</strong></li>\r\n</ul>\r\n<h4>Contas a Pagar</h4>\r\n<ul>\r\n  <li>Vencendo hoje: <strong>R$ {pagar_hoje}</strong></li>\r\n  <li>Vencendo nos próximos 7 dias: <strong>R$ {pagar_7d}</strong></li>\r\n  <li>Em atraso: <strong style=\"color:red\">R$ {pagar_atraso}</strong></li>\r\n</ul>\r\n<p>Acesse o ERP para detalhes completos.</p>', 0, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(6, 0, 'faturamento_fatura_emitida', 'faturamento', 'Fatura Emitida — Notificação ao Cliente', 'Notificação automática enviada ao cliente no momento da emissão de uma nova fatura.', 0, 'unico', '00:00:00', '[\"cliente\"]', '[\"admin\"]', 'Nova Fatura Emitida — {numero_fatura} | ERP ORIX', '<p>Prezado(a) <strong>{cliente}</strong>,</p>\r\n<p>Informamos que uma nova fatura foi emitida em seu nome:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Número</strong></td><td>{numero_fatura}</td></tr>\r\n  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>\r\n  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>\r\n</table>\r\n<p>Em caso de dúvidas, entre em contato conosco.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(7, 0, 'faturamento_fatura_vencer_2d', 'faturamento', 'Fatura — Lembrete de Vencimento (2 dias)', 'Lembrete enviado ao cliente 2 dias antes do vencimento da fatura.', 2, 'unico', '08:00:00', '[\"cliente\"]', '[\"admin\",\"financeiro\"]', 'Lembrete: Sua fatura vence em {dias} dia(s) — {numero_fatura}', '<p>Prezado(a) <strong>{cliente}</strong>,</p>\r\n<p>Este é um lembrete de que sua fatura vence em <strong>{dias} dia(s)</strong>:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Número</strong></td><td>{numero_fatura}</td></tr>\r\n  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>\r\n</table>\r\n<p>Efetue o pagamento para evitar juros e multas.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(8, 0, 'faturamento_fatura_atraso', 'faturamento', 'Fatura — Em Atraso (cobrança ao cliente)', 'Cobrança automática enviada ao cliente quando a fatura está vencida e não paga.', 0, 'diario', '09:00:00', '[\"cliente\",\"admin\"]', '[\"financeiro\"]', 'AVISO: Fatura em atraso — {numero_fatura} ({dias} dia(s) vencida)', '<p>Prezado(a) <strong>{cliente}</strong>,</p>\r\n<p>Identificamos que a fatura abaixo está <strong>em atraso há {dias} dia(s)</strong>:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Número</strong></td><td>{numero_fatura}</td></tr>\r\n  <tr><td><strong>Valor Original</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>\r\n  <tr><td><strong>Dias em atraso</strong></td><td><span style=\"color:red\"><strong>{dias}</strong></span></td></tr>\r\n</table>\r\n<p>Regularize seu débito o quanto antes para evitar restrições.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(9, 0, 'crm_lead_sem_contato', 'crm', 'Lead — Sem Contato há 7 dias', 'Alerta ao vendedor quando um lead ativo não recebe nenhuma interação há 7 dias.', 0, 'diario', '08:30:00', '[\"vendedor\",\"admin\"]', NULL, 'Alerta CRM: Lead sem contato há {dias} dia(s) — {lead}', '<p>Prezado(a) <strong>{vendedor}</strong>,</p>\r\n<p>O lead abaixo está <strong>sem registro de contato há {dias} dia(s)</strong>:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Lead</strong></td><td>{lead}</td></tr>\r\n  <tr><td><strong>Status</strong></td><td>{status_lead}</td></tr>\r\n  <tr><td><strong>Último contato</strong></td><td>{ultimo_contato}</td></tr>\r\n  <tr><td><strong>Próximo contato previsto</strong></td><td>{proximo_contato}</td></tr>\r\n</table>\r\n<p>Acesse o CRM e registre uma interação para manter o pipeline atualizado.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(10, 0, 'crm_lead_proximo_contato_hoje', 'crm', 'Lead — Próximo Contato Agendado para Hoje', 'Lembrete matinal ao vendedor sobre leads com próximo contato agendado para o dia.', 0, 'unico', '07:30:00', '[\"vendedor\"]', NULL, 'Lembrete CRM: Você tem contato agendado hoje com {lead}', '<p>Bom dia, <strong>{vendedor}</strong>!</p>\r\n<p>Você tem um contato agendado para <strong>hoje</strong> com o seguinte lead:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Lead</strong></td><td>{lead}</td></tr>\r\n  <tr><td><strong>Empresa</strong></td><td>{empresa}</td></tr>\r\n  <tr><td><strong>Telefone</strong></td><td>{telefone}</td></tr>\r\n  <tr><td><strong>Status</strong></td><td>{status_lead}</td></tr>\r\n</table>\r\n<p>Boa sorte na abordagem!</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(11, 0, 'crm_oportunidade_vencer_3d', 'crm', 'Oportunidade — Fechamento Previsto em 3 dias', 'Alerta ao vendedor quando a data de fechamento prevista de uma oportunidade está a 3 dias.', 3, 'unico', '08:00:00', '[\"vendedor\",\"admin\"]', NULL, 'Alerta CRM: Oportunidade vence em {dias} dia(s) — {oportunidade}', '<p>Prezado(a) <strong>{vendedor}</strong>,</p>\r\n<p>A oportunidade abaixo tem fechamento previsto em <strong>{dias} dia(s)</strong>:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Oportunidade</strong></td><td>{oportunidade}</td></tr>\r\n  <tr><td><strong>Lead/Cliente</strong></td><td>{lead}</td></tr>\r\n  <tr><td><strong>Valor Estimado</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Probabilidade</strong></td><td>{probabilidade}%</td></tr>\r\n  <tr><td><strong>Fechamento Previsto</strong></td><td>{data_fechamento}</td></tr>\r\n  <tr><td><strong>Etapa do Funil</strong></td><td>{etapa}</td></tr>\r\n</table>\r\n<p>Atualize o status da oportunidade no CRM.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(12, 0, 'crm_oportunidade_vencida', 'crm', 'Oportunidade — Data de Fechamento Ultrapassada', 'Alerta diário quando uma oportunidade aberta ultrapassou a data de fechamento prevista sem ser ganha ou perdida.', 0, 'diario', '09:00:00', '[\"vendedor\",\"admin\"]', NULL, 'ATENÇÃO CRM: Oportunidade sem fechamento — {oportunidade} ({dias} dia(s) atrasada)', '<p>Prezado(a) <strong>{vendedor}</strong>,</p>\r\n<p>A oportunidade abaixo ultrapassou a data de fechamento prevista há <strong>{dias} dia(s)</strong> e ainda está aberta:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Oportunidade</strong></td><td>{oportunidade}</td></tr>\r\n  <tr><td><strong>Lead/Cliente</strong></td><td>{lead}</td></tr>\r\n  <tr><td><strong>Valor Estimado</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Fechamento Previsto</strong></td><td>{data_fechamento}</td></tr>\r\n  <tr><td><strong>Dias em atraso</strong></td><td><span style=\"color:red\"><strong>{dias}</strong></span></td></tr>\r\n</table>\r\n<p>Atualize o status para \"Ganha\" ou \"Perdida\" no CRM.</p>', 1, NULL, 0, '2026-03-17 00:29:11', '2026-03-17 00:29:11'),
(13, 3, 'financeiro_receber_vencer_3d', 'financeiro', 'Contas a Receber — Vencendo em 3 dias', 'Alerta enviado 3 dias antes do vencimento de contas a receber em aberto. Ideal para acionar o setor financeiro e o cliente com antecedência.', 3, 'unico', '08:00:00', '[\"admin\",\"financeiro\",\"asoaresbh@gmail.com\"]', '', 'Alerta: Conta a Receber vencendo em {dias} dia(s) — {cliente}', '<p>Prezado(a),</p>\r\n<p>Este é um alerta automático do <strong>ERP ORIX</strong>.</p>\r\n<p>A conta a receber abaixo vence em <strong>{dias} dia(s)</strong>:</p>\r\n<table border=\"1\" cellpadding=\"6\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\">\r\n  <tr><td><strong>Cliente</strong></td><td>{cliente}</td></tr>\r\n  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>\r\n  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>\r\n  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>\r\n</table>\r\n<p>Acesse o ERP para tomar as providências necessárias.</p>', 1, NULL, 0, '2026-03-23 04:55:44', '2026-03-23 04:55:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_alertas_log`
--

CREATE TABLE `email_alertas_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alerta_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `destinatario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assunto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('enviado','falha','ignorado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enviado',
  `erro` text COLLATE utf8mb4_unicode_ci,
  `referencia` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ID do registro que gerou o alerta (ex: conta_pagar:42)',
  `disparado_em` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `especialidade` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subespecialidade` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rqe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `usuario_id`, `nome`, `documento`, `email`, `telefone`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'IOSEI PARTICIPAÇÕES LTDA', '57.378.542/0001-10', 'financieo@iosei.com.br', NULL, 'ativo', '2026-02-06 17:34:48', '2026-02-06 17:34:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `integracoes`
--

CREATE TABLE `integracoes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('API','Webhook','Fiscal','Financeira') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo',
  `config_json` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `integracoes`
--

INSERT INTO `integracoes` (`id`, `usuario_id`, `nome`, `tipo`, `status`, `config_json`, `created_at`, `updated_at`) VALUES
(1, 3, 'email', 'API', 'ativo', '{\"host\":\"smtp.gmail.com\",\"port\":587,\"username\":\"admin@orix.com.br\",\"password_enc\":\"eyJ2IjoxLCJpdiI6IkVNd1lyTTFDaXB6akhPYTEiLCJ0YWciOiJKa3ZIaGg0K2lRSTNDT1VDVjNKVVB3PT0iLCJjdCI6IjVoMGZ5ODBKWnBHSVFWN1c5SXB6amc9PSJ9\",\"protocol\":\"tls\",\"from_email\":\"noreply@orix.com.br\",\"from_name\":\"ERP ORIX\",\"last_test_at\":\"2026-03-23 06:53:56\"}', '2026-02-06 01:01:32', '2026-03-23 09:53:56'),
(2, 3, 'asaas', 'Financeira', 'ativo', '{\"api_key_enc\":\"eyJ2IjoxLCJpdiI6ImxOTTFCWHczelwvelVGZjBWIiwidGFnIjoiaE5zZ3N2dUNobnBDOGNDWFA4VTBVZz09IiwiY3QiOiIwQnFubytqTGp5QzcrbG9tM1hESE42SHNCVzhGM21HdDRvTHlNUHl1ZVZ5cWEyV3VqOGx4WlwvRDV5YjN6bHE3UzhZa0pmb1c2MWVjbXhWTWd3XC93MW1hZ3NXTldsOXVWa253MlJrNHlaUlM0Q3RjSUZDVFdpMENJMGtWTmlDRGQ5QzFyZ3RJWTlSRXFLWlZqdGRpbDh3N2lKN3ZadDRRbTJMUnZ5QjBvdU5YSUJCdUk4NjFDTzcrcWJyK0hyUmxzS3ZKR2puemhlZjJoRUJhRTVGRU8yRFFmVHM4alprZz09In0=\",\"webhook_token_enc\":\"eyJ2IjoxLCJpdiI6ImZoZFlPU21LeEdKekpDSFMiLCJ0YWciOiJ5STh3ZExKOVlZeHpsVDJJNVVoTmtBPT0iLCJjdCI6IjBTOW11U0JiQjNiMnQ1VEJIQlUzWmZkeUlNWT0ifQ==\",\"environment\":\"production\"}', '2026-02-21 22:45:56', '2026-02-22 21:23:42'),
(3, 3, 'whatsapp_bot', 'API', 'ativo', '{\"api_key_enc\":\"eyJ2IjoxLCJpdiI6ImhpYmVwdVJtWEp2dk90dlkiLCJ0YWciOiJEUlE3V1VRUm9iWGNMd3FWQTNLYTJBPT0iLCJjdCI6IkRLdTFaQVYwcDFSK2NvZlZ4UGdqT01cL1o1ekdwaUNCdytvTWpuZ1VHUm42WnR3UkhRZDdoVHROc2djVlVSSFpNOUttc0pOUT0ifQ==\",\"created_at\":\"2026-02-28 11:34:16\"}', '2026-02-28 14:34:16', '2026-02-28 14:34:16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `integracoes_logs`
--

CREATE TABLE `integracoes_logs` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `integracao_id` int(11) NOT NULL,
  `evento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('sucesso','falha') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sucesso',
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicos`
--

CREATE TABLE `medicos` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf_crm` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especialidade_id` int(10) UNSIGNED DEFAULT NULL,
  `subespecialidade` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rqe` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assinatura_digital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas_fiscais`
--

CREATE TABLE `notas_fiscais` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `numero_nf` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serie` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_total` decimal(15,2) NOT NULL,
  `data_emissao` date NOT NULL,
  `status` enum('rascunho','emitida','cancelada','importada','emitida_asaas','erro_emissao','agendada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rascunho',
  `xml_path` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asaas_invoice_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origem_emissao` enum('manual','asaas') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `conta_receber_id` int(10) UNSIGNED DEFAULT NULL,
  `asaas_pdf_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asaas_status` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servico_descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servico_codigo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servico_id_asaas` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacoes_nf` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `notas_fiscais`
--

INSERT INTO `notas_fiscais` (`id`, `usuario_id`, `cliente_id`, `numero_nf`, `serie`, `valor_total`, `data_emissao`, `status`, `xml_path`, `asaas_invoice_id`, `origem_emissao`, `conta_receber_id`, `asaas_pdf_url`, `asaas_status`, `servico_descricao`, `servico_codigo`, `servico_id_asaas`, `observacoes_nf`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '35', '900', 900.00, '2026-02-02', 'emitida', NULL, NULL, 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-06 00:41:59', '2026-02-06 00:41:59'),
(2, 3, 1, '35', '900', 111.00, '2026-02-26', 'emitida', NULL, NULL, 'manual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-27 01:25:30', '2026-02-27 01:25:30'),
(3, 3, 6, '', '1', 5.00, '2026-02-27', 'emitida', NULL, 'inv_000017769137', 'asaas', 6, NULL, 'SCHEDULED', 'PORTARIA EMPREENDIMENTO', NULL, NULL, NULL, '2026-02-28 01:29:15', '2026-02-28 01:29:15'),
(4, 3, 6, '', '1', 5.50, '2026-02-27', 'emitida', NULL, 'inv_000017769654', 'asaas', 7, NULL, 'SCHEDULED', 'PARCELA REFERENTE A HARWARE DEIXADO', NULL, NULL, NULL, '2026-02-28 01:48:13', '2026-02-28 01:48:13'),
(5, 3, 6, '', '1', 5.80, '2026-02-28', 'emitida', NULL, 'inv_000017786101', 'asaas', 9, NULL, 'SCHEDULED', 'SERVIÇOS DE LAUDO', NULL, NULL, NULL, '2026-02-28 19:34:01', '2026-02-28 19:34:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas_fiscais_anexos`
--

CREATE TABLE `notas_fiscais_anexos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nota_fiscal_id` int(11) NOT NULL,
  `file_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `notas_fiscais_anexos`
--

INSERT INTO `notas_fiscais_anexos` (`id`, `usuario_id`, `nota_fiscal_id`, `file_path`, `original_name`, `mime_type`, `file_size`, `created_at`) VALUES
(1, 3, 2, 'storage/uploads/notas_fiscais_anexos/3/2/573bc8e778210a322852d2eff7359e9e.pdf', '31062002231865440000135000000000003526025597375250.pdf', 'application/pdf', 107393, '2026-02-27 02:41:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas_fiscais_importacoes`
--

CREATE TABLE `notas_fiscais_importacoes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `arquivo_xml_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('sucesso','falha') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sucesso',
  `mensagem` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `notas_fiscais_importacoes`
--

INSERT INTO `notas_fiscais_importacoes` (`id`, `usuario_id`, `arquivo_xml_path`, `status`, `mensagem`, `created_at`) VALUES
(1, 3, 'storage/uploads/notas_fiscais_importacoes/3/34a51c8839c59966b785ca102cf579d0.xml', 'falha', 'Documento do destinatário não encontrado no XML.', '2026-02-06 00:43:00'),
(2, 3, 'storage/uploads/notas_fiscais_importacoes/3/24e64f90f24727d6569e38bb4836bf49.xml', 'falha', 'Documento do destinatário não encontrado no XML.', '2026-02-27 01:25:55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`id`, `user_id`, `token_hash`, `expires_at`, `used_at`, `created_at`) VALUES
(1, 3, '5ef82df3bfa98f08520b46d35dcfecc3541d89d29442d3d5274facae59b14bb7', '2026-02-03 20:25:36', NULL, '2026-02-03 22:25:36'),
(2, 4, 'd158e7093f3a082f8efdc301cb49e3266d1c9481a72ea965d6ae39863be8ba99', '2026-02-28 10:37:40', '2026-02-28 16:46:40', '2026-02-28 12:37:40'),
(3, 4, 'ddc1bf2a0892ede735169068ca7335dd419c5e502e618b8784552cb663363dee', '2026-02-28 17:46:40', '2026-03-04 10:51:48', '2026-02-28 19:46:40'),
(4, 4, '598c5d005c21091fbb018529aed92c8a51c5c05c16427f92519bbc69a711f407', '2026-03-04 11:51:48', '2026-03-08 21:51:49', '2026-03-04 13:51:48'),
(5, 4, '6e512c0485f980f321cc74e6ee04dc805c89aa3ffa25d16d766b215d46a3c719', '2026-03-08 22:51:49', '2026-03-13 19:08:28', '2026-03-09 00:51:49'),
(6, 4, '7208699eb48456e5d4c7eee7599ac0545397c40d9b73903b34772ea8b2c04515', '2026-03-13 20:08:28', NULL, '2026-03-13 22:08:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `plano_contas`
--

CREATE TABLE `plano_contas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('','Receita','Despesa') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nivel` int(11) NOT NULL DEFAULT '1',
  `conta_pai_id` int(11) DEFAULT NULL,
  `status` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `plano_contas`
--

INSERT INTO `plano_contas` (`id`, `usuario_id`, `codigo`, `nome`, `tipo`, `nivel`, `conta_pai_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '1', 'ATIVO', '', 1, NULL, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(2, 3, '1.1', 'ATIVO CIRCULANTE', '', 2, 1, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(3, 3, '1.1.01', 'CAIXA', '', 3, 2, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(4, 3, '1.1.02', 'BANCOS CONTA MOVIMENTO', '', 3, 2, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(5, 3, '1.1.03', 'APLICAÇÕES FINANCEIRAS', '', 3, 2, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(6, 3, '1.1.04', 'CONTAS A RECEBER', '', 3, 2, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(7, 3, '1.2', 'ATIVO NÃO CIRCULANTE', '', 2, 1, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(8, 3, '1.2.01', 'IMOBILIZADO', '', 3, 6, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(9, 3, '1.2.02', 'INTANGÍVEL', '', 3, 6, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(10, 3, '2', 'PASSIVO', '', 1, NULL, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(11, 3, '2.1', 'PASSIVO CIRCULANTE', '', 2, 10, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(12, 3, '2.1.01', 'FORNECEDORES', '', 3, 11, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(13, 3, '2.1.02', 'CONTAS A PAGAR', '', 3, 11, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(14, 3, '2.1.03', 'IMPOSTOS A RECOLHER', '', 3, 11, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(15, 3, '2.2', 'PASSIVO NÃO CIRCULANTE', '', 2, 10, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(16, 3, '2.2.01', 'EMPRÉSTIMOS E FINANCIAMENTOS', '', 3, 15, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(17, 3, '3', 'PATRIMÔNIO LÍQUIDO', '', 1, NULL, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(18, 3, '3.1', 'CAPITAL SOCIAL', '', 2, 17, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(19, 3, '3.2', 'RESERVAS', '', 2, 17, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(20, 3, '3.3', 'LUCROS OU PREJUÍZOS ACUMULADOS', '', 2, 17, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(21, 3, '4', 'RECEITAS', 'Receita', 1, NULL, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(22, 3, '4.1', 'RECEITA OPERACIONAL', 'Receita', 2, 21, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(23, 3, '4.1.01', 'VENDAS DE PRODUTOS', 'Receita', 3, 22, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(24, 3, '4.1.02', 'PRESTAÇÃO DE SERVIÇOS', 'Receita', 3, 22, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(25, 3, '5', 'DESPESAS', 'Despesa', 1, NULL, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(26, 3, '5.1', 'DESPESAS OPERACIONAIS', 'Despesa', 2, 25, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(27, 3, '5.1.01', 'DESPESAS ADMINISTRATIVAS', 'Despesa', 3, 26, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(28, 3, '5.1.02', 'DESPESAS COM PESSOAL', 'Despesa', 3, 26, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(29, 3, '5.1.03', 'DESPESAS FINANCEIRAS', 'Despesa', 3, 26, 'ativo', '2026-02-06 01:49:32', '2026-02-06 01:49:32'),
(30, 3, '1.01', 'FORNECEDOR DIVERSOS', 'Despesa', 1, NULL, 'ativo', '2026-02-21 22:30:40', '2026-02-21 22:30:40');

-- --------------------------------------------------------

--
-- Estrutura para tabela `portal_clientes`
--

CREATE TABLE `portal_clientes` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'NULL = primeiro acesso ainda não realizado',
  `primeiro_acesso` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = ainda não definiu senha',
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `ultimo_acesso` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `portal_clientes`
--

INSERT INTO `portal_clientes` (`id`, `cliente_id`, `email`, `password_hash`, `primeiro_acesso`, `ativo`, `ultimo_acesso`, `created_at`, `updated_at`) VALUES
(1, 1, 'asoaresbh@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$RVlBU2RqZ011WGdRVldFbQ$letEDNd7vDLLc2W3usEtxD6kYeDn5tX2sKP8/ZN9JiE', 0, 1, '2026-02-28 13:26:27', '2026-02-22 03:42:40', '2026-02-28 16:26:27'),
(2, 3, 'imedicalma@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$NmFpU2pLamlicmtKam5EbQ$d0v0EsTPfBDx6QCvluRf2yfA5AllU23lb66j4/Oy72w', 0, 1, '2026-03-24 15:15:37', '2026-02-26 12:10:31', '2026-03-24 20:15:37'),
(3, 2, 'larissarodrigues7@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$cjZJSHVwUHFNM2MuWnB3ag$+Oh8CLLluC/tx8g0NttGT+G4cWP+pVTC4ts6DfkAbxU', 0, 1, '2026-03-20 09:57:41', '2026-02-27 16:51:49', '2026-03-20 14:57:41'),
(4, 6, 'financeiro@distribuidorasja.com.br', '$argon2id$v=19$m=65536,t=4,p=1$MHpSN0E0UEphSmJIUzlEcA$pDb+zlzdZNuavle7MOGo7egVaiNwd/mObxqzaEKUSN8', 0, 1, '2026-03-13 19:57:38', '2026-02-28 01:27:08', '2026-03-13 22:57:38'),
(5, 7, 'geraldohumbertogf@yahoo.com.br', NULL, 1, 1, NULL, '2026-02-28 14:31:11', '2026-02-28 14:31:11'),
(6, 5, 'admsantacasa@yahoo.com.br', '$argon2id$v=19$m=65536,t=4,p=1$b29yWi9QUEh2RHFGN2pReQ$kJpmBqD3PNy1mV4DYj+3NS5WplzCxF6C2gINjLYr2so', 0, 1, '2026-03-12 15:13:13', '2026-03-02 11:52:49', '2026-03-12 18:13:13'),
(7, 4, 'recepcao.articulargv@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$QjNETlM3elI4ZDBiaEwzUQ$0nnUPHaVbYFISHhcT9T9XTdaadDs7tZfX8o2OREwMkk', 0, 1, '2026-03-25 07:09:13', '2026-03-04 13:03:00', '2026-03-25 12:09:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `portal_clientes_tokens`
--

CREATE TABLE `portal_clientes_tokens` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('primeiro_acesso','reset_senha') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'primeiro_acesso',
  `usado` tinyint(1) NOT NULL DEFAULT '0',
  `expira_em` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `portal_clientes_tokens`
--

INSERT INTO `portal_clientes_tokens` (`id`, `cliente_id`, `token`, `tipo`, `usado`, `expira_em`, `created_at`) VALUES
(1, 1, '6ce73a8b9f7204331428719c57be97c37b90cedff375d250f2116ac5123ece55c56c14a07ff9f6328e1bae9e3cd5436d', 'primeiro_acesso', 1, '2026-02-23 00:42:40', '2026-02-22 03:42:40'),
(2, 2, 'b77d9352f18ac3bdefb7859aadcd572045b9d1caa99719efbd09afb7b6efb76b0e0d6916574ed0d318d0527257643f70', 'primeiro_acesso', 1, '2026-02-27 09:10:31', '2026-02-26 12:10:31'),
(3, 2, '60e2c76cc3f08452e57af4af9e6e09a79a9bc9484cb4132aab4bdfd03cc8396a121919b90d398cb320604dfe3a40fd6f', 'primeiro_acesso', 1, '2026-02-27 09:12:02', '2026-02-26 12:12:02'),
(4, 2, '8b6d17468ab109ffc3865360306fd7c1fb08e1bb3452c9464ae85da7014eeb6b17856f7e327a92addaeb55d026882992', 'primeiro_acesso', 1, '2026-02-27 09:12:05', '2026-02-26 12:12:05'),
(5, 2, '9ed3647d317ef6055098f82913490f55cf11ebb0925ac10bd3ac777d83a4ce7178b9d73a2301dc3addcf2669d50928e2', 'primeiro_acesso', 1, '2026-02-27 09:12:10', '2026-02-26 12:12:10'),
(6, 2, 'b87fd411ee5fa4afa2d2a7d16b4d39381e9aef88a3f6725dea93cdef4f07e773d4840262f0b151388e279e1eb39ddefe', 'primeiro_acesso', 1, '2026-02-27 15:09:20', '2026-02-26 18:09:20'),
(7, 2, 'fe244555c2023ae2b3d57daec3ba58f2787879def09ff4bc6c09a40d5108a1131517b1c2c22c1153f1cc7f4ac28fa0c6', 'primeiro_acesso', 1, '2026-02-27 22:16:56', '2026-02-27 01:16:56'),
(8, 3, '61559c8c84a7332ccba38e18e7890bcb556e1bf58ee675ac1066f1b9946268f346541c36ae082bd148aa4b886ee04044', 'primeiro_acesso', 1, '2026-02-28 13:51:49', '2026-02-27 16:51:49'),
(9, 3, '32c3b5c4e1497e9a7d14c066783bc3ffcc8279648c7898ddff7358ad4ff973064a29e753c33061db6568984194b34c46', 'primeiro_acesso', 1, '2026-02-28 13:53:56', '2026-02-27 16:53:56'),
(10, 3, '8e66d4180a5395a1947329de9634d9be439135a6d1095495c942d3655660d93731cd294cef3345f3d344d5ef4f0da164', 'primeiro_acesso', 1, '2026-02-28 13:54:23', '2026-02-27 16:54:23'),
(11, 3, 'd500e115c9070d9b48539007bb80b4ab09a70084edda094fecb32de345af27c365d906e51bd559720375907db139c360', 'primeiro_acesso', 1, '2026-02-28 13:54:44', '2026-02-27 16:54:44'),
(12, 3, 'adfd85ad80042ebde53ce753708ae9ed5e7372305349f8f6977e0d35171c9c0ad7d255dc16215b15f34a8a219607757f', 'primeiro_acesso', 1, '2026-02-28 13:55:19', '2026-02-27 16:55:19'),
(13, 3, 'fa1d0a2240d0757d5965d858ad3f40b53729cf63dbdd123ffa95631954535f1ce3901ed1aa9852f68aa2b75d1f9105d3', 'primeiro_acesso', 1, '2026-02-28 13:56:07', '2026-02-27 16:56:07'),
(14, 3, 'c4453f73f857330fbb3038fdd497d1d0223b63b28a81edba0be1d5b6e93ba080ed0d70dae887a50b74d8ae1dc1914962', 'primeiro_acesso', 1, '2026-02-28 13:57:39', '2026-02-27 16:57:39'),
(15, 3, '1caa2c78a6c24b5df89c4f18cb52a6956e8c5936883b657d703760c384d6a8a6e72482a6cecc071a7faf21d6e82ab460', 'primeiro_acesso', 1, '2026-02-28 13:58:50', '2026-02-27 16:58:50'),
(16, 3, 'e48bc44a0c94d030da18ad6962861af2a5279d8523c6e454aa32d22026ba77ee2eb01c49797f770dcd1c09479fc67db8', 'primeiro_acesso', 1, '2026-02-28 13:59:10', '2026-02-27 16:59:10'),
(17, 3, 'e81d166470e1f0829d51a8dd50a642894968fa1f977e60826070ff9a3d42eb17555d63fc0b61a9c0f7e9525faa21e967', 'primeiro_acesso', 1, '2026-02-28 13:59:38', '2026-02-27 16:59:38'),
(18, 3, 'bb28d6bce9ca00135c097e983d570059e8188e6492a1433ce03fb56653c75ac64adb031befaabbbdd3cf6f41e6978860', 'primeiro_acesso', 1, '2026-02-28 14:02:35', '2026-02-27 17:02:35'),
(19, 2, '1d54319e7b6b8ae842fa96354056ef187472122c9a3e0cbc9e508ff562ea41be6c3887cd06204e92ee4eeb657238fb07', 'primeiro_acesso', 1, '2026-02-28 14:31:24', '2026-02-27 17:31:24'),
(20, 2, '2a4fb6482da94fd631605c32de48e1e16b06131bdf8c0393bc87072943a1d7fc4d37976d791b4b41b9da6184f048db68', 'primeiro_acesso', 1, '2026-02-28 14:32:38', '2026-02-27 17:32:38'),
(21, 3, '69da0b4ffa4b401f53fb56f6bfdac9c772fdac7ee651e3454a80aa751017d1dc0621ee43c69b27b620978f522b74ab2a', 'primeiro_acesso', 1, '2026-02-28 14:59:42', '2026-02-27 17:59:42'),
(22, 6, 'd08cba54db4ac2c1300c533370c33c28fa6a2ead3d07d019052c70c581bfb28cc4a04219216f2e98e064471f2cc45e41', 'primeiro_acesso', 1, '2026-02-28 22:27:08', '2026-02-28 01:27:08'),
(23, 7, 'ea3fa9aebfb0798e7ce1925c8fbd3ca6a69a9ab40074d3a7446ab7f1ea703469cafe91ce65f248f6a07f3fa7a182d048', 'primeiro_acesso', 0, '2026-03-01 11:31:11', '2026-02-28 14:31:11'),
(24, 5, '3cd82971b32b87e290dfd18f50e784d9260e7fe9209abb8f8abffa6038bde6bac9810e8fc541e412a3394455e0ac888f', 'primeiro_acesso', 1, '2026-03-03 08:52:49', '2026-03-02 11:52:49'),
(25, 4, '152bf582ac894ecd44d5ddb22a2b4349ba5549d81d98fcdf23fa9f4ecfd0015a71885880ccfd188ef745ec4ab3f5a2ae', 'primeiro_acesso', 1, '2026-03-05 10:03:00', '2026-03-04 13:03:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_exames`
--

CREATE TABLE `tabela_exames` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nome_exame` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidade` enum('TC','RM','RX','US') COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_padrao` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tabela_exames`
--

INSERT INTO `tabela_exames` (`id`, `usuario_id`, `nome_exame`, `modalidade`, `valor_padrao`, `created_at`) VALUES
(1, 3, 'RAIO-X DE TORAX', 'RX', 5.00, '2026-03-14 02:38:45');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `status` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `status`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin ORIX', 'financeiro@orix.com.br', 'financeiro', 'ativo', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2026-01-29 18:12:31', '2026-02-06 01:38:26'),
(3, 'André Soares', 'admin@orix.com.br', 'superadmin', 'ativo', '$2y$10$R/Ygm4Ia5DjlDqlCBQ4QgeKHxmyvzMO55.AgWIZwmMtKlAu28oIA2', '2026-01-31 08:07:37', '2026-02-27 22:53:35'),
(4, 'RENATA CAVALIERE', 'renata@vivereconsultoria.com.br', 'operador', 'ativo', '$2y$10$89v8RkZq5Wk8y1mK9.n1ReX.A9eF9z9M9mG9v8RkZq5Wk8y1mK9', '2026-02-28 12:37:40', '2026-03-04 13:57:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `whatsapp_bot_logs`
--

CREATE TABLE `whatsapp_bot_logs` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL COMMENT 'ID do usuário do ERP (tenant)',
  `integracao_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID da integração na tabela integracoes',
  `telefone_hash` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hash SHA-256 truncado do telefone (privacidade)',
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Endpoint consultado',
  `intent` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Intenção identificada',
  `status` enum('success','error') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'success',
  `summary` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Resumo da resposta',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Logs de consultas do chatbot WhatsApp';

--
-- Despejando dados para a tabela `whatsapp_bot_logs`
--

INSERT INTO `whatsapp_bot_logs` (`id`, `tenant_id`, `integracao_id`, `telefone_hash`, `endpoint`, `intent`, `status`, `summary`, `created_at`) VALUES
(1, 3, 3, 'c85f4cfe086b', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Cliente não encontrado', '2026-02-28 16:35:26'),
(2, 3, 3, 'c85f4cfe086b', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Cliente não encontrado', '2026-02-28 16:43:35'),
(3, 3, 3, 'c85f4cfe086b', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Exceção: SQLSTATE[42000]: Syntax error or access violation: 1305 FUNCTION inlaud99_orixerp.REGEXP_REPLACE does not exist', '2026-02-28 16:59:19'),
(4, 3, 3, 'c85f4cfe086b', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Exceção: SQLSTATE[42000]: Syntax error or access violation: 1305 FUNCTION inlaud99_orixerp.REGEXP_REPLACE does not exist', '2026-02-28 17:10:54'),
(5, 3, 3, 'c85f4cfe086b', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Exceção: Call to undefined method App\\Controllers\\Api\\V1\\WhatsappAuthController::sqlDigitsExpr()', '2026-02-28 17:30:51'),
(6, 3, 3, 'c85f4cfe086b', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Exceção: Call to undefined method App\\Controllers\\Api\\V1\\WhatsappAuthController::sqlDigitsExpr()', '2026-02-28 17:33:06'),
(7, 3, 3, 'c85f4cfe086b', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Cliente não encontrado', '2026-02-28 19:17:43'),
(8, 3, 3, '92874db85705', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Cliente não encontrado', '2026-03-02 12:11:09'),
(9, 3, 3, 'be76d7193108', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Telefone inválido para normalização (esperado 10/11 dígitos com DDD)', '2026-03-02 18:02:07'),
(10, 3, 3, 'be76d7193108', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Telefone inválido para normalização (esperado 10/11 dígitos com DDD)', '2026-03-02 19:15:08'),
(11, 3, 3, 'be76d7193108', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Telefone inválido para normalização (esperado 10/11 dígitos com DDD)', '2026-03-02 20:11:59'),
(12, 3, 3, 'aee8111c168f', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Cliente não encontrado', '2026-03-03 13:26:45'),
(13, 3, 3, 'aee8111c168f', '/api/v1/whatsapp/identificar', 'identificar', 'error', 'Cliente não encontrado', '2026-03-03 14:30:48');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf_cnpj` (`cpf_cnpj`),
  ADD KEY `idx_cpf_cnpj` (`cpf_cnpj`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_tipo` (`tipo`),
  ADD KEY `idx_usuario_id` (`usuario_id`),
  ADD KEY `idx_clientes_data_cadastro` (`data_cadastro`),
  ADD KEY `idx_clientes_razao_social` (`razao_social`),
  ADD KEY `idx_clientes_created_at` (`created_at`);

--
-- Índices de tabela `clientes_anexos`
--
ALTER TABLE `clientes_anexos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `clientes_contatos`
--
ALTER TABLE `clientes_contatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cliente_id` (`cliente_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_clientes_contatos_cliente_status` (`cliente_id`,`status`);

--
-- Índices de tabela `config_nfs`
--
ALTER TABLE `config_nfs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_config_nfs_usuario` (`usuario_id`),
  ADD KEY `idx_config_nfs_usuario` (`usuario_id`);

--
-- Índices de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contas_pagar_usuario` (`usuario_id`),
  ADD KEY `idx_contas_pagar_plano_conta` (`plano_conta_id`),
  ADD KEY `idx_contas_pagar_fornecedor` (`fornecedor_id`),
  ADD KEY `idx_contas_pagar_vencimento` (`data_vencimento`);

--
-- Índices de tabela `contas_pagar_anexos`
--
ALTER TABLE `contas_pagar_anexos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contas_pagar_anexos_usuario` (`usuario_id`),
  ADD KEY `idx_contas_pagar_anexos_conta` (`conta_pagar_id`);

--
-- Índices de tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contas_receber_usuario` (`usuario_id`),
  ADD KEY `idx_contas_receber_cliente` (`cliente_id`),
  ADD KEY `idx_contas_receber_plano_conta` (`plano_conta_id`),
  ADD KEY `idx_contas_receber_vencimento` (`data_vencimento`),
  ADD KEY `idx_contas_receber_asaas_payment` (`asaas_payment_id`),
  ADD KEY `idx_contas_receber_external_ref` (`external_reference`),
  ADD KEY `idx_cr_grupo_parcelas` (`grupo_parcelas`);

--
-- Índices de tabela `contas_receber_anexos`
--
ALTER TABLE `contas_receber_anexos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `crm_interacoes`
--
ALTER TABLE `crm_interacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_crm_int_related` (`related_type`,`related_id`),
  ADD KEY `idx_crm_int_usuario` (`usuario_id`),
  ADD KEY `idx_crm_int_data` (`data_interacao`);

--
-- Índices de tabela `crm_leads`
--
ALTER TABLE `crm_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_crm_lead_usuario` (`usuario_id`),
  ADD KEY `idx_crm_lead_status` (`status_lead`),
  ADD KEY `idx_crm_lead_segmento` (`segmento_principal`),
  ADD KEY `idx_crm_lead_proximo` (`data_proximo_contato`);

--
-- Índices de tabela `crm_oportunidades`
--
ALTER TABLE `crm_oportunidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_crm_op_usuario` (`usuario_id`),
  ADD KEY `idx_crm_op_lead` (`lead_id`),
  ADD KEY `idx_crm_op_cliente` (`cliente_id`),
  ADD KEY `idx_crm_op_etapa` (`etapa_funil`),
  ADD KEY `idx_crm_op_status` (`status_oportunidade`);

--
-- Índices de tabela `email_alertas`
--
ALTER TABLE `email_alertas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_alerta_usuario_codigo` (`usuario_id`,`codigo`),
  ADD KEY `idx_alerta_modulo` (`modulo`),
  ADD KEY `idx_alerta_ativo` (`ativo`),
  ADD KEY `idx_alerta_usuario` (`usuario_id`);

--
-- Índices de tabela `email_alertas_log`
--
ALTER TABLE `email_alertas_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_log_alerta` (`alerta_id`),
  ADD KEY `idx_log_usuario` (`usuario_id`),
  ADD KEY `idx_log_data` (`disparado_em`);

--
-- Índices de tabela `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_especialidades_usuario` (`usuario_id`),
  ADD KEY `idx_especialidades_nome` (`especialidade`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fornecedores_usuario` (`usuario_id`);

--
-- Índices de tabela `integracoes`
--
ALTER TABLE `integracoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_integracoes_usuario` (`usuario_id`),
  ADD KEY `idx_integracoes_tipo` (`tipo`);

--
-- Índices de tabela `integracoes_logs`
--
ALTER TABLE `integracoes_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_integracoes_logs_usuario` (`usuario_id`),
  ADD KEY `idx_integracoes_logs_integracao` (`integracao_id`);

--
-- Índices de tabela `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_medicos_usuario_crm` (`usuario_id`,`crm`,`uf_crm`),
  ADD KEY `idx_medicos_usuario` (`usuario_id`),
  ADD KEY `idx_medicos_especialidade` (`especialidade_id`),
  ADD KEY `idx_medicos_status` (`status`);

--
-- Índices de tabela `notas_fiscais`
--
ALTER TABLE `notas_fiscais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notas_fiscais_usuario` (`usuario_id`),
  ADD KEY `idx_notas_fiscais_cliente` (`cliente_id`),
  ADD KEY `idx_notas_fiscais_numero` (`numero_nf`),
  ADD KEY `idx_notas_fiscais_emissao` (`data_emissao`),
  ADD KEY `idx_nf_asaas_invoice_id` (`asaas_invoice_id`),
  ADD KEY `idx_nf_conta_receber_id` (`conta_receber_id`),
  ADD KEY `idx_nf_origem_emissao` (`origem_emissao`);

--
-- Índices de tabela `notas_fiscais_anexos`
--
ALTER TABLE `notas_fiscais_anexos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nf_anexos_nota` (`nota_fiscal_id`),
  ADD KEY `idx_nf_anexos_tenant` (`usuario_id`);

--
-- Índices de tabela `notas_fiscais_importacoes`
--
ALTER TABLE `notas_fiscais_importacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nf_import_usuario` (`usuario_id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_token_hash` (`token_hash`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_expires_at` (`expires_at`);

--
-- Índices de tabela `plano_contas`
--
ALTER TABLE `plano_contas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plano_contas_usuario` (`usuario_id`),
  ADD KEY `idx_plano_contas_codigo` (`codigo`),
  ADD KEY `idx_plano_contas_conta_pai` (`conta_pai_id`);

--
-- Índices de tabela `portal_clientes`
--
ALTER TABLE `portal_clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_portal_email` (`email`),
  ADD UNIQUE KEY `uk_portal_cliente` (`cliente_id`),
  ADD KEY `idx_portal_ativo` (`ativo`);

--
-- Índices de tabela `portal_clientes_tokens`
--
ALTER TABLE `portal_clientes_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_portal_token` (`token`),
  ADD KEY `idx_portal_token_cliente` (`cliente_id`);

--
-- Índices de tabela `tabela_exames`
--
ALTER TABLE `tabela_exames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tabela_exames_usuario` (`usuario_id`),
  ADD KEY `idx_tabela_exames_modalidade` (`modalidade`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_role` (`role`);

--
-- Índices de tabela `whatsapp_bot_logs`
--
ALTER TABLE `whatsapp_bot_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wbl_tenant` (`tenant_id`),
  ADD KEY `idx_wbl_status` (`status`),
  ADD KEY `idx_wbl_created` (`created_at`),
  ADD KEY `idx_wbl_integracao` (`integracao_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID único do cliente', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `clientes_anexos`
--
ALTER TABLE `clientes_anexos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `clientes_contatos`
--
ALTER TABLE `clientes_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID único do contato', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `config_nfs`
--
ALTER TABLE `config_nfs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `contas_pagar_anexos`
--
ALTER TABLE `contas_pagar_anexos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `contas_receber_anexos`
--
ALTER TABLE `contas_receber_anexos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `crm_interacoes`
--
ALTER TABLE `crm_interacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `crm_leads`
--
ALTER TABLE `crm_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `crm_oportunidades`
--
ALTER TABLE `crm_oportunidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `email_alertas`
--
ALTER TABLE `email_alertas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `email_alertas_log`
--
ALTER TABLE `email_alertas_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `integracoes`
--
ALTER TABLE `integracoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `integracoes_logs`
--
ALTER TABLE `integracoes_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notas_fiscais`
--
ALTER TABLE `notas_fiscais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `notas_fiscais_anexos`
--
ALTER TABLE `notas_fiscais_anexos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `notas_fiscais_importacoes`
--
ALTER TABLE `notas_fiscais_importacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `plano_contas`
--
ALTER TABLE `plano_contas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `portal_clientes`
--
ALTER TABLE `portal_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `portal_clientes_tokens`
--
ALTER TABLE `portal_clientes_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `tabela_exames`
--
ALTER TABLE `tabela_exames`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `whatsapp_bot_logs`
--
ALTER TABLE `whatsapp_bot_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `clientes_contatos`
--
ALTER TABLE `clientes_contatos`
  ADD CONSTRAINT `fk_clientes_contatos_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD CONSTRAINT `fk_contas_pagar_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_contas_pagar_plano_conta` FOREIGN KEY (`plano_conta_id`) REFERENCES `plano_contas` (`id`),
  ADD CONSTRAINT `fk_contas_pagar_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `contas_pagar_anexos`
--
ALTER TABLE `contas_pagar_anexos`
  ADD CONSTRAINT `fk_contas_pagar_anexos_conta` FOREIGN KEY (`conta_pagar_id`) REFERENCES `contas_pagar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_contas_pagar_anexos_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `contas_receber`
--
ALTER TABLE `contas_receber`
  ADD CONSTRAINT `fk_contas_receber_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `fk_contas_receber_plano_conta` FOREIGN KEY (`plano_conta_id`) REFERENCES `plano_contas` (`id`),
  ADD CONSTRAINT `fk_contas_receber_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `crm_interacoes`
--
ALTER TABLE `crm_interacoes`
  ADD CONSTRAINT `fk_crm_int_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `crm_leads`
--
ALTER TABLE `crm_leads`
  ADD CONSTRAINT `fk_crm_lead_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `crm_oportunidades`
--
ALTER TABLE `crm_oportunidades`
  ADD CONSTRAINT `fk_crm_op_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_crm_op_lead` FOREIGN KEY (`lead_id`) REFERENCES `crm_leads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_crm_op_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `especialidades`
--
ALTER TABLE `especialidades`
  ADD CONSTRAINT `fk_especialidades_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD CONSTRAINT `fk_fornecedores_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `integracoes`
--
ALTER TABLE `integracoes`
  ADD CONSTRAINT `fk_integracoes_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `integracoes_logs`
--
ALTER TABLE `integracoes_logs`
  ADD CONSTRAINT `fk_integracoes_logs_integracao` FOREIGN KEY (`integracao_id`) REFERENCES `integracoes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_integracoes_logs_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `medicos`
--
ALTER TABLE `medicos`
  ADD CONSTRAINT `fk_medicos_especialidade` FOREIGN KEY (`especialidade_id`) REFERENCES `especialidades` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_medicos_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `notas_fiscais`
--
ALTER TABLE `notas_fiscais`
  ADD CONSTRAINT `fk_notas_fiscais_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `fk_notas_fiscais_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `notas_fiscais_anexos`
--
ALTER TABLE `notas_fiscais_anexos`
  ADD CONSTRAINT `fk_nf_anexo_nota` FOREIGN KEY (`nota_fiscal_id`) REFERENCES `notas_fiscais` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `notas_fiscais_importacoes`
--
ALTER TABLE `notas_fiscais_importacoes`
  ADD CONSTRAINT `fk_nf_import_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `password_reset_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `plano_contas`
--
ALTER TABLE `plano_contas`
  ADD CONSTRAINT `fk_plano_contas_pai` FOREIGN KEY (`conta_pai_id`) REFERENCES `plano_contas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_plano_contas_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `portal_clientes`
--
ALTER TABLE `portal_clientes`
  ADD CONSTRAINT `fk_portal_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `portal_clientes_tokens`
--
ALTER TABLE `portal_clientes_tokens`
  ADD CONSTRAINT `fk_portal_token_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tabela_exames`
--
ALTER TABLE `tabela_exames`
  ADD CONSTRAINT `fk_tabela_exames_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
