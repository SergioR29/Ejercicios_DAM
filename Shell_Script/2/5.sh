cut -f1,4,5 /etc/group | sort -k1 | while IFS=: read -r nombre resto ngrupo listausuarios

do

echo "Nombre grupo: $nombre"
echo "Nºgrupo: $ngrupo"
echo "Lista usuarios: $listausuarios"
echo ""

done
