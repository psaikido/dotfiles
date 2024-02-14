Add files 'shavian' & 'halmak' to /usr/share/X11/xkb/symbols/.  

Insert the two layout xml blocks in shavian_halmak_evdev.xml above the closing '<layoutList>' block in /usr/share/X11/xkb/rules/evdev.xml.

The shavian is from here - https://gitlab.com/psaikido/shavian-xkb 

There are two experiments with halmak.  
The first is https://github.com/kaievns/halmak  
and the second is https://github.com/Roman-/redblue

The archwiki gives a method to set up xkb but it doesn't report what layout is
active in  polybar for some reason. It seems that you can't symlink to the system xkb dir. 'sudo cp' instead.

For the touchpad we edit:
/usr/share/X11/xorg.conf.d/30-touchpad
adding:
	Option "Natural Scrolling" "True"
