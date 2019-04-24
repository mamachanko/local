#!/usr/bin/env bash

set -euo pipefail

brew tap caskroom/cask
brew cask reinstall \
    iterm2 \
    slack \
    notion \
    zoomus \
    spectrum \
    visual-studio-code \
    google-chrome \
    firefox \
    spotify \
    caffeine \
    docker \
    shiftit \
    jetbrains-toolbox \
    java
