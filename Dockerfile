FROM simonrupf/php:0.3.0
USER 0:0
RUN apk add --no-cache \
    php8-curl \
    php8-dom \
    php8-exif \
    php8-fileinfo \
    php8-iconv \
    php8-json \
    php8-mbstring \
    php8-mysqli \
    php8-openssl \
    php8-pecl-imagick \
    php8-sodium \
    php8-xml \
    php8-zip
RUN sed -i '/try_files/d' /etc/nginx/nginx.conf && \
    mkdir /var/www/public && \
    touch /var/www/public/index.html
COPY etc /etc
# user nginx, group www-data
USER 100:82
