## Releasing a new version

### Test, Version, Commit
1. Test the app thoroughly locally
2. Increase the build and version number equally under `Project > General`
3. Commit code to private Github repository with `$WORKSHOP/$XCODE-PROJECT-ROOT/ship.sh`

### Export, Notarize, Publish
4. Run `Product > Archive > Distribute App > Developer ID > Upload > Automatically Manage Signing > Upload`
5. Export Notarized App (Button bottom-right) to `$WORKSHOP/getjamgpt`
6. Open a shell and `cd $WORKSHOP/getjamgpt`
7. Run `publish.sh` and follow the instructions

### Release
8. Copy `$WORKSHOP/getjamgpt/Archive/JamGPT-$LATEST-VERSION.dmg` to `$WORKSHOP/getjamgpt/Releases/JamGPT.dmg`
9. Create a new release under `https://github.com/akaalias/getjamgpt/releases`
