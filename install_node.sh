#!/bin/bash

ARCH=x64
if [ "$(uname -m)" = "aarch64" ]; then
  ARCH=arm64
fi
VER=v$1
FILENAME=node-$VER-linux-$ARCH.tar.xz

curl -O https://nodejs.org/dist/$VER/$FILENAME && \
tar -xJf $FILENAME -C /usr/local --strip-components=1 && \
rm $FILENAME && \
npm install -g yarn
