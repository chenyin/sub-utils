#!/bin/bash
# dependence: inotify-tools (see how to install @ https://github.com/rvoicilas/inotify-tools/wiki)

FILE=/usr/local/openresty/nginx/conf/nginx.conf
COMMAND=/usr/local/openresty/nginx/sbin/nginx

while true; do
    inotifywait -e modify $FILE
    sudo $COMMAND -s reload
    echo "nginx restarted"
done
