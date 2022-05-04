#!/bin/bash
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in
if [ -z $1 ]
then
echo "You should provide a git USER NAME, default is $(git config --global user.name)"
USER=$(git config --global user.name)
else
USER=$1
fi

git config --global alias.count-lines "! git log --author=\"\$1\" --pretty=tformat: --numstat | awk '{ add += \$1; subs += \$2; loc += \$1 - \$2 } END { printf \"added lines: %s, removed lines: %s, total lines: %s\n\", add, subs, loc }' #"

git count-lines $USER
