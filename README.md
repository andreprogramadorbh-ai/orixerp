# ORIX ERP — Optimized Radiology

Sistema ERP completo desenvolvido para clínicas e laboratórios de radiologia, com módulos financeiros, CRM, portal do cliente e integração com serviços de pagamento.

## Sobre o Sistema

O **ORIX ERP** é uma plataforma de gestão empresarial voltada para o segmento de radiologia diagnóstica, oferecendo controle financeiro, gestão de clientes, emissão de notas fiscais, CRM e integração com WhatsApp e sistemas de pagamento.

## Tecnologias

- **PHP 8.1+** — Backend MVC
- **MySQL 5.7+** — Banco de dados relacional
- **Bootstrap 5** — Interface responsiva
- **Font Awesome 6** — Ícones
- **Flatpickr** — Seletor de datas

## Módulos Disponíveis

| Módulo | Descrição |
|--------|-----------|
| Dashboard | Visão geral financeira e operacional |
| Clientes | Cadastro de PF e PJ com contatos e anexos |
| Financeiro | Contas a pagar e receber com parcelas |
| Notas Fiscais | Emissão e importação de NF-e/NFS-e |
| CRM | Leads, oportunidades e interações |
| Corpo Clínico | Gestão de médicos e especialidades |
| Portal do Cliente | Acesso externo para clientes |
| Configurações | Usuários, permissões e integrações |

## Instalação

### Requisitos

- PHP 8.1 ou superior
- MySQL 5.7 ou superior
- Composer
- Servidor web (Apache/Nginx)

### Configuração

1. Clone o repositório:
   ```bash
   git clone https://github.com/andreprogramadorbh-ai/orixerp.git
   cd orixerp
   ```

2. Instale as dependências:
   ```bash
   composer install
   ```

3. Configure o arquivo de ambiente:
   ```bash
   cp .env.example .env
   ```
   Edite o arquivo `.env` com suas credenciais.

4. Crie o banco de dados e execute a migração:
   ```sql
   CREATE DATABASE inlaud99_orixerp CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   CREATE USER 'inlaud99_admin'@'localhost' IDENTIFIED BY 'SUA_SENHA';
   GRANT ALL PRIVILEGES ON inlaud99_orixerp.* TO 'inlaud99_admin'@'localhost';
   FLUSH PRIVILEGES;
   ```
   
   Execute o script único de migração:
   ```bash
   mysql -u inlaud99_admin -p inlaud99_orixerp < database/migracao_unica_orixerp.sql
   ```

5. Gere as chaves de criptografia:
   ```bash
   php generate-keys.php
   ```

6. Configure o servidor web para apontar para o diretório `public/`.

## Estrutura do Projeto

```
orixerp/
├── app/
│   ├── Controllers/    # Controladores MVC
│   ├── Core/           # Núcleo do framework
│   ├── Helpers/        # Funções auxiliares
│   ├── Middlewares/    # Middlewares de autenticação
│   ├── Models/         # Modelos de dados
│   ├── Services/       # Serviços externos
│   └── Views/          # Templates de visualização
├── config/             # Configurações do sistema
├── database/
│   ├── migrations/     # Migrations individuais
│   ├── seeders/        # Dados iniciais
│   └── migracao_unica_orixerp.sql  # Script único de migração
├── public/             # Ponto de entrada público
│   └── assets/         # CSS, JS e imagens
├── routes/             # Definição de rotas
└── storage/            # Logs e uploads
```

## Banco de Dados

- **Banco:** `inlaud99_orixerp`
- **Usuário:** `inlaud99_admin`
- **Charset:** `utf8mb4_unicode_ci`

## Licença

Sistema proprietário — ORIX Optimized Radiology. Todos os direitos reservados.
