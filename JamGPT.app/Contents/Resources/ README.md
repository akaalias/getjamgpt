## Shipping to Github with `./ship.sh`

When you've made changes, please use `ship.sh` to push your code to Github.

This will run all tests (TBD) and require all to succeed  before you can make your commit.

Usage: `./ship.sh`

## Dependency to PogoSharedContent

Most static strings and configs are in PogoSharedContent so they can be reused in UI tests as well.

## Releasing with Sparkle

https://sparkle-project.org/documentation/ 

### 5. Publish your appcast

You may have to set up the signing with 

1.  Build your app and compress it (e.g. in a ZIP/tar.xz/DMG archive), and put the archive in a new folder. This folder will be used to store all your future updates.

```bash
$ cd DMG
$ ./run.sh
$ mv ~/Desktop/JamGPT.dmg ~/Workshop/getjamgpt/
```

2. Run `generate_appcast` tool from Sparkle’s distribution archive specifying the path to the folder with update archives. Allow it to access the Keychain if it asks for it (it’s needed to generate signatueres in the appcast).

```bash
$ cd /Users/alexisrondeau/Library/Developer/Xcode/DerivedData/Sparkle-fpruvtzoodphqifzjwwdqtbpjiid/Build/Products/Debug/
$ ./generate_appcast ~/Workshop/getjamgpt/
```

3. The tool will generate the appcast file (using filename from [`SUFeedURL`](https://sparkle-project.org/documentation/customization/)) and also [`*.delta` update](https://sparkle-project.org/documentation/delta-updates/) files for faster incremental updates. Upload your archives, the delta updates, and the appcast to your server.

```bash
$ cd getjamgpt
$ git add .
$ git commit -m "Update"
$ git push 
```
