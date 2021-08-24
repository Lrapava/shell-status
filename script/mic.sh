STAT=$(amixer get Capture | tail -n1 | awk '{print $NF}')
echo ${STAT//[\[\]]/}
