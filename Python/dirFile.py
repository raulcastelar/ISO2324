#Raul Delgado Perera
#01 de marzo de 2024
#
#Dado un fichero, que contiene el nombre de ficheros y directoriso que ya deben exister.
#Introducirlos en 2 listas diferentes cada uno de ellos. Una para los ficheros y otra
#para los directorios. hay que leer linea a linea si lo leido es un fichero o un directorio.

import os
import shutil

fich=[]
direc=[]
v=0

file=open("rutas.txt", "r")
read=file.readlines()

for i in read:
    r=i.strip()
    if os.path.isfile(r):
        print("Es un fichero")
        fich.append(r)
    else :
        print("Es un directorio")
        direc.append(r)

print(fich)
print(direc)

os.system("echo ")

print("A - Pedir nombre de fichero y eliminarlo")
print("B - Pedir nombre de directorio y mostrar su información")
print("C - Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino")
print("D - Mostrar lista elegida por el usuario")
print("E - Salir")
p=input("Elige la opción: ")

match p:
    case "A" :
        f=input("Introduce el nombre de un fichero: ")
        if os.path.isfile(f):
            print(f)
        else:
            exit()

    case "B" :
        d=input("Entroduce el nombre de un directorio: ")
        r=os.listdir(d)
        print(r)

    case "C" :
        f=input("Pedir el nombre de un fichero: ")
        des=input("Pedir el nombre del destino: ")
        shutil.copy("f", "des")

    case "D" :
        lista_elegida=input("Elige una lista: ")
        if lista_elegida == "fich":
            print(fich)
        elif lista_elegida == "direc":
            print(direc)

    case "E" :
        print("Saliendo del script")
        exit()

