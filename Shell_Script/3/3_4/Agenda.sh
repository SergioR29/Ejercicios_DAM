#!/bin/bash

LISTA="/home/admin01/Escritorio/Shell_Script/3/3_4/LISTA"

function menu {
	echo "1. Añadir"
	echo "2. Buscar"
	echo "3. Listar"
	echo "4. Ordenar"
	echo "5. Borrar"
	echo "6. Salir"
	echo -n "Por favor, selecciona una opción: "
}

function añadir {
	echo -n "Nombre: "
	read nombre
	echo -n "Dirección: "
	read direccion
	echo -n "Teléfono: "
	read telefono
	echo "$nombre, $direccion, $telefono" >> $LISTA
}

function buscar {
	echo -n "Introduce el término de búsqueda: "
	read busqueda
	grep -i $busqueda $LISTA
}

function listar {
	cat $LISTA
}

function ordenar {
	sort $LISTA -o $LISTA
}

function borrar {
	echo -n "Introduce el nombre del registro a buscar: "
	read nombre
	sed -i "/^$nombre,/d" $LISTA
}

while true; do
	menu
	read opcion
	case $opcion in
		1) añadir ;;
		2) buscar ;;
		3) listar ;;
		4) ordenar ;;
		5) borrar ;;
		6) break ;;
		*) echo "Opción no válida" ;;
	esac
done
