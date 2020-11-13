FROM simonrupf/php:0.1.7
USER 0:0
RUN apk add --no-cache \
    php7-curl \
    php7-dom \
    php7-exif \
    php7-fileinfo \
    php7-json \
    php7-mbstring \
    php7-mysqli \
    php7-openssl \
    php7-pecl-imagick \
    php7-sodium \
    php7-xml \
    php7-zip
# user nginx, group www-data
USER 100:82
