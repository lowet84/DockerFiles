docker rm -f plex
docker run --restart=always --privileged -d --name plex --net="host" -v /home/fredrik/plex/:/config -v /home/fredrik/filer/:/data -p 192.168.1.131:32400:32400  lowet84/plex
