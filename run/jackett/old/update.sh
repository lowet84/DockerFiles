sudo docker pull lowet84/plex
sudo docker stop plex
sudo docker rm plex
sudo docker run -it --name plex -d --volumes-from plex_data --privileged --net="host" -p 32400:32400 lowet84/plex
