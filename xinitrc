#!/bin/sh


# invoke global X session script
#. /etc/X11/Xsession
xrdb -load ~/.Xresources & 
dunst & 
exec i3
