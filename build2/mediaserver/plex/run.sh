docker rm -f plex
docker run -e USEMOUNT="false" --privileged --restart=always --name plex -it -v /volumes/mediaserver/plex:/root -p 32401:32400 lowet84/plex
