#!/bin/bash

pacman -Syyy 
pacman -S grub networkmanager network-manager-applet dialog base-devel linux-headers alsa-utils pulseaudio git reflector xdg-utils xdg-user-dirs openssh sudo

grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable sshd
systemctl enable reflector.timer

