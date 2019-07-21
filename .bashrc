main() {
    configure_shell_env
    configure_direnv
    configure_jenv
    configure_nvm
}

configure_shell_env() {
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

    # complete from history when pressing ↑
    bind '"\e[A": history-search-backward'
    # or ↓
    bind '"\e[B": history-search-forward'

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
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

main
