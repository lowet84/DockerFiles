#!/bin/bash

if sh /update/mount.sh
then
  echo "Mount script run successfully"
else
  echo "Mount script failed, shutting down..."
  exit 1
fi

sh /update/rar2fs.sh

#update
cd /update
sh update.sh

python /opt/couchpotato/CouchPotato.py --config_file=/config/config.ini --data_dir=/config/data
