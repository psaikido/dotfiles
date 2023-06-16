#!/usr/bin/env bash

home='/home/hughie'
cd $home

git clone https://gitlab.com/dwt1/wallpapers $home/wallpapers


# conky
DIR=$home/.config/conky
if test -d "$DIR"; then
    mv $DIR $DIR.bk
fi
mkdir -p $home/.config/conky
ln -s $home/dotfiles/common/conky $home/.config/conky


# foot
FILE=$home/.config/foot/foot.ini
if test -f "$FILE"; then
	mv $FILE $FILE.bk
fi
ln -s $home/dotfiles/hyprland/config/foot/foot.ini $home/.config/foot/foot.ini


#hypr
DIR=$home/.config/hypr
if test -d "$DIR"; then
	mv $DIR $DIR.bk
fi
ln -s $home/dotfiles/hyprland/config/hypr $home/.config/hypr


# ranger
FILE=$home/.config/ranger/rc.conf
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
mkdir -p $home/.config/ranger
ln -s $home/dotfiles/hyprland/config/ranger $home/.config/ranger


# rofi
DIR=$home/.config/rofi
if test -d "$DIR"; then
	mv $DIR $DIR.bk
fi
ln -s $home/dotfiles/hyprland/config/rofi $home/.config/rofi


# tmux
FILE=$home/.tmux.conf
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
mkdir -p $home/.tmux
ln -s $home/dotfiles/hyprland/config/tmux.conf $home/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm  


# zsh
FILE=$home/.zshrc
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
ln -s $home/dotfiles/hyprland/zshrc $home/.zshrc

FILE=$home/zsh/aliasrc
if test -f "$FILE"; then
    mv $FILE $FILE.bk
fi
ln -s $home/dotfiles/hyprland/config/zsh/aliasrc $home/.config/zsh/aliasrc


chown hughie:hughie -R $home
