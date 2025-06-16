# Usa a imagem oficial do PHP 8.2 com Apache como base.
FROM php:8.2-apache

# --- CONFIGURAÇÃO DO APACHE ---

# Ativa o módulo 'rewrite' do Apache.
RUN a2enmod rewrite

# Copia nosso arquivo de configuração de Virtual Host para permitir .htaccess.
COPY apache/vhost.conf /etc/apache2/sites-available/000-default.conf