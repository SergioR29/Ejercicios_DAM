#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Introduce un número como argumento: "
	exit 1
fi

num="$1"
half=$((num/2))

echo "Los divisores de $num son:"
echo ""

for i in $(seq 1 $half); do
	if [ $((num % i)) -eq 0 ]; then	
		echo $i
	fi
done

echo $num
