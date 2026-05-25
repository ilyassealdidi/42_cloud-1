#!/bin/sh

mkdir -p /etc/nginx/ssl

openssl req -x509 -noenc \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/CN=${DOMAIN_NAME:-localhost}"

exec nginx -g "daemon off;"