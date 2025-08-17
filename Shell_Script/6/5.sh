#!/bin/bash

if [ "$#" -ne 1 ]; then

echo "No se han introducido argumentos"
exit 1

fi

#Divide la variable PATH en directorios

IFS=':' read -ra DIRS <<< "$PATH"

#Busca el comando en los directorios

for dir in "${DIRS[@]}"; do

if [ -x "$dir/$1" ]; then

echo "El comando $1 se encuentra en el directorio $dir:"
ls -l "$dir/$1"
exit 0

fi
done

echo "El comando $1 no se encontró en ninguno de los directorios del PATH"
