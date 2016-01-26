#!/bin/bash
FILE=$1
echo $FILE
sudo docker stop couchpotato
sudo docker run -i --rm --volumes-from couchpotato_data lowet84/storage /bin/bash -c 'cat > /config/restore.7z' < $FILE
sudo docker run -i --rm --volumes-from couchpotato_data lowet84/storage 7z x /config/restore.7z -o/config/ -aoa
sudo docker run -i --rm --volumes-from couchpotato_data lowet84/storage chmod -R 777 /config/
sudo docker run -i --rm --volumes-from couchpotato_data lowet84/storage rm /config/restore.7z
sudo docker start couchpotato
