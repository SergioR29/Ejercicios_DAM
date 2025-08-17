#!/bin/bash

if [ "$#" -ne 1 ]; then

echo "No se han introducido argumentos"
exit 1

fi

if [ ! -d "$1" ]; then

echo "No es un directorio"
exit 1

fi

mkdir -p "$1/backup"

for file in "$1"/*; do

if [ -f $file ]; then

cp "$file" "$1/backup/$(basename "$file").bak"

fi

done

echo "Ficheros respaldados satisfactoriamente"
