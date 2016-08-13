#!/bin/sh
usermodmap=$HOME/.Xmodmap
sysmodmap=/etc/X11/xinit/.Xmodmap
userresources=$HOME/.Xresources



if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb  $userresources

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

wmname LG3D
setxkbmap -option ctrl:nocaps
compton --config $HOME/.config/compton/compton.conf -b &
bar &
xsetroot -cursor_name left_ptr &
xbindkeys &
exec bspwm
