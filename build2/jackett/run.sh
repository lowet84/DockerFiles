docker rm -f jackett
sudo docker run --net=lowet84-mediaserver -it -d --name jackett -p 9117:9117 lowet84/jackett
