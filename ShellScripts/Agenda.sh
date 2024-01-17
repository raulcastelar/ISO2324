#!/bin/bash
#
#Realizado por Raul Delgado Perera
#Miercoles 17 de enero de 2024
#Crear una agenda de contactos

clear

while true ; do
	echo "a - Añadir una entrada nueva"
	echo "b - Burcar el dni"
	echo "c - Ver la agenda completa"
	echo "d - Eliminar todas las entradas de la agenda"
	echo "e - Finalizar"
	echo -e
	read -p "Introduzca la opcion que quieras realizar: " opcion
	echo -e
	case $opcion in
		a)
			echo -e
			read -p "DNI de la persona: " dni
			echo -e
				if grep $dni agenda.txt >> /dev/null ; then
					echo "Ya pertenece al sistema"
					echo -e
				else
					read -p "Nombre de la persona: " nombre
					read -p "Apellido de la persona: " apellido
					read -p "Ciudad de nacimiento: " ciudad
					echo -e
					echo "$dni:$nombre:$apellido:$ciudad" >> agenda.txt
					echo "Añadiendo a $persona a la agenda"
					echo -e
				fi

		;;

		b)
			read -p "Introduce el DNI que quieres buscar: " dni
			echo -e
			if grep $dni agenda.txt >> /dev/null ; then
				echo "El DNI que buscar esta en el sistema"
				echo "Mostando la persona que coincide con el dni" 
				nombre=$(grep $dni agenda.txt | cut -d ":" -f 2)
				ciudad=$(grep $dni agenda.txt | cut -d ":" -f 4)
				echo "La persona con DNI $dni es: $nombre, y vive en $ciudad"
				echo -e
			else
				echo "No se ha encontrado ningun DNI"
				echo -e
			fi
		;;

		c)
			if test -s agenda.txt >> /dev/null ; then 
				echo "Esta es la agente"
				cat agenda.txt
				echo -e
			else
				echo "Agenda vacía"
				echo -e
			fi

		;;

		d)
			echo "Borrando el archivo"
			echo -e
			cp /dev/null agenda.txt
			cat agenda.txt

		;;

		e)
			echo "Finalizando el script"
			exit
		;;
	esac
done
