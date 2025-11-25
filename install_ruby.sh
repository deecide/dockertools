#!/bin/bash

VERSION=$1
FILENAME=ruby-$VERSION-$(uname -m).tar.gz

curl -O https://igrubies.s3.eu-west-3.amazonaws.com/$FILENAME

tar -xzf $FILENAME -C /
rm $FILENAME
gem install bundler
