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

# Plex
if [ -d "/temp/plex"  ]; then
  echo "restoring plex"
  mkdir -p /data/plex/Library/Application\ Support/Plex\ Media\ Server/Plug-in\ Support/Databases
  cp /temp/plex/Preferences.xml /data/plex/Library/Application\ Support/Plex\ Media\ Server/Preferences.xml
  cp /temp/plex/database.db /data/plex/Library/Application\ Support/Plex\ Media\ Server/Plug-in\ Support/Databases/com.plexapp.plugins.library.db
#  ls -la /temp/plex
fi

# Sonarr
if [ -d "/temp/sonarr" ]; then
  echo "restoring sonarr"
  mkdir -p /data/sonarr/sonarr
  cp /temp/sonarr/config.xml /data/sonarr/sonarr/config.xml
  cp /temp/sonarr/nzbdrone.db /data/sonarr/sonarr/nzbdrone.db
#  ls -la /temp/sonarr
fi

if [ -d "/temp/deluge" ]; then
  echo "restoring deluge"
  mkdir -p /data/deluge
  cp /temp/deluge/auth /data/deluge/auth
  cp /temp/deluge/core.conf /data/deluge/core.conf
  cp /temp/deluge/web.conf /data/deluge/web.conf
#  ls -la /temp/deluge
fi

if [ -d "/temp/jackett" ]; then
  echo "restoring jackett"
  mkdir -p /data/jackett
  cp /temp/jackett/ServerConfig.json /data/jackett/ServerConfig.json
  cp -r /temp/jackett/Indexers /data/jackett
#ls -la /temp/jackett
#ls -la /temp/jackett/Indexers
fi

if [ -d "/temp/couchpotato" ]; then
  echo "restoring couchpotato"
  mkdir -p /data/couchpotato
  cp /temp/couchpotato/config.ini /data/couchpotato/config.ini
#  ls -la /temp/couchpotato
fi

