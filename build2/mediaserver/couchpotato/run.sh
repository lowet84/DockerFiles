docker rm -f couchpotato
docker run --name couchpotato -v /volumes/mediaserver/mount.sh:/update/mount.sh -v /volumes/mediaserver/couchpotato:/config --restart=always -d --privileged --net=lowet84-mediaserver -it -p 5050:5050 lowet84/couchpotato
