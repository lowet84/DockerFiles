docker rm -f plex
docker run --privileged --name plex -d --net=lowet84-mediaserver -it -v /volumes/plex:/config -v /volumes/transcode:/transcode -p 32400:32400 lowet84/plex2
