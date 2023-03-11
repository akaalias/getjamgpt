#!/usr/bin/env zsh

set -e

echo -n "Enter the VERSION for this .dmg: "
read VERSION

appdmg ./appdmg.json ./Archive/JamGPT-$VERSION.dmg
