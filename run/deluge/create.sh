DOWNLOAD=$1

sudo docker run -d --name="deluge_data" -v /config -v $DOWNLOAD:/downloads -v /etc/localtime:/etc/localtime:ro lowet84/storage chmod 777 /config
sudo docker run -d --net="host" --name="deluge" --volumes-from deluge_data -p 8112:8112 -p 58846:58846 needo/deluge
