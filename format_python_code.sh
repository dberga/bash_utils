# Using autopep8
autopep8 FILE.py --in-place
autopep8 FOLDER --in-place --recursive

# Using ruff
ruff check FILE.py
ruff check FOLDER
ruff fix --fix FILE.py --unsafe-fixes
ruff fix --fix FOLDER --unsafe-fixes

# Using tox (sudo apt-get install tox)
tox -e reformat
