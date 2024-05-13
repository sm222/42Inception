#!/bin/bash

if [ ! -d /run/php ]; then
  service php7.4-fpm start
  service php7.4-fpm stop
fi


if [[ ${WP_ADMIN,,} == *"admin"* ]]; then
  echo "Error: Username can't contain the 'admin'"
  exit 1
fi

if [[ ${WP_PASSWORD,,} == *${WP_ADMIN,,}* ]]; then
  echo "Error: Passord can't contain the username"
  exit 1
fi


if [ ! -f /var/www/html/wp-config.php ]; then
  wp core download --allow-root --path=/var/www/html
  wp config create --allow-root --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb:3306
  wp core install --allow-root --url="${DOMAIN_NAME}" --title="${WP_TITLE}" --admin_name"${WP_ADMIN}" --admin_password="${WP_PASSWORD}" --admin_email="${WP_EMAIL}" --skip-email
  wp user create --allow--root "${WP_USER}" "${WP_USER_EMAIL}" --user_pass="${WP_USER_PASSWORD}" --role=author
  /url/sbin/php-fpm7.4 -F
fi

if [ -f /var/www/html/wp-config.php ]; then
  /user/sbin/php-fpm7.4 -F
fi