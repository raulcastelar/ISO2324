@echo off
REM Crea un script que se encargue de crear directorios.
REM
REM Autor: Raúl Delgado Perera
REM Fecha: 13-11-2023
cd %userprofile%
mkdir asir,dam,smr,daw,ceti
REM Mas opciones
REM mkdir %userprofile%\asir %userprofile%\dam %userprofile%\smr %userprofile%\daw %userprofile%\ceti
cd asir
mkdir docs,pract,exam
cd ../dam
mkdir docs,pract,exam
cd ../smr
mkdir docs,pract,exam
cd ../daw
mkdir docs,pract,exam
cd ../ceti
mkdir docs,pract,exam