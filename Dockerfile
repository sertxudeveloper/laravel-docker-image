FROM serversideup/php:8.4-fpm-nginx

USER root

RUN install-php-extensions intl bcmath exif

RUN apt-get update && \
    apt-get install -y nodejs npm && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

USER www-data
