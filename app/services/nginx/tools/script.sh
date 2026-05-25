#!/bin/sh

mkdir -p /etc/nginx/ssl

openssl req -x509 -noenc \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/CN=ialdidi.42.fr"

exec nginx -g "daemon off;"