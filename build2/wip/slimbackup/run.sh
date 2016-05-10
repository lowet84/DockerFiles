docker rm -f backup-remote
PASSWORD=$1
sh build.sh
docker run -d --privileged --name backup-remote -v /volumes/guacamole:/data -e FOLDER="Filer" -e MOUNTPATH="core" -e SERVER="192.168.1.3" -e SMBUSER="fredrik" -e BACKUPLOCATION="Backup/Guacamole" -e SMBPASSWORD="$PASSWORD" -e LABEL="Test" -e INTERVAL="10s" -e BACKUP_URL="https://raw.githubusercontent.com/lowet84/DockerFiles/master/Backup/guacamole-backup.sh" lowet84/backup-remote
