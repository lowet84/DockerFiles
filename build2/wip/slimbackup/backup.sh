#!/bin/bash

cd /backup
if [ ! -d "/mnt/$MOUNTPATH/" ]; then
  sh mount.sh
fi

if [ ! -d "/mnt/$MOUNTPATH/$BACKUPLOCATION" ]; then
  mkdir -p /mnt/$MOUNTPATH/$BACKUPLOCATION
fi  

curl $BACKUP_URL

FILEDATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="docker-backup-$LABEL-$FILEDATE.tar.gz"

cd /temp
tar vcfz $FILENAME *
cp docker-backup* /mnt/$MOUNTPATH/$BACKUPLOCATION/
echo "copied $FILENAME to /mnt/$MOUNTPATH/$BACKUPLOCATION"
cd /
rm -r /temp 
