#!/bin/bash

echo "Installing log.io Real-Time-Monitoring"
npm install -g log.io --user "root"

echo "Copy log.io configuration files"
cp /var/www/provisioning/log.io/harvester.conf ~/.log.io/harvester.conf
cp /var/www/provisioning/log.io/log.io /usr/local/bin/log.io

