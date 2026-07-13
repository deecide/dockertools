#!/bin/bash -e

ARCH=amd64
if [ "$(uname -m)" = "aarch64" ]; then
  ARCH=arm64
fi

VER=$1
BASEVER=8.3
BASEDIST=noble
FILENAME=mongodb-database-tools_${VER}_${ARCH}.deb
URL=https://repo.mongodb.org/apt/ubuntu/dists/${BASEDIST}/mongodb-org/${BASEVER}/multiverse/binary-${ARCH}/$FILENAME

curl -LO "$URL"
mkdir -p ./mongodbtools
ar x "$FILENAME"
tar -xf data.tar.xz -C ./mongodbtools
mv ./mongodbtools/usr/bin/* /usr/bin/
rm -rf "$FILENAME" debian-binary control.tar.* data.tar.* ./mongodbtools
