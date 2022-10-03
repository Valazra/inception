#!/bin/sh

service mysql start;

mysql -e "CREATE DATABASE IF NOT EXISTS \`${DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${LOGIN}\`@'localhost' IDENTIFIED BY '${PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${DATABASE}\`.* TO \`${LOGIN}\`@'%' IDENTIFIED BY '$PASSWORD';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$PASSWORD shutdown

exec mysqld_safe
