docker rm -f mysql-init
docker run --name mysql-init -e PASSWORD=gurkburk -d -it --link mysql:mysql -v /volumes/mysql:/data lowet84/mysql-guacamole-init
