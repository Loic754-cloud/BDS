# Utilisation d'une image de base PHP
FROM php:7.4-apache

# Installation des extensions nécessaires pour PHP
RUN docker-php-ext-install pdo pdo_pgsql

# Copie du code de l'application dans le conteneur
COPY . /var/www/html/

# Exposition du port 80 pour accéder à l'application
EXPOSE 80
