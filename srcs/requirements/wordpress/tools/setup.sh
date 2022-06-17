if ! [ -d /var/www/html/wordpress ] ; then
mkdir -p /var/www/html/wordpress

#install wordpress
wp core download --path=/var/www/html/wordpress --allow-root

# Create wp-config.php file with the following settings:
wp config create --dbname=$MYSQL_DB --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$MYSQL_HOST --path=/var/www/html/wordpress --allow-root --skip-check

# Install wordpress configuration with Administator user and password
wp core install --url=http://localhost --title=nabouzah --admin_user=$MYSQL_USER --admin_password=$MYSQL_ROOT_PASSWORD --admin_email=nabouzah@nabouzah.nabouzah --allow-root --path=/var/www/html/wordpress

# create a new user
wp user create bewid bewid@1337.ma --user_pass=$MYSQL_PASSWORD --role=author --path=/var/www/html/wordpress --allow-root

fi
exec "$@"