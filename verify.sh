#!/usr/bin/env zsh

set -e

if [ -d "./JamGPT.app" ] 
then
    echo "SUCCESS:Directory JamGPT.app exists!" 
else
    echo "ERROR: Directory JamGPT.app missing!" 
    exit 1
fi

## codesign --deep -vvv --verify ./JamGPT.app
## spctl -a -t exec -vv ./JamGPT.app
