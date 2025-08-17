#!/bin/bash

echo "Introduce el primer número: "
read num1
echo "Introduce el segundo número: "
read num2

if (($num1 % num2 == 0))
then

echo "Son divisibles"

else

echo "No son divisibles"

fi
