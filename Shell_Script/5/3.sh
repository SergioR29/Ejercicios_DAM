#!/bin/bash

if [ "$#" -lt 1 ]; then

echo "No se han proporcionado los suficientes nombres de archivos para ejecutar el script"
exit 1

fi

for entrada in "$@"/*; do

    if [ -f "$entrada" ]; then
    
    echo "Mostrando el archivo: $entrada"
    less "$entrada" 

    fi

done
