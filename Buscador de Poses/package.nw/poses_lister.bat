@echo off
setlocal enabledelayedexpansion

set in=%1

:orientacion
copy "..\00_Config.txt" tmp.bat /y>nul
call tmp.bat
set ori=%PARAM_ORIENTACION%

echo.%in% %ori% >>debug_log.txt

set n=0
:start
for /f "tokens=*" %%a in ('dir /a /b /O:!ori! out_poses') do (
if "%in%"=="!n!" (echo.%%a & exit/b)
set/a n +=1 )


pause