FROM simonrupf/php:0.1.8
USER 0:0
RUN apk add --no-cache \
    php7-curl \
    php7-dom \
    php7-exif \
    php7-fileinfo \
    php7-iconv \
    php7-json \
    php7-mbstring \
    php7-mysqli \
    php7-openssl \
    php7-pecl-imagick \
    php7-sodium \
    php7-xml \
    php7-zip
RUN sed -i '/try_files/d' /etc/nginx/nginx.conf && \
    mkdir /var/www/public && \
    touch /var/www/public/index.html
COPY etc /etc
# user nginx, group www-data
USER 100:82
