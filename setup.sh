#!/usr/bin/env bash

set -euxo pipefail

xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
brew doctor

brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

brew install \
    vim \
    jq \
    tree \
    direnv \
    cloudfoundry/tap/cf-cli \
    ag \
    git \
    jenv

brew tap caskroom/cask
brew tap caskroom/fonts

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
    jetbrains-toolbox \
    font-fira-code

curl https://krypt.co/kr | sh

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

cp zshrc ~/.zshrc
cp gitconfig ~/.gitconfig 
cp iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
cp vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json 
cp vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json 

echo 'done. mostly. good stuff.'
echo 
echo "what's left:"
echo ' * krypt pair'
echo ' * configure jenv http://www.jenv.be/'
echo ' * configure nvm https://github.com/creationix/nvm'
echo ' * install visual studio code extensions'
echo '   * XO'
echo '   * shell-format'
echo '   * npm'
echo '   * Docker'
echo '   * Material-Theme'
echo
echo 'ok. bye.'
