#!/bin/bash

NETWORK="lowet84-mediaserver"

echo "Enter volumes directory (default is /volumes), no trailing /"
read VOLUMES
if [ -z $VOLUMES ]
then
  VOLUMES="/volumes"
fi

if [ -d $VOLUMES ]
then
  echo "$VOLUMES exist"
else
  echo "creating $VOLUMES"
  mkdir -p $VOLUMES
fi

