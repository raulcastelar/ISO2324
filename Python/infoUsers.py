#Raul Delgado Perera
#26 de febrero de 2024
#
#
#import cpuinfo
import os

print("Muestra información del sistema operativo ( 1 )")
print("Pedir un usuario. Si existe, sino crealo ( 2 )")
print("Pedir directorio. Comprobar si existe, si no crealo ( 3 )")
print("Salir ( 4 )")
menu=int(input("Elige la opción: "))

match menu:
    case 1:
            os.system("clear")
            for i in os.uname():
                print(i)
            print("Numeros de cpu", os.cpu_count())

    case 2:
            os.system("clear")
            u=input("Escribe el nombre de un usuario: ")
            enc=0
            f=open("/etc/passwd","r")
            l=f.readlines()
            for i in l:
                if u in i:
                    enc=1
            if enc==1:
                print("El usuario ya existe")
            else:
                print("Creando usuario")
                os.system("useradd -m " + u)

    case 3:
            print("Hola")
            d=input("Introduce el nombre de un directorio: ")
            if os.path.exists(d):
                print("El directorio existe")
            else:
                print("El directorio no existe")
                print("Creando directorio")
                os.makedirs(d)

    case 4:
            exit()


