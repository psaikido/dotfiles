#!/bin/bash

lsblk
echo "fdisk /dev/sda"
echo "make 2G swap, 512M bios_grub, at least 15G main for distro"
echo "eg: mkfs.ext4 /dev/sda2"
echo "eg: mkswap /dev/sda1"
echo "eg: swapon /dev/sda1"
echo "eg: mount /dev/sda2 /mnt"

