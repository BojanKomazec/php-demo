FROM php:8.2-fpm-bullseye
RUN mkdir /usr/local/src/php-demo
WORKDIR /usr/local/src/php-demo
COPY . .