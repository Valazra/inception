FROM debian:buster

RUN apt-get -y update
RUN apt-get -y install mariadb-server

RUN mkdir -p /run/mysqld
RUN chown -R mysql:root /run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY conf/start_db.sh /tmp/

ENTRYPOINT ["bash", "tmp/start_db.sh"]

CMD ["mysqld"]
