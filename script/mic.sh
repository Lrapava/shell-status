STAT=$(amixer get Capture | tail -n1 | awk '{print $6}')
echo ${STAT//[\[\]]}
