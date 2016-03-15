docker rm -f mysql
docker run --name mysql --restart=always -e MYSQL_ROOT_PASSWORD=gurkburk -d -p 3306:3306 -v /volumes/mysql:/var/lib/mysql mysql
