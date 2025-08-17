#!/bin/bash

read -p "1 – Visualizar con número de líneas
	 2 – Visualizar n últimas líneas
	 3 – Visualizar n primeras líneas
	 4 – Editar con nano
	 5 – Mostrar paginado				
	 Introduce la opción que quieras: " Num


if [ $Num = 1 ]
then

wc -l /home/admin01/s

fi

if [ $Num = 2 ]
then

read -p "Introduce el número de líneas a visualizar desde el final: " n
tail -n "$n" /home/admin01/s

fi

if [ $Num = 3 ]
then

read -p "Introduce el número de líneas a visualizar desde el principio: " n
head -n "$n" /home/admin01/s

fi

if [ $Num = 4 ]
then

nano /home/admin01/s

fi

if [ $Num = 5 ]
then

less /home/admin01/s

fi
