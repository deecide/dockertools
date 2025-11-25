#!/bin/bash

pacman -S --noconfirm ruby-build libyaml && \
ruby-build 3.4.4 /usr/local/ && \
gem install bundler && \
pacman -Rns --noconfirm ruby-build && \
pacman -Scc --noconfirm