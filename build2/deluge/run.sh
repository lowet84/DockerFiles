docker rm -f deluge
docker run --privileged --name deluge -d --net=lowet84-mediaserver -it -v /volumes/deluge:/config -p 8112:8112 lowet84/deluge
