docker rm -f booksonic
docker run --privileged --restart=always --name booksonic -d --net=lowet84-mediaserver -it -v /volumes/mediaserver/booksonic:/var/booksonic -v /volumes/mediaserver/mount.sh:/update/mount.sh -p 8080:8080 lowet84/booksonic
