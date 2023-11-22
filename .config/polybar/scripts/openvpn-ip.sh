#!/bin/bash

ip=$(ifconfig | grep -A1 "tun0" | awk '/inet / {print $2}')

if [ -z "$ip" ]; then
	echo "";
else
	echo "%{F#00FF04}󰓾%{F-} %{F#00FF04}$ip%{F-}";
fi
