# Dot Files

My dot files shared between machines. These will also be used during a [Strap](https://github.com/MikeMcQuaid/strap) install on a new machine.

Great source of Mac Setup Scripts I found when researching:
[https://github.com/tiiiecherle/osx_install_config](https://github.com/tiiiecherle/osx_install_config)

and another:
[https://github.com/mathiasbynens/dotfiles/blob/master/.macos](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)

Twitter: [@stevebargelt](http://twitter.com/stevebargelt)

Email [Steve Bargelt](mailto:steve@bargelt.com)

## Install

Run [`script/setup`](https://github.com/stevebargelt/dotfiles/blob/master/script/setup)
after checkout to symlink (or copy) everything in this directory to your home directory.

## Status

[![Build Status](https://travis-ci.org/stevebargelt/dotfiles.svg?branch=master)](https://travis-ci.org/stevebargelt/dotfiles)

## To Do

1. I have decided to move back to Oh My ZSH - how to automate that?
1. Love the Spaceship theme... how to automate install/config?
1. In dock app config files, add ability to add spacer
1. Setup GPG for git signing
~~1. Add Peacock to VS Code extension~~
~~1. Add Peacock settings to VS Code settings~~

## Manual Installs

1. [Visual Studio Mac](https://visualstudio.microsoft.com/vs/mac/)
1. [Android Studio](https://developer.android.com/studio)
1. [DaVinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve/)
1. [Cisco Jabber](https://uit.stanford.edu/service/jabber/mac/installation)

Then `osascript -e 'tell application "Dock" to quit'` to get these manual install icons to show in dock correctly.

## Manual Steps

Enter TripMode License (it is in 1Password)
Install the 1Password extension in all browsers
First start of Microsoft Office product will ask for login to get license
Slack - add all orgs and such
WebExTeams - add login
Jabber - login
Change Terminal Font to Fira Mono for Powerline, Regular, 16

## Optional Installs

R and RStudio
Backblaze for personal computers `brew cask install backblaze`
Hazel `brew cask install hazel` -> Hazel requires System permissions, holds up main install

* Get Hazel License from 1Password -> put into hazel

## Other Notes

> Note: Dockutil might be useful if it proves to difficult to manipulate the Dock purely with built-in commands.
[https://github.com/kcrawford/dockutil](https://github.com/kcrawford/dockutil)
`brew install dockutil`


## Check

Pages
Remote Desktop 8 Failed
Slack
Tweetbot Failed
