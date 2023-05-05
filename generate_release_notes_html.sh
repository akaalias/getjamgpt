#!/usr/bin/env zsh
set -e

APPNAME=JamGPT
APPBUNDLE="$APPNAME.app"
VERSION=$(scout read -i $APPBUNDLE/Contents/Info.plist -f plist "CFBundleVersion")

export DMGNAME="$APPNAME-$VERSION.dmg"
export HTMLNAME="$DMGNAME.html"

echo "Let's tell them why they should update!"
export EDITOR=/opt/homebrew/bin/emacs
$EDITOR ./Archive/$HTMLNAME

echo "Creating HTML for $DMGNAME: $HTMLNAME"
echo "-----------------------------------"
cat ./Archive/$HTMLNAME
echo "-----------------------------------"
