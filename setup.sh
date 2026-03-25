#!/bin/bash
# ============================================================
# ORIX ERP - Script de Setup Completo
# ============================================================
# Uso: bash setup.sh
# ============================================================

set -e

echo ""
echo "=================================================="
echo "  ORIX ERP - Setup de Instalação"
echo "=================================================="
echo ""

# Verificar se o arquivo .env existe
if [ ! -f ".env" ]; then
    echo "📋 Criando arquivo .env a partir do .env.example..."
    cp .env.example .env
    
    # Gerar chaves de criptografia
    APP_KEY=$(openssl rand -base64 32)
    APP_ENC_KEY=$(openssl rand -base64 32)
    
    # Substituir as chaves no .env
    sed -i "s|APP_KEY=base32:CHAVE_DE_32_BYTES_AQUI|APP_KEY=base64:${APP_KEY}|g" .env
    sed -i "s|APP_ENCRYPTION_KEY=base32:CHAVE_DE_32_BYTES_AQUI|APP_ENCRYPTION_KEY=base64:${APP_ENC_KEY}|g" .env
    
    echo "✅ Arquivo .env criado com chaves geradas automaticamente"
else
    echo "✅ Arquivo .env já existe"
fi

# Verificar se o composer está instalado
if ! command -v composer &> /dev/null; then
    echo "❌ Composer não encontrado. Por favor, instale o Composer primeiro."
    echo "   Visite: https://getcomposer.org/download/"
    exit 1
fi

# Instalar dependências
echo ""
echo "📦 Instalando dependências do Composer..."
composer install --no-dev --optimize-autoloader

echo ""
echo "=================================================="
echo "  BANCO DE DADOS"
echo "=================================================="
echo ""
echo "Para configurar o banco de dados, execute:"
echo ""
echo "  mysql -u inlaud99_admin -p -e \"CREATE DATABASE IF NOT EXISTS inlaud99_orixerp CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\""
echo "  mysql -u inlaud99_admin -p inlaud99_orixerp < database/migracao_completa_orixerp.sql"
echo ""
echo "=================================================="
echo "  CONFIGURAÇÃO CONCLUÍDA"
echo "=================================================="
echo ""
echo "✅ ORIX ERP configurado com sucesso!"
echo ""
echo "📌 Credenciais de acesso:"
echo "   Admin:      admin@orix.com.br"
echo "   Financeiro: financeiro@orix.com.br"
echo ""
echo "⚠️  IMPORTANTE: As senhas no banco são as originais do sistema."
echo "   Para redefinir, use a função 'Esqueci minha senha' ou"
echo "   atualize diretamente no banco com hash ARGON2ID."
echo ""
