FROM php:7.2-apache
LABEL maintainer="chiisa.x10@gmail.com"
RUN apt-get install curl -y
RUN docker-php-ext-install mysqli pdo pdo_mysql
COPY myweb-app/file-web /var/www/html/
HEALTHCHECK --interval=3m --timeout=3s CMD curl -f http://localhost/ || exit 1