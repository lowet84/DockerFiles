#!/bin/bash

if [ -f /config/mount.sh ]
then
  echo "Mount script mount.sh exists"
else
  echo "Creating mount script"
  cp /update/mount.sh /config/mount.sh
fi
echo "Running mount script"

if sh /config/mount.sh
then
  echo "Mount script run successfully"
else
  echo "Mount script failed, shutting down..."
  exit 1
fi

rar2fs -o allow_other /mnt /rar2fs --seek-length=1
service samba start


read -p "Press any key to exit..."
