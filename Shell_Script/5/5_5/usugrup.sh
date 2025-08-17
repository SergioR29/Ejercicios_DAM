#!/bin/bash

echo "Nombre de login de usuario: "
read nombre

if `grep -e "^$nombre:.*" /etc/passwd >/dev/null`
then

echo "El usuario existe en el sistema"
echo "Mostrando sus datos"
echo ""

echo "Nombre de usuario: $nombre"
echo "UID: $(id -u $nombre)"
echo "Grupo primario: $(id -gn $nombre)"
echo "El shell asignado a $nombre es $(getent passwd $nombre | cut -d: -f7)"
echo "home/$nombre"

else

echo "El usuario no existe en el sistema"

fi
