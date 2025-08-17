precio_ida=20

echo "¿Desea un billete de vuelta?: "
read respuesta

if [ $respuesta = "si" ]
then

precio_total=$(echo "$precio_ida-($precio_ida*0.2)" | bc)

else

precio_total=$precio_ida

fi

echo "El importe final es de $precio_total€"
