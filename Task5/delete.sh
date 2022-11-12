#!/bin/bash

echo "stopping all the relevant services"
for f in /etc/systemd/system/*.service; do 
  sudo systemctl stop ${f}
  sudo rm ${f}
done
echo "done"

echo "reloading the system daemon"
sudo systemctl daemon-reload
echo "done"