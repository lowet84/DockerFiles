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
