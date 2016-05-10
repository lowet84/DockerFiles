rm /run/docker/plugins/cifs.sock
chmod +x docker-volume-netshare
./docker-volume-netshare cifs --username $1 --password $2
