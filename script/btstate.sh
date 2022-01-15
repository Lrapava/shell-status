#!/bin/bash

btstate() {
	STATE=$(upower -i `upower -e | grep 'BAT'` | grep --color=never 'state' | awk '{print $2}')
	if [ $STATE = "discharging" ]
	then
		STATE="-"
	else
		STATE="+"
	fi
	echo $STATE
}
