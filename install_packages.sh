#!/bin/bash

pacman -Sy --noconfirm && \
pacman -S --noconfirm $@ && \
pacman -Scc --noconfirm && \
rm -rf /var/cache/pacman/pkg/*
