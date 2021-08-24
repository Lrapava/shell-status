#!/bin/sh

STAT=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
VOL=$(amixer get Master | tail -n1 | awk '{print $(NF-1)}')

if [ "$STAT" = "off" ]
then
	echo "off"
else
	echo "${VOL//[\[\]%]/}%"
fi
