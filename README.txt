For my own ricing of archlinux I've taken bits of Luke Smith's 'larbs' at https://larbs.xyz.
I've taken dwm, dwmblocks.

This directory has what's needed but sym links will have to be created at the relevant places.
configs/bashrc.arch     => ~/.bashrc
configs/xinitrc         => ~/.xinitrc
local/bin/statusbar/    => ~/.local/bin/statusbar/
local/bin/sysact        => ~/.local/bin/sysact (root needs group ownership)

Go to suckless/dwm and run 'sudo make clean install'.
Same with suckless/dwmblocks.
