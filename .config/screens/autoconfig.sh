#!/bin/bash

#show screens: xrandr
#put script path on /etc/X11/xinit/xinitrc.d/xx-systemd-user.sh

xrandr --output DP-2 --rate 144 --mode 2560x1440
xrandr --output DP-2 --primary --right-of DP-4
