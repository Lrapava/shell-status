#!/bin/bash

power() {
	PRC=$(upower -i `upower -e | grep 'BAT'` | grep --color=never 'percentage' | awk '{print $2}')
	echo $PRC
}
