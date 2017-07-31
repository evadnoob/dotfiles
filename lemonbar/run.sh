#!/bin/bash

DIRNAME=$(dirname $0)
. ${DIRNAME}/colors


~/dotfiles/lemonbar/example.sh | /home/david/projects/kryp-n-bar/lemonbar -a 32 -f "xft:DejaVu Sans Mono:pixelsize=13:antialias=true:hinting=true" -f "Font Awesome" -b -g 2100x20+10+10 -B "${COLOR_DEFAULT_BG}" -d -p -u 10
