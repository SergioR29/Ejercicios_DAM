if [ -d "/home/admin01" ]
then

echo "El directorio existe"
cd /home/admin01
tree
ls -l

else

echo "El directorio no existe"

fi
