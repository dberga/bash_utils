if [ -z $1 ]
then
echo "You must provide a FILE or FOLDER path as first argument"
    exit 1
else
if [[ -d $1 ]]; then
    # Applying to folder
    ruff check $1
    autopep8 $1 --in-place --recursive
    ruff fix --fix $1 --unsafe-fixes
elif [[ -f $1 ]]; then
    # Applying to file
    ruff check $1
    autopep8 $1 --in-place
    ruff fix --fix $1 --unsafe-fixes
else
    echo "Path $1 does not exist"
    exit 1
fi

fi

## (optional)
#tox -e reformat

#### INSTALLATIONS
## For using autopep8 (pip install autopep8)
## For using ruff (pip install ruff)
## For using tox (sudo apt-get install tox)
