@echo off
REM Dado los parametros, realiza la media de 3 numeros
REM
REM autor: Raul Delgado Perera
REM fecha: 14-11-2023

set num1=%1
set num2=%2
set num3=%3

set /a suma=%num1%+%num2%+%num3%
set /a media=(%suma%)/3
echo.
echo la media es: %media%