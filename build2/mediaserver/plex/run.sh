docker rm -f plex
docker run --privileged --restart=always --name plex -d --net=mediaserver -it -v /volumes/mediaserver/plex:/root -v /volumes/mediaserver/mount.sh:/update/mount.sh -p 32400:32400 lowet84/plex
