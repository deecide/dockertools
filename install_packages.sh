#!/bin/bash

pacman -Sy --noconfirm && \
pacman -S --noconfirm $@ && \
pacman -Scc --noconfirm