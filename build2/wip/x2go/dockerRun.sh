docker rm -f x2go
docker run -v /volumes/rider/settings:/home/dockerx/.Rider10 -v /volumes/rider/projects:/home/dockerx/RiderProjects -p 2222:22 -t -d --name x2go lowet84/x2go-ide
