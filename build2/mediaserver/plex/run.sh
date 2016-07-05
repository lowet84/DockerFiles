docker rm -f plex
docker run -d -e USEMOUNT="false" --privileged --restart=always --name plex -it -v /volumes/mediaserver/plex:/root -p 32400:32400 lowet84/plex
