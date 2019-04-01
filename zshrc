export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/floater/.oh-my-zsh"
ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias sha1sum=shasum
export EDITOR=code

export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
# Added by Krypton
export GPG_TTY=$(tty)

echo "configuring direnv ..."
eval "$(direnv hook zsh)"

echo "configuring jenv ..."
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

echo "configuring nvm ..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

