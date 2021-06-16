FROM nginx:stable-alpine

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

RUN addgroup -g 1000 stormbreaker && adduser -G stormbreaker -g stormbreaker -s /bin/sh -D stormbreaker

RUN chown stormbreaker:stormbreaker /var/www/html
