docker rm -f deluge
docker run --privileged --restart=always --name deluge -d --net=mediaserver -it -v /volumes/mediaserver/deluge:/config -v /volumes/mediaserver/mount.sh:/update/mount.sh -p 8112:8112 lowet84/deluge
