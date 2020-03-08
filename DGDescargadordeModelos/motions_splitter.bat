@echo off
setlocal enabledelayedexpansion

set file=%1
set line=%2
set output_file=%3
set out_folder=%4


:in
set n=1
set ind=0
::se leen las lineas del archivo
For /F "tokens=*" %%a in ('type %file%') Do (

rem se divide las lineas en base a la palabra clave "fps=30"
if !n! GTR %line% (
if "%%a"=="fps=30" (set/a ind +=1 & set output_file=exp_!ind!.mtn)
if "%%a"=="$fps=30" (set/a ind +=1 & set output_file=exp_!ind!.mtn)

rem se escriben los datos dentro del rango en el archivo del indice correspondiente
echo.%out_folder%\!output_file! -- %file%
echo.%%a>>%out_folder%\!output_file! )

set/a n +=1 )
goto end


:end
::se elimina el archivo exp para que no buguee el live2d viewer
del %out_folder%\exp