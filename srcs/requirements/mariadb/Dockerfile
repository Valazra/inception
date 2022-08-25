FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./db_init.sql /var/www/

RUN service mysql start && mysql < /var/www/db_init.sql && rm -f /var/www/db_init.sql;

CMD ["mysqld"]
