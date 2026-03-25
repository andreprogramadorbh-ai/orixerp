# Relatório de Migração — ORIX ERP

**Data:** 24 de março de 2026  
**Origem:** `ASOARESBH/erpinlaudo`  
**Destino:** `andreprogramadorbh-ai/orixerp`

---

## Resumo Executivo

O sistema ERP InLaudo foi integralmente clonado, adaptado e publicado como **ORIX ERP** no repositório GitHub `andreprogramadorbh-ai/orixerp`. Todas as referências à marca InLaudo foram substituídas por ORIX, a logo foi atualizada, as credenciais do banco de dados foram configuradas e um script único de migração foi gerado.

---

## Repositório

| Item | Valor |
|------|-------|
| URL do Repositório | https://github.com/andreprogramadorbh-ai/orixerp |
| Branch Principal | `main` |
| Total de Arquivos | 287 |
| Arquivos PHP | 206 |
| Arquivos SQL | 21 |

---

## Substituições Realizadas

Todas as ocorrências dos termos abaixo foram substituídas em todos os arquivos do projeto:

| Termo Original | Substituído Por |
|----------------|-----------------|
| `INLAUDO` | `ORIX` |
| `InLaudo` | `Orix` |
| `inlaudo` | `orix` |
| `inlaud99_saas_inlaudo` | `inlaud99_orixerp` |
| `logo-inlaudo.png` | `logo.png` (logo ORIX) |
| `ERP InLaudo` | `ORIX ERP` |
| `admin@inlaudo.com.br` | `admin@orix.com.br` |
| `financeiro@inlaudo.com.br` | `financeiro@orix.com.br` |

---

## Configurações do Banco de Dados

| Parâmetro | Valor |
|-----------|-------|
| Banco de Dados | `inlaud99_orixerp` |
| Usuário | `inlaud99_admin` |
| Senha | `Admin259087@` |
| Host | `localhost` |
| Porta | `3306` |
| Charset | `utf8mb4_unicode_ci` |

---

## Script de Migração Único

O arquivo `database/migracao_unica_orixerp.sql` consolida **todas as migrations e seeders** em um único script de 1.532 linhas, pronto para execução.

### Tabelas Criadas

| Tabela | Descrição |
|--------|-----------|
| `users` | Usuários do sistema |
| `audit_logs` | Logs de auditoria |
| `clientes` | Cadastro de clientes PF/PJ |
| `clientes_contatos` | Contatos dos clientes |
| `contas_pagar` | Contas a pagar |
| `contas_pagar_anexos` | Anexos de contas a pagar |
| `contas_receber` | Contas a receber |
| `notas_fiscais` | Notas fiscais |
| `notas_fiscais_anexos` | Anexos de notas fiscais |
| `notas_fiscais_importacoes` | Importações de NF-e |
| `fornecedores` | Cadastro de fornecedores |
| `plano_contas` | Plano de contas |
| `integracoes` | Configurações de integrações |
| `integracoes_logs` | Logs de integrações |
| `crm_leads` | Leads do CRM |
| `crm_oportunidades` | Oportunidades do CRM |
| `crm_interacoes` | Interações do CRM |
| `medicos` | Corpo clínico — médicos |
| `especialidades` | Especialidades médicas |
| `tabela_exames` | Tabela de exames |
| `portal_clientes` | Portal do cliente |
| `portal_clientes_tokens` | Tokens de acesso ao portal |
| `config_nfs` | Configurações de NFS-e |
| `email_alertas` | Alertas por e-mail |
| `email_alertas_log` | Log de alertas enviados |
| `whatsapp_bot_logs` | Logs do bot WhatsApp |
| `password_reset_tokens` | Tokens de redefinição de senha |

### Instruções de Uso

```sql
-- 1. Criar banco de dados
CREATE DATABASE inlaud99_orixerp CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 2. Criar usuário
CREATE USER 'inlaud99_admin'@'localhost' IDENTIFIED BY 'Admin259087@';

-- 3. Conceder permissões
GRANT ALL PRIVILEGES ON inlaud99_orixerp.* TO 'inlaud99_admin'@'localhost';
FLUSH PRIVILEGES;

-- 4. Executar o script
-- mysql -u inlaud99_admin -p inlaud99_orixerp < database/migracao_unica_orixerp.sql
```

---

## Logo

A logo **ORIX — Optimized Radiology** foi adicionada em:

- `public/assets/logo.png` — Logo principal
- `public/assets/logo-orix.png` — Cópia de referência

A logo está integrada em todos os layouts: sidebar do ERP, tela de login, portal do cliente e páginas públicas.

---

## Módulos do Sistema

| Módulo | Status |
|--------|--------|
| Dashboard | Migrado |
| Clientes (PF/PJ) | Migrado |
| Contas a Pagar | Migrado |
| Contas a Receber | Migrado |
| Notas Fiscais (NF-e/NFS-e) | Migrado |
| CRM (Leads, Oportunidades) | Migrado |
| Corpo Clínico | Migrado |
| Portal do Cliente | Migrado |
| Configurações e Usuários | Migrado |
| Integrações (Asaas, WhatsApp) | Migrado |
| Alertas por E-mail | Migrado |
| API WhatsApp Bot | Migrado |

---

## Próximos Passos

1. Configurar o arquivo `.env` no servidor com as credenciais definitivas
2. Executar o script de migração `database/migracao_unica_orixerp.sql`
3. Instalar dependências PHP via `composer install`
4. Configurar o servidor web (Apache/Nginx) para apontar para `public/`
5. Gerar as chaves de criptografia com `php generate-keys.php`
6. Configurar as integrações (Asaas, SMTP, WhatsApp) no painel de configurações
