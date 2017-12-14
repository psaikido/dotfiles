alias ll='ls -lh'

cdl() {
  cd "$1"
  ls -lh
}

# For .bashrc PS1 command prompt
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
