#!/usr/bin/env bash

set -euxo pipefail

cd $(dirname $0)

git pull -r

git push

