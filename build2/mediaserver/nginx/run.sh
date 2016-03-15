docker rm -f nginx-mediaserver
docker run --restart=always --net=lowet84-mediaserver --name nginx-mediaserver -p 80:80 -d lowet84/nginx-mediaserver
