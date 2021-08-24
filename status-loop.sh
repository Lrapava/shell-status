#!/bin/sh

DIR=$(dirname "$(readlink -f "$0")")

while true; do
	pgrep dwm || exit
	xsetroot -name "$($DIR/bar.sh)"
done
