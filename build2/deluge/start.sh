#!/bin/bash
if sh /update/mount.sh
then
  echo "Mount script run successfully"
else
  echo "Mount script failed, shutting down..."
  exit 1
fi

if [ -f /config/auth ]
then
  echo "auth exists, does nothing"
else
  echo "writing initial deluge credentials"
  echo "deluge:deluge:10" > /config/auth 
fi

deluged -d -c /config -L info -l /config/deluged.log &
deluge-web -c /config
