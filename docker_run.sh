#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide a IMAGE_NAME as first argument"
exit N
else
IMAGE_NAME=$1
fi
if [ -z $2 ]
then
echo "You should provide a ORIG_VOLUME_PATH for connecting docker volume as second argument, default is $(pwd)"
ORIG_VOLUME_PATH=$(pwd)
else
ORIG_VOLUME_PATH=$2
fi
if [ -z $3 ]
then
echo "You should provide a TARGET_VOLUME_PATH for connecting docker volume as third argument, default is $(pwd)"
TARGET_VOLUME_PATH=$(pwd)
else
TARGET_VOLUME_PATH=$3
fi
if [ -z $4 ]
then
echo "You should provide the amount of RAM as fourth argument, default is 16g"
RAM="16g"
else
RAM=$4
fi
if [ -z $5 ]
then
echo "You should provide a PORT as fifth argument, default is 9197"
PORT=9197
else
PORT=$5
fi

echo "Press Ctrl+P and Ctrl+Q to detach'
docker run --shm-size="${RAM}" --rm --name $IMAGE_NAME --gpus all -p $PORT:$PORT -v $ORIG_VOLUME_PATH:$TARGET_VOLUME_PATH -it $IMAGE_NAME 

