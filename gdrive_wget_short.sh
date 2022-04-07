#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide a FILEID as first argument"
exit N
else
FILEID=$1
fi
if [ -z $2 ]
then
echo "You must provide a FILENAME as second argument"
exit N
else
FILENAME=$2
fi
wget --no-check-certificate "https://docs.google.com/uc?export=download&id=${FILEID}" -O $FILENAME
