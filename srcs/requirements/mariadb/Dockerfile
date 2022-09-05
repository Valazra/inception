FROM debian:buster

RUN apt update -y
RUN apt install mariadb-server  -y

ARG DB_USER_PASS
ARG DB_ROOT_PASS
ARG HASHED_PASS

COPY . /app
WORKDIR /app

RUN chmod 777 -R /app
RUN cd /tmp
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i "s/DB_USER_PASS/$DB_USER_PASS/g" /app/init.sql
RUN sed -i "s/DB_ROOT_PASS/$DB_ROOT_PASS/g" /app/init.sql
RUN sed -i "s/HASHED_PASS/$HASHED_PASS/g" /app/dump.sql
RUN /etc/init.d/mysql start && mysql < init.sql && mysql wordpress -u root -p$DB_ROOT_PASS  < dump.sql

CMD mysqld