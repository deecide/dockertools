#!/bin/bash -e

useradd -m ab
echo "ab ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
su - ab -c "git clone https://aur.archlinux.org/yay.git"
su - ab -c "cd yay && makepkg -si --noconfirm --skippgpcheck"
su - ab -c "yay -S --noconfirm $@"
rm -rf /home/ab/
pacman -Rns --noconfirm yay
pacman -Rns --noconfirm $(pacman -Qdtq)
