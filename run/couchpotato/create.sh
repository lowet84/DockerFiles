DATA=$1

sudo docker run -it --name couchpotato_data -v $DATA:/downloads -v $DATA:/movies -v /config lowet84/storage echo "couch potato data"
sudo docker run -e EDGE=1 -d --privileged --net="host" --name couchpotato --volumes-from couchpotato_data -v /etc/localtime:/etc/localtime:ro -p 5050:5050 lowet84/couchpotato
