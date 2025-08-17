#!/bin/bash

#Comprueba si se ha introducido un argumento

if [ "$#" -ne 1 ]; then

echo "Uso: $0 directorio"
exit 1

fi

#Comprueba si el argumento es un directorio

if [ ! -d "$1" ]; then

echo "$1 no es un directorio válido"
exit 1

fi

#Para cada entrada en el directorio

for entrada in "$1"/*; do

    #Si la entrada es un archivo
    
    if [ -f "$entrada" ]; then
    
    echo "Archivo: $entrada"
    echo "Número de líneas:"
    wc -l "$entrada"
    echo "Contenido"
    cat "$entrada"
    
    #Si la entrada es un directorio
    
    elif [ -d "$entrada" ]; then
    
    echo "Directorio: $entrada"
    echo "Número de entradas:"
    find "$entrada" -maxdepth 1 -printf "%P\n" | wc -l
    
    fi
    
done
