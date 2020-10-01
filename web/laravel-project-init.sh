#!/bin/bash
cd /var/www/html/php_restful_api_demo
echo "12345678" > index.html
apachectl -D FOREGROUND
