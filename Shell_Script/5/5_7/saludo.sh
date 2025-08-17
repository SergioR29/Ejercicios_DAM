#!/bin/bash

#Obtener la hora actual

hora=$(date +%H)

#Obtener el nombre de pila del usuario

nombre=$(getent passwd $USER | cut -d: -f5 | cut -d, -f1)

#Determinar el saludo apropiado

if [ $hora -ge 05 -a $hora -lt 13 ]; then

saludo="Buenos días"

elif [ $hora -ge 13 -a $hora -lt 20 ]; then

saludo="Buenas tardes"

else

saludo="Buenas noches"

fi

#Mostrar el saludo

echo "$saludo, $nombre"
