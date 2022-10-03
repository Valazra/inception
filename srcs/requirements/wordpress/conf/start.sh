#!/bin/bash
sleep 10
#if [ ! -e /var/www/wordpress/wp-config.php ]; then
wp config create --allow-root --dbname=$DATABASE --dbuser=$LOGIN --dbpass=$PASSWORD --dbhost=mariadb:3306 --path='/var/www/wordpress'

sleep 2

wp core install --url=$DOMAIN_NAME --title=inception --admin_user=$LOGIN --admin_password=$PASSWORD --admin_email=$EMAIL --allow-root --path='/var/www/wordpress'
wp user create --allow-root $GUEST_LOGIN $GUEST_EMAIL --user_pass=$GUEST_PASSWORD --role=subscriber --path='/var/www/wordpress' >> /log.txt
#fi

#if [ ! -d /run/php ]; then
	mkdir ./run/php
#fi
/usr/sbin/php-fpm7.3 -F
