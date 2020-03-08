@echo off
setlocal enabledelayedexpansion

::config
set in=100
set end=999
set pre=0

::salida
set salida=package.nw\out_poses
set proxy_mode=false

::servidor 
::app.nizikano-2d.jp          -- jp
::us-nizi2d-r53.amz-aws.jp    -- usa

set server=app.nizikano-2d.jp




:in
:const
if "%proxy_mode%"=="true" (
set "params=--http-proxy="http://127.0.0.1:1080" --proxy-method="tunnel"" )

:making_download_list
if exist links.txt (del links.txt)
::if not exist %salida% (md %salida%)

for /l %%a in (%in%,1,%end%) do (

if exist %salida%\%pre%%%a.moc (echo. %pre%%%a Existente) else (
echo.http://%server%/img/php/live2d/app_get_resouce2.php?key5=0,12050,14063,10511,0,12084,0,3765,0,12057,0,12058,9859,781,781,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0^&type=1000^&key1=%pre%%%a^&key2=749^&key3=1^&flg1=0 >>links.txt
echo.  dir=%salida%>>links.txt
echo.  out=%pre%%%a.moc>>links.txt ))

:calling_aria_for_download
aria2c %params% -i links.txt

echo. Completado.
echo. filtra los mocs invalidos.
pause

:end