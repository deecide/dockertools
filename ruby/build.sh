#!/bin/bash

VERSION=$1
docker run --rm -v ".:/ruby" -e "VERSION=$VERSION" ogarcia/archlinux:devel /ruby/docker_build_ruby.sh

