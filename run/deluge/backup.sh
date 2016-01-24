#!/bin/bash

sudo docker stop deluge
sudo docker run -i --rm --volumes-from deluge_data -w /config lowet84/storage 7z a backup.7z
sudo docker cp deluge_data:/config/backup.7z .
sudo docker run -i --rm --volumes-from deluge_data -w /config lowet84/storage rm backup.7z
 
sudo docker start deluge
