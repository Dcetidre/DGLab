@echo off

:in
set in=%1
set end=%2
set dir=%3
set file_out=%4

:bucle
for /l %%a in (%in%,1,%end%) do (
if exist %dir%\%%a.png (echo.%%a>>%file_out%))

:end
exit