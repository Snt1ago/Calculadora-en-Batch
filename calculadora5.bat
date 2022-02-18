@echo off
color b
title BIENVENIDOS A LA CALCULADORA DE SANTIAGO ICASURIAGA Y LEANDRO ALVES
:inicio
echo  ------------------------------------------------
echo    fecha: %DATE%     hora: %TIME%
echo  ------------------------------------------------
echo     --------------------------------------------
echo +-/*         MENU DE LA CALCULADORA             +-/*
echo     --------------------------------------------
echo.
echo [opcion 1] - sumar
echo [opcion 2] - restar
echo [opcion 3] - dividir
echo [opcion 4] - multiplicar
echo [opcion 5] - ayuda
echo [opcion 6] - salir
echo.
:opcion
set /p op= ¿que operacion de las opciones desea realizar, (sumar restar, dividir, multiplicar, ayuda o salir)?
if %op% == sumar (goto sumar) && %op% != sumar (goto incorrecto)
if %op% == restar (goto restar) && %op% != restar (goto incorrecto)
if %op% == dividir (goto dividir) && %op% != dividir (goto incorrecto)
if %op% == multiplicar (goto multiplicar) && %op% != multiplicar (goto incorrecto)
if %op% == ayuda (goto ayuda) && %op% != ayuda (goto incorrecto)
if %op% == salir (goto salir) && %op% != salir (goto incorrecto)

:incorrecto
echo se ingreso incorrectamente, pulsa una tecla para volver a intentarlo
pause
goto opcion


:sumar
set /p num1= ingrese primer numero:
set "var1="&for /f "delims=0123456789" %%i in ("%num1%") do set var1=%%i
if defined var1 (echo el valor "%num1%" que ingreso no es un numero) else (set num1=%num1%)
set /p num2= ingrese segundo numero:
set "var2="&for /f "delims=0123456789" %%i in ("%num2%") do set var2=%%i
if defined var2 (goto incorrectoS) else (set num2=%num2%)
set /a suma= %num1% + %num2%
echo el resultado de la suma es: %suma%
set /p otra= ¿desea realizar otra operacion?
if %otra% == si (goto inicio)
if %otra% == no (goto final)

:incorrectoS
echo el valor "%num2%" que ingreso no es un numero, presione una tecla para volver a intentarlo
pause>nul
goto sumar

:restar
set /p num1= ingrese primer numero:
set "var1="&for /f "delims=0123456789" %%i in ("%num1%") do set var1=%%i
if defined var1 (echo el valor "%num1%" que ingreso no es un numero) else (set num1=%num1%)
set /p num2= ingrese segundo numero:
set "var2="&for /f "delims=0123456789" %%i in ("%num2%") do set var2=%%i
if defined var2 (goto incorrectoS) else (set num2=%num2%)
set /a resta= %num1% - %num2% 
echo el resultado de la resta es: %resta%
set /p otra= ¿desea realizar otra operacion?
if %otra% == si (goto inicio)
if %otra% == no (goto final)
pause

:incorrectoS
echo el valor "%num2%" que ingreso no es un numero, presione una tecla para volver a intentarlo
pause>nul
goto restar

:dividir 
set /p num1= ingrese primer numero:
set "var1="&for /f "delims=0123456789" %%i in ("%num1%") do set var1=%%i
if defined var1 (echo el valor "%num1%" que ingreso no es un numero) else (set num1=%num1%)
set /p num2= ingrese segundo numero:
set "var2="&for /f "delims=0123456789" %%i in ("%num2%") do set var2=%%i
if defined var2 (goto incorrectoS) else (set num2=%num2%)
set /a division= %num1% / %num2%
echo el resultado de la division es: %division%
set /p otra= ¿desea realizar otra operacion?
if %otra% == si (goto inicio)
if %otra% == no (goto final)
pause

:incorrectoS
echo el valor "%num2%" que ingreso no es un numero, presione una tecla para volver a intentarlo
pause>nul
goto dividir

:multiplicar
set /p num1= ingrese primer numero:
set "var1="&for /f "delims=0123456789" %%i in ("%num1%") do set var1=%%i
if defined var1 (echo el valor "%num1%" que ingreso no es un numero) else (set num1=%num1%)
set /p num2= ingrese segundo numero:
set "var2="&for /f "delims=0123456789" %%i in ("%num2%") do set var2=%%i
if defined var2 (goto incorrectoS) else (set num2=%num2%)
set /a multiplicacion= %num1% * %num2%
echo el resultado de la multiplicacion es: %multiplicacion%
set /p otra= ¿desea realizar otra operacion?
if %otra% == si (goto inicio)
if %otra% == no (goto final)
pause

:incorrectoS
echo el valor "%num2%" que ingreso no es un numero, presione una tecla para volver a intentarlo
pause>nul
goto multiplicar


:ayuda
echo Esta opcion seria una ayuda para que entiendas mas o menos el funcionamiento de la calculadora.
echo esta es una calculadora donde podras hacer diferentes operaciones matematicas como sumar, restar y entre otras 
echo operaciones aparte de las opciones de ayuda y salir, en la primer parte de la calculadora nos encontraremos 
echo con la fecha y hora del dia y debajo el menu de opciones.
pause


:salir
echo presione una tecla para salir
pause>nul
exit


:final 
exit

