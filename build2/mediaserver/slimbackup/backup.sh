#!/bin/bash

cd /backup
if [ ! -d "/mnt/$MOUNTPATH/" ]; then
  sh mount.sh
fi

if [ ! -d "/mnt/$MOUNTPATH/$BACKUPLOCATION" ]; then
  mkdir -p /mnt/$MOUNTPATH/$BACKUPLOCATION
fi  

# Plex
if [ -d "/data/plex"  ]; then
  echo "backing up plex"
  mkdir -p /temp/plex
  cp /data/plex/Library/Application\ Support/Plex\ Media\ Server/Preferences.xml /temp/plex/Preferences.xml
  cp /data/plex/Library/Application\ Support/Plex\ Media\ Server/Plug-in\ Support/Databases/com.plexapp.plugins.library.db /temp/plex/database.db
#  ls -la /temp/plex
fi

# Sonarr
if [ -d "/data/sonarr" ]; then
  echo "backing up sonarr"
  mkdir -p /temp/sonarr
  cp /data/sonarr/sonarr/config.xml /temp/sonarr/
  cp /data/sonarr/sonarr/nzbdrone.db /temp/sonarr/
#  ls -la /temp/sonarr
fi

if [ -d "/data/deluge" ]; then
  echo "backing up deluge"
  mkdir -p /temp/deluge
  cp /data/deluge/auth /temp/deluge
  cp /data/deluge/core.conf /temp/deluge
  cp /data/deluge/web.conf /temp/deluge 
#  ls -la /temp/deluge
fi

if [ -d "/data/jackett" ]; then
  echo "backing up jackett"
  mkdir -p /temp/jackett
  cp /data/jackett/ServerConfig.json /temp/jackett
  cp -r /data/jackett/Indexers /temp/jackett
#ls -la /temp/jackett
#ls -la /temp/jackett/Indexers
fi

if [ -d "/data/couchpotato" ]; then
  echo "backing up couchpotato"
  mkdir -p /temp/couchpotato
  cp /data/couchpotato/config.ini /temp/couchpotato
#  ls -la /temp/couchpotato
fi

FILEDATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="docker-backup-$LABEL-$FILEDATE.tar.gz"

cd /temp
tar vcfz $FILENAME *
ls -la

echo "Mount Path"
ls -la /mnt/$MOUNTPATH
cp docker-backup* /mnt/$MOUNTPATH/$BACKUPLOCATION/
echo "copied $FILENAME to /mnt/$MOUNTPATH/$BACKUPLOCATION"
cd /
rm -r /temp 
