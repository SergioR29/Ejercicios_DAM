#!/bin/bash

echo "Elige entre tres opciones (a, b o c): "
read opc
case $opc in

a) echo "Primera" ;;
b) echo "Segunda" ;;
c) echo "Tercera" ;;
A) echo "Primera" ;;
B) echo "Segunda" ;;
C) echo "Tercera" ;;
*) echo "Elección incorrecta" ;;

esac
