BACKUPPATH=$1
if [ -z "$BACKUPPATH" ];
then
  echo "error"
else
  docker run --rm --net=host -v /etc/localtime:/etc/localtime -v /volumes:/backup --privileged -e BACKUPPATH=$BACKUPPATH lowet84/backup
fi
