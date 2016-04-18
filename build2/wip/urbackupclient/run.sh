docker rm -f urbackup-client
docker run -v /volumes:/data -p 35621:35621 -p 35622:35622 -p 35623:35623 -it -d --name urbackup-client lowet84/urbackup-client
