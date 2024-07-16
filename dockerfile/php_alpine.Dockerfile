# 'fpm' images contain PHP-FPM server which is listening on port 9000
FROM php:8.2-alpine

RUN mkdir -p /usr/local/src/php-demo
WORKDIR /usr/local/src/php-demo
COPY ./app .

CMD ["php", "helloworld.php"]