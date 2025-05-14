# ~/.bash_profile

# Login shell initialization

[ $(tty) = "/dev/tty1" ] && neofetch && startx

[[ -f ~/.bashrc ]] && . ~/.bashrc
