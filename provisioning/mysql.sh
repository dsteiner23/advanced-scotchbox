#!/bin/bash

echo "Updating mysql configs in /etc/mysql/my.cnf."

sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

echo "Assigning mysql user root access on %."
sudo mysql -u root -proot --execute "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' with GRANT OPTION; FLUSH PRIVILEGES;"

sudo service mysql stop
sudo service mysql start
