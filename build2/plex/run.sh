docker rm -f plex
docker run --privileged --name plex -d --net=host -it -v /volumes/plex:/config -p 32400:32400 lowet84/plex2
