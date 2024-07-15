# Usando a imagem base do PHP com Apache
FROM php:8.3-fpm

# set your user name, ex: user=carlos
ARG user=renan
ARG uid=1000

# Instalação dos pacotes e extensões PHP
RUN apt-get update && apt-get install -y \
  git \
  curl \
  libmcrypt-dev \
  libpng-dev \
  libjpeg-dev \
  libfreetype6-dev \
  libonig-dev \
  libxml2-dev \
  libzip-dev

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath sockets
RUN docker-php-ext-configure gd --with-freetype --with-jpeg && docker-php-ext-install gd
RUN pecl install zip && docker-php-ext-enable zip
RUN pecl install -o -f redis && rm -rf /tmp/pear && docker-php-ext-enable redis

# Obter o Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Define o diretório de trabalho
WORKDIR /var/www

USER $user
