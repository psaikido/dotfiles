For image previews in ranger, go to .config/ranger and run:
ranger --copy-config=all
which should bring rc.conf.
In there set 'preview_images' to true and 'preview_images_method' to 'ueberzug'.
Might need to install it with 'pip3 install ueberzug'.

For English keyboard edit .config/xinitrc. This file gets symlinked as .xinitrc in the root of the home dir.
setxdbmap gb &

For initial setup if not running through the rchamp scripts, get the relevant script for 'dotfiles':
/home/hughie/rchamp/scripts/on-metal/80.configs.sh

