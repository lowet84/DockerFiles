#!/bin/bash

VERSION=$(curl -s https://api.github.com/repos/lowet84/Jackett/releases/latest | grep 'tag_name' | cut -d\" -f4)
DOWNLOADURL=$(curl -s https://api.github.com/repos/lowet84/Jackett/releases/latest | grep 'browser_download_url.*Jackett\.zip' | cut -d\" -f4)
ls
if [ -f version_$VERSION ]
then
  echo "version is already latest"
else
  echo "downloading latest version"
  echo $DOWNLOADURL
  wget $DOWNLOADURL -O jackett.zip
  touch version_$VERSION
  unzip -o jackett.zip -d /opt/
  rm jackett.zip 
fi
