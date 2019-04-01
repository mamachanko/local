#!/usr/bin/env bash

set -euxo pipefail

cp dotfiles/zsh ~/.zshrc
cp dotfiles/git ~/.gitconfig 
cp dotfiles/iterm2 ~/Library/Preferences/com.googlecode.iterm2.plist
cp dotfiles/vscode/* ~/Library/Application\ Support/Code/User/
