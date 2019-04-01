#!/usr/bin/env bash

set -euo pipefail

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
