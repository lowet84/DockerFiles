docker rm -f jackett
sudo docker run --restart=always --net=lowet84-mediaserver -it -d --name jackett -p 9117:9117 -v /volumes/mediaserver/jackett:/root/.config/Jackett -e JACKETT_KEY=d7nc8w37y4mc9348u9q83mqv lowet84/jackett
