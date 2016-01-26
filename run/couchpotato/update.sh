sudo docker pull lowet84/couchpotato
sudo docker stop couchpotato
sudo docker rm couchpotato
sudo docker run -e EDGE=1 -d --privileged --net="host" --name couchpotato --volumes-from couchpotato_data -v /etc/localtime:/etc/localtime:ro -p 5050:5050 lowet84/couchpotato
