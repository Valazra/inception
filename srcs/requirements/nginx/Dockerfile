FROM debian:buster

RUN apt-get -y update
RUN apt-get -y install nginx
RUN apt-get -y install openssl

RUN mkdir -p /etc/nginx/ssl
RUN mkdir -p /var/run/nginx
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html
RUN mkdir -p /var/www/html/wordpress

RUN openssl req -x509 -newkey rsa:4096 -sha256 -nodes -out /etc/nginx/ssl/certif.pem -keyout /etc/nginx/ssl/key.pem -subj "/C=FR/ST=FRANCE/L=PARIS/O=42/OU=42PARIS/CN=vazra.42.fr/UID=vazra"

COPY conf/nginx.conf /etc/nginx/sites-enabled/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
