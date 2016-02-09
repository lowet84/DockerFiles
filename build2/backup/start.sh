#!/bin/bash

if sh /update/mount.sh
then
  echo "Mount script run successfully"
else
  echo "Mount script failed, shutting down..."
  exit 1
fi

FILEDATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILEPATH=/mnt/$BACKUPPATH/docker_volume_backup_$FILEDATE.tar.gz
echo "writing to $FILEPATH"

rm -rf /temp
mkdir /temp
rsync -rtpl /backup/ /temp
cd /temp
if tar cfz $FILEPATH *
then
  echo "Succesfully created backup $FILEPATH"
else
  echo "Backup failed."
fi
cd /
rm -rf /temp
