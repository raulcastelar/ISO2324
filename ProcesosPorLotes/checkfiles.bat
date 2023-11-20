@echo off
REM Pedir al usuario el nombre de un archivo y comprobar si existe.
REM Si existe el fichero, mostraras un aviso de que ya existe y volver a preguntasr por el archivo, si nos existe crearlo.
REM
REM autor: Raul Delgado Perera
REM fecha: 14-11-2023

echo "Busca un archivo: "

:inicio
set /p archivo="Archivo: "

if exist %archivo% (
        echo "El archivo existe"
		goto inicio
    ) else (
        echo "El archibo no existe"
        echo.
        if %archivo% == *.txt goto txt
        if %archivo% == *.bat goto bat
    )
:txt
 echo "Creando archivo txt"
 type nul > %userprofile%\desktop\script\%archivo%.txt
 echo.
 echo "Creando archivo"

:bat
 echo "Creando archivo txt"
 type nul > %userprofile%\desktop\%archivo%.bat
 echo.
 echo "Creando archivo"
 