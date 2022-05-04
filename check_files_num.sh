#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in

if [ -z $1 ]
then
echo "You should provide a path to folder / glob (folder/*, etc.) as first argument, default is '.'"
FOLDER="."
else
FOLDER=$1
fi
ls $FOLDER | wc -l
