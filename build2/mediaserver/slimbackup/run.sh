docker rm -f backup
PASSWORD=$1
sh build.sh
docker run -d --privileged --name backup -v /volumes/mediaserver:/data -e FOLDER="Filer" -e MOUNTPATH="core" -e SERVER="192.168.1.3" -e SMBUSER="fredrik" -e BACKUPLOCATION="Backup/Mediaserver-Test" -e SMBPASSWORD="$PASSWORD" -e LABEL="DockerTest" -e INTERVAL="10s" lowet84/backup
