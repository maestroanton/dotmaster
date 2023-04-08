#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

[ -f $sysresources ] && xrdb -merge $sysresources;

[ -f $sysmodmap ] && xmodmap $sysmodmap;

[ -f "$userresources" ] && xrdb -merge "$userresources";

[ -f "$usermodmap" ] && xmodmap "$usermodmap";

# Sets PATH
export LOCAL="/home/anton/.local"
export PATH="${PATH}:${LOCAL}/bin"

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Increases auto-repeat speed
xset r rate 300 40

# Initializes cool programs
xcompmgr -c & redshift -PO 2900; nitrogen --restore; setxkbmap br; exec dwm
