#!/bin/bash

xinput --set-prop 15 "libinput Accel Speed" -0.4

sleep 1
/usr/bin/amixer -c2 sset 'Headset',0 mute
