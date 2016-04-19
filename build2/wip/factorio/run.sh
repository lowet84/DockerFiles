docker rm -f factorio-server
docker run -d -v /volumes/games/factorio:/opt/factorio/saves --restart=always --name factorio-server lowet84/factorio
