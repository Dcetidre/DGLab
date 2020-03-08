@echo off

for /f "tokens=*" %%a in ('type mrs.txt') do (copy wg_allitems\%%a.png mr_list\%%a.png /y>nul )

echo.Imagenes de mrs copiados.
pause