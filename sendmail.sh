#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You must provide a MAIL RECIPIENT as first argument"
exit N
else
mailrecipient=$1
fi
if [ -z $2 ]
then
echo "You must provide a SUBJECT as second argument"
exit N
else
subject=$2
fi
if [ -z $3 ]
then
echo "You must provide a BODY as third argument"
exit N
else
body=$3
fi

echo $body | mail $subject -s $mailrecipient;
echo "SENT :)"
echo "tip: use $(cat FILE_PATH) as body if you want to send a file content as body"


