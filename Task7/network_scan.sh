#!/bin/bash

N=1
while IFS="" read -r p || [ -n "$p" ]; do
  OPEN_PORTS=$(sudo nmap -T3 -sS -oG output.txt ${p} | grep open | awk '{print $1, $3})
  SCAN_DURATION=$(sudo nmap -T3 -sS -oG output.txt ${p} | grep seconds | awk '{print $11}')
  echo "##################################################"
  echo "HOST_${N}(${SCAN_DURATION}_seconds)"
  echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" 
  OPEN_PORTS_ARR=( $OPEN_PORTS )
  for (( i=0; i<=${#OPEN_PORTS_ARR[@]}; i++ )); do
     echo "${OPEN_PORTS_ARR[$i]}"
    # echo "PORT: OPEN_PORT_${N}, OPEN_PORT_${N}_SERVICE_NAME"
  done
  echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" 
  echo "##################################################"
  echo "."
  echo "."
  echo "."
  N=$((${N} + 1))
done < Task7/hosts.txt