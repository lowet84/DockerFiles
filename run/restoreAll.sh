SOURCE=$1

sudo sh plex/restore.sh $SOURCE/plex_backup.7z
sudo sh sonarr/restore.sh $SOURCE/sonarr_backup.7z
sudo sh deluge/restore.sh $SOURCE/deluge_backup.7z
sudo sh couchpotato/restore.sh $SOURCE/couchpotato_backup.7z
