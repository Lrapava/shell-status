#!/bin/bash

STATE=$(upower -i `upower -e | grep 'BAT'` | grep --color=never 'state' | awk '{print $2}')
PRC=$(upower -i `upower -e | grep 'BAT'` | grep --color=never 'percentage' | awk '{print $2}')

if [ $STATE = "charging" ]
then
	STATE="^"
else 
	STATE=""
fi

echo $STATE$PRC
