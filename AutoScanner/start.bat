@echo off
setlocal enabledelayedexpansion

:config
::rango bajo: 12000 - 16000
::rango alto: 15000 - 19000

set multi_in=13000
set multi_end=17000
set jump_to=back_acc
::usa - server usa
::jp - server jp
set svr=usa
set proxy_mode=false

:in
echo.
echo.---------------------------------------------
echo. MULTISCANNER v1.0 -- Waifugen
echo.---------------------------------------------
echo.
echo. server: %svr% - scan desde: %multi_in% - hasta: %multi_end%
echo.

:multiscanner
if "%svr%"=="usa" (
set "server=us-nizi2d-r53.amz-aws.jp"
set "nam=" )

if "%svr%"=="jp" (
set "server=app.nizikano-2d.jp"
set "nam=_jp" )

goto %jump_to%

:back_acc
echo.back_acc
call:mscanner %multi_in% %multi_end% url_back_acc dir_back_acc "http://%server%/img/avatar_thum/back_acc/" salida_txts\back_acc!nam!.txt

:background
echo.background
call:mscanner %multi_in% %multi_end% url_bkg dir_bkg "http://%server%/img/avatar_thum/bg/" salida_txts\bkg!nam!.txt

:body_acc
echo.body_acc
call:mscanner %multi_in% %multi_end% url_body_acc dir_body_acc "http://%server%/img/avatar_thum/body_acc/" salida_txts\body_acc!nam!.txt

:face_acc
echo.face_acc
call:mscanner %multi_in% %multi_end% url_face_acc dir_face_acc "http://%server%/img/avatar_thum/face_acc/" salida_txts\face_acc!nam!.txt

:front
echo.front
call:mscanner %multi_in% %multi_end% url_front dir_front "http://%server%/img/avatar_thum/front/" salida_txts\front!nam!.txt

:hair
echo.hair
call:mscanner %multi_in% %multi_end% url_hair dir_hair "http://%server%/img/avatar_thum/hair/" salida_txts\hairs!nam!.txt

:hair_acc
echo.hair_acc
call:mscanner %multi_in% %multi_end% url_hair_acc dir_hair_acc "http://%server%/img/avatar_thum/hair_acc/" salida_txts\hats!nam!.txt

:outfit
echo.outfit
call:mscanner %multi_in% %multi_end% url_outfit dir_outfit "http://%server%/img/avatar_thum/body1/" salida_txts\list!nam!.txt


echo.
echo.------------------------------------------------
echo. Escaneo Completado.
echo.------------------------------------------------
echo.
pause

goto end

:mscanner
set start=%1
set end=%2
set url_file=%3
set dir_out=%4
set url=%5
set file_out=%6

:split
set/a pax=!end!-!start!
set/a pal=!pax!/3
set/a pa1=!start!+!pal!
set/a pa2=!pa1! + !pal!
set/a pa3=!pa2! + !pal!

echo.gen 1: !start! - !pa1!
start /w url_generator.bat !start! !pa1! !url_file!_a !svr!\!dir_out! !url!

echo.gen 2: !pa1! - !pa2!
start /w url_generator.bat !pa1! !pa2! !url_file!_b !svr!\!dir_out! !url!

echo.gen 3: !pa2! - !pa3!
start /w url_generator.bat !pa2! !pa3! !url_file!_c !svr!\!dir_out! !url!

:scan
start scanner.bat !url_file!_a !svr!\!dir_out! !proxy_mode!
start scanner.bat !url_file!_b !svr!\!dir_out! !proxy_mode!
start /w scanner.bat !url_file!_c !svr!\!dir_out! !proxy_mode!

:list
::start /w url_generator.bat !start! !end! !url_file! !svr!\!dir_out! !url!
::start /w scanner.bat !url_file! !svr!\!dir_out! !proxy_mode!
start /w lister.bat 1 15000 !svr!\!dir_out! !file_out!

:end
