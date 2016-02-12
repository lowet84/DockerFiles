echo "installing filhub"
docker rm -f filehub
docker run --restart=always -d --name filehub --net=$NETWORK --privileged -it -v $VOLUMES/filehub:/config lowet84/filehub

echo "SMB server will use the following command:"
echo 'mount -t cifs //$SERVER/$FOLDER /mnt/$MOUNTPATH -o username=$SMBUSER,password=$SMBPASSWORD'
echo ""
echo 'Enter IP/name of smb server ($SERVER)'
read SMBSERVER

echo 'Enter folder on smb server to mount () ($FOLDER)'
read SMBFOLDER

echo 'Enter folder in /mnt to mount to (give it som name, e.g. smbserver) ($MOUNTPATH)'
read MNTFOLDER

echo 'Enter smb server username ($SMBUSER)'
read SMBUSER

echo 'Enter smb server password ($SMBPASSWORD)'
stty -echo
read SMBPASS
stty echo

sed -i -- 's/<my_folder>/'$SMBFOLDER'/g' $VOLUMES/filehub/mount.sh
sed -i -- 's/<my_server>/'$SMBSERVER'/g' $VOLUMES/filehub/mount.sh
sed -i -- 's/<my_user>/'$SMBUSER'/g' $VOLUMES/filehub/mount.sh
sed -i -- 's/<my_password>/'$SMBPASS'/g' $VOLUMES/filehub/mount.sh
sed -i -- 's/<path>/'$MNTFOLDER'/g' $VOLUMES/filehub/mount.sh
