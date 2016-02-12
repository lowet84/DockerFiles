echo "enter location of data on host"
read DATALOCATION

echo "installing filhub"
docker rm -f filehub
docker run --restart=always -d --name filehub --net=$NETWORK --privileged -it -v $DATALOCATION:/mnt/data -v $VOLUMES/filehub:/config lowet84/filehub

rm $VOLUMES/filehub/mount.sh
touch $VOLUMES/filehub/mount.sh
