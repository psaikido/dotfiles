If rebasing a laptop put the endeavouros iso on a usb and boot.  
In the calamares installer I chose i3 but we'll switch to hyprland.

Get private gubbins off usb stick eg:
cp /run/media/hughie/USB\ STICK/h.tar.gpg .
gpg --output h.tar --decrypt h.tar.gpg
tar -zxvf h.tar

Start ssh-agent and authenticate.
eval `ssh-agent`
ssh-add

git clone [https://github.com/JaKooLit/Arch-Hyprland](https://github.com/JaKooLit/Arch-Hyprland)
chmod +x install.sh
run it

git pull the dotfiles dir:
	github	git@github.com:psaikido/dotfiles.git (fetch)
	github	git@github.com:psaikido/dotfiles.git (push)
	raspi	git@raspi:~/dotfiles.git (fetch)
	raspi	git@raspi:~/dotfiles.git (push)

Run scripts:
~/dotfiles/hyprland/scripts/10.pacman.sh
~/dotfiles/hyprland/scripts/20.yay.sh
~/dotfiles/hyprland/scripts/30.config.sh

git clone git@github.com:psaikido/neovim ~/.config/nvim
