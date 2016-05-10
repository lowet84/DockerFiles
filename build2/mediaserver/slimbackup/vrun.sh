docker rm -f backup
PASSWORD=$1
sh build.sh
docker run --privileged --rm -v /volumes/restore:/data -e FOLDER="Filer" -e MOUNTPATH="core" -e SERVER="192.168.1.3" -e SMBUSER="fredrik" -e BACKUPLOCATION="Backup/Mediaserver" -e SMBPASSWORD="$PASSWORD" -e LABEL="DockerTest" lowet84/backup sh restore.sh docker-backup-Production-2016-04-18_14-48-08.tar.gz
