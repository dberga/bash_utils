#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide a path to folder / file as first argument"
FOLDER="."
else
FOLDER=$1
fi
du -sh $FOLDER
