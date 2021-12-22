#!/bin/bash
VAR=$(amixer get Capture | tail -n1 | awk '{print $NF}')
echo ${VAR//[\[\]]/}
