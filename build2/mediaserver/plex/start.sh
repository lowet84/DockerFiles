#!/bin/bash
if [ -f /root/Library/Application\ Support/Plex\ Media\ Server/Preferences.xml ]
then
  echo "Preferences.xml exists"
else
  echo "no Preferences.xml exists, copying from restore"
  mkdir -p /root/Library/Application\ Support/Plex\ Media\ Server
  cp /update/Preferences.xml /root/Library/Application\ Support/Plex\ Media\ Server/Preferences.xml
fi

echo "USEMOUNT=$USEMOUNT"
if [ "$USEMOUNT" = true ]; then
  if sh /update/mount.sh
  then
    echo "Mount script run successfully"
  else
    echo "Mount script failed, shutting down..."
    exit 1
  fi
else
  echo skipping mount
fi

sh /update/rar2fs.sh

# Update plex
cd /update

if [ -f /root/.plexupdate ]; then
  echo "Installing plex pass plex"
  curl https://raw.githubusercontent.com/mrworf/plexupdate/master/plexupdate.sh | bash -s -- -a
else
  echo "Installing public plex"
  curl https://raw.githubusercontent.com/mrworf/plexupdate/master/plexupdate.sh | bash -s -- -p -a
fi
rm plexmediaserver*

# Start plex
rm /root/Library/Application\ Support/Plex\ Media\ Server/plexmediaserver.pid
exec /sbin/setuser root /usr/sbin/start_pms
