@echo off

set in=%1
set to=%2
set url=%~5
set out=%3
set dirx=%4

if exist %out% (del %out%)

:in
for /l %%a in (%in%,1,%to%) do (
echo.Gen: %%a
if exist %dirx%\%%a.png (echo.este no) else (echo.%url%%%a.png>>%out%))

:end
exit