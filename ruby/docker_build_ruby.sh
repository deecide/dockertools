#!/bin/bash

pacman -Sy --noconfirm
pacman -S --noconfirm ruby-build libyaml

ruby-build $VERSION /usr/local || cat /tmp/ruby-build.*.log
tar -czf /ruby/ruby-$VERSION.tar.gz /usr/local

