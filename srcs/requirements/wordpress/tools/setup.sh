if ! [ -d /var/www/html/wordpress ] ; then
mkdir -p /var/www/html/wordpress
wp core download --path=/var/www/html/wordpress --allow-root
wp config create --dbname=$MYSQL_DB --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$MYSQL_HOST --path=/var/www/html/wordpress --allow-root --skip-check
wp core install --url=http://localhost --title=nabouzah --admin_user=$MYSQL_USER --admin_password=$MYSQL_ROOT_PASSWORD --admin_email=nabouzah@nabouzah.nabouzah --allow-root --path=/var/www/html/wordpress
fi
exec "$@"