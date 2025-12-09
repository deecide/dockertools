#!/bin/bash

FILENAME=ruby-$VERSION-$(uname -m).tar.gz

pacman -Sy --noconfirm
pacman -S --noconfirm ruby-build libyaml

ruby-build $VERSION /usr/local || cat /tmp/ruby-build.*.log
tar -czf /ruby/$FILENAME /usr/local

