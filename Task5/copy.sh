#!/bin/bash

echo "copying all the service files"
sudo cp Task5/files/*.service /etc/systemd/system
echo "done"

echo "reloading the system daemon"
sudo systemctl daemon-reload
echo "done"