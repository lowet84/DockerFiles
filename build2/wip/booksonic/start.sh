#!/bin/bash
if sh /update/mount.sh
then
  echo "Mount script run successfully"
else
  echo "Mount script failed, shutting down..."
  exit 1
fi
cd /usr/local/tomcat/bin/
./catalina.sh run
read
