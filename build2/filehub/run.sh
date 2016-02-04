docker rm -f filehub
docker run --name filehub --net=lowet84-mediaserver --privileged -d -it -v /volumes/rar2fs:/config lowet84/filehub
