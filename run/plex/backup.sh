#!/bin/bash

sudo docker stop plex
sudo docker run -i --rm --volumes-from plex_data -w /config lowet84/storage 7z a backup.7z
sudo docker cp plex_data:/config/backup.7z .
sudo docker run -i --rm --volumes-from plex_data -w /config lowet84/storage rm backup.7z
 
sudo docker start plex