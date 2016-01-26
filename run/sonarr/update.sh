sudo docker pull lowet84/sonarr
sudo docker stop sonarr
sudo docker rm sonarr
sudo docker run -d -it --name sonarr --entrypoint="/bin/bash" --restart always  --volumes-from sonarr_data --privileged --net="host" -p 8989:8989 lowet84/sonarr /start.sh
