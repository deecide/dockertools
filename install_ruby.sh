#!/bin/bash

VERSION=$1

curl -O https://igrubies.s3.eu-west-3.amazonaws.com/ruby-$VERSION.tar.gz

tar -xzf ruby-$VERSION.tar.gz -C /
rm ruby-$VERSION.tar.gz
gem install bundler
