@echo off

set name=test
set front=0
set outfit=13814

set bodyacc1=0
set bodyacc2=0

set hairacc1=0
set hairacc2=0

set faceacc1=0
set faceacc2=0

set backacc1=0
set backacc2=0

set fondo=103

set hair1=1308
set hair2=0

set eye_base=749
set eye1=749
set eye2=749

set pup=0
set pup2=0

set pose=0815
set skin=1
set height=1

::app.nizikano-2d.jp          -jp
::us-nizi2d-r53.amz-aws.jp    -usa

set server=app.nizikano-2d.jp
set proxy_mode=false


::::::::::::::::::::::::::::::::::::::::::::::::::::

if "%proxy_mode%"=="true" (
set "params=--http-proxy="http://127.0.0.1:1080" --proxy-method="tunnel"" )
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

::linea de debug.
echo.%set_data% >>out_SETDATA.txt

:start
:texture_00
md model_%name%
md model_%name%\%name%_01.1024
copy muestra.png model_%name%\%name%_01.1024\texture_00.png

:front
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=1&key1=%front%&key2=1&flg1=&ckey=%front%_0&nochache_live2d=423" -o texture_01.png

:bodyacc1
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=2&key1=%bodyacc1%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_02.png

:bodyacc2
set set_data=0,%front%,%outfit%,%bodyacc2%,0,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=2&key1=%bodyacc2%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_03.png
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

:hairacc1
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=4&key1=%hairacc1%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_04.png

:hairacc2
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc2%,0,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=4&key1=%hairacc2%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_05.png
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

:fronthair
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=6&key1=1&key2=2&flg1=0" -o texture_06.png

:faceacc1
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=7&key1=1&key2=2&flg1=0" -o texture_07.png

:faceacc2
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc1%,%hairacc2%,%faceacc2%,0,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=7&key1=1&key2=2&flg1=0" -o texture_08.png
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

:face/ojos
::aria2c %params% "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=9&key1=777&key2=1&key3=781&flg1=&ckey=781_781_0_0&nochache_live2d=423" -o texture_09.png
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=9&key1=%eye_base%&key2=1&key3=%eye1%&flg1=&ckey=%eye1%_%eye2%_0_0&nochache_live2d=423" -o texture_09.png

:outfit
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=10&key1=2&key2=1&flg1=0" -o texture_10.png

:backhair
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=11&key1=%hair%&key2=2&flg1=0" -o texture_11.png

:hairacc1_alt
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=13&key1=%hairacc1%&key2=1&flg1=&ckey=0_0&nochache_live2d_423" -o texture_13.png

:hairacc2_alt
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=13&key1=%hairacc2%&key2=1&flg1=&ckey=0_0&nochache_live2d_423" -o texture_12.png

:bodystuff
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=14&key1=%outfit%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_14.png

:backacc1
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=15&key1=%backacc1%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_15.png

:backacc2
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc2%,0,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=15&key1=%backacc2%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_16.png
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

:bodyacc1
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=18&key1=%bodyacc1%&key2=1&flg1=&ckey=8356_0&nochache_live2d=416" -o texture_18.png

:bodyacc2
set set_data=0,%front%,%outfit%,%bodyacc2%,0,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=18&key1=%bodyacc2%&key2=1&flg1=&ckey=8356_0&nochache_live2d=416" -o texture_17.png
set set_data=0,%front%,%outfit%,%bodyacc1%,%bodyacc2%,%hairacc1%,%hairacc2%,%faceacc1%,%faceacc2%,%backacc1%,%backacc2%,%fondo%,%hair1%,%eye1%,%eye2%,%hair2%,0,0,0,0,0,%pup%,%pup2%,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

:fondo
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=19&key1=%fondo%&key2=1&flg1=&ckey=&nochache_live2d=423" -o texture_19.png

:moc
aria2c %params% --dir="model_%name%" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=1000&key1=%pose%&key2=%eye_base%&key3=%height%&flg1=0" -o downloaded.moc

:motions
::::utiliza el user_agent de la cuenta jp de dreamgen

aria2c %params% --dir="model_%name%" --user-agent="/AMBITION_UA/GooglePlay/Android-/NIZIKANO_2D_ver28:J1et78KqDShZR8ECcJSQi0UqjyH0bV7LFHMHNKvlIKiY0YrLalzZBOMrk1ibZxo3:CfJ3Dto8ixjBsRy6WjkHiJY6IW0XmaHp0VutFEQSbyk=" "http://%server%/img/php/live2d/app_get_resouce2.php?key5=%set_data%&type=3000&key1=%pose%&flg1=0&ckey=,0_0,,0_0,,0_0,,,0_0,730_730_0_0,,,,0_0,,,0_0,0_0,,,,," -o motions.json


:ordenar_descargas
::md model_%name%\%name%_01.1024
for /l %%a in (1,1,19) do (if %%a LSS 10 (move model_%name%\texture_0%%a.png model_%name%\%name%_01.1024\texture_0%%a.png) else (move model_%name%\texture_%%a.png model_%name%\%name%_01.1024\texture_%%a.png))

cd model_%name%
rename downloaded.moc %name%.moc
cd..

:dividir_motions
:::el motions splitter divide el archivo motions.json en archivos mtn utilizables por el live2d viewer.

md model_%name%\motions_%name%
call motions_splitter.bat model_%name%\motions.json 0 exp model_%name%\motions_%name%

echo. Descarga completada.
pause


