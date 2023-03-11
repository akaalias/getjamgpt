#!/usr/bin/env zsh
#
# The main script to push to github
#
# See README.md for instructions
#
# abort on errors
set -e

echo -n "My commit message: "
read MESSAGE
echo $MESSAGE
git add -A
git commit -m $MESSAGE
git push origin main
