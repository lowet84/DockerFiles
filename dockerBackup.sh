#!/bin/bash
COUNTER = 1

if [ -f dockerBackup ];
then
   echo "dockerBackup file found"
else
   touch dockerBackup
   echo "Add docker data containers to dockerBackup file: <name> <volume> <volume> ..."
   exit
fi

while IFS='' read -r line || [[ -n "$line" ]]; do
   let "COUNTER = 0"
   for word in $line
   do
      ((COUNTER++))
      if [ $COUNTER == 1 ]
      then
         echo "name: " $word
      else
         echo "line: " $word
      fi
   done
done < "dockerBackup"
