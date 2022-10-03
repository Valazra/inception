FROM debian:buster

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/start_db.sh /start_db.sh

ENTRYPOINT ["bash", "start_db.sh"]

EXPOSE 3306
