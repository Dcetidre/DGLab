@echo off
setlocal enabledelayedexpansion

:::::::::::PARAMETROS:::::::::::::::
::INFO:
::PARAM_START: posicion desde el cual se inicia la busqueda
::PARAM_ORIENTACION: direccion desde donde empieza la busqueda
::(N: primer item, -N: ultimo item)
::

SET PARAM_START=1
SET PARAM_ORIENTACION=-N

::::::::::::::::::::::::::::::::::::

:load_conf_file
copy "..\00_Config.txt" tmp.bat /y>nul
call tmp.bat

:in
set context=%1

:send
if "%context%"=="start" (echo.%PARAM_START%& exit/b)
if "%context%"=="orientacion" (echo.%PARAM_ORIENTACION%& exit/b)

:end
