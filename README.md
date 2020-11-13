# PHP with MySQL support and additional modules for use with Wordpress

Stack of nginx web and PHP fpm servers for running Wordpress. This image doesn't
contain Wordpress itself, just PHP fpm incl. MySQL and other modules and nginx.

See also the [base image](https://hub.docker.com/r/simonrupf/php/dockerfile).

## Environment variables

The image supports the use of the following two environment variables to adjust
the timezone. This is useful to ensure the logs show the correct local time.

- `TZ`
- `PHP_TZ`

## Volumes

It is recommended to use a tmpfs for `/run` and `/tmp`. `/var/tmp/nginx` can
contain larger files during caching or uploads, so best leave this as a regular
volume. Attach your PHP application into `/var/www/public`.

If your application can be separated into a public and a non-public part, attach
it to `/var/www` instead and ensure the public bits live in a folder called
`public`. This is typically used to separate static files (CSS, ECMAscripts,
images, fonts) and the index.php entrypoint from PHP libraries and (uploaded)
files that should not be directly accessible for security reasons.

- `/run`: PID files and sockets
- `/tmp`: temporary data of PHP (i.e. sessions) and supervisord
- `/var/tmp/nginx`: temporary data of nginx (i.e. uploads, large responses)
- `/var/www/public` or `/var/www`: contents of your PHP application - owner 101, group 82, mode 0750

## Network ports

- `8080/tcp`: HTTP

## Usage

```shell
make help
```
