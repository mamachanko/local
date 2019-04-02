#!/usr/bin/env bash

set -euxo pipefail

cp ~/.zshrc dotfiles/zsh
cp ~/.vimrc dotfiles/vim
cp ~/.gitconfig dotfiles/git
cp ~/Library/Preferences/com.googlecode.iterm2.plist dotfiles/iterm2
cp ~/Library/Application\ Support/Code/User/settings.json dotfiles/vscode/
cp ~/Library/Application\ Support/Code/User/keybindings.json dotfiles/vscode/
code --list-extensions > ./dotfiles/vscode/extensions
