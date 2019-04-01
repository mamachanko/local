#!/usr/bin/env bash

set -euo pipefail

function install_brew() {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
}

function install_ohmyzsh() {
    brew install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    chsh -s $(which zsh)
}

function install_terminal_applications() {
    brew install \
        vim \
        jq \
        tree \
        direnv \
        cloudfoundry/tap/cf-cli \
        ag \
        git \
        jenv
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
}

function install_fonts() {
    brew tap caskroom/fonts
    brew cask install font-fira-code
}

function install_desktop_applications() {
    brew tap caskroom/cask
    brew cask \
        iterm2 \
        slack \
        notion \
        zoom \
        spectrum \
        visual-studio-code \
        google-chrome \
        firefox \
        spotify \
        caffeine \
        docker \
        shiftit \
        jetbrains-toolbox
}

function install_dotfiles() {
    ./install-dotfiles.sh
}

function show_whats_left() {
    echo 'done. mostly. good stuff.'
    echo 
    echo "what's left:"
    echo ' * configure jenv http://www.jenv.be/'
    echo ' * configure nvm https://github.com/creationix/nvm'
    echo ' * brew doctor'
    echo ' * install visual studio code extensions'
    echo '   * XO'
    echo '   * shell-format'
    echo '   * npm'
    echo '   * Docker'
    echo '   * Material-Theme'
    echo ' * ./install-dotfiles.sh'
    echo
    echo 'ok. bye.'
}

install_brew
install_ohmyzsh
install_terminal_applications
install_desktop_applications
install_fonts
install_dotfiles

show_whats_left
