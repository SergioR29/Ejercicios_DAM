#!/bin/bash

echo "Introduce nombre de directorio"
read directorio

while true
do

echo "¿Qué quieres hacer con tu archivo?:"
echo ""

echo "Copiar"
echo "Borrar"
echo "Visualizar"
echo "Renombrar"
echo "Mover"
echo "Enlazar"
echo "Cambiar atributos"
echo "Salir del programa"

echo ""
echo "Elige opción en orden numérico decendente: "
read opcion

case $opcion in

1) echo "¿A dónde quieres copiar el archivo?"
echo "Introduce el directorio de destino: "
read directorio_destino

cp $directorio $directorio_destino
echo "Archivo satisfactoriamente copiado"
;;

2)

if [ -d "$directorio" ]; then

rmdir $directorio
echo "Directorio eliminado"

elif [ -f "$directorio" ]; then

rm $directorio
echo "Archivo eliminado"

fi

;;

3) 

if [ -f "$directorio" ]; then

cat $directorio

elif [ -d "$directorio" ]; then

ls $directorio

fi

;;

4) echo "¿Con qué nuevo nombre quieres renombrar el archivo?"
read nuevo_nombre

nombre_nuevo=$directorio/$nuevo_nombre

mv $directorio $nombre_nuevo
echo "Archivo renombrado a $nombre_nuevo"
;;

5) echo "¿A dónde quieres mover el archivo?"
echo "Introduce el nuevo destino: "
read nuevo_destino

mv $directorio $nuevo_destino
echo "Archivo movido a $nuevo_destino"
;;

6) echo "¿A dónde quieres enlazar el archivo?"
echo "Introduce la ruta del enlace: "
read enlace

ln -s $directorio $enlace
echo "Archivo enlazado a $enlace"
;;

7) echo "¿Qué atributos del archivo quieres cambiar? (lectura, escritura, ejecución)"
read atributo

case $atributo in

lectura) chmod +l $directorio
echo "Permiso de lectura cambiado satisfactoriamente"
;;

escritura) chmod +w $directorio
echo "Permiso de escritura cambiado satisfactoriamente"
;;

ejecución) chmod +x $directorio
echo "Permiso de ejecución cambiado satisfactoriamente"
;;

*)
echo "Introduce el atributo de nuevo"
read atributo
;;

esac

;;

8) exit 1 ;;
*) echo "Opción errónea, elige una opción de nuevo"
read opcion

esac

done
