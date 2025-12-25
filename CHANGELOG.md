# PHP for Wordpress change log

## 0.5.2

optimize order of routes

## 0.5.1

drop rewriting of /wp-json/ endpoint

## 0.5.0

update to Alpine 3.23 / php 8.4.15

## 0.4.0

update to Alpine 3.18 / php 8.2.6 / nginx 1.24.0 / s6 2.11.3.2

## 0.3.3

update to Alpine 3.17 / php 8.1.13 / nginx 1.22.1 / s6 2.11.1.2 / openssl 3.0.7

## 0.3.2

add php intl module, recommended by Wordpress 6.0

## 0.3.1

update to Alpine 3.16 / php 8.1.6 / nginx 1.22.0 / s6 2.11.1.0

## 0.3.0

update to Alpine 3.15 / php 8.0.14 / nginx 1.20.2 / s6 2.11.0.0
switching from s6-overlay to s6-svscan for service management

## 0.2.2

update to Alpine 3.14 / php 8.0.7 / nginx 1.20.1 / s6 2.10.0.3

## 0.2.1

add API nginx tuning

## 0.2.0

update to php 8.0.2

## 0.1.4

update to Alpine 3.13 / php 7.4.15 / nginx 1.18.0 / s6 2.10.0.0

## 0.1.3

try to use pre-gzipped files first, then fall back on plain text, then the dynamic content

## 0.1.2

including iconv, try https cache first, then regular one

## 0.1.1

add WP Super Cache nginx tuning

## 0.1.0

prepare for wordpress
