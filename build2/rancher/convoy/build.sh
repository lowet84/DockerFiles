wget https://github.com/rancher/convoy/releases/download/v0.5.0.2-rancher/convoy.tar.gz

docker build -t lowet84/convoy .

rm convoy.tar.gz
