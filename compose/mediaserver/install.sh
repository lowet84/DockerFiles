#!/bin/bash

echo "Enter DOMAIN"
read domain
echo "Enter SERVER"
read server
echo "Enter SMBUSER"
read user
echo "Enter SMBPASS"
stty -echo
read -s pass
stty echo
echo "Enter SMBFOLDER"
read folder
echo "Enter MNTPATH"
read path

wget -q https://raw.githubusercontent.com/lowet84/DockerFiles/master/compose/mediaserver/docker-compose.yml -O docker-compose.yml
DOMAIN=$domain SERVER=$server SMBUSER=$user SMBPASS=$pass SMBFOLDER=$folder MNTPATH=$path docker-compose up -d
