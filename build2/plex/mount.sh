if ! mount -t cifs //filehub/rar2fs /mnt/ -o guest
then
  echo "could not connect to filehub"
  exit 1
fi
