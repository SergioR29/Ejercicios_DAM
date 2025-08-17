#!/bin/bash

#Definimos la variable n para las tablas de multiplicar del 1 al 10

n=0

#Primer bucle until, aquí lo definimos para que se ejecute hasta que n no sea mayor de 10

until [ $n -gt 10 ]
do

clear

#Definimos la variable m para los multiplicadores del 1 al 10

m=0

#Bucle until anidado

    until [ $m -gt 10 ]
    do

    #Calculamos el producto y lo mostramos
    
    echo "$n x $m = $((n*m))"
    m=$((m+1))

    done

sleep 3

n=$((n+1))

done
