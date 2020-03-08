@echo off

:params
::servidores
set server=app.nizikano-2d.jp
set proxy_mode=false

set id_base_ojos=749
set id_ojos=749
::parametros de piel y altura. 1 - regular 2 - pale 3 - tanned
set id_skin=1


:const
if "%proxy_mode%"=="true" (
set "params=--http-proxy="http://127.0.0.1:1080" --proxy-method="tunnel"" )

:cli
echo.-----------------
echo.Descargar Textura
echo.-----------------
echo.Escribe el id del outfit MR:


:check
set/p outfit=Id:
if not defined outfit (echo. NO VALIDO& goto check)


:in_download
echo. Descargando...
set set_data=0,12050,%outfit%,10511,0,12084,0,3765,0,12057,0,12058,9859,781,781,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
:outfit
aria2c %params% "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=10&key1=%id_skin%&key2=%outfit%&flg1=0" -o texture_10.png
:bodystuff
aria2c %params% "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=14&key1=%outfit%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_14.png

:in_copy
cls
echo. copiando dentro del proyecto...
copy texture_10.png "package.nw\assets\live2d\a\a_01.1024\texture_10.png"
copy texture_14.png "package.nw\assets\live2d\a\a_01.1024\texture_14.png"
echo. borrando datos temporales...
del texture_10.png
del texture_14.png

:end
echo. completado.
pause