#!/bin/bash
DATA=$1

sudo docker run -it --name plex_data -v $DATA:/data/ lowet84/plex echo "plex data"
sudo docker run -it --name plex --restart always -d --volumes-from plex_data --privileged --net="host" -p 32400:32400 lowet84/plex 
