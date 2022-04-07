#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide a PROCESS_NAME as first argument, default is python"
PROCESS_NAME="python"
else
PROCESS_NAME=$1
fi
ps -ef | grep $PROCESS_NAME
