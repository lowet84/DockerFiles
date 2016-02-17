docker rm -f plex
docker run --privileged --restart=always --name plex -d --net=lowet84-mediaserver -it -v /volumes/plex:/root -v /volumes/mount.sh:/update/mount.sh -p 32400:32400 lowet84/plex
