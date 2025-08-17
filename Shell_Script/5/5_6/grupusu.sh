#!/bin/bash

echo "Nombre de grupo: "
read group

if `grep -e "^$group:.*" /etc/group >/dev/null`
then

echo "El nombre de grupo solicitado existe"
echo "Mostrando sus datos:"

echo "Nombre de grupo: $group"
echo "GID: $(id -g $group)"
echo "Lista de usuarios que pertenecen al grupo solicitado: "
echo "Grupo primario: $(getent passwd $group | cut -d: -f4)"
echo "Grupo secundario: $(getent group $group | cut -d: -f3)"

else

echo "El nombre de grupo solicitado no existe"

fi
