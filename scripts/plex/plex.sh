#!/bin/bash

sudo docker run -it --name plex_data -v /home/fredrik/filer/:/data/ lowet84/plex echo "plex data"
sudo docker run -it --name plex -d --volumes-from plex_data --privileged --net="host" -p 32400:32400 lowet84/plex 
