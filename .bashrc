main() {
    configure_bash
    configure_direnv
    configure_jenv
    configure_nvm
}

configure_bash() {
    echo "configuring bash ..."

    source ~/vendor/bash/colours.bash
    source ~/vendor/bash/git-completion.bash

    LANG=en_US.UTF-8
    EDITOR=code
    LESS=-Ri

    # ~/bin is the location of personal scripts I would like available everywhere
    PATH="$HOME/bin:$PATH"

    # need this set to xterm-256color to get proper color support in vim
    TERM='xterm-256color'

    # Erase duplicates in history, keep 10k entris, and append to the history file
    # rather than overwriting it.
    HISTCONTROL=ignoredups:erasedups
    HISTSIZE=10000
    PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
    shopt -s histappend

    LSCOLORS="GxFxCxDxBxEgEdabagacad"
    GREP_OPTIONS="--color"

    alias ls='ls -Glah'
    alias ll='ls'

    PS1="\[${YELLOW}\]\\w \[${GREEN}\]>_ \[${RESET}\]"
}

configure_direnv() {
    echo "configuring direnv ..."
    eval "$(direnv hook bash)"
}

configure_jenv() {
    echo "configuring jenv ..."
    PATH="$HOME/.jenv/bin:$PATH"
    eval "$(jenv init -)"
}

configure_nvm() {
    echo "configuring nvm ..."
    NVM_DIR="$HOME/.nvm"
    source $(brew --prefix nvm)/nvm.sh
}

main
