# nginx-fpm-reverse-proxy

A simple reverse proxy to forward requests on to a PHP FPM Server.

Built for use in the Kimai project it can be used for any PHP FPM server.

## Quickstart

    docker run \
      -ti \
      --rm \
      -name nginx-fpm-reverse-proxy \
      -v ${pwd}:/opt/kimai \
      -p 8001:80 \
    tobybatch/nginx-fpm-reverse-proxy

## Building

There is no build time customisation:

    docker build .

## Runtime settings

This instance of nginx listens on port `80` and forwards php requests to `kimai:9000`. The server name is `nginx`

