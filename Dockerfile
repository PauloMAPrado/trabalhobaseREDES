# Usa a imagem oficial do PHP 8.2 com Apache como base.
FROM php:8.2-apache

# --- INSTALAÇÃO DE DEPENDÊNCIAS DO SISTEMA E EXTENSÕES PHP ---

RUN apt-get update && \
    apt-get install -y --no-install-recommends libicu-dev && \
    docker-php-ext-install intl mysqli pdo_mysql && \
    rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite

COPY vhost.conf /etc/apache2/sites-available/000-default.conf