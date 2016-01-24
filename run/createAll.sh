DATA=$1

sudo sh plex/create.sh $DATA
sudo sh sonarr/create.sh $DATA
sudo sh jackett/create.sh
sudo sh deluge/create.sh $DATA
