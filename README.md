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

## Environment varaibles

 * `PORT=80`
   
    Which port the nginx server should listen on. It will also need to be set at with `-p $PORT:80` at run time.
   
 * `SEVER_NAME=nginx.local`
   
   The server name directive used by the nginx server
   
 * `FPM_TARGET=kimai:9000`
   
   Where the PHP FPM server is
   
 * `SERVER_ROOT=/opt/kimai`

   What to use as the document root, We need this to be set (as read only) so that nginx can server static files. 

### Docker compose

See [docker-compose.yml](./docker-compose.yml)
