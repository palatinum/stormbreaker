FROM php:7.4-fpm-alpine

ADD ./php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN addgroup -g 1000 stormbreaker && adduser -G stormbreaker -g stormbreaker -s /bin/sh -D stormbreaker

RUN mkdir -p /var/www/html

RUN chown stormbreaker:stormbreaker /var/www/html

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql
