#!/bin/bash

echo "0) Terminar"
echo "1) Listar"
echo "2) ¿Quién está conectado?"
echo "3) Fecha actual"
echo "4) Espacio en disco"
echo "5) Calendario"
echo ""
echo "Elija opción: "
read opcion

case $opcion in

0) exit 0 ;;
1) ls ;;

2) who
   echo "Eres el usuario `whoami`" ;;
3) date ;;
4) df ;;
5) cal ;;
*) echo "Error" ;;

esac
