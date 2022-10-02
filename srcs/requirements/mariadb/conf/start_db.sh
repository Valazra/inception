#!/bin/sh

service mysql start;

mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -e "CREATE USER IF NOT EXISTS '$LOGIN' IDENTIFIED BY '$PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO '$LOGIN'@'%' IDENTIFIED BY '$PASSWORD';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$PASSWORD shutdown

exec mysqld_safe
