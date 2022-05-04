#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide a IMAGE_NAME as first argument"
exit N
else
IMAGE_NAME=$1
fi
if [ -z $1 ]
then
echo "You should provide a DOCKERFILE path as second argument, default is Dockerfile"
DOCKERFILE="Dockerfile"
else
DOCKERFILE=$2
fi
docker build -t $IMAGE_NAME --no-cache . -f Dockerfile


