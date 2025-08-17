#!/bin/bash

while true
do

echo "Chequeo realizado el: $(date)" >> registro
who >> registro
echo "" >> registro
sleep 3m

done

#Para parar el bucle hay que utlizar Ctrl+C
