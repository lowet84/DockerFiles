#!/bin/bash

if [ -f /backup/mount.sh ]
then
  cp /backup/mount.sh /update/mount.sh
fi
 
if sh /update/mount.sh
then
  echo "Mount script run successfully"
else
  echo "Mount script failed, shutting down..."
  exit 1
fi

FILEDATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME=docker_volume_backup_$FILEDATE.tar.gz
FILEPATH=/mnt/$BACKUPPATH/$FILENAME
echo "writing to $FILEPATH"

rm -rf /temp
rm -rf /temp2
mkdir /temp
mkdir /temp2
cp -r /backup/ /temp
cd /temp
if tar vcfz /temp2/$FILENAME *
cd /temp2
rsync -ah --no-perms --no-owner --no-group --progress $FILENAME $FILEPATH
then
  echo "Succesfully created backup $FILEPATH"
else
  echo "Backup failed."
fi
cd /
rm -rf /temp
rm -rf /temp2

