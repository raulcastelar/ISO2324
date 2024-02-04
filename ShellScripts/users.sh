#!/bin/bash
#
#Realizado por: Raúl Delgado Perera
#Fecha: 2 de febrero de 2024
#
#Realiza el script entregable de users

clear

if [ ! $# -ge 1000 ]; then
	echo -e
fi

if [ $# = "" ]; then
	$# = 1000
fi  

if [ -f informe.txt ]; then
	rm informe.txt
fi

dia=$( date +%D )
hora=$( date +%H:%M )

echo "============================================================" >> informe.txt
echo -e
echo "Informe de usuarios el dia $dia a las $hora" >> informe.txt
echo -e

IFS=":"

while read user x uid gid g home shell
do
	if [ $uid -ge 1000 ]; then
		echo $user - $uid >> informe.txt
		echo -e
	fi 
	
done < /etc/passwd


total=$( cat informe.txt | grep "-" | wc -l )
echo "Total: $total usuarios" >> informe.txt
echo -e
echo "============================================================" >> informe.txt
echo -e


echo "$dia -- $hora -- El usuario $USER ha solicitado un informe de usuarios" > /tmp/logeventos.txt





