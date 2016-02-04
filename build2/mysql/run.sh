docker rm -f mysql
docker run --name mysql -e MYSQL_ROOT_PASSWORD=Hartass2 -d -p 3306:3306 -v /volumes/mysql:/var/lib/mysql mysql
