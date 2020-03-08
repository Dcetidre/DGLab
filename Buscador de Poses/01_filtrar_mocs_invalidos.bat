@echo off
setlocal enabledelayedexpansion

set salida=package.nw\out_poses



:checking_if_valid
for /f "tokens=*" %%d in ('dir /a /b %salida%\*.moc') do (
if "%%d"=="muestra.moc" (echo. no) else (call:checker %%d))
goto end

:checker
set nmr=%1

fc %salida%\!nmr! %salida%\muestra.moc >nul
if "%errorlevel%"=="0" (del %salida%\!nmr!>nul) else (echo.Passed !nmr!)

:end

