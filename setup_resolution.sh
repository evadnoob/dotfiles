#!/bin/bash

# sudo pkill vmtoolsd; sudo /usr/bin/vmtoolsd -n vmusr & sleep 4; zoom-normal

# 2560x1600 59.99 Hz (CVT 4.10MA) hsync: 99.46 kHz; pclk: 348.50 MHz
#xrandr --newmode "2560x1600_60.00"  348.50  2560 2760 3032 3504  1600 1603 1609 1658 -hsync +vsync
#1920x1200 59.88 Hz (CVT 2.30MA) hsync: 74.56 kHz; pclk: 193.25 MHz
xrandr --newmode "1920x1200_60.00"  193.25  1920 2056 2256 2592  1200 1203 1209 1245 -hsync +vsync
xrandr --newmode "3840x2160_60.00"  712.75  3840 4160 4576 5312  2160 2163 2168 2237 -hsync +vsync
# 2560x1600 59.99 Hz (CVT 4.10MA) hsync: 99.46 kHz; pclk: 348.50 MHz
#xrandr --newmode "2560x1600_60.00"  348.50  2560 2760 3032 3504  1600 1603 1609 1658 -hsync +vsync


#xrandr --addmode eDP1 "1920x1200_60.00"
#xrandr --output eDP1 --mode "1920x1200_60.00"   

xrandr --output eDP1 --mode "2880x1800"
#xrandr --output eDP1 --scale ".8x.8" 
xrandr --output eDP1 --scale ".85x.85" 

synclient TapButton1=1
synclient TapButton2=2
synclient TapButton3=3


# for projecting on vizio :-)
#xrandr --output HDMI1 --mode "1440x900"

#not resolution related, but fixes mouse movement speed on large monitor
#xset m 1/2 2

xset m 3/2 0

xrandr --output Virtual1  --mode 3840x2400 --scale ".68x.68"
