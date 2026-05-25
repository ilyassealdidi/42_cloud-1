#!/bin/bash

sed -i '41 s/\/run\/php\/php8.2-fpm.sock/9000/' /etc/php/8.2/fpm/pool.d/www.conf

wp core download --allow-root

wp config create \
    --dbname=$DB \
    --dbuser=$USERNAME \
    --dbpass=$PASSWORD \
    --dbhost=$HOST --allow-root

wp db create --allow-root

wp core install \
    --url=$DOMAIN_NAME \
    --title=$TITLE \
    --admin_user=$ADMIN_NAME \
    --admin_password=$ADMIN_PASS \
    --admin_email=$ADMIN_EMAIL --allow-root

wp user create $USER_NAME $USER_EMAIL \
    --user_pass=$USER_PASS \
    --role=$USER_ROLE \
    --allow-root

chown -R www-data:www-data /var/www/html
chmod -R 777 /var/www/html

mkdir -p /run/php
exec php-fpm8.2 -F