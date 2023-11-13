#!/bin/bash

br_layout="br"
us_layout="us"

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ "$current_layout" == "$br_layout" ]; then
    setxkbmap -layout $us_layout
else
    setxkbmap -layout $br_layout
fi
