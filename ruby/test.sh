#!/bin/bash

VERSION=$1
cd ..
docker run -t --rm -v ".:/dockertools-master" ogarcia/archlinux:devel sh -c "/dockertools-master/install_packages.sh libyaml && /dockertools-master/install_ruby.sh $VERSION && ruby -v"

