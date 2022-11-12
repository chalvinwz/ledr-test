#!/bin/bash

echo "deploying the application"
pm2 serve Task3/website 3000
echo "done"