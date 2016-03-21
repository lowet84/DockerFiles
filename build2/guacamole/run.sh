docker rm -f guacamole
docker rm -f guacd

docker run --name guacd1 -d --restart=always glyptodon/guacd
docker run --name guacamole --link guacd1:guacd \
    --link mysql:mysql         \
    -e MYSQL_DATABASE=guacamole_db  \
    -e MYSQL_USER=guacamole_user    \
    -e MYSQL_PASSWORD=guacamole_password \
    -d -p 8080:8080 \
    --restart=always glyptodon/guacamole
