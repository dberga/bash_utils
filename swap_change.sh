#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You should provide the amount of swap GB as first argument, default is 8G"
SWAPSIZE="8G"
else
SWAPSIZE=$1
fi

sudo swapoff /swapfile
sudo rm  /swapfile
sudo fallocate -l $SWAPSIZE /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
