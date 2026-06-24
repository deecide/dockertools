#!/bin/bash -e

ARCH=amd64
if [ "$(uname -m)" = "aarch64" ]; then
  ARCH=arm64
fi
VER=$1
FILENAME=cli_${VER}_linux_${ARCH}.tar.gz

curl -LO https://github.com/Infisical/cli/releases/download/v$VER/$FILENAME
mkdir -p ./infisical
tar -xzf $FILENAME -C ./infisical
mv ./infisical/infisical /usr/bin/
rm -rf $FILENAME ./infisical
