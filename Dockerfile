FROM simonrupf/php:0.5.0
USER 0:0
RUN apk add --no-cache \
    php82-curl \
    php82-dom \
    php82-exif \
    php82-fileinfo \
    php82-iconv \
    php82-intl \
    php82-json \
    php82-mbstring \
    php82-mysqli \
    php82-openssl \
    php82-pecl-imagick \
    php82-sodium \
    php82-xml \
    php82-zip
RUN sed -i '/try_files/d' /etc/nginx/nginx.conf && \
    mkdir /var/www/public && \
    touch /var/www/public/index.html
COPY etc /etc
# user nginx, group www-data
USER 100:82
