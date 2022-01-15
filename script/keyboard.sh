#!/bin/bash

keyboard() {
	setxkbmap -query | awk '/layout/{print $2}'
}
