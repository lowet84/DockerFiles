#!/bin/bash

BACKUPPATH=$1

sudo docker stop plex
sudo docker run -i --rm --volumes-from plex_data -w /config lowet84/plex 7z a backup.7z
 
sudo docker start plex
