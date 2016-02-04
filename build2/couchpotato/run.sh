docker rm -f couchpotato
docker run -d --rm --privileged --net=lowet84-mediaserver -it -p 5050:5050 lowet84/couchpotato
