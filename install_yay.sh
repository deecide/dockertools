#!/bin/bash -e

echo "LocalFileSigLevel = Optional" | tee -a /etc/pacman.conf
useradd -m ab
echo "ab ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
su - ab -c "git clone https://aur.archlinux.org/yay.git"
su - ab -c "cd yay && makepkg -si --noconfirm"
su - ab -c 'yay -S --noconfirm "$@"' _ "$@"
rm -rf /home/ab/
pacman -Rns --noconfirm yay
pacman -Rns --noconfirm $(pacman -Qdtq)
