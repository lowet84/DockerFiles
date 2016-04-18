if [ -d /mnt/$MOUNTPATH ]
then
  echo "core exists"
else
  echo "creating core"
  mkdir /mnt/$MOUNTPATH
fi

if ! mount -t cifs //$SERVER/$FOLDER /mnt/$MOUNTPATH -o username=$SMBUSER,password=$SMBPASSWORD
then
  exit 1
fi
