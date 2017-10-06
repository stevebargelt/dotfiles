# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/steve/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="stevebargelt"
ZSH_THEME="gozilla"
#ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git git-prompt osx golang docker brew safe-paste zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#PATH for the go (lang) workspace
export GOPATH=$HOME/code/go

#PATH for rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

# Set personal aliases
# For a full list of active aliases, run `alias`.
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/steve/google-cloud-sdk 2/path.zsh.inc' ]; then source '/Users/steve/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/steve/google-cloud-sdk 2/completion.zsh.inc' ]; then source '/Users/steve/google-cloud-sdk 2/completion.zsh.inc'; fi

# Adding Powerline-Go (Shell Prompt in Go) 
function powerline_precmd() {
    PS1="$(~/.powerline/powerline-go -newline -error $? -shell zsh)"
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