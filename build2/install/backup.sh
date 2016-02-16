#!/bin/bash

FILEDATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME=docker_volume_backup_$FILEDATE.tar.gz
echo "creating $FILENAME"

rm -rf /temp
mkdir -p /temp/volumes
mkdir /temp/tar
cp -r /volumes /temp/volumes
cd /temp/volumes
tar vcfz /temp/tar/$FILENAME *
cd /
mkdir -p /backup
mv /temp/tar/$FILENAME /backup/$FILENAME
rm -rf /temp
