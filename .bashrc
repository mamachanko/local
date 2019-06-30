source ~/vendor/bash/colours.bash
source ~/vendor/bash/git-completion.bash

export LANG=en_US.UTF-8
export EDITOR=code

# ~/bin is the location of personal scripts I would like available everywhere
export PATH="$HOME/bin:$PATH"

# need this set to xterm-256color to get proper color support in vim
export TERM='xterm-256color'

# Erase duplicates in history, keep 10k entris, and append to the history file
# rather than overwriting it.
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

export LSCOLORS="GxFxCxDxBxEgEdabagacad"
export GREP_OPTIONS="--color"

alias ls='ls -Glah'

PS1="\[${VIOLET}\]\\w \[${GREEN}\]? \[${RESET}\]"

echo "configuring direnv ..."
eval "$(direnv hook zsh)"

echo "configuring jenv ..."
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

echo "configuring nvm ..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
