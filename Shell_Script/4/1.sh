#!/bin/bash

echo "¿Cuántos valores quieres introducir?: "
read valores

#Inicializamos la suma a 0 para poder usar la variable, así la creamos:

suma=0

#Bucle para pedir los valores y sumarlos

for ((c=1; c <= $valores; c++))
do

echo "Introduce el valor $c: "
read valor
let suma=suma+valor

done

echo "El resultado de la suma es $suma"
