#!/bin/bash

useradd -m ab
echo "ab ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
su - ab -c "git clone https://aur.archlinux.org/yay.git"
su - ab -c "cd yay && makepkg -si --noconfirm"
su - ab -c "yay -S --noconfirm $@"
rm -rf /home/ab/
pacman -Rns yay
pacman -Rns $(pacman -Qdtq)
