cut -d: -f1,6,7 /etc/passwd | sort | while IFS=: read -r usuario directorio interprete

do

echo "Usuario: $usuario"
echo "Directorio: $directorio"
echo "Intérprete: $interprete"
echo ""

done
