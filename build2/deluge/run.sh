docker rm -f deluge
docker run --privileged --restart=always --name deluge -d --net=lowet84-mediaserver -it -v /volumes/deluge:/config -v /volumes/mount.sh:/update/mount.sh -p 8112:8112 lowet84/deluge
