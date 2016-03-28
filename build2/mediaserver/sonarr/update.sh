#!/bin/bash

VERSION=$(curl -s https://api.github.com/repos/lowet84/Sonarr/releases/latest | grep 'tag_name' | cut -d\" -f4)
DOWNLOADURL=$(curl -s https://api.github.com/repos/lowet84/Sonarr/releases/latest | grep 'browser_' | cut -d\" -f4)
ls
if [ -f version_$VERSION ]
then
  echo "version is already latest"
else
  echo "downloading latest version"
  echo $DOWNLOADURL
  wget $DOWNLOADURL -O sonarr.zip
  touch version_$VERSION
  unzip -o sonarr.zip -d /opt/NzbDrone/
  rm sonarr.zip 
fi
