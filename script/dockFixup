#!/bin/bash

# clears the dock of all apps, then adds your individual dock config
# config file:
# ~/Library/Preferences/com.apple.dock.plist

# for readability and ease of use
DEF_W="/usr/bin/defaults write"
PLB=/usr/libexec/PlistBuddy
OSA=/usr/bin/osascript

DOCK="com.apple.dock"

# rein in some wooly XML
APP_HEAD="<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>"
APP_TAIL="</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

function set_dock_apps () {

    $DEF_W $DOCK 'checked-for-launchpad' -bool true
  
    # clear the dock of existing apps
    $DEF_W $DOCK 'persistent-apps' -array ''
    $DEF_W $DOCK 'persistent-others' -array ''
 
    for APP in $(cat $(dirname $0)/../dock-apps-to-add)
      do
        # dloc=$(defaults read com.apple.dock persistent-apps | grep file-label | awk '/'$APP'/  {printf NR}')
        # dloc=$[$dloc-1]
        # echo $dloc
        # sudo -u $USER /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist
        # Add an if to look for SPACER in file. Ignoring for now. 
        #$DEF_W $DOCK 'persistent-apps' -array-add '{ tile-data = {}; tile-type = "spacer-tile"; }'
        $DEF_W $DOCK 'persistent-apps' \
        -array-add "$APP_HEAD/Applications/$APP/$APP_TAIL"

    done
  
  $OSA -e 'tell application "Dock" to quit'

}

#Move dock to left lege of screen
defaults write com.apple.Dock orientation left

set_dock_apps