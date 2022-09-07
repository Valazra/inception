FROM debian:buster

RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install mariadb-client
RUN apt-get -y install php7.3-fpm php7.3-common php7.3-mysql
RUN apt-get -y install procps

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY conf/start.sh /tmp/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN cp wp-cli.phar /usr/bin/wp

RUN mkdir -p /var/run/php/

WORKDIR /var/www/html/wordpress

ENTRYPOINT ["bash", "/tmp/start.sh"]

CMD ["php-fpm7.3", "-F", "-R"]
