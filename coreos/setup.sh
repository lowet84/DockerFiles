wget goo.gl/mdaH3F -O cloud-config-file
sudo coreos-install -d /dev/sda -C alpha -c cloud-config-file -V $1
