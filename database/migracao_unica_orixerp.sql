-- ============================================================
-- SCRIPT DE MIGRAÇÃO ÚNICO - ORIX ERP
-- ============================================================
-- Sistema: ORIX ERP (Optimized Radiology)
-- Banco de Dados: inlaud99_orixerp
-- Usuário: inlaud99_admin
-- Gerado em: 2026-03-24
-- ============================================================
-- INSTRUÇÕES DE USO:
-- 1. Crie o banco de dados: CREATE DATABASE inlaud99_orixerp CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- 2. Crie o usuário: CREATE USER 'inlaud99_admin'@'localhost' IDENTIFIED BY 'Admin259087@';
-- 3. Conceda permissões: GRANT ALL PRIVILEGES ON inlaud99_orixerp.* TO 'inlaud99_admin'@'localhost';
-- 4. Execute este script: mysql -u inlaud99_admin -p inlaud99_orixerp < migracao_unica_orixerp.sql
-- ============================================================

SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- ============================================================
-- PARTE 1: SCHEMA BASE (Tabelas principais)
-- ============================================================
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/02/2026 às 01:21
-- Versão do servidor: 5.7.23-23
-- Versão do PHP: 8.1.34

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
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de cadastro',
  `data_atualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Data da última atualização',
  `usuario_id` int(11) NOT NULL COMMENT 'ID do usuário que cadastrou'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabela de Clientes - Armazena informações de PF e PJ';

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Usuário Teste', 'admin@orix.com.br', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2026-01-29 18:12:31', '2026-01-31 05:15:00'),
(3, 'Admin Teste', 'teste@email.com', '$2y$10$pLiV/abHhwwTl1KtO1.5n.wVrsEVlHRGAUbsp3c9toPzHamfcS/NC', '2026-01-31 08:07:37', '2026-01-31 08:07:37');

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
  ADD KEY `idx_clientes_razao_social` (`razao_social`);

--
-- Índices de tabela `clientes_contatos`
--
ALTER TABLE `clientes_contatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cliente_id` (`cliente_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_clientes_contatos_cliente_status` (`cliente_id`,`status`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID único do cliente';

--
-- AUTO_INCREMENT de tabela `clientes_contatos`
--
ALTER TABLE `clientes_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID único do contato';

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- ============================================================
-- PARTE 2: MIGRATIONS (Alterações e expansões do schema)
-- ============================================================

