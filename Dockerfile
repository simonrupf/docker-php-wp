FROM simonrupf/php:0.1.0
USER root:root
RUN apk add --no-cache php7-pdo_mysql
USER nginx:www-data
