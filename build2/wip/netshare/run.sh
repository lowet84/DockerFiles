docker rm -f netshare
docker run -d -v /root:/hostroot -v /volumes/netshare:/key --net=host --name netshare -it -e USERNAME=fredrik -e PASSWORD=$1 -v /root/.ssh/:/ssh lowet84/netshare
