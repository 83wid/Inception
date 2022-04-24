FROM debian:buster

RUN apt-get update && apt-get install -y wget unzip php-mysql php-fpm
RUN wget https://wordpress.org/latest.zip
RUN mkdir -p /var/www/html
RUN unzip -d /var/www/html latest.zip
RUN rm -rf latest.zip
COPY ./conf/wp-config.php  /var/www/html/wordpress/wp-config.php
COPY ./conf/www.conf  /etc/php/7.3/fpm/pool.d/www.conf
RUN service php7.3-fpm start
RUN chown -R www-data:www-data /var/www/html
EXPOSE 9000
CMD [ "php-fpm7.3", "-F" ]
