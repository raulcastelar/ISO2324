#!/bin/bash
#
#Realizado por Raul Delgado Perera
#Lunes dia 29 de enero de 2024
#FiveOrMore

clear

echo "Autor: Raul Delgado Perera"

fich=$(ls $2 2> /dev/null)
ficheros=$(ls $2/*.txt)


if [ $# != 2 ]; then
	echo "Número de parametros introducido incorrecto"
	exit
fi

if [ -f $1.txt ]; then 
	rm -r $1.txt
	exit
fi

if [ -d $2 ]; then
	echo "El directorio existe"
fi

if [ -z $fich ] 2> /dev/null ; then
	echo "El directorio esta vacio"
	exit
fi

if [ -f $1.txt.q ]; then 
	rm -r $1.txt.q
fi

#read -p "Introduce el nombre del auto" nombre
#read -p "Introduce los apellidos del autor" apellido


for i in $ficheros ; do
	lineas=$(cat $i | wc -l)
	if [ $lineas -ge 5 ]; then
		echo $i
		echo $i >> $1.txt
	fi
	
	if [ $lineas -ge 5 ]; then
		palabra=$( cat $i | wc -w)
		echo "El fichero original tiene $palabra palabras" > $1.txt.q
		cat $i >> $1.txt.q
	fi
done



