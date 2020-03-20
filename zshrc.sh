echo " in zshrc"
# check if this is a login shell
[ "$0" = "-zsh" ] && export LOGIN_ZSH=1

# run zprofile if this is not a login shell
# [ -n "$LOGIN_ZSH" ] && source ~/.zprofile

# Path to your oh-my-zsh installation.
export ZSH="/Users/stevebargelt/.oh-my-zsh"
ZSH_THEME="spaceship"

# History file
export HISTFILE=~/.zsh_history

# Don't show duplicate history entires
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history

# Don't hang up background jobs
setopt no_hup

HIST_STAMPS="yyyy-mm-dd"

# User configuration

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='nano'
fi

# fix delete key on macOS
[ -n "$MACOS" ] && bindkey '\e[3~' delete-char

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# load shared shell configuration
source $ZSH/oh-my-zsh.sh

plugins=(aws git docker golang)

source ~/.shrc
