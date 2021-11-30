#!/bin/bash

user = hughie

echo root:password | chpasswd
useradd -mG wheel $usr
echo $usr:password | chpasswd
echo "$usr ALL=(ALL) ALL" >> /etc/sudoers.d/$usr
visudo
