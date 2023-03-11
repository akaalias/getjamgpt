#!/usr/bin/env zsh

set -e

echo ""
echo "Verifying the App exists:"
echo ""
./verify.sh 

echo ""
echo "Getting CFBundleVersion:"
echo ""
./getversion.sh

echo ""
echo "Committing latest code changes to Github:"
echo ""
./ship.sh

echo ""
echo "Getting CFBundleVersion:"
echo ""
./getversion.sh

echo ""
echo "Generating DMG:"
echo ""
./dmg.sh

echo ""
echo "Getting CFBundleVersion:"
echo ""
./getversion.sh

echo ""
echo "Generating Appcast:"
echo ""
./generate_appcast.sh

echo ""
echo "Getting CFBundleVersion:"
echo ""
./getversion.sh

echo ""
echo "Committing latest Appcast to Github:"
echo ""
./ship.sh

echo ""
echo "Getting CFBundleVersion:"
echo ""
./getversion.sh

echo ""
echo "Cleaning up:"
echo ""
./cleanup.sh 
