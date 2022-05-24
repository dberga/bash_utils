#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You should provide a CONTAINER NAME as first argument, default is last started"
CONTAINER=$(docker ps -q | head -n 1) #exit N
else
CONTAINER=$1
fi
echo "run 'source activate ...' in conda case'
docker exec -it $CONTAINER bash
