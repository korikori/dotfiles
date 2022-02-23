#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset ft
fi

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec openbox-session #sane default
#exec i3 #wild cowboy
