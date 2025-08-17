#!/bin/bash

n=0

while [ $n -gt 10 ]
do

clear

m=0

    while [ $m -gt 10 ]
    do
    
    echo "$n x $m = $((n*m))"
    m=$((m+1))

    done

sleep 3

n=$((n+1))

done
