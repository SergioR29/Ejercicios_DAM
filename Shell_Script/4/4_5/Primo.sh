#!/bin/bash

numero=$1

# "-lt" significa "less than" y "-le" significa "less or equal"

if [ $numero -lt 2 ]; then

echo "El número $numero no es primo."
exit 0

fi

#Comprobamos si el número es divisible por algún número hasta su raíz cuadrada

i=2

while [ $((i*i)) -le $numero ]; do

    if [ $((numero%i)) -eq 0 ]; then

    echo "El número $numero no es primo."
    exit 0

fi

i=$((i+1))

done

#Si no encontramos ningún divisor el número es primo

echo "El número $numero es primo."
