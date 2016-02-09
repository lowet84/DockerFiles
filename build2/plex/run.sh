docker rm -f plex
docker run --privileged --restart=always --name plex -d --net=lowet84-mediaserver -it -v /volumes/plex:/root -p 32400:32400 lowet84/plex
