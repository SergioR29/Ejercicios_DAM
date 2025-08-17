# Comprueba si el fichero existe

if [ -e "/home/admin01/s" ]
then

echo "El fichero existe"

else

echo "El fichero no existe"

fi

# Comprueba si el fichero es común

if [ -f "/home/admin01/s" ]
then

echo "El fichero es común"

else

echo "El fichero no es común"

fi

# Cambia los permisos para hacerlo ejecutable al dueño y al grupo

chmod ug+x "/home/admin01/s"
echo "
Permisos cambiados, ahora el dueño y el grupo lo pueden ejecutar"

# Muestra en modo final

echo "Modo final: 
"
ls -l
