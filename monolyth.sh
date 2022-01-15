#!/bin/bash

volume() {
	if [ $(pulsemixer --get-mute) = "1" ]
	then
		echo "off"
	else
		echo $(pulsemixer --get-volume | awk '{print $1}')%
	fi
}

power() {
	PRC=$(upower -i `upower -e | grep 'BAT'` | grep --color=never 'percentage' | awk '{print $2}')
	echo $PRC
}

mic() {
	VAR=$(amixer get Capture | tail -n1 | awk '{print $NF}')
	echo ${VAR//[\[\]]/}
}

keyboard() {
	setxkbmap -query | awk '/layout/{print $2}'
}

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

bar() {
	DIR=$(dirname "$(readlink -f "$0")")
	SCRIPT="$DIR/script"
	echo "[ Vol: $(volume) | Mic: $(mic) | kb: $(keyboard) ] $(date) ($(power)$(btstate))"
	sleep 0.1s
}

count=0

while true; do
	pgrep dwm || exit

	xsetroot -name "$(bar)"
	let count+=1
done
