PASSWORD=$1
docker rm -f booksonic
docker run --privileged --restart=always --name booksonic -d -it -v /volumes/booksonic:/var/booksonic -p 8088:8080 -e FOLDER="Filer" -e MOUNTPATH="core" -e SERVER="192.168.1.3" -e SMBUSER="fredrik" -e SMBPASSWORD="$PASSWORD" lowet84/booksonic
