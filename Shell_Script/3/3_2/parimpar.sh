#!/bin/bash

echo "Introduzca un número: "
read numero

if (($numero % 2 == 0))
then

echo "El número solicitado es par"

else

echo "El número solicitado es impar"

fi
