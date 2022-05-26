if [ -z $1 ]
then
PORT=8888
else
PORT=$1
fi
if [ -z $2 ]
then
TOKEN="sisr"
else
TOKEN=$2
fi
if [ -z $3 ]
then
REMOTE_IP="172.20.120.162"
else
REMOTE_IP=$3
fi
if [ -z $4 ]
then
REMOTE_USER="david_berga"
else
REMOTE_USER=$4
fi
if [ -z $5 ]
then
LOCAL_IP="localhost"
else
LOCAL_IP=$5
fi

echo "lsof -ti:${PORT} | xargs kill -9"
echo "ssh -N -f -L ${LOCAL_IP}:${PORT}:${LOCAL_IP}:${PORT} ${REMOTE_USER}@${REMOTE_IP}"
ssh -N -f -L $LOCAL_IP:$PORT:$LOCAL_IP:$PORT $REMOTE_USER@$REMOTE_IP
xdg-open "http://localhost:${PORT}/?token=${TOKEN}"
