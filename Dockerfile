FROM simonrupf/php:0.5.8
USER 0:0
RUN apk add --no-cache \
    php84-curl \
    php84-dom \
    php84-exif \
    php84-fileinfo \
    php84-iconv \
    php84-intl \
    php84-json \
    php84-mbstring \
    php84-mysqli \
    php84-openssl \
    php84-pecl-imagick \
    php84-sodium \
    php84-xml \
    php84-zip
RUN touch /var/www/public/index.php
# user nginx, group www-data
ARG UID=100
ARG GID=82
COPY --chown=${UID}:${GID} conf.json /var/lib/unit/
USER ${UID}:${GID}
