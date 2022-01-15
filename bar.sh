#!/bin/bash

source "${BASH_SOURCE%/*}/script/btstate.sh"
source "${BASH_SOURCE%/*}/script/keyboard.sh"
source "${BASH_SOURCE%/*}/script/mic.sh"
source "${BASH_SOURCE%/*}/script/power.sh"
source "${BASH_SOURCE%/*}/script/volume.sh"

bar() {
	DIR=$(dirname "$(readlink -f "$0")")
	SCRIPT="$DIR/script"
	echo "[ Vol: $(volume) | Mic: $(mic) | kb: $(keyboard) ] $(date) ($(power)$(btstate))"
}
