#!/bin/bash

if [ "$#" -lt 2 ] || [ $(($#%2)) -ne 0 ]; then

echo "No se han introducido argumentos"
exit 1

fi

i=1
while [ $i -le $# ]; do

nombre=${!i}
i=$((i+1))
num=${!i}

echo -n "$nombre "

  for ((a=0; a < num; a++)); do

  echo -n "*"

  done

echo ""
i=$((i+1))

done
