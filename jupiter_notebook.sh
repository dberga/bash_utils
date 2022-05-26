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

jupyter notebook --NotebookApp.token=$TOKEN --no-browser --ip=0.0.0.0 --allow-root --port=$PORT
