docker rm -f subsonic
docker run --privileged --restart=always --name subsonic -d --net=lowet84-mediaserver -it -v /volumes/mediaserver/subsonic:/var/subsonic -v /volumes/mediaserver/mount.sh:/update/mount.sh -p 4040:4040 lowet84/subsonic
