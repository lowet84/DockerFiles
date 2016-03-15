#!/bin/bash

if sh /update/mount.sh
then
  echo "Mount script run successfully"
else
  echo "Mount script failed, shutting down..."
  exit 1
fi

#update
cd /update
sh update.sh
sh rar2fs.sh

function handle_signal {
  PID=$!
  echo "received signal. PID is ${PID}"
  kill -s SIGHUP $PID
}

trap "handle_signal" SIGINT SIGTERM SIGHUP

echo "starting sonarr"
mono /opt/NzbDrone/NzbDrone.Console.exe --no-browser -data=/config/sonarr & wait
echo "stopping sonarr"
