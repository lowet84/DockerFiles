sudo docker pull needo/deluge
sudo docker stop deluge
sudo docker rm deluge
sudo docker run -d --net="host" --name="deluge" --volumes-from deluge_data -p 8112:8112 -p 58846:58846 needo/deluge
