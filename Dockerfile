FROM nginx:alpine
LABEL "com.example.vendor"="Neontribe"
LABEL version="1.0"
LABEL description="Nginx alpine image built to reverse proxy requests to a PHP FPM server"

ADD nginx_default.conf /etc/nginx/conf.d/default.conf

ENV PORT=80
ENV SEVER_NAME=nginx.local
ENV FPM_TARGET=kimai:9000
ENV SERVER_ROOT=/opt/kimai

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]

# docker build --rm -t tobybatch/nginx-fpm-reverse-proxy .
