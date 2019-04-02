#!/usr/bin/env bash

set -euo pipefail

function whats_left() {
    echo 'done. mostly. good stuff.'
    echo 
    echo "what's left:"
    echo ' * brew doctor'
    echo ' * enable visual studio code extensions'
    echo ' * configure jenv http://www.jenv.be/'
    echo ' * configure nvm https://github.com/creationix/nvm'
    echo
    echo 'ok. bye.'
}

./install-brew.sh
./install-ohmyzsh.sh
./install-terminal-applications.sh
./install-desktop-applications.sh
./install-fonts.sh
./install-dotfiles.sh

whats_left
