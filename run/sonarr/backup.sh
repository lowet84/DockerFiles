#!/bin/bash

sudo docker stop sonarr
sudo docker run -i --rm --volumes-from sonarr_data -w /volumes/config lowet84/storage 7z a backup.7z
sudo docker cp sonarr_data:/volumes/config/backup.7z .
sudo docker run -i --rm --volumes-from sonarr_data -w /volumes/config lowet84/storage rm backup.7z
 
sudo docker start sonarr
