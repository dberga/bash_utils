#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide the STRING TO BE REPLACED as first argument"
exit N
else
SUBSTRING1=$1
fi
if [ -z $2 ]
then
echo "You must provide the STRING TO PUT AS REPLACEMENT as second argument"
exit N
else
SUBSTRING2=$2
fi
if [ -z $3 ]
then
echo "You must provide path of FILE as third argument"
exit N
else
FILE=$3
fi
sed -i "s/${SUBSTRING1}/${SUBSTRING2}/g" $FILE
