#!/bin/bash

sudo docker stop jackett
sudo docker run -i --rm --volumes-from jackett_data -w /data/config lowet84/storage 7z a backup.7z
sudo docker cp jackett_data:/data/config/backup.7z .
sudo docker run -i --rm --volumes-from jackett_data -w /data/config lowet84/storage rm backup.7z
 
sudo docker start jackett
