#!/bin/bash
sh /backup/mount.sh
while true; do
  sh /backup/backup.sh
  sleep $INTERVAL
done
