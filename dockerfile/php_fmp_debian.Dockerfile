# 'fpm' images contain PHP-FPM server which is listening on port 9000
FROM php:8.2-fpm-bullseye

WORKDIR /var/www/html
COPY ./app .