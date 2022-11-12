#!/bin/bash

if [ ! -d "/programs/" ]; then
  echo "creating directory.."
  sudo mkdir /programs/
  echo "/programs/ directory created"
fi

sudo cp Task4/hello_world.py /programs/
sudo cp Task4/hello_world.service /etc/systemd/system

echo "reloading the systemd daemon"
sudo systemctl daemon-reload
echo "done"

echo "enabling the the service"
sudo systemctl enable hello_world.service
echo "done"

echo "starting the service"
sudo systemctl start hello_world.service
echo "done"