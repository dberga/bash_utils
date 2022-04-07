#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in

if [ -z $1 ]
then
echo "You must provide a path to folder / glob (folder/*, etc.) as first argument"
FOLDER="."
else
FOLDER=$1
fi
ls $FOLDER | wc -l
