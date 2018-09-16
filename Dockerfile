FROM nginx:alpine

MAINTAINER khiraiwa <the.world.nova@gmail.com>

ENV NGINX_PORT="80"

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY wordpress.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["nginx"]
