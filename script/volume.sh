#!/bin/bash

volume() {
	if [ $(pulsemixer --get-mute) = "1" ]
	then
		echo "off"
	else
		echo $(pulsemixer --get-volume | awk '{print $1}')%
	fi
}
