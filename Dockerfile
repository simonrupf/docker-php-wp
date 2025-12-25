FROM simonrupf/php:0.5.9
USER 0:0
RUN apk add --no-cache \
    php85-curl \
    php85-dom \
    php85-exif \
    php85-fileinfo \
    php85-iconv \
    php85-intl \
    php85-json \
    php85-mbstring \
    php85-mysqli \
    php85-openssl \
    php85-pecl-imagick \
    php85-sodium \
    php85-xml \
    php85-zip
RUN touch /var/www/public/index.php
# user nginx, group www-data
ARG UID=100
ARG GID=82
COPY --chown=${UID}:${GID} conf.json /var/lib/unit/
USER ${UID}:${GID}
