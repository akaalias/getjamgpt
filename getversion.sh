#!/usr/bin/env zsh

set -e

APPBUNDLE=JamGPT.app
VERSION=$(scout read -i $APPBUNDLE/Contents/Info.plist -f plist "CFBundleVersion")

echo $VERSION
