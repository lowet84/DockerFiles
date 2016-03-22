#!/bin/bash
cd /var/Configurator
mono NginxConfigGenerator.exe
cp default.conf /etc/nginx/nginx.conf
cp index.html /usr/share/nginx/html/index.html
nginx -g 'daemon off;'

