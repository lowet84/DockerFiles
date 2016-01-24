TARGET=$1

if [ -d $TARGET]
then 
   echo $TARGET exists
else
   echo creating $TARGET
   mkdir $TARGET
fi

sudo sh plex/backup.sh
sudo mv backup.7z $TARGET/plex_backup.7z

sudo sh sonarr/backup.sh
sudo mv backup.7z $TARGET/sonarr_backup.7z

sudo sh deluge/backup.sh
sudo mv backup.7z $TARGET/deluge_backup.7z
