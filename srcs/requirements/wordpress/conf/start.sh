#!/bin/bash

wp core download --allow-root
wp config create --dbname=wordpress --dbuser=$LOGIN --dbpass=$PASSWORD --dbhost=mariadb --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
wp core install --url=$DOMAIN_NAME/wordpress --title=inception --admin_user=$LOGIN --admin_password=$PASSWORD --admin_email=$EMAIL --skip-email --allow-root
wp user create $GUEST_LOGIN $GUEST_EMAIL --user_pass=$GUEST_PASSWORD --role=subscriber --allow-root

exec "$@"
