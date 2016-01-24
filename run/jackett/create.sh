#!/bin/bash

#sudo docker run -v /root/.config/Jackett-public --name jackett_data lowet84/storage echo "jackett data"
sudo docker run --net="host" -it -d --name jackett -p 9117:9117 lowet84/jackett