-- === Migration: 2026-02-03_erp_expansao_financeiro_faturamento_integracao.sql ===
-- Migration: ERP Orix - Expans o Financeiro, Faturamento e Integra e7 f5es
-- Date: 2026-02-03
-- Rules: ONLY CREATE TABLE / ADD COLUMN. Never drop/rename existing columns.

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS plano_contas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  codigo VARCHAR(50) NOT NULL,
  nome VARCHAR(255) NOT NULL,
  tipo ENUM('Receita','Despesa') NOT NULL,
  nivel INT NOT NULL DEFAULT 1,
  conta_pai_id INT NULL,
  status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_plano_contas_usuario (usuario_id),
  INDEX idx_plano_contas_codigo (codigo),
  INDEX idx_plano_contas_conta_pai (conta_pai_id),
  CONSTRAINT fk_plano_contas_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_plano_contas_pai FOREIGN KEY (conta_pai_id) REFERENCES plano_contas(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS fornecedores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  nome VARCHAR(255) NOT NULL,
  documento VARCHAR(30) NULL,
  email VARCHAR(255) NULL,
  telefone VARCHAR(30) NULL,
  status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_fornecedores_usuario (usuario_id),
  CONSTRAINT fk_fornecedores_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS contas_pagar (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  plano_conta_id INT NOT NULL,
  fornecedor_id INT NULL,
  descricao VARCHAR(255) NOT NULL,
  valor DECIMAL(15,2) NOT NULL,
  data_vencimento DATE NOT NULL,
  data_pagamento DATE NULL,
  codigo_barras VARCHAR(255) NULL,
  recorrente TINYINT(1) NOT NULL DEFAULT 0,
  recorrencia_tipo ENUM('mensal','semanal','anual','customizada') NULL,
  recorrencia_intervalo INT NULL,
  status ENUM('aberta','paga','cancelada') NOT NULL DEFAULT 'aberta',
  observacoes TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_contas_pagar_usuario (usuario_id),
  INDEX idx_contas_pagar_plano_conta (plano_conta_id),
  INDEX idx_contas_pagar_fornecedor (fornecedor_id),
  INDEX idx_contas_pagar_vencimento (data_vencimento),
  CONSTRAINT fk_contas_pagar_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_pagar_plano_conta FOREIGN KEY (plano_conta_id) REFERENCES plano_contas(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_pagar_fornecedor FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS contas_pagar_anexos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  conta_pagar_id INT NOT NULL,
  file_path VARCHAR(500) NOT NULL,
  original_name VARCHAR(255) NOT NULL,
  mime_type VARCHAR(120) NULL,
  file_size INT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_contas_pagar_anexos_usuario (usuario_id),
  INDEX idx_contas_pagar_anexos_conta (conta_pagar_id),
  CONSTRAINT fk_contas_pagar_anexos_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_pagar_anexos_conta FOREIGN KEY (conta_pagar_id) REFERENCES contas_pagar(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS contas_receber (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  cliente_id INT NOT NULL,
  plano_conta_id INT NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  valor DECIMAL(15,2) NOT NULL,
  data_vencimento DATE NOT NULL,
  data_recebimento DATE NULL,
  status ENUM('aberta','recebida','cancelada') NOT NULL DEFAULT 'aberta',
  observacoes TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_contas_receber_usuario (usuario_id),
  INDEX idx_contas_receber_cliente (cliente_id),
  INDEX idx_contas_receber_plano_conta (plano_conta_id),
  INDEX idx_contas_receber_vencimento (data_vencimento),
  CONSTRAINT fk_contas_receber_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_receber_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_receber_plano_conta FOREIGN KEY (plano_conta_id) REFERENCES plano_contas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS notas_fiscais (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  cliente_id INT NOT NULL,
  numero_nf VARCHAR(50) NOT NULL,
  serie VARCHAR(20) NOT NULL,
  valor_total DECIMAL(15,2) NOT NULL,
  data_emissao DATE NOT NULL,
  status ENUM('rascunho','emitida','cancelada','importada') NOT NULL DEFAULT 'rascunho',
  xml_path VARCHAR(500) NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_notas_fiscais_usuario (usuario_id),
  INDEX idx_notas_fiscais_cliente (cliente_id),
  INDEX idx_notas_fiscais_numero (numero_nf),
  INDEX idx_notas_fiscais_emissao (data_emissao),
  CONSTRAINT fk_notas_fiscais_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_notas_fiscais_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS notas_fiscais_importacoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  arquivo_xml_path VARCHAR(500) NOT NULL,
  status ENUM('sucesso','falha') NOT NULL DEFAULT 'sucesso',
  mensagem TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_nf_import_usuario (usuario_id),
  CONSTRAINT fk_nf_import_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS integracoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  nome VARCHAR(255) NOT NULL,
  tipo ENUM('API','Webhook','Fiscal','Financeira') NOT NULL,
  status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo',
  config_json LONGTEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_integracoes_usuario (usuario_id),
  INDEX idx_integracoes_tipo (tipo),
  CONSTRAINT fk_integracoes_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS integracoes_logs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  integracao_id INT NOT NULL,
  evento VARCHAR(255) NOT NULL,
  status ENUM('sucesso','falha') NOT NULL DEFAULT 'sucesso',
  details LONGTEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_integracoes_logs_usuario (usuario_id),
  INDEX idx_integracoes_logs_integracao (integracao_id),
  CONSTRAINT fk_integracoes_logs_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_integracoes_logs_integracao FOREIGN KEY (integracao_id) REFERENCES integracoes(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Optional: User status for activate/deactivate.
-- Execute manually if the column does not exist in your production database.
-- ALTER TABLE users ADD COLUMN status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo' AFTER role;

SET FOREIGN_KEY_CHECKS = 1;

-- === Migration: 2026-02-03_erp_expansao_financeiro_faturamento_integracao_v2.sql ===
-- Migration: ERP Orix - Expansao Financeiro, Faturamento e Integracoes
-- Date: 2026-02-03
-- Rules: ONLY CREATE TABLE / ADD COLUMN. Never drop/rename existing columns.

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS plano_contas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  codigo VARCHAR(50) NOT NULL,
  nome VARCHAR(255) NOT NULL,
  tipo ENUM('Receita','Despesa') NOT NULL,
  nivel INT NOT NULL DEFAULT 1,
  conta_pai_id INT NULL,
  status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_plano_contas_usuario (usuario_id),
  INDEX idx_plano_contas_codigo (codigo),
  INDEX idx_plano_contas_conta_pai (conta_pai_id),
  CONSTRAINT fk_plano_contas_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_plano_contas_pai FOREIGN KEY (conta_pai_id) REFERENCES plano_contas(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS fornecedores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  nome VARCHAR(255) NOT NULL,
  documento VARCHAR(30) NULL,
  email VARCHAR(255) NULL,
  telefone VARCHAR(30) NULL,
  status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_fornecedores_usuario (usuario_id),
  CONSTRAINT fk_fornecedores_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS contas_pagar (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  plano_conta_id INT NOT NULL,
  fornecedor_id INT NULL,
  descricao VARCHAR(255) NOT NULL,
  valor DECIMAL(15,2) NOT NULL,
  data_vencimento DATE NOT NULL,
  data_pagamento DATE NULL,
  codigo_barras VARCHAR(255) NULL,
  recorrente TINYINT(1) NOT NULL DEFAULT 0,
  recorrencia_tipo ENUM('mensal','semanal','anual','customizada') NULL,
  recorrencia_intervalo INT NULL,
  status ENUM('aberta','paga','cancelada') NOT NULL DEFAULT 'aberta',
  observacoes TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_contas_pagar_usuario (usuario_id),
  INDEX idx_contas_pagar_plano_conta (plano_conta_id),
  INDEX idx_contas_pagar_fornecedor (fornecedor_id),
  INDEX idx_contas_pagar_vencimento (data_vencimento),
  CONSTRAINT fk_contas_pagar_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_pagar_plano_conta FOREIGN KEY (plano_conta_id) REFERENCES plano_contas(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_pagar_fornecedor FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS contas_pagar_anexos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  conta_pagar_id INT NOT NULL,
  file_path VARCHAR(500) NOT NULL,
  original_name VARCHAR(255) NOT NULL,
  mime_type VARCHAR(120) NULL,
  file_size INT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_contas_pagar_anexos_usuario (usuario_id),
  INDEX idx_contas_pagar_anexos_conta (conta_pagar_id),
  CONSTRAINT fk_contas_pagar_anexos_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_pagar_anexos_conta FOREIGN KEY (conta_pagar_id) REFERENCES contas_pagar(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS contas_receber (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  cliente_id INT NOT NULL,
  plano_conta_id INT NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  valor DECIMAL(15,2) NOT NULL,
  data_vencimento DATE NOT NULL,
  data_recebimento DATE NULL,
  status ENUM('aberta','recebida','cancelada') NOT NULL DEFAULT 'aberta',
  observacoes TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_contas_receber_usuario (usuario_id),
  INDEX idx_contas_receber_cliente (cliente_id),
  INDEX idx_contas_receber_plano_conta (plano_conta_id),
  INDEX idx_contas_receber_vencimento (data_vencimento),
  CONSTRAINT fk_contas_receber_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_receber_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE RESTRICT,
  CONSTRAINT fk_contas_receber_plano_conta FOREIGN KEY (plano_conta_id) REFERENCES plano_contas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS notas_fiscais (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  cliente_id INT NOT NULL,
  numero_nf VARCHAR(50) NOT NULL,
  serie VARCHAR(20) NOT NULL,
  valor_total DECIMAL(15,2) NOT NULL,
  data_emissao DATE NOT NULL,
  status ENUM('rascunho','emitida','cancelada','importada') NOT NULL DEFAULT 'rascunho',
  xml_path VARCHAR(500) NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_notas_fiscais_usuario (usuario_id),
  INDEX idx_notas_fiscais_cliente (cliente_id),
  INDEX idx_notas_fiscais_numero (numero_nf),
  INDEX idx_notas_fiscais_emissao (data_emissao),
  CONSTRAINT fk_notas_fiscais_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_notas_fiscais_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS notas_fiscais_importacoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  arquivo_xml_path VARCHAR(500) NOT NULL,
  status ENUM('sucesso','falha') NOT NULL DEFAULT 'sucesso',
  mensagem TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_nf_import_usuario (usuario_id),
  CONSTRAINT fk_nf_import_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS integracoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  nome VARCHAR(255) NOT NULL,
  tipo ENUM('API','Webhook','Fiscal','Financeira') NOT NULL,
  status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo',
  config_json LONGTEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_integracoes_usuario (usuario_id),
  INDEX idx_integracoes_tipo (tipo),
  CONSTRAINT fk_integracoes_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS integracoes_logs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  integracao_id INT NOT NULL,
  evento VARCHAR(255) NOT NULL,
  status ENUM('sucesso','falha') NOT NULL DEFAULT 'sucesso',
  details LONGTEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_integracoes_logs_usuario (usuario_id),
  INDEX idx_integracoes_logs_integracao (integracao_id),
  CONSTRAINT fk_integracoes_logs_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE RESTRICT,
  CONSTRAINT fk_integracoes_logs_integracao FOREIGN KEY (integracao_id) REFERENCES integracoes(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Optional: User status for activate/deactivate.
-- Execute manually if the column does not exist in your production database.
-- ALTER TABLE users ADD COLUMN status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo' AFTER role;

SET FOREIGN_KEY_CHECKS = 1;

-- === Migration: 2026-02-05_financeiro_contas_receber_meios_pagamento_recorrencia.sql ===
-- Migration: Financeiro - Contas a Receber (Meios de Pagamento + Recorrencia + Asaas refs)
-- Date: 2026-02-05
-- Rules: ONLY ADD COLUMN. Never drop/rename existing columns.

ALTER TABLE contas_receber
  ADD COLUMN meio_pagamento VARCHAR(50) NULL AFTER observacoes,
  ADD COLUMN recorrente TINYINT(1) NOT NULL DEFAULT 0 AFTER meio_pagamento,
  ADD COLUMN recorrencia_tipo ENUM('mensal','semanal','anual','customizada') NULL AFTER recorrente,
  ADD COLUMN recorrencia_intervalo INT NULL AFTER recorrencia_tipo,
  ADD COLUMN asaas_payment_id VARCHAR(60) NULL AFTER recorrencia_intervalo,
  ADD COLUMN asaas_subscription_id VARCHAR(60) NULL AFTER asaas_payment_id,
  ADD COLUMN external_reference VARCHAR(120) NULL AFTER asaas_subscription_id,
  ADD INDEX idx_contas_receber_asaas_payment (asaas_payment_id),
  ADD INDEX idx_contas_receber_external_ref (external_reference);

-- === Migration: 2026-02-05_password_reset_tokens.sql ===
-- Migration: Password Reset Tokens (ERP Orix)
-- Date: 2026-02-05
-- Rules: ONLY CREATE TABLE / ADD COLUMN. Never drop/rename existing columns.

CREATE TABLE IF NOT EXISTS password_reset_tokens (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  token_hash CHAR(64) NOT NULL,
  expires_at DATETIME NOT NULL,
  used_at DATETIME NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_prt_user (user_id),
  INDEX idx_prt_token (token_hash),
  INDEX idx_prt_expires (expires_at),
  CONSTRAINT fk_prt_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- === Migration: 2026-02-22_portal_clientes.sql ===
-- ============================================================
-- Portal do Cliente — Área de Acesso do Cliente
-- Criado em: 2026-02-22
-- ============================================================

-- Tabela de credenciais do portal do cliente
-- Cada cliente pode ter um acesso ao portal vinculado ao seu e-mail principal
CREATE TABLE IF NOT EXISTS portal_clientes (
  id                INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id        INT NOT NULL,
  email             VARCHAR(255) NOT NULL,
  password_hash     VARCHAR(255) NULL COMMENT 'NULL = primeiro acesso ainda não realizado',
  primeiro_acesso   TINYINT(1) NOT NULL DEFAULT 1 COMMENT '1 = ainda não definiu senha',
  ativo             TINYINT(1) NOT NULL DEFAULT 1,
  ultimo_acesso     DATETIME NULL,
  created_at        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uk_portal_email (email),
  UNIQUE KEY uk_portal_cliente (cliente_id),
  INDEX idx_portal_ativo (ativo),
  CONSTRAINT fk_portal_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela de tokens de primeiro acesso / redefinição de senha do portal
CREATE TABLE IF NOT EXISTS portal_clientes_tokens (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id  INT NOT NULL,
  token       VARCHAR(128) NOT NULL,
  tipo        ENUM('primeiro_acesso','reset_senha') NOT NULL DEFAULT 'primeiro_acesso',
  usado       TINYINT(1) NOT NULL DEFAULT 0,
  expira_em   DATETIME NOT NULL,
  created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uk_portal_token (token),
  INDEX idx_portal_token_cliente (cliente_id),
  CONSTRAINT fk_portal_token_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- === Migration: 2026-02-26_contas_receber_parcelas.sql ===
-- ============================================================
-- Migration: Contas a Receber — Campos de Parcelas e Grupo
-- Data: 2026-02-26
-- Compatível com: MySQL 5.7+ e MariaDB 10.x+
-- Regra: ONLY ADD COLUMN. Nunca remover/renomear colunas existentes.
-- ============================================================
-- ATENÇÃO: Execute cada bloco separadamente se algum campo já existir.
-- Os campos abaixo são adicionados apenas se a tabela não os tiver ainda.

ALTER TABLE contas_receber
  ADD COLUMN numero_parcela  SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'Número da parcela atual' AFTER asaas_subscription_id,
  ADD COLUMN total_parcelas  SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'Total de parcelas do grupo' AFTER numero_parcela,
  ADD COLUMN grupo_parcelas  VARCHAR(64) NULL DEFAULT NULL COMMENT 'Identificador do grupo de parcelas' AFTER total_parcelas;

ALTER TABLE contas_receber
  ADD INDEX idx_cr_grupo_parcelas (grupo_parcelas);

-- === Migration: 2026-02-26_notas_fiscais_anexos.sql ===
-- ============================================================
-- Notas Fiscais — Tabela de Anexos
-- Criado em: 2026-02-26
-- Permite anexar arquivos (PDF, XML, JPG) às notas fiscais.
-- Os anexos ficam disponíveis para download no portal do cliente.
-- ============================================================

CREATE TABLE IF NOT EXISTS notas_fiscais_anexos (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id      INT NOT NULL COMMENT 'Tenant (usuário ERP dono da nota)',
    nota_fiscal_id  INT NOT NULL COMMENT 'ID da nota fiscal vinculada',
    file_path       VARCHAR(500) NOT NULL COMMENT 'Caminho relativo a BASE_PATH',
    original_name   VARCHAR(255) NOT NULL COMMENT 'Nome original do arquivo enviado',
    mime_type       VARCHAR(100) NULL COMMENT 'MIME type detectado pelo servidor',
    file_size       INT NULL COMMENT 'Tamanho em bytes',
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_nf_anexos_nota   (nota_fiscal_id),
    INDEX idx_nf_anexos_tenant (usuario_id),
    CONSTRAINT fk_nf_anexo_nota FOREIGN KEY (nota_fiscal_id)
        REFERENCES notas_fiscais(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- === Migration: 2026-02-27_config_nfs_layout.sql ===
-- ============================================================
-- Migration: Configurações de NF-s (Layout Padrão / Personalizado)
-- Data: 2026-02-27
-- Descrição: Cria tabela para armazenar configurações de emissão
--            de NFS-e via Asaas (Portal Nacional), incluindo
--            Layout Padrão e Layout Personalizado.
-- ============================================================

CREATE TABLE IF NOT EXISTS `config_nfs` (
    `id`                      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `usuario_id`              INT UNSIGNED NOT NULL COMMENT 'Tenant/usuário dono da config',

    -- Tipo de layout
    `layout_tipo`             ENUM('padrao', 'personalizado') NOT NULL DEFAULT 'padrao'
                              COMMENT 'padrao = envia apenas valor+data; personalizado = envia JSON completo',

    -- Campos do Layout Padrão (fixos, configurados uma vez)
    `service_description`     VARCHAR(255) NOT NULL DEFAULT 'SERVIÇOS DE LAUDO'
                              COMMENT 'Descrição padrão do serviço para todas as NFs',
    `observations`            TEXT NULL
                              COMMENT 'Observações padrão impressas na NF',
    `municipal_service_name`  VARCHAR(255) NOT NULL DEFAULT 'Serviços de Saúde / Radiologia'
                              COMMENT 'Nome do serviço municipal configurado no Asaas',
    `municipal_service_code`  VARCHAR(30) NULL
                              COMMENT 'Código de serviço municipal (ex: 4.03)',
    `municipal_service_id`    VARCHAR(100) NULL
                              COMMENT 'ID único do serviço municipal no Asaas (alternativo ao code)',
    `cnae`                    VARCHAR(20) NULL DEFAULT '8640205'
                              COMMENT 'CNAE da empresa (ex: 8640205 para radiologia)',
    `deductions`              DECIMAL(10,2) NOT NULL DEFAULT 0.00
                              COMMENT 'Deduções padrão (não alteram o valor, apenas a base de cálculo do ISS)',

    -- Impostos padrão
    `retain_iss`              TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Reter ISS na fonte',
    `iss_aliquota`            DECIMAL(5,2) NOT NULL DEFAULT 0.00 COMMENT 'Alíquota ISS (%)',
    `pis_aliquota`            DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    `cofins_aliquota`         DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    `csll_aliquota`           DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    `inss_aliquota`           DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    `ir_aliquota`             DECIMAL(5,2) NOT NULL DEFAULT 0.00,

    -- Campos do Layout Personalizado
    `json_template`           TEXT NULL
                              COMMENT 'Template JSON personalizado. Placeholders: {{value}}, {{effectiveDate}}, {{payment}}, {{descricao}}',

    -- Portal Nacional
    `emite_portal_nacional`   TINYINT(1) NOT NULL DEFAULT 1
                              COMMENT '1 = emite pelo Portal Nacional (NFS-e Nacional)',
    `serie_nf`                VARCHAR(10) NULL
                              COMMENT 'Série da NF (80000-89999 para Portal Nacional)',

    -- Controle
    `ativo`                   TINYINT(1) NOT NULL DEFAULT 1,
    `created_at`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    UNIQUE KEY `uk_config_nfs_usuario` (`usuario_id`),
    INDEX `idx_config_nfs_usuario` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Configurações de emissão de NFS-e via Asaas (Portal Nacional)';

-- === Migration: 2026-02-27_crm_leads_oportunidades_interacoes.sql ===
-- ============================================================
-- Módulo CRM — Leads, Oportunidades e Interações
-- Criado em: 2026-02-27
-- Segmento: Saúde / Radiologia
-- ============================================================

-- -------------------------------------------------------
-- 1. crm_leads
-- -------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_leads (
  id                        INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id                INT NOT NULL                    COMMENT 'Tenant (users.id)',

  -- Identificação
  nome_lead                 VARCHAR(255) NOT NULL           COMMENT 'Nome da empresa ou pessoa',
  email                     VARCHAR(255) NULL,
  telefone                  VARCHAR(20)  NULL,
  celular                   VARCHAR(20)  NULL,
  cnpj                      VARCHAR(18)  NULL               COMMENT 'CNPJ para busca automática',
  cpf                       VARCHAR(14)  NULL,
  tipo_pessoa               ENUM('PJ','PF') NOT NULL DEFAULT 'PJ',

  -- Dados preenchidos via CnpjService
  razao_social              VARCHAR(255) NULL,
  nome_fantasia             VARCHAR(255) NULL,
  cnae_principal            VARCHAR(20)  NULL,
  descricao_cnae            VARCHAR(255) NULL,
  endereco                  VARCHAR(255) NULL,
  numero                    VARCHAR(20)  NULL,
  complemento               VARCHAR(100) NULL,
  bairro                    VARCHAR(100) NULL,
  cidade                    VARCHAR(100) NULL,
  estado                    CHAR(2)      NULL,
  cep                       VARCHAR(9)   NULL,

  -- Qualificação comercial
  origem                    ENUM(
                              'indicacao',
                              'site',
                              'evento',
                              'linkedin',
                              'prospeccao_ativa',
                              'parceiro',
                              'outro'
                            ) NOT NULL DEFAULT 'outro'       COMMENT 'Como o lead chegou',
  status_lead               ENUM(
                              'novo',
                              'contatado',
                              'qualificado',
                              'descartado'
                            ) NOT NULL DEFAULT 'novo',

  -- Campos específicos de Radiologia / Saúde
  segmento_principal        ENUM(
                              'clinica_imagem',
                              'hospital',
                              'upa_pronto_socorro',
                              'laboratorio',
                              'clinica_ortopedica',
                              'clinica_oncologica',
                              'consultorio_medico',
                              'outro'
                            ) NULL                          COMMENT 'Tipo de estabelecimento',
  especialidades_interesse  TEXT NULL                       COMMENT 'JSON array: ["Tomografia","Ressonância","Raio-X","Mamografia","Ultrassom","Densitometria","PET-CT","Outro"]',
  volume_exames_mes         INT NULL                        COMMENT 'Estimativa de exames/mês',
  equipamentos_possui       TEXT NULL                       COMMENT 'Equipamentos que o lead já possui',
  sistema_atual             VARCHAR(255) NULL               COMMENT 'Sistema/software que utiliza atualmente',
  num_medicos               INT NULL                        COMMENT 'Quantidade de médicos/radiologistas',
  num_unidades              INT NULL                        COMMENT 'Quantidade de unidades/filiais',
  acreditacao               VARCHAR(100) NULL               COMMENT 'Acreditações (ONA, JCI, etc.)',

  -- Contato decisor
  responsavel_nome          VARCHAR(255) NULL,
  responsavel_cargo         VARCHAR(100) NULL               COMMENT 'Ex: Diretor Clínico, Gestor de TI, Sócio',
  responsavel_email         VARCHAR(255) NULL,
  responsavel_telefone      VARCHAR(20)  NULL,

  -- Produtos de interesse
  produtos_interesse        TEXT NULL                       COMMENT 'JSON array com IDs ou nomes de produtos/serviços',

  -- Controle
  data_proximo_contato      DATE NULL                       COMMENT 'Agendamento de follow-up',
  observacoes               TEXT NULL,
  convertido_em             ENUM('oportunidade','cliente') NULL COMMENT 'Indica se foi convertido',
  convertido_id             INT NULL                        COMMENT 'ID da oportunidade ou cliente gerado',
  convertido_em_data        DATETIME NULL,

  created_at                TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at                TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  INDEX idx_crm_lead_usuario   (usuario_id),
  INDEX idx_crm_lead_status    (status_lead),
  INDEX idx_crm_lead_segmento  (segmento_principal),
  INDEX idx_crm_lead_proximo   (data_proximo_contato),
  CONSTRAINT fk_crm_lead_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -------------------------------------------------------
-- 2. crm_oportunidades
-- -------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_oportunidades (
  id                        INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id                INT NOT NULL                    COMMENT 'Tenant (users.id)',
  lead_id                   INT NULL                        COMMENT 'Lead de origem (crm_leads.id)',
  cliente_id                INT NULL                        COMMENT 'Cliente existente (clientes.id) — up-sell/cross-sell',

  titulo_oportunidade       VARCHAR(255) NOT NULL           COMMENT 'Ex: Contrato Laudos TC — Hospital São Lucas',
  etapa_funil               ENUM(
                              'qualificacao',
                              'proposta',
                              'negociacao',
                              'fechamento'
                            ) NOT NULL DEFAULT 'qualificacao',
  valor_estimado            DECIMAL(12,2) NULL,
  data_fechamento_prevista  DATE NULL,
  probabilidade_sucesso     TINYINT UNSIGNED NULL           COMMENT '0-100 (%)',

  status_oportunidade       ENUM('aberta','ganha','perdida') NOT NULL DEFAULT 'aberta',
  motivo_perda              VARCHAR(255) NULL,

  -- Campos específicos de Radiologia
  modalidade_principal      ENUM(
                              'tomografia',
                              'ressonancia',
                              'raio_x',
                              'mamografia',
                              'ultrassom',
                              'densitometria',
                              'pet_ct',
                              'laudos_gerais',
                              'outro'
                            ) NULL                          COMMENT 'Principal modalidade de interesse',
  tipo_contrato             ENUM(
                              'laudo_avulso',
                              'contrato_mensal',
                              'contrato_anual',
                              'projeto_implantacao',
                              'outro'
                            ) NULL,
  volume_estimado_mes       INT NULL                        COMMENT 'Volume mensal estimado de exames',

  observacoes               TEXT NULL,

  created_at                TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at                TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  INDEX idx_crm_op_usuario  (usuario_id),
  INDEX idx_crm_op_lead     (lead_id),
  INDEX idx_crm_op_cliente  (cliente_id),
  INDEX idx_crm_op_etapa    (etapa_funil),
  INDEX idx_crm_op_status   (status_oportunidade),
  CONSTRAINT fk_crm_op_usuario  FOREIGN KEY (usuario_id)  REFERENCES users(id)    ON DELETE CASCADE,
  CONSTRAINT fk_crm_op_lead     FOREIGN KEY (lead_id)     REFERENCES crm_leads(id) ON DELETE SET NULL,
  CONSTRAINT fk_crm_op_cliente  FOREIGN KEY (cliente_id)  REFERENCES clientes(id)  ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -------------------------------------------------------
-- 3. crm_interacoes
-- -------------------------------------------------------
CREATE TABLE IF NOT EXISTS crm_interacoes (
  id                INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id        INT NOT NULL                    COMMENT 'Quem registrou a interação (users.id)',
  related_id        INT NOT NULL                    COMMENT 'ID do lead ou oportunidade',
  related_type      ENUM('lead','oportunidade') NOT NULL,
  data_interacao    DATETIME NOT NULL               COMMENT 'Data e hora da interação',
  tipo_interacao    ENUM(
                      'email',
                      'telefone',
                      'whatsapp',
                      'reuniao_presencial',
                      'reuniao_online',
                      'visita_tecnica',
                      'proposta_enviada',
                      'contrato_enviado',
                      'outro'
                    ) NOT NULL,
  resumo            TEXT NOT NULL                   COMMENT 'O que foi discutido / resultado',
  created_at        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  INDEX idx_crm_int_related  (related_type, related_id),
  INDEX idx_crm_int_usuario  (usuario_id),
  INDEX idx_crm_int_data     (data_interacao),
  CONSTRAINT fk_crm_int_usuario FOREIGN KEY (usuario_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- === Migration: 2026-02-27_notas_fiscais_asaas_nfs.sql ===
-- ============================================================
-- Migration: Campos de NF-s via Asaas na tabela notas_fiscais
-- Data: 2026-02-27
-- Descrição: Adiciona suporte à emissão de NF-s via API Asaas,
--            rastreamento de origem (manual vs asaas) e vínculo
--            com contas a receber.
-- ============================================================

ALTER TABLE notas_fiscais
    -- ID da NF no Asaas (ex: inv_00000000000)
    ADD COLUMN asaas_invoice_id     VARCHAR(60)  NULL AFTER xml_path,

    -- Origem da emissão: 'manual' = anexo manual, 'asaas' = emitida via API
    ADD COLUMN origem_emissao       ENUM('manual','asaas') NOT NULL DEFAULT 'manual' AFTER asaas_invoice_id,

    -- Vínculo com a conta a receber que originou a NF
    ADD COLUMN conta_receber_id     INT UNSIGNED NULL AFTER origem_emissao,

    -- URL do PDF da NF gerada pelo Asaas
    ADD COLUMN asaas_pdf_url        VARCHAR(500) NULL AFTER conta_receber_id,

    -- Status da NF no Asaas (SCHEDULED, SYNCHRONIZED, AUTHORIZED, ERROR, CANCELED, etc.)
    ADD COLUMN asaas_status         VARCHAR(40)  NULL AFTER asaas_pdf_url,

    -- Descrição do serviço municipal usada na emissão
    ADD COLUMN servico_descricao    VARCHAR(255) NULL AFTER asaas_status,

    -- Código do serviço municipal (municipalServiceCode)
    ADD COLUMN servico_codigo       VARCHAR(20)  NULL AFTER servico_descricao,

    -- ID do serviço municipal no Asaas (municipalServiceId)
    ADD COLUMN servico_id_asaas     VARCHAR(20)  NULL AFTER servico_codigo,

    -- Observações da NF enviadas ao Asaas
    ADD COLUMN observacoes_nf       TEXT         NULL AFTER servico_id_asaas,

    -- Índices para performance
    ADD INDEX idx_nf_asaas_invoice_id  (asaas_invoice_id),
    ADD INDEX idx_nf_conta_receber_id  (conta_receber_id),
    ADD INDEX idx_nf_origem_emissao    (origem_emissao);

-- Atualiza registros existentes: todos os que não têm asaas_invoice_id são 'manual'
UPDATE notas_fiscais SET origem_emissao = 'manual' WHERE asaas_invoice_id IS NULL;

-- === Migration: 2026-02-28_whatsapp_bot_integration.sql ===
-- ============================================================
-- Migration: Integração Bot WhatsApp
-- Data: 2026-02-28
-- Descrição: Cria a tabela de logs do bot WhatsApp.
--            O token de API é armazenado na tabela `integracoes`
--            existente, com nome='whatsapp_bot'.
-- ============================================================

-- Tabela de logs de consultas do bot WhatsApp
CREATE TABLE IF NOT EXISTS whatsapp_bot_logs (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  tenant_id     INT NOT NULL COMMENT 'ID do usuário do ERP (tenant)',
  integracao_id INT NOT NULL DEFAULT 0 COMMENT 'ID da integração na tabela integracoes',
  telefone_hash VARCHAR(12) NOT NULL COMMENT 'Hash SHA-256 truncado do telefone (privacidade)',
  endpoint      VARCHAR(255) NOT NULL COMMENT 'Endpoint consultado',
  intent        VARCHAR(100) NOT NULL COMMENT 'Intenção identificada',
  status        ENUM('success', 'error') NOT NULL DEFAULT 'success',
  summary       VARCHAR(500) NOT NULL DEFAULT '' COMMENT 'Resumo da resposta',
  created_at    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  INDEX idx_wbl_tenant    (tenant_id),
  INDEX idx_wbl_status    (status),
  INDEX idx_wbl_created   (created_at),
  INDEX idx_wbl_integracao (integracao_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Logs de consultas do chatbot WhatsApp';

-- === Migration: 2026-03-13_corpo_clinico.sql ===
CREATE TABLE IF NOT EXISTS especialidades (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    especialidade VARCHAR(150) NOT NULL,
    subespecialidade VARCHAR(150) NULL,
    rqe VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_especialidades_usuario
        FOREIGN KEY (usuario_id) REFERENCES users(id)
        ON DELETE CASCADE,
    INDEX idx_especialidades_usuario (usuario_id),
    INDEX idx_especialidades_nome (especialidade)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS medicos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    crm VARCHAR(50) NOT NULL,
    uf_crm CHAR(2) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(30) NOT NULL,
    especialidade_id INT UNSIGNED NULL,
    subespecialidade VARCHAR(150) NULL,
    rqe VARCHAR(50) NULL,
    assinatura_digital VARCHAR(255) NULL,
    status ENUM('ativo', 'inativo') NOT NULL DEFAULT 'ativo',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_medicos_usuario
        FOREIGN KEY (usuario_id) REFERENCES users(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_medicos_especialidade
        FOREIGN KEY (especialidade_id) REFERENCES especialidades(id)
        ON DELETE SET NULL,
    UNIQUE KEY uk_medicos_usuario_crm (usuario_id, crm, uf_crm),
    INDEX idx_medicos_usuario (usuario_id),
    INDEX idx_medicos_especialidade (especialidade_id),
    INDEX idx_medicos_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS tabela_exames (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    nome_exame VARCHAR(255) NOT NULL,
    modalidade ENUM('TC', 'RM', 'RX', 'US') NOT NULL,
    valor_padrao DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_tabela_exames_usuario
        FOREIGN KEY (usuario_id) REFERENCES users(id)
        ON DELETE CASCADE,
    INDEX idx_tabela_exames_usuario (usuario_id),
    INDEX idx_tabela_exames_modalidade (modalidade)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- === Migration: 2026-03-15_email_alertas.sql ===
-- =============================================================================
-- ERP Orix — Sistema de Alertas por E-mail
-- Migration: 2026-03-15_email_alertas.sql
-- =============================================================================

-- Tabela principal de configuração de alertas
CREATE TABLE IF NOT EXISTS email_alertas (
    id               INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    usuario_id       INT UNSIGNED NOT NULL,

    -- Identificação do alerta
    codigo           VARCHAR(80)  NOT NULL COMMENT 'Slug único ex: financeiro_contas_vencer_3d',
    modulo           ENUM('financeiro','faturamento','crm') NOT NULL,
    nome             VARCHAR(120) NOT NULL COMMENT 'Nome legível do alerta',
    descricao        TEXT         NULL     COMMENT 'Descrição detalhada do disparo',

    -- Configuração de disparo
    antecedencia_dias TINYINT UNSIGNED NOT NULL DEFAULT 3
        COMMENT 'Dias antes do vencimento para disparar (0 = no dia, negativo = após)',
    frequencia       ENUM('unico','diario','semanal') NOT NULL DEFAULT 'diario'
        COMMENT 'Frequência de reenvio enquanto a condição persistir',
    hora_disparo     TIME NOT NULL DEFAULT '08:00:00'
        COMMENT 'Hora do dia para processar o alerta (via cron)',

    -- Destinatários
    destinatarios    TEXT NOT NULL
        COMMENT 'JSON array de e-mails: ["email1","email2"] ou tokens: ["responsavel","vendedor","admin"]',
    cc               TEXT NULL
        COMMENT 'JSON array de e-mails em cópia',

    -- Conteúdo do e-mail
    assunto_template VARCHAR(255) NOT NULL
        COMMENT 'Template do assunto com variáveis: {cliente}, {valor}, {dias}, {vencimento}',
    corpo_template   LONGTEXT NOT NULL
        COMMENT 'Template HTML do corpo com variáveis dinâmicas',

    -- Status
    ativo            TINYINT(1) NOT NULL DEFAULT 1,
    ultimo_disparo   DATETIME NULL,
    total_disparos   INT UNSIGNED NOT NULL DEFAULT 0,

    created_at       DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at       DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    UNIQUE KEY uq_alerta_usuario_codigo (usuario_id, codigo),
    INDEX idx_alerta_modulo (modulo),
    INDEX idx_alerta_ativo (ativo),
    INDEX idx_alerta_usuario (usuario_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela de log de disparos
CREATE TABLE IF NOT EXISTS email_alertas_log (
    id           BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    alerta_id    INT UNSIGNED NOT NULL,
    usuario_id   INT UNSIGNED NOT NULL,
    destinatario VARCHAR(255) NOT NULL,
    assunto      VARCHAR(255) NOT NULL,
    status       ENUM('enviado','falha','ignorado') NOT NULL DEFAULT 'enviado',
    erro         TEXT NULL,
    referencia   VARCHAR(120) NULL COMMENT 'ID do registro que gerou o alerta (ex: conta_pagar:42)',
    disparado_em DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    INDEX idx_log_alerta (alerta_id),
    INDEX idx_log_usuario (usuario_id),
    INDEX idx_log_data (disparado_em)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- =============================================================================
-- SEEDS: Padrões de alerta por módulo
-- Inseridos com usuario_id = 0 (padrão do sistema — serão clonados por usuário)
-- =============================================================================

-- -----------------------------------------------------------------------
-- MÓDULO: FINANCEIRO
-- -----------------------------------------------------------------------

-- 1. Contas a Receber vencendo em 3 dias
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'financeiro_receber_vencer_3d',
    'financeiro',
    'Contas a Receber — Vencendo em 3 dias',
    'Alerta enviado 3 dias antes do vencimento de contas a receber em aberto. Ideal para acionar o setor financeiro e o cliente com antecedência.',
    3, 'unico', '08:00:00',
    '["admin","financeiro"]',
    NULL,
    'Alerta: Conta a Receber vencendo em {dias} dia(s) — {cliente}',
    '<p>Prezado(a),</p>
<p>Este é um alerta automático do <strong>ERP Orix</strong>.</p>
<p>A conta a receber abaixo vence em <strong>{dias} dia(s)</strong>:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Cliente</strong></td><td>{cliente}</td></tr>
  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>
  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>
</table>
<p>Acesse o ERP para tomar as providências necessárias.</p>',
    1
);

-- 2. Contas a Receber vencidas (em atraso)
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'financeiro_receber_atraso',
    'financeiro',
    'Contas a Receber — Em Atraso',
    'Alerta diário para contas a receber vencidas e não pagas. Disparado a partir do dia seguinte ao vencimento.',
    -1, 'diario', '09:00:00',
    '["admin","financeiro"]',
    NULL,
    'URGENTE: Conta a Receber em atraso — {cliente} ({dias} dia(s))',
    '<p>Prezado(a),</p>
<p>A conta a receber abaixo está <strong>em atraso há {dias} dia(s)</strong>:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Cliente</strong></td><td>{cliente}</td></tr>
  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>
  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>
  <tr><td><strong>Dias em atraso</strong></td><td><span style="color:red"><strong>{dias}</strong></span></td></tr>
</table>
<p>Providencie a cobrança imediatamente.</p>',
    1
);

-- 3. Contas a Pagar vencendo em 3 dias
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'financeiro_pagar_vencer_3d',
    'financeiro',
    'Contas a Pagar — Vencendo em 3 dias',
    'Alerta enviado 3 dias antes do vencimento de contas a pagar em aberto. Evita multas e juros por atraso.',
    3, 'unico', '08:00:00',
    '["admin","financeiro"]',
    NULL,
    'Alerta: Conta a Pagar vencendo em {dias} dia(s) — {fornecedor}',
    '<p>Prezado(a),</p>
<p>A conta a pagar abaixo vence em <strong>{dias} dia(s)</strong>:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Fornecedor</strong></td><td>{fornecedor}</td></tr>
  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>
  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>
</table>
<p>Providencie o pagamento para evitar multas e juros.</p>',
    1
);

-- 4. Contas a Pagar em atraso
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'financeiro_pagar_atraso',
    'financeiro',
    'Contas a Pagar — Em Atraso',
    'Alerta diário para contas a pagar vencidas e não quitadas. Risco de multa, juros e protesto.',
    -1, 'diario', '09:00:00',
    '["admin","financeiro"]',
    NULL,
    'URGENTE: Conta a Pagar em atraso — {fornecedor} ({dias} dia(s))',
    '<p>Prezado(a),</p>
<p>A conta a pagar abaixo está <strong>em atraso há {dias} dia(s)</strong> e ainda não foi quitada:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Fornecedor</strong></td><td>{fornecedor}</td></tr>
  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>
  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>
  <tr><td><strong>Dias em atraso</strong></td><td><span style="color:red"><strong>{dias}</strong></span></td></tr>
</table>
<p>Regularize o pagamento imediatamente para evitar protesto.</p>',
    1
);

-- 5. Resumo diário financeiro
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'financeiro_resumo_diario',
    'financeiro',
    'Resumo Financeiro Diário',
    'Relatório diário consolidado com contas a vencer nos próximos 7 dias e contas em atraso.',
    0, 'diario', '07:00:00',
    '["admin"]',
    NULL,
    'Resumo Financeiro do Dia — {data}',
    '<p>Prezado(a),</p>
<p>Segue o resumo financeiro de <strong>{data}</strong>:</p>
<h4>Contas a Receber</h4>
<ul>
  <li>Vencendo hoje: <strong>R$ {receber_hoje}</strong></li>
  <li>Vencendo nos próximos 7 dias: <strong>R$ {receber_7d}</strong></li>
  <li>Em atraso: <strong style="color:red">R$ {receber_atraso}</strong></li>
</ul>
<h4>Contas a Pagar</h4>
<ul>
  <li>Vencendo hoje: <strong>R$ {pagar_hoje}</strong></li>
  <li>Vencendo nos próximos 7 dias: <strong>R$ {pagar_7d}</strong></li>
  <li>Em atraso: <strong style="color:red">R$ {pagar_atraso}</strong></li>
</ul>
<p>Acesse o ERP para detalhes completos.</p>',
    0
);

-- -----------------------------------------------------------------------
-- MÓDULO: FATURAMENTO
-- -----------------------------------------------------------------------

-- 6. Fatura emitida (confirmação ao cliente)
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'faturamento_fatura_emitida',
    'faturamento',
    'Fatura Emitida — Notificação ao Cliente',
    'Notificação automática enviada ao cliente no momento da emissão de uma nova fatura.',
    0, 'unico', '00:00:00',
    '["cliente"]',
    '["admin"]',
    'Nova Fatura Emitida — {numero_fatura} | ERP Orix',
    '<p>Prezado(a) <strong>{cliente}</strong>,</p>
<p>Informamos que uma nova fatura foi emitida em seu nome:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Número</strong></td><td>{numero_fatura}</td></tr>
  <tr><td><strong>Descrição</strong></td><td>{descricao}</td></tr>
  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>
</table>
<p>Em caso de dúvidas, entre em contato conosco.</p>',
    1
);

-- 7. Fatura vencendo em 2 dias
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'faturamento_fatura_vencer_2d',
    'faturamento',
    'Fatura — Lembrete de Vencimento (2 dias)',
    'Lembrete enviado ao cliente 2 dias antes do vencimento da fatura.',
    2, 'unico', '08:00:00',
    '["cliente"]',
    '["admin","financeiro"]',
    'Lembrete: Sua fatura vence em {dias} dia(s) — {numero_fatura}',
    '<p>Prezado(a) <strong>{cliente}</strong>,</p>
<p>Este é um lembrete de que sua fatura vence em <strong>{dias} dia(s)</strong>:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Número</strong></td><td>{numero_fatura}</td></tr>
  <tr><td><strong>Valor</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>
</table>
<p>Efetue o pagamento para evitar juros e multas.</p>',
    1
);

-- 8. Fatura em atraso
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'faturamento_fatura_atraso',
    'faturamento',
    'Fatura — Em Atraso (cobrança ao cliente)',
    'Cobrança automática enviada ao cliente quando a fatura está vencida e não paga.',
    -1, 'diario', '09:00:00',
    '["cliente","admin"]',
    '["financeiro"]',
    'AVISO: Fatura em atraso — {numero_fatura} ({dias} dia(s) vencida)',
    '<p>Prezado(a) <strong>{cliente}</strong>,</p>
<p>Identificamos que a fatura abaixo está <strong>em atraso há {dias} dia(s)</strong>:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Número</strong></td><td>{numero_fatura}</td></tr>
  <tr><td><strong>Valor Original</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Vencimento</strong></td><td>{vencimento}</td></tr>
  <tr><td><strong>Dias em atraso</strong></td><td><span style="color:red"><strong>{dias}</strong></span></td></tr>
</table>
<p>Regularize seu débito o quanto antes para evitar restrições.</p>',
    1
);

-- -----------------------------------------------------------------------
-- MÓDULO: CRM
-- -----------------------------------------------------------------------

-- 9. Lead sem contato há X dias
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'crm_lead_sem_contato',
    'crm',
    'Lead — Sem Contato há 7 dias',
    'Alerta ao vendedor quando um lead ativo não recebe nenhuma interação há 7 dias.',
    -7, 'diario', '08:30:00',
    '["vendedor","admin"]',
    NULL,
    'Alerta CRM: Lead sem contato há {dias} dia(s) — {lead}',
    '<p>Prezado(a) <strong>{vendedor}</strong>,</p>
<p>O lead abaixo está <strong>sem registro de contato há {dias} dia(s)</strong>:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Lead</strong></td><td>{lead}</td></tr>
  <tr><td><strong>Status</strong></td><td>{status_lead}</td></tr>
  <tr><td><strong>Último contato</strong></td><td>{ultimo_contato}</td></tr>
  <tr><td><strong>Próximo contato previsto</strong></td><td>{proximo_contato}</td></tr>
</table>
<p>Acesse o CRM e registre uma interação para manter o pipeline atualizado.</p>',
    1
);

-- 10. Próximo contato com lead vencendo hoje
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'crm_lead_proximo_contato_hoje',
    'crm',
    'Lead — Próximo Contato Agendado para Hoje',
    'Lembrete matinal ao vendedor sobre leads com próximo contato agendado para o dia.',
    0, 'unico', '07:30:00',
    '["vendedor"]',
    NULL,
    'Lembrete CRM: Você tem contato agendado hoje com {lead}',
    '<p>Bom dia, <strong>{vendedor}</strong>!</p>
<p>Você tem um contato agendado para <strong>hoje</strong> com o seguinte lead:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Lead</strong></td><td>{lead}</td></tr>
  <tr><td><strong>Empresa</strong></td><td>{empresa}</td></tr>
  <tr><td><strong>Telefone</strong></td><td>{telefone}</td></tr>
  <tr><td><strong>Status</strong></td><td>{status_lead}</td></tr>
</table>
<p>Boa sorte na abordagem!</p>',
    1
);

-- 11. Oportunidade vencendo em 3 dias
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'crm_oportunidade_vencer_3d',
    'crm',
    'Oportunidade — Fechamento Previsto em 3 dias',
    'Alerta ao vendedor quando a data de fechamento prevista de uma oportunidade está a 3 dias.',
    3, 'unico', '08:00:00',
    '["vendedor","admin"]',
    NULL,
    'Alerta CRM: Oportunidade vence em {dias} dia(s) — {oportunidade}',
    '<p>Prezado(a) <strong>{vendedor}</strong>,</p>
<p>A oportunidade abaixo tem fechamento previsto em <strong>{dias} dia(s)</strong>:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Oportunidade</strong></td><td>{oportunidade}</td></tr>
  <tr><td><strong>Lead/Cliente</strong></td><td>{lead}</td></tr>
  <tr><td><strong>Valor Estimado</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Probabilidade</strong></td><td>{probabilidade}%</td></tr>
  <tr><td><strong>Fechamento Previsto</strong></td><td>{data_fechamento}</td></tr>
  <tr><td><strong>Etapa do Funil</strong></td><td>{etapa}</td></tr>
</table>
<p>Atualize o status da oportunidade no CRM.</p>',
    1
);

-- 12. Oportunidade vencida sem fechamento
INSERT IGNORE INTO email_alertas
    (usuario_id, codigo, modulo, nome, descricao, antecedencia_dias, frequencia, hora_disparo,
     destinatarios, cc, assunto_template, corpo_template, ativo)
VALUES (
    0,
    'crm_oportunidade_vencida',
    'crm',
    'Oportunidade — Data de Fechamento Ultrapassada',
    'Alerta diário quando uma oportunidade aberta ultrapassou a data de fechamento prevista sem ser ganha ou perdida.',
    -1, 'diario', '09:00:00',
    '["vendedor","admin"]',
    NULL,
    'ATENÇÃO CRM: Oportunidade sem fechamento — {oportunidade} ({dias} dia(s) atrasada)',
    '<p>Prezado(a) <strong>{vendedor}</strong>,</p>
<p>A oportunidade abaixo ultrapassou a data de fechamento prevista há <strong>{dias} dia(s)</strong> e ainda está aberta:</p>
<table border="1" cellpadding="6" cellspacing="0" style="border-collapse:collapse;width:100%">
  <tr><td><strong>Oportunidade</strong></td><td>{oportunidade}</td></tr>
  <tr><td><strong>Lead/Cliente</strong></td><td>{lead}</td></tr>
  <tr><td><strong>Valor Estimado</strong></td><td>R$ {valor}</td></tr>
  <tr><td><strong>Fechamento Previsto</strong></td><td>{data_fechamento}</td></tr>
  <tr><td><strong>Dias em atraso</strong></td><td><span style="color:red"><strong>{dias}</strong></span></td></tr>
</table>
<p>Atualize o status para "Ganha" ou "Perdida" no CRM.</p>',
    1
);

-- === Migration: 2026-03-16_users_add_status.sql ===
-- Migration: Adiciona coluna status à tabela users
-- Data: 2026-03-16
-- Motivo: A coluna estava comentada na migration anterior e nunca foi criada,
--         causando erro 500 ao tentar atualizar usuários.

ALTER TABLE users
    ADD COLUMN IF NOT EXISTS status ENUM('ativo','inativo') NOT NULL DEFAULT 'ativo' AFTER role;

-- Garante que todos os usuários existentes ficam com status 'ativo'
UPDATE users SET status = 'ativo' WHERE status IS NULL OR status = '';

-- === Migration: add_role_to_users.sql ===
-- Migration: Add role column to users table
-- Date: 2026-02-03
-- Purpose: Enable proper RBAC implementation

ALTER TABLE users ADD COLUMN role VARCHAR(50) DEFAULT 'user' AFTER email;

-- Update existing users to have appropriate roles
UPDATE users SET role = 'superadmin' WHERE email IN ('admin@orix.com.br', 'teste@email.com');
UPDATE users SET role = 'admin' WHERE email = 'financeiro@orix.com.br';

-- Add index for performance
ALTER TABLE users ADD INDEX idx_role (role);

-- ============================================================
-- PARTE 3: TABELAS AUXILIARES
-- ============================================================
CREATE TABLE IF NOT EXISTS audit_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NULL,
    action VARCHAR(100) NOT NULL,
    context JSON NULL,
    ip_address VARCHAR(45) NULL,
    user_agent TEXT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_user_id (user_id),
    INDEX idx_action (action),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- Tabela de tokens de redefinição de senha.
-- O token é armazenado apenas em hash; nunca o valor em texto puro.
CREATE TABLE IF NOT EXISTS password_reset_tokens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    token_hash VARCHAR(255) NOT NULL,
    expires_at DATETIME NOT NULL,
    used_at DATETIME NULL DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_token_hash (token_hash),
    INDEX idx_user_id (user_id),
    INDEX idx_expires_at (expires_at),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
-- FIM DO SCRIPT DE MIGRAÇÃO ORIX ERP
