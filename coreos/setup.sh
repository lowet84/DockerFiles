wget -q https://raw.githubusercontent.com/lowet84/DockerFiles/master/coreos/cloud-config-file.template -O cloud-config-file

PASSKEY=$(openssl passwd -1)

sed -i -- 's/replace-this/'$PASSKEY'/g' cloud-config-file
sudo coreos-install -d /dev/sda -C stable -c cloud-config-file
