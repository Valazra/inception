FROM debian:buster

RUN apt update -y
RUN apt install php-fpm php-mysql zip wget -y

COPY . /app
WORKDIR /app

RUN chmod 777 -R /app
RUN cd /tmp
RUN wget http://wordpress.org/latest.zip
RUN mkdir -p /var/www/html
RUN unzip latest.zip -d /var/www/html
RUN chmod -R 777 /app
RUN cat /app/wp-config.php > /var/www/html/wordpress/wp-config.php

RUN /etc/init.d/php7.3-fpm start

CMD php -S 0.0.0.0:9000 -t /var/www/html/wordpress
