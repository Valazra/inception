FROM debian:buster

RUN apt-get -y update
RUN apt-get -y install nginx
RUN apt-get -y install openssl

COPY conf/nginx.conf /etc/nginx/sites-enabled/

RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout /etc/nginx/ssl/key.pem -out /etc/nginx/ssl/local.pem -days 365 -subj "/C=FR/ST=FRANCE/L=PARIS/O=42/OU=42PARIS/CN=vazra"

RUN mkdir -p /var/www/html/wordpress

CMD ["nginx", "-g", "daemon off;"]
