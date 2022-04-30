# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    sublime
)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

#History setup
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZ

eval $(/opt/homebrew/bin/brew shellenv)

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt auto_cd # cd by typing directory name if it's not a command

# Disable annoying nyae autocorrect
unsetopt correct_all


# set of custom aliases
alias vim="nvim"
alias al="ls -al"

alias ans="cd ~/ansible"
















