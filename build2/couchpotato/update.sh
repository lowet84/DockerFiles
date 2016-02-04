#!/bin/bash

VERSION=$(curl -s https://api.github.com/repos/RuudBurger/CouchPotatoServer/releases/latest | grep 'tag_name' | cut -d\" -f4 | cut -d/ -f2)
DOWNLOADURL=$(curl -s https://api.github.com/repos/RuudBurger/CouchPotatoServer/releases/latest | grep 'tarball' | cut -d\" -f4)
ls
if [ -f version_$VERSION ]
then
  echo "version is already latest"
else
  echo "downloading latest version"
  echo $DOWNLOADURL
  wget $DOWNLOADURL -O couchpotato.tar.gz
  touch version_$VERSION
  mkdir -p /opt/couchpotato
  tar couchpotato.tar.gz -C /opt/couchpotato -zx --strip-components 1
  rm couchpotato.tar.gz
fi
