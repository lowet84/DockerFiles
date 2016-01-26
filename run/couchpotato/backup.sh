#!/bin/bash

sudo docker stop couchpotato
sudo docker run -i --rm --volumes-from couchpotato_data -w /config lowet84/storage 7z a backup.7z
sudo docker cp couchpotato_data:/config/backup.7z .
sudo docker run -i --rm --volumes-from couchpotato_data -w /config lowet84/storage rm backup.7z

sudo docker start couchpotato
