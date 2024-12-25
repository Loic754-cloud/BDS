# Utiliser une image PHP avec Apache comme base
FROM php:7.4-apache

# Installer les dépendances nécessaires
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Copier les fichiers de l'application dans le conteneur
COPY . /var/www/html/

# Exposer le port 80 pour accéder au site
EXPOSE 80
