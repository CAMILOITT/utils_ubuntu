#!/bin/bash

# TODO: question to user what db use
sudo apt update
sudo apt install -y apache2 mysql-server php libapache2-mod-php php-mysql

# TODO: Fix the path to the WordPress zip file, investigate the real path of wordpress
curl -O wordpress.zip https://wordpress.org/

# TODO: verify configuration of mysql and investigate, how configurate the file wp-config.php, dinamically
mysql -u root -p

UPDATE mysql.user SET plugin='mysql_native_password' WHERE User='root';
FLUSH PRIVILEGES;
create database wordpress;


sudo apt install apache2 php libapache2-mod-php mysql-server php-mysql

unzip ~/Descargas/wordpress-6.8.2.zip
sudo cp -r ~/Descargas/wordpress-6.8.2 /var/www/html/wordpress
rm -r ~/Descargas/wordpress-6.8.2 ~/Descargas/wordpress-6.8.2.zip

sudo chmod 777 -R /var/www/html/wordpress

# INFO: Open the browser with the WordPress installation page
xdg-open http://localhost/wordpress/wordpress >/dev/null 2>&1 &
