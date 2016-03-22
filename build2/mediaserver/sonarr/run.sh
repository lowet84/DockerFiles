docker rm -f sonarr
docker run --restart=always -d --name sonarr --net=mediaserver -it -v /volumes/mediaserver/sonarr:/config -p 8989:8989 -p 9898:9898 --privileged -v /volumes/mediaserver/mount.sh:/update/mount.sh lowet84/sonarr
