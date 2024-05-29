if [ -z $1 ]
then
echo "You must provide a FILE_NAME.py as first argument"
exit
else
FILE=$1
fi
if [ -z $2 ]
then
echo "You should provide a FOLDER_NAME as second argument if ran on folder"

# Applying to file only
ruff check $FILE
autopep8 $FILE --in-place
ruff fix --fix $FILE --unsafe-fixes
tox -e reformat
else

# Applying to folder
FOLDER=$2
autopep8 $FOLDER --in-place --recursive
ruff fix --fix $FOLDER --unsafe-fixes
tox -e reformat
fi

# INSTALLATIONS
# For using autopep8 (pip install autopep8)
# For using ruff (pip install ruff)
# For using tox (sudo apt-get install tox)
