#!/bin/bash
#
#Realizado por Raul Delgado Perera
#Martes 23 de enero de 2024
#Crea una calculadora

if [ $# != 2 ]; then 
	echo "No has escrito el numero de parametro correcto"
	exit
fi

if [ -e $1 ]; then
	echo "El fichero existe, nombre $1"
	rm -r $1
	exit
fi


for ((i=0; i<$2; i++)); do	
			echo -e
			echo "Realizar una suma: S"
			echo "Realiza una recta: R"
			echo "Realiza una multiplicación: M"
			echo "Realiza una división: D"
			echo "Salir: X"
			echo -e
			read -p "Operación: Num1 * Num2: " op op1 op2
			echo $op $op1 $op2 >> $1
			case $op in

				S)
					s=$(( $op1+$op2 ))
				 	echo "El resultado de la operación es $s"
				 	
				;;
				
				R)
					r=$(( $op1-$op2  ))
					echo "El resultado de la operación es $r"
					
				;;
				
				M)
					m=$(( $op1*$op2  ))
					echo "El resultado de la operación es $m"
				
				;;
				
				D)
					d=$(( $op1/$op2  ))
					echo "El resultado de la operación es $d"
				
				;;
				
				X)
					exit
				
				;;
			esac
done

echo -e
cat $1






