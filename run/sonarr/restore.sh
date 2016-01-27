#!/bin/bash
FILE=$1
echo $FILE
sudo docker stop sonarr
sudo docker run -i --rm --volumes-from sonarr_data lowet84/storage /bin/bash -c 'cat > /volumes/config/restore.7z' < $FILE 
sudo docker run -i --rm --volumes-from sonarr_data lowet84/storage rm -rf /volumes/config/sonarr
sudo docker run -i --rm --volumes-from sonarr_data lowet84/storage 7z x /volumes/config/restore.7z -o/volumes/config/ 
sudo docker run --rm --volumes-from sonarr_data lowet84/storage sudo chown -R nobody:users /volumes/config
sudo docker run -i --rm --volumes-from sonarr_data lowet84/storage rm /volumes/config/restore.7z
sudo docker start sonarr
