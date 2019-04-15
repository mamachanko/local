#!/usr/bin/env bash

set -euo pipefail

brew install \
    vim \
    jq \
    curl \
    tree \
    direnv \
    watch \
    cloudfoundry/tap/cf-cli \
    ag \
    git \
    jenv

curl https://krypt.co/kr | sh

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
nvm install v11.13.0
nvm use v11.13.0

jenv enable-plugin export
exec $SHELL -l
jenv add $(/usr/libexec/java_home)
jenv global 12
