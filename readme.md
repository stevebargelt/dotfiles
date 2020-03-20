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

## Fix Broken Links

In .dotfiles run

```shell

sh script/fix_home_dotfiles.sh

```

## Shell startup

![Image of startup script flow](https://raw.githubusercontent.com/stevebargelt/dotfiles/master/assets/shell%20startup.png)

## To Do

1. Setup GPG for git signing
1. In zshrc.sh username is hard-coded. Fix that?
1. Automate any manual steps below?
   ~~1. In dock app config files, add ability to add spacer~~
   ~~1. I have decided to move back to Oh My ZSH - how to automate that?~~
   ~~1. Love the Spaceship theme... how to automate install/config?~~
   ~~1. Add Peacock to VS Code extension~~
   ~~1. Add Peacock settings to VS Code settings~~

## Manual Installs

1. [Visual Studio Mac](https://visualstudio.microsoft.com/vs/mac/)
1. [Android Studio](https://developer.android.com/studio)
1. [DaVinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve/)
1. [Cisco Jabber](https://uit.stanford.edu/service/jabber/mac/installation)

Then `osascript -e 'tell application "Dock" to quit'` to get these manual install icons to show in dock correctly.

## Manual Steps

1. Karabiner settings (especially if MS Natural Keyboard 4000)
1. Run 1Password, setup, and sync passwords
1. Run Docker application to setup (password in 1Password)
1. Install the 1Password extension in all browsers
1. First start of Microsoft Office product will ask for login to get license
1. Start OneDrive & Log In
1. If portable, enter TripMode License (it is in 1Password)
1. Slack, login and add orgs
1. Change Terminal Font to Fira Mono for Powerline, Regular, 14
1. Open Alfred and configure, set CMD-SPACE hotkey (and remove from Spotlight)
1. Open KeepingYouAwake and set to start a Login

### For Work

1. WebExTeams - add login
1. Jabber - login

## Optional Installs

R and RStudio
Backblaze for personal computers `brew cask install backblaze`
Hazel `brew cask install hazel` -> Hazel requires System permissions, holds up main install

- Get Hazel License from 1Password -> put into hazel

## Other Notes

> Note: Dockutil might be useful if it proves to difficult to manipulate the Dock purely with built-in commands.
> [https://github.com/kcrawford/dockutil](https://github.com/kcrawford/dockutil) > `brew install dockutil`
