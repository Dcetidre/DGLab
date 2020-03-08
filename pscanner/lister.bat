@echo off

:in
set in=1
set end=17000
set dir=wg_allitems
set file_out=allindex.txt

:bucle
for /l %%a in (%in%,1,%end%) do (
if exist %dir%\%%a.png (echo.%%a>>%file_out%))

:end
exit