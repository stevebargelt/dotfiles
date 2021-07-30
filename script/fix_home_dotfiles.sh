#!/bin/sh

# re-links home files to the .dotfiles version
# the links can break when zsh or oh-my-zsh overwtites .z&* files

for DOTFILE in *; do
  HOMEFILE="$HOME/.$DOTFILE"
  [ -d $DOTFILE ] && DOTFILE="$DOTFILE/"
  DIRFILE="$HOME/.dotfiles/$DOTFILE"

  echo $DOTFILE | egrep -q '(^script/$|\.txt$|\.md$)' && continue
  echo $DOTFILE | grep -q 'vscode-settings' &&
       HOMEFILE="$VSCODE/settings.json" &&
       mkdir -p "$VSCODE"

  echo $DOTFILE | grep -q '\.sh' &&
       HOMEFILE="$HOME/.$(echo $DOTFILE | sed -e 's/\.sh//')"

  if [ $UNIX ]
  then
    if [ -L "$HOMEFILE" ] && ! [ -d $DOTFILE ]
    then
      ln -sfv "$DIRFILE" "$HOMEFILE"
    else
      rm -rv "$HOMEFILE"
      ln -sv "$DIRFILE" "$HOMEFILE"
    fi
  else
    cp -rv "$DIRFILE" "$HOMEFILE"
  fi
done