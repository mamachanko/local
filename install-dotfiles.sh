#!/usr/bin/env bash

set -euxo pipefail

cp dotfiles/zsh ~/.zshrc
cp dotfiles/vim ~/.vimrc
cp dotfiles/git ~/.gitconfig 
cp dotfiles/iterm2 ~/Library/Preferences/com.googlecode.iterm2.plist

cp dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/
cp dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/
for extension in $(cat dotfiles/vscode/extensions); do
    code --force --install-extension ${extension}
done