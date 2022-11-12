#!/bin/bash

FILENAME="data_$(date -u +"%Y-%m-%d_%H-%M")_UTC"

if [ ! -d "Task6/Data/" ]; then
  echo "cannot find the Task6/Data/ directory"
  exit 1
fi

cp -r Task6/Data/ Task6/${FILENAME}/

tar -zcvf Task6/${FILENAME}.tar.gz Task6/${FILENAME}/
chmod ugo+rwx Task6/${FILENAME}.tar.gz

rm -r Task6/${FILENAME}/