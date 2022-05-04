#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide a SUBSTRING to search as first argument"
exit N
else
SUBSTRING=$1
fi
if [ -z $2 ]
then
echo "You should provide a FOLDER path as second argument, default is '.'"
FOLDER="."
else
FOLDER=$2
fi

grep -r $SUBSTRING $FOLDER
