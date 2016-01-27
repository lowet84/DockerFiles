SONARR=$1

cp -r $SONARR ./sonarr
cp -r ../../files/rar2fs .
cp ../../files/libunrar.so .
sudo docker rmi -f lowet84/sonarr
sudo docker build -t lowet84/sonarr . 
rm -r rar2fs
rm libunrar.so
