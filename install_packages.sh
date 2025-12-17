#!/bin/bash

echo "SigLevel = Required DatabaseOptional" | tee -a /etc/pacman.conf
pacman -Sy --noconfirm && \
pacman -S --noconfirm $@ && \
pacman -Scc --noconfirm && \
rm -rf /var/cache/pacman/pkg/*
