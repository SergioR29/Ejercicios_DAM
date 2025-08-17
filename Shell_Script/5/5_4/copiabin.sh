#!/bin/bash

#Directorio destino

destino="$HOME/bin"

#Crear el directorio destino si no existe

mkdir -p "$destino"

#Contador de archivos copiados

contador=0

#Bucle sobre todos los archivos ejecutables del directorio actual

for archivo in *
do

  if [ -f "$archivo" ] && [ -x "$archivo" ]
  then
  
    if file "$archivo" | grep -q "shell script"
    then
    
    echo "Copiando $archivo a destino"
    cp "$archivo" "$destino"
    contador=$((contador+1))
    
    fi
  
  fi
  
done

echo "Se han copiado $contador scripts de shell a $destino"
