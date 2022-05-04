#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide path of FOLDER as first argument"
exit N
else
FOLDER=$1
fi
if [ -z $2 ]
then
echo "You should provide path of OUTPUT PATH as second argument, default is '.'"
OUTPUT="."
else
OUTPUT=$2
fi

path="${FOLDER}"/*
for file in $path
do
ln -s $file $OUTPUT
done

