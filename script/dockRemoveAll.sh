#!/bin/sh
for APP in $(cat $(dirname $0)/../dock-icons-to-remove)
do
  dloc=$(defaults read com.apple.dock persistent-apps | grep file-label | awk '/'$APP'/  {printf NR}')
  dloc=$[$dloc-1]
  echo $dloc
  sudo -u $USER /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist
done

# Kill the preferences cache and the restart the Dock
killall cfprefsd 
killall Dock


  sudo /usr/libexec/PlistBuddy -c "Add persistent-apps:News" ~/Library/Preferences/com.apple.dock.plist