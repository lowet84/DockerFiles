MOUNTPATH=$1
SERVER=$2
FOLDER=$3
SMBUSER=$4
SMBPASSWORD=$5
FILE=$6

if [ -d /mnt/$MOUNTPATH ]
then
  echo "$MOUNTPATH exists"
else
  echo "creating $MOUNTPATH"
  mkdir /mnt/$MOUNTPATH
fi

if ! mount -t cifs //$SERVER/$FOLDER /mnt/$MOUNTPATH -o username=$SMBUSER,password=$SMBPASSWORD
then
  exit 1
fi

cp /mnt/$MOUNTPATH/$FILE /backup/backup.tar.gz
