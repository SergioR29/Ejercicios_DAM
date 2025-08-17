# Comprueba si se proporcionó un argumento

if [ "#" -ne 1 ]
then

echo "Por favor, proporciona un nombre de archivo como argumento."
exit 1

fi

archivo=$1

# Comprueba si el archivo es legible

if [ -r "$archivo" ]
then

echo "El archivo $archivo es legible"

else

echo "El archivo $archivo no es legible"

fi

# Comprueba si el archivo es ejecutable

if [ -x "$archivo" ]
then

echo "El archivo $archivo es ejecutable"

else

echo "El archivo $archivo no es ejecutable"

fi
