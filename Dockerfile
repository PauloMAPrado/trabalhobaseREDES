FROM php:8.2-apache

# Atualiza pacotes e instala extensões PHP necessárias + cliente MySQL
RUN apt-get update && \
    apt-get install -y default-mysql-client && \
    docker-php-ext-install mysqli pdo pdo_mysql

# Configura o Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
    a2enmod rewrite

# Define o diretório de trabalho
WORKDIR /var/www/html
