#!/bin/sh

DIR=$(dirname "$(readlink -f "$0")")
SCRIPT="$DIR/script"

echo "[ Vol: $($SCRIPT/volume.sh) | Mic: $($SCRIPT/mic.sh) | kb: $($SCRIPT/keyboard.sh) ] $(date) "

sleep 0.2s
