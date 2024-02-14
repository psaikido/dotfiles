Put the endeavouros iso on a usb and boot.  
In the calamares installer I chose i3.

Get private gubbins off usb stick eg:
cp /run/media/hughie/USB\ STICK/h.tar.gpg .
gpg --output h.tar --decrypt h.tar.gpg
tar -zxvf h.tar

Start ssh-agent and authenticate, same with gpg.

Run:
~/dotfiles/eos/scripts/10.gui
~/dotfiles/eos/scripts/20.yay
~/dotfiles/eos/scripts/30.links-configs

Copy from a backup to ~
.abook
.gnupg
.password-store
.ssh
crypt
.local/share/mind.nvim

tmux:
ln -s dotfiles/eos/dot-root/tmux.conf ~/.tmux.conf
ln -s dotfiles/eos/configs/tmux ~/.tmux

keyboard:
follow the readme in dotfiles/xkb
