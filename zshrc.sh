# check if this is a login shell
[ "$0" = "-zsh" ] && export LOGIN_ZSH=1

# run zprofile if this is not a login shell
[ -n "$LOGIN_ZSH" ] && source ~/.zprofile

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

# Add ZSH Specific Aliases
alias zshconfig="code ~/.zshrc"

# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle aws
antigen bundle git
antigen bundle docker
antigen bundle safe-paste
antigen bundle golang

# Tell Antigen that you're done.
antigen apply

# Adding Powerline-Go (Shell Prompt in Go) 
function powerline_precmd() {
    PS1="$($GOPATH/bin/powerline-go -error $? -shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# fix delete key on macOS
[ -n "$MACOS" ] && bindkey '\e[3~' delete-char

# load shared shell configuration
source ~/.shrc
