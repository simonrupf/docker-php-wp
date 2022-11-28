FROM simonrupf/php:0.3.2
USER 0:0
RUN apk add --no-cache \
    php81-curl \
    php81-dom \
    php81-exif \
    php81-fileinfo \
    php81-iconv \
    php81-intl \
    php81-json \
    php81-mbstring \
    php81-mysqli \
    php81-openssl \
    php81-pecl-imagick \
    php81-sodium \
    php81-xml \
    php81-zip
RUN sed -i '/try_files/d' /etc/nginx/nginx.conf && \
    mkdir /var/www/public && \
    touch /var/www/public/index.html
COPY etc /etc
# user nginx, group www-data
USER 100:82
