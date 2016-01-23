#!/bin/bash
MEDIA=$1
COMPLETED=$2

sudo docker run -it --name sonarr_data -v /volumes/config -v $MEDIA:/volumes/media/ -v $COMPLETED:/volumes/completed/ lowet84/storage echo "sonarr data"
sudo docker run --rm --volumes-from sonarr_data lowet84/storage sudo chown nobody:users /volumes/config
sudo docker run -it --name sonarr --entrypoint="/bin/bash" --rm  --volumes-from sonarr_data --privileged lowet84/sonarr -c 'cp -r /original_config/* /volumes/config/'
sudo docker run -d -it --name sonarr --entrypoint="/bin/bash" --restart always  --volumes-from sonarr_data --privileged --net="host" -p 8989:8989 lowet84/sonarr /reset.sh

