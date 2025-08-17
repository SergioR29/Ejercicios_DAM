#!/bin/bash

echo "¿Por cuál campo quieres visualizar de la orden date?:"
read n
echo ""

if [ $n = a -o $n = A -o $n = b -o $n = B -o $n = c -o $n = d ]; then

echo "Ejecución del comando: date +%$n"
echo ""
date +%$n

else

echo "El campo no existe"

fi
