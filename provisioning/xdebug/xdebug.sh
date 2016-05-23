apt-get install php5-xdebug
cat /var/www/provisioning/xdebug/configuration.txt >> /etc/php5/fpm/conf.d/20-xdebug.ini
service apache2 restart