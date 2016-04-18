docker rm -f urbackup-server
docker run -v /volumes/urbackup:/data -p 55414:55414 -it -d --name urbackup-server lowet84/urbackup-server
