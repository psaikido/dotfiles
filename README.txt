Luke Smith's 'larbs' at https://larbs.xyz is this dwm install.
I've tweaked it.
After running the install, swap out 
.local/src/dwm => dotfiles/suckless/dwm
.local/src/dwmblocks => dotfiles/suckless/dwmblocks
.local/src/st => dotfiles/suckless/st
Run 'sudo make clean install' on them.

.local/bin/statusbar => dotfiles/local/bin/statusbar
make install on this too.

For image previews in ranger, go to .config/ranger and run:
ranger --copy-config=all
which should bring rc.conf.
In there set 'preview_images' to true and 'preview_images_method' to 'ueberzug'.
Might need to install it with 'pip3 install ueberzug'.

For English keyboard edit .config/x11/xprofile. This file gets symlinked as .xprofile in the root of the home dir.
setxdbmap gb &

neovim is overwritten by larbs so move it to oneside and re-rename it after. 
Redo the :PackerInstall.
