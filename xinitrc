#!/bin/sh

# invoke global X session script
#. /etc/X11/Xsession
sudo pkill vmtoolsd
xrandr --output Virtual1  --mode 3840x2400 --scale ".55x.55"
xrdb -load ~/.Xresources & 
dunst & 
exec i3
#sxhkd &
#urxvt & 
#exec bspwm
