#!/bin/bash

VERSION=$1
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ARCHIVE="${SCRIPT_DIR}/ruby/ruby-${VERSION}.tar.gz"

tar -xzf "$ARCHIVE" -C /
gem install bundler
