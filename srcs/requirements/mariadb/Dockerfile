FROM debian:buster

RUN apt-get -y update
RUN apt-get -y install mariadb-server
RUN apt-get -y install procps

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY conf/start.sh /tmp/

RUN mkdir -p /run/mysqld
RUN chown -R mysql:root /run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql

ENTRYPOINT ["bash", "tmp/start.sh"]

CMD ["mysqld"]
