@echo off
setlocal enabledelayedexpansion
set n=10000
set max=17000

:generate_links
if exist links.txt (del links.txt)

:regen
echo.!n! -- !max!
(
echo.http://us-nizi2d-app.amz-aws.jp/fitting.php?avatar_id=%n%
echo.  dir=out_new
echo.  out=%n%.xml)>>links.txt

set/a n +=1
if !n!==!max! (goto end)
goto regen

:end

::http proxy inj: --http-proxy="http://127.0.0.1:1080" --proxy-method="tunnel"

aria2c --user-agent="/AMBITION_UA/GooglePlay/Android-/NIZIKANO_2D_GLB_ver31:57JWS2JVOyVPZUBxiRUwNQTP9jBSiVLFMKqwv1nWLNsvUAzKfOmUeopfrkuV7+ON:KO8qcAZNDbT7KXu/yY7rf5Y6IW0XmaHp0VutFEQSbyk=" -i links.txt
pause