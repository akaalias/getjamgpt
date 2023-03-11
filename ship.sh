#!/usr/bin/env zsh

set -e

echo -n "My commit message: "
read MESSAGE
echo $MESSAGE
git add -A
git commit -m $MESSAGE
git push origin main
