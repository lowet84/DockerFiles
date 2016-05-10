#!/bin/bash
FILE=$1

if [ ! -d "/mnt/$MOUNTPATH/$BACKUPLOCATION" ]; then
  sh mount.sh
fi

mkdir -p /temp
cp /mnt/$MOUNTPATH/$BACKUPLOCATION/$FILE /temp/restore.tar.gz
cd /temp
tar -xvf restore.tar.gz
ls -la 

curl $RESTORE_URL
