For my own ricing of archlinux I've taken bits of Luke Smith's 'larbs' at https://larbs.xyz.
I've taken dwm, dwmblocks.

This directory has what's needed but sym links will have to be created at the relevant places.
configs/bashrc.arch     => ~/.bashrc
configs/xinitrc         => ~/.xinitrc
local/bin/statusbar/    => ~/.local/bin/statusbar/
local/bin/sysact        => ~/.local/bin/sysact (root needs group ownership)

Go to suckless/dwm and run 'sudo make clean install'.
Same with suckless/dwmblocks.

For image previews in ranger, go to .config/ranger and run:
ranger --copy-config=all
which should bring rc.conf.
In there set 'preview_images' to true and 'preview_images_method' to 'ueberzug'.
Might need to install it with 'pip3 install ueberzug'.
