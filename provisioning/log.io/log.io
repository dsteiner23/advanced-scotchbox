#!/bin/bash

                start() {
               echo "Starting log.io process..."
               sudo  /usr/local/lib/node_modules/log.io/bin/log.io-server &
               sudo  /usr/local/lib/node_modules/log.io/bin/log.io-harvester
                                         }

                stop() {
                echo "Stopping io-log process..."
                sudo pkill node
                                         }                             

                status() {
                echo "Status io-log process..."
                netstat -tlp | grep node
                                         }

case "$1" in
                start)
start
        ;;
                stop)
stop
        ;;
                status)
status
                ;;
                *)
echo "Usage: start|stop|status"
       ;;
esac
