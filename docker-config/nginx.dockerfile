FROM nginx:stable-alpine

ADD ./docker-config/nginx/config/nginx.conf /etc/nginx/
ADD ./docker-config/nginx/config/default.conf /etc/nginx/conf.d/

RUN mkdir -p /var/www/html

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN chown laravel:laravel /var/www/html
