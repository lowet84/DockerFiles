docker rm -f nginx-mediaserver
docker run --restart=always --net=mediaserver --name nginx -p 80:80 -d lowet84/nginx-mediaserver
