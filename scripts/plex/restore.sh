#!/bin/bash
FILE=$1
echo $FILE
sudo docker stop plex
sudo docker run -i --rm --volumes-from plex_data lowet84/plex /bin/bash -c 'cat > /config/restore.7z' < $FILE 
sudo docker run -i --rm --volumes-from plex_data lowet84/plex rm -rf /config/Library 
sudo docker run -i --rm --volumes-from plex_data lowet84/plex 7z x /config/restore.7z -o/config/ 
sudo docker run -i --rm --volumes-from plex_data lowet84/plex rm /config/restore.7z
sudo docker start plex
