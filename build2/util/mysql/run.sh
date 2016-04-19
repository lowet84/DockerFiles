docker rm -f mysql
docker run -d --name mysql --restart=always -e MYSQL_ROOT_PASSWORD=gurkburk -p 3307:3306 -v /volumes/mysql:/var/lib/mysql mysql
