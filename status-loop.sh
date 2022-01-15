#!/bin/bash

source "${BASH_SOURCE%/*}/bar.sh"
count=0

while true; do
	pgrep dwm || exit
	if [ $(expr $count % 20) == 0 ]; then
		source "${BASH_SOURCE%/*}/bar.sh"
	fi
	xsetroot -name "$(bar $count)"
	let count+=1
	sleep 0.1s
done
