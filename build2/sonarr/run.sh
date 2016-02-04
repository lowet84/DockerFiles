docker rm -f sonarr
docker run -d --name sonarr --net=lowet84-mediaserver -it -v /volumes/sonarr:/config -p 8989:8989 -p 9898:9898 --privileged lowet84/sonarr
