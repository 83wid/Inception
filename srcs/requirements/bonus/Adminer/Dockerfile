FROM debian:buster

RUN apt-get update -y && \
	apt-get install wget -y && \
	apt-get install apache2 php libapache2-mod-php php-curl php-cli php-mysql php-gd mariadb-server -y


# change the listener port of the apache2 server
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf 

# get adminer setup of the apache2 server
RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php

# chown the adminer file to the apache2 server
RUN chown -R www-data:www-data /var/www/html/adminer.php && chmod 755 /var/www/html/adminer.php
RUN service apache2 start

CMD [ "php",  "-S",  "localhost:8000" ]