#!/bin/bash

VERSION=$1
docker run --platform "linux/arm64" --rm -v ".:/ruby" -e "VERSION=$VERSION" --env-file .env ogarcia/archlinux:devel /ruby/docker_build_ruby.sh
docker run --platform "linux/amd64" --rm -v ".:/ruby" -e "VERSION=$VERSION" --env-file .env ogarcia/archlinux:devel /ruby/docker_build_ruby.sh

