BACKUPPATH=$1
if [ -z "$BACKUPPATH" ];
then
  echo "error"
else
  docker run --rm --net=lowet84-mediaserver -v /etc/localtime:/etc/localtime -v /volumes:/backup --privileged -e BACKUPPATH=$BACKUPPATH lowet84/backup
fi
