docker rm -f filehub
docker run -d --name filehub --net=lowet84-mediaserver --privileged -it -v /volumes/rar2fs:/config lowet84/filehub
