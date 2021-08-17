#!/bin/sh

DIR=$(dirname "$(readlink -f "$0")")

while true; do
	xsetroot -name "$($DIR/bar.sh)"
done
