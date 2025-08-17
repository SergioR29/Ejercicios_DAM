read -p "Solicite un nombre: " nombre

if grep -q "$nombre" LISTA;
then

echo "El nombre está en el fichero LISTA"

else

echo "El nombre no está en el fichero LISTA"

fi
