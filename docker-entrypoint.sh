#!/bin/sh

set -eo pipefail

sed -i -e "s/NGINX_PORT/${NGINX_PORT}/g" /etc/nginx/conf.d/default.conf
sed -i -e "s/WORDPRESS_HOST/${WORDPRESS_HOST:=localhost}/g" /etc/nginx/conf.d/default.conf

case "$1" in
    nginx)
        nginx -g "daemon off;"
        exit 0
        ;;

    help)
        echo "nothing."
        exit 0
        ;;
esac

exec "$@"
