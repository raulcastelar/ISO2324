@echo off
REM Crear un archivo bat que nos pidan: 
REM 1.-Crea fichero con nombre pedido al usuario
REM 2.-Mostrar el arbon de directorios de la carpeta usuario
REM 3.-Mostrar archivos con la extensión txt
REM 4.-Crea los directorios alfredoff, marinapg, ramonan
REM 5.-Copia el contenido de tu carpeta de usuario al escritorio. 
REM autor: Raul Delgado Perera
REM fecha: 15-11-2023
REM 


echo "Selecciona una función: "
echo "1.-Crea fichero con nombre pedido al usuario"
echo "2.-Mostrar el arbon de directorios de la carpeta usuario"
echo "3.-Mostrar archivos con la extensión txt"
echo "4.-Crea los directorios alfredoff, marinapg, ramonan"
echo "5.-Copia el contenido de tu carpeta de usuario al escritorio."

set /p select=

if %select% EQU 1 goto opcion1
if %select% EQU 2 goto opcion2
if %select% EQU 3 goto opcion3
if %select% EQU 4 goto opcion4
if %select% EQU 5 goto opcion5

:opcion1
 set /p nombre="Inserte un nombre para el fichero: "
 echo "Creando el fichero.."
 type nul > C:\users\%username%\desktop\%nombre.txt
 pause
 exit
 
 
:opcion2
 echo "Mostrando arbol de directorios"
 tree C:\users\%username%
 pause
 exit


:opcion3
 echo "Mostrando archivos con la extensión *.txt"
 dir C:\users\Alumno\*.txt
 pause
 exit
 
 
:opcion4
 echo "Creando los directorios"
 mkdir alfredoff
 mkdir marinapg
 mkdir ramonan
 pause
 exit
 
:opcion5
 echo "Copiando contenido de la carpeta usuario al escritorio"
 xcopy /S . C:\users\Alumno\desktop\contenido_copiado
 pause
 exit
