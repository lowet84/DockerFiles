#!/bin/bash

NETWORK="lowet84-mediaserver"

echo "Enter volumes directory (default is /volumes), no trailing /"
read VOLUMES
if [ -z $VOLUMES ]
then
  VOLUMES="/volumes"
fi

if [ -d $VOLUMES ]
then
  echo "$VOLUMES exist"
else
  echo "creating $VOLUMES"
  mkdir -p $VOLUMES
fi

echo "enter location of data on host"
read DATALOCATION

echo "installing filhub"
docker rm -f filehub
docker run --restart=always -d --name filehub --net=$NETWORK --privileged -it -v $DATALOCATION:/mnt/data -v $VOLUMES/filehub:/config lowet84/filehub

rm $VOLUMES/filehub/mount.sh
touch $VOLUMES/filehub/mount.sh
echo "installing Plex Media Server"
docker rm -f plex
docker run --privileged --restart=always --name plex -d --net=$NETWORK -it -v $VOLUMES/plex:/root -p 32400:32400 lowet84/plex

echo "installing Deluge"
docker rm -f deluge
docker run --privileged --restart=always --name deluge -d --net=$NETWORK -it -v $VOLUMES/deluge:/config -p 8112:8112 lowet84/deluge

echo "installing Sonarr"
docker rm -f sonarr
docker run --restart=always -d --name sonarr --net=$NETWORK -it -v $VOLUMES/sonarr:/config -p 8989:8989 -p 9898:9898 --privileged lowet84/sonarr

echo "installing Jackett"
docker rm -f jackett
sudo docker run --restart=always --net=$NETWORK -it -d --name jackett -p 9117:9117 lowet84/jackett

echo "installing Couchpotato"
docker rm -f couchpotato
docker run --name couchpotato -v $VOLUMES/couchpotato:/config --restart=always -d --privileged --net=$NETWORK -it -p 5050:5050 lowet84/couchpotato

echo "installing nginx"
docker rm -f nginx-mediaserver
docker run --net=$NETWORK --name nginx-mediaserver -p 80:80 -d lowet84/nginx-mediaserver

echo "installing watchtower"
docker rm -f watchtower
docker run --restart=always -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock centurylink/watchtower
