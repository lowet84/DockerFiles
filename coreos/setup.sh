wget https://raw.githubusercontent.com/lowet84/DockerFiles/master/coreos/cloud-config-file

PASSKEY=$(openssl passwd -1)

ed -i -- 's/replace-this/'$PASSKEY'/g' cloud-config-file
