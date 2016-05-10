#!/bin/bash

cd /netshare
if [ ! -f "/key/netshare.key.pub" ]; then
  ssh-keygen -t rsa -b 4096 -C "netshare" -N "" -f /key/netshare.key
fi
cd /key
KEY=$(cat netshare.key.pub)
echo Key:
echo $KEY
if grep -Fxq "$KEY" /ssh/authorized_keys
then
  echo "Key already in authorized_keys"
else
  echo "Adding key to authorized_keys"
  cat /key/netshare.key.pub >> /ssh/authorized_keys
fi

cd /netshare
echo "Killing netshare"
ssh -oStrictHostKeyChecking=no -i /key/netshare.key root@localhost "pkill -f netshare"
cp docker-volume-netshare /hostroot
cp netshare.sh /hostroot

ssh -oStrictHostKeyChecking=no -i /key/netshare.key root@localhost "sh netshare.sh $USERNAME $PASSWORD" 
