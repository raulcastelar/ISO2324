@echo off
REM Siel usuario pulsa 1, se creara en nuevo archivo txt, y pulsa 2 un nuevo archivo.bat
REM
REM autor: Raul Delgado Perera
REM fecha: 15-11-2023

echo "Si el usuario pulsa 1 se creara un nuevo archivo.txt"
echo "Si el usuario pulsa 2 se creara un .bat"


set /p num="Inserte el numero 1 para crear una archivo o un .bat: "


if %num%==1 goto txt
if %num%==2 goto bat


:txt
echo "Creando archivo"
type nul > C:\users\%username%\desktop\%1%.txt
pause
exit


:bat
echo "Creando archivo bat"
type nul > C:\users\%username%\desktop\%1%.bat
pause
exit

