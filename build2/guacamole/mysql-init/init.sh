#!/bin/bash

if [ ! -f "/data/initialized" ]; then
  echo "Initializing guacamole database"
  mysql -h mysql -u root -pgurkburk < /initdb.sql
  touch /data/initialized
else
  echo "Guacamole db already initialized"
fi

